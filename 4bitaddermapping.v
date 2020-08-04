module fanamed (
input [3:0]a,b,
input c,
output [3:0]s,
output co);

fa f1(a[0],b[0],c,s[0],c1);
fa f2(a[1],b[1],c1,s[1],c2);
fa f3(a[2],b[2],c2,s[2],c3);
fa f4(a[3],b[3],c3,s[3],co);

endmodule
