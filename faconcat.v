module faconcat (
input [3:0]a,b,
input c,
output [3:0]s,
output co);

assign {co,s} = a+b+c;

endmodule

