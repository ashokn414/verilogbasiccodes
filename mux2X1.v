module mux2X1(
input [3:0]a,b,
input s0,
output [3:0]y);

assign y= (s0==0)?a:b;
                 
                 
endmodule

     
