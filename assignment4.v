module shift(
input [3:0]a,b,c,
output [3:0]y,y1);

assign c=2'd2;
assign y=a>>c;
assign y1=a<<c;
endmodule

