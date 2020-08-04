module mux2_1 (
input  [3:0]a,b,
input s,
output [3:0]y);

assign y=(s==0)?a:b;
endmodule

