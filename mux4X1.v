module mux4X1(
input [3:0]a,b,c,d,
input s1,s0,
output [3:0]y);

assign y=(s1==0)?(s0==0)?a:b
                :(s0==0)?c:d;
                 

endmodule

