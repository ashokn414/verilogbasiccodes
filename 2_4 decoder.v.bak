module dec2x4 (
input en,a,b,
output d0,d1,d2,d3);

assign d0= (~a)&(~b)&en;
assign d1= (~a)&b&en;
assign d2= a&(~ b)&en;
assign d3= a&b&en;
endmodule

