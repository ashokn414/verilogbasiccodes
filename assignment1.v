module logical(
input a,b,c,
output y,y1,y2,y3,y4);
assign a=1;
assign b=0;
assign c=1'bx;
assign y=a&&b;
assign y1=a||b;
assign y2=a||c;
assign y3=a&&c;
assign y4=b||c;
assign y5=b&&c;

endmodule
