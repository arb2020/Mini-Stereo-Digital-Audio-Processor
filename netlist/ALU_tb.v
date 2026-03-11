`timescale 1ns/1ps

module ALU_tb;


  reg  [15:0] x, rj, coeff;
  wire [3:0]  rj_address;
  wire [8:0]  coeff_address;
  wire [7:0]  x_address;
  wire [39:0] y;
  reg         Sclk;
  reg         en_ALU;
  wire        done;

  MSDAP_ALU dut (
    .x(x),
    .rj(rj),
    .rj_address(rj_address),
    .coeff(coeff),
    .coeff_address(coeff_address),
    .x_address(x_address),
    .y(y),
    .Sclk(Sclk),
    .en_ALU(en_ALU),
    .done(done)
  );


  initial begin
    Sclk = 1'b0;
    forever #18.6 Sclk = ~Sclk;
  end


  parameter integer RJ_N     = 16;
  parameter integer COEFF_N  = 512;
  parameter integer X_N      = 3500;
  parameter integer FILE_N   = RJ_N + COEFF_N + X_N;

  reg [15:0] memRead   [0:FILE_N-1];
  reg [15:0] rjVals    [0:RJ_N-1];
  reg [15:0] coeffVals [0:COEFF_N-1];
  reg [15:0] xVals     [0:X_N-1];

  reg [15:0] xCirc [0:255];

  integer i;
  integer xCounter;

  integer outfile;
  integer logfile;

  reg coeff_primed;


  initial begin
    x     = 16'h0000;
    rj    = 16'h0000;
    coeff = 16'h0000;

    en_ALU        = 1'b0;
    xCounter      = 1;
    coeff_primed  = 1'b0;

    $readmemh("data1.in", memRead);

    for (i = 0; i < RJ_N; i = i + 1)
      rjVals[i] = memRead[i];

    for (i = 0; i < COEFF_N; i = i + 1)
      coeffVals[i] = memRead[16 + i];

    for (i = 0; i < X_N; i = i + 1)
      xVals[i] = memRead[528 + i];

    for (i = 0; i < 256; i = i + 1)
      xCirc[i] = 16'h0000;

    xCirc[0] = xVals[0];


    outfile = $fopen("data1_ac.out","w");
    if (outfile == 0) begin
      $display("File open failed: data1_ac.out");
      $finish;
    end

    // open log
    logfile = $fopen("simulation.log","w");
    if (logfile == 0) begin
      $display("File open failed: simulation.log");
      $finish;
    end

    // header row (easy to parse)
    $fdisplay(logfile, "idx,x(hex),y(hex)");


    repeat (5) @(posedge Sclk);

    @(negedge Sclk);
    coeff <= coeffVals[0];
    coeff_primed <= 1'b1;

    @(posedge Sclk);
    @(negedge Sclk);

    en_ALU = 1'b1;
  end


  always @(negedge Sclk) begin
    #1;

    if (!en_ALU) begin
      rj <= 16'h0000;
      x  <= 16'h0000;

      if (!coeff_primed)
        coeff <= 16'h0000;
      // else hold coeffVals[0]
    end else begin
      if (^rj_address === 1'bX)
        rj <= 16'h0000;
      else
        rj <= rjVals[rj_address];

      if (^coeff_address === 1'bX)
        coeff <= 16'h0000;
      else if (coeff_address < COEFF_N)
        coeff <= coeffVals[coeff_address];
      else
        coeff <= 16'h0000;

      if (^x_address === 1'bX)
        x <= 16'h0000;
      else
        x <= xCirc[x_address];
    end
  end


  always @(negedge Sclk) begin
    #1;

    if (!en_ALU) begin
      xCounter <= 1;
    end
    else if (done) begin

      if (xCounter > 0 && xCounter <= X_N)
        $fdisplay(logfile, "%0d,%h,%h", (xCounter-1), xVals[xCounter-1], y);


      if (xCounter < 3500) begin

        xCirc[xCounter % 256] <= xVals[xCounter];
        xCounter <= xCounter + 1;
      end else begin
        $fclose(outfile);
        $fclose(logfile);
        $finish;
      end
    end
  end


  always @(posedge Sclk) begin
    if (en_ALU) begin
      $strobe("[%0t] x_address=%0d x=%h xCirc[x_address]=%h done=%b coeff_addr=%0d coeff=%h xCounter=%0d",
              $time, x_address, x, xCirc[x_address], done, coeff_address, coeff, xCounter);
    end
  end


  always @(posedge Sclk) begin
    if (en_ALU && done) begin
      $fdisplay(outfile, "%h", y);
    end
  end

endmodule
