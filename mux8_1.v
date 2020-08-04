module mux8_1 (
input [3:0]a,b,c,d,e,f,g,h,
input [2:0]s,
output [3:0]y);

wire [3:0]t1,t2,t3,t4,t5,t6;
 mux2_1 m1(a,b,s[0],t1);
mux2_1 m2(c,d,s[0],t2);
mux2_1 m3(e,f,s[0],t3);
mux2_1 m4(g,h,s[0],t4);
mux2_1 m5(t1,t2,s[1],t5);
mux2_1 m6(t3,t4,s[1],t6);
mux2_1 m7(t5,t6,s[2],y);
 endmodule
