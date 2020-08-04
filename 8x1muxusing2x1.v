module mux2_1 (
input  [3:0]a,b,
input s,
output [3:0]y);
assign y=(s==0)?a:b;
endmodule


module muxx8x1 (
input [3:0]a,b,c,d,e,f,g,h,
input [2:0]s,
output [3:0]y);
wire [3:0]y1,y2,y3,y4,y5,y6,y7;
mux2_1 m1(a,b,s[0],y1);
mux2_1 m2(c,d,s[0],y2);
mux2_1 m3(e,f,s[0],y3);
mux2_1 m4(g,h,s[0],y4);
mux2_1 m5(y1,y2,s[1],y5);
mux2_1 m6(y3,y4,s[1],y6);
mux2_1 m7(y5,y6,s[2],y);

endmodule


