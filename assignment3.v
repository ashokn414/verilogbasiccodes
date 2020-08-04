module unary(
input [3:0]a,b,
output y,y1,y2,y3,y4,y5);
 assign y=&a;
assign y1=|b;
assign y2=~a&b;
assign y5=|a|b;
assign y3=^b;
assign y4=^~a;
endmodule
