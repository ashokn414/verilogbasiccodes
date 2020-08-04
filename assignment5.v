module relation(
input [3:0]a,b,
input [15:0]c,d,e,
output y,y1,y2,y3,y4,y5,y6,y7,y8,y9);
 assign a=4'b1101;
assign b=4'b1011;
assign c=16'h23zx;
assign d=16'h23zx;
assign e=16'h23xz;
 assign y= a>b;
assign y1=  a<b;
assign y2= a>=b;
assign y3= a<=b;
assign y4= a==b;
assign y5= a!=b;
assign y6= a===b;
assign y7= a!==b;
assign y8= c==d;
assign y9= c!==d;
assign y9= c===e;
endmodule
