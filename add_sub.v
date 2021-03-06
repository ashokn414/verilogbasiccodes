module fullbitaddnamed (
input [3:0]a,b,
input c,
output cout,
output [3:0]s);
wire c1,c2,c3;

fa f1(.a(a[0]),.b(b[0]),.c(c),.s(s[0]),.co(c1));
fa f2(.a(a[1]),.b(b[1]),.c(c1),.s(s[1]),.co(c2));
fa f3(.a(a[2]),.b(b[2]),.c(c2),.s(s[2]),.co(c3));
fa f4(.a(a[3]),.b(b[3]),.c(c3),.s(s[3]),.co(cout));

endmodule
