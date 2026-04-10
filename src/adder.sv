/**will create a module that takes two 4 bit inputs and stores their sum into a 5 bit output.**/

module adder(
    input [3:0] a,
    input [3:0] b,
    output [4:0] n
);

// Put your implementation of a halfadder goes here
assign n = a+b;
// assign d = a&b;

endmodule