/**make the top module that uses the previous 2 modules in order to create a 4 bit adder that displays the result on a 7 segment display.**/

`include "src/decoder.sv"
`include "src/adder.sv"

module top (

    /** Input Ports */
    /** Dip Switches **/
    input  wire [3:0] a,
    input wire [3:0] b,

    /** Output Ports */
    /** 7 segment display **/
    output logic [7:0] out,
);

/** Logic */
wire [4:0] sum;
wire [6:0] digis;    

adder adder_inst (
    .a(a),
    .b(b),
    .n(sum)
);

decoder decoder_inst (
    .bcd(sum[3:0]),
    .seg7(segments)
);

assign seg7[6:0] = digis;
assign seg7[7]   = sum[4];

endmodule