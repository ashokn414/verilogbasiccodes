
module shift_reg #(parameter N=8)(input [N-1:0] d, input clk, ld, rst, l_r, s_in,
output reg [N-1:0] q);
always @( posedge clk ) begin
if( rst == 0)
 q <= 4'b0000;
else if( ld )
 q <= d;
else if( l_r )
 q <= {q[N-2:0], s_in};
else
 q <= {s_in, q[N-1:1]};
end
endmodule
