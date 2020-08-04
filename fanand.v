module fanand (
input a,b,c,
output s,co);
wire t1,t2,t3,t4,t5,t6,t7,t8;

nand(t1,a,b);
nand(t2,t1,a);
nand(t3,t1,b);
nand(t4,t2,t3);
nand(t5,c,t4);
nand(t6,t5,t4);
nand(t7,t5,c);
nand(s,t6,t7);
nand(co,t1,t5);
endmodule

module fanand4bit (
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
