module mux4X1truth (
input a,b,c,d,s1,s0,
output y);

assign y=((~s1)&(~s0)&a)|((~s1)&(s0)&b)|((s1)&(~s0)&c)|((s1)&(s0)&d);

endmodule
