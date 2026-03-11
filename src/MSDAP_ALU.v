
`include "sv/addSub.v"
`include "sv/oneBitShift.v"
`include "sv/signExt.v"
`include "sv/ALU_Controller.v"

module MSDAP_ALU (
    input wire [15:0] x,
    input wire [15:0] rj,
    output wire [3:0] rj_address,
    input wire [15:0] coeff,
    output wire [8:0] coeff_address,
    output wire [7:0] x_address,
    output wire [39:0] y,
    input Sclk, en_ALU,
    output wire done
);

wire load, shift_en, opcode, feedbackLoad, clear;  
wire [39:0] extToAddSub;
wire [39:0] feedback;
wire [39:0] shiftIO;

    ALU_Controller ALU_Con(.rj(rj), .rj_address(rj_address), .coeff(coeff), .coeff_address(coeff_address), .x_address(x_address), .Sclk(Sclk), .en_ALU(en_ALU), .done(done), .load(load), .opcode(opcode), .shift_en(shift_en), .feedbackLoad(feedbackLoad), .clear(clear));
    signExt ext(.in(x), .out(extToAddSub));
    addSub AS(.clk(Sclk), .clear(clear), .load(load), .feedbackLoad(feedbackLoad), .opcode(opcode), .in(extToAddSub), .feedback(feedback), .shiftOp(shiftIO));    
    oneBitShift oBS(.clk(Sclk), .addOp(shiftIO), .clear(clear), .shift_en(shift_en), .yOut(feedback));

assign y = feedback;

endmodule : MSDAP_ALU