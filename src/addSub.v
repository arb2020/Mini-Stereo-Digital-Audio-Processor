module addSub(
    input  wire        clk,
    input  wire        clear,
    input  wire        load,
    input  wire        feedbackLoad,
    input  wire        opcode,
    input  wire [39:0] in,
    input  wire [39:0] feedback,
    output wire [39:0] shiftOp
);

    reg [39:0] result;
    assign shiftOp = result;

    always @(posedge clk or posedge clear) begin
        if (clear) begin
            result <= 40'd0;
            //$strobe("[%0t][addSub] CLEAR -> result=0", $time);
        end
        else if (feedbackLoad) begin
            result <= feedback;
            //$strobe("[%0t][addSub] FEEDBACK_LOAD -> result=%h  feedback=%h", $time, feedback, feedback);
        end
        else if (load) begin
            if (opcode) begin
                result <= result + ~in + 40'd1;
                //$strobe("[%0t][addSub] SUB  result=%h  in=%h  next=%h", $time, result, in, result + ~in + 40'd1);
            end else begin
                result <= result + in;
                //$strobe("[%0t][addSub] ADD  result=%h  in=%h  next=%h", $time, result, in, result + in);
            end
        end
    end

endmodule