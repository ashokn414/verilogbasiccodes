
module fa (
input a,b,c,
output s,co);

assign s = a^b^c;
assign co = (a&b)|(b&c)|(c&a);

endmodule

module add_subb (
input [3:0]a,b,
input m,
output cout,v,

output [3:0]s);

wire [3:0]bb;
wire c1,c2,c3;

xor(bb[0],m,b[0]);
xor(bb[1],m,b[1]);
xor(bb[2],m,b[2]);
xor(bb[3],m,b[3]);

fa f1(a[0],bb[0],m,s[0],c1);
fa f2(a[1],bb[1],c1,s[1],c2);
fa f3(a[2],bb[2],c2,s[2],c3);
fa f4(a[3],bb[3],c3,s[3],cout);

assign v=cout^c3;

endmodule
