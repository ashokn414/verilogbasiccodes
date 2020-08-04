

module fa (
input a,b,c,
output s,co);

assign s = a^b^c;
assign co = (a&b)|(b&c)|(c&a);

endmodule
