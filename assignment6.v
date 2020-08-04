module concate(
input [3:0]a,b,
output [7:0]y,
output [15:0]y1,
output [19:0]y2);
 assign y={a,b};
assign y1={4{a}};
assign y2={{2{a}},{3{b}}};
endmodule
