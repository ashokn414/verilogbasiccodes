module counterupdown (
input clk,rst,u_d,
output reg [3:0]q);

always @(posedge clk)

begin
if(rst == 1'b0) q = 4'b0000;
else if(u_d == 1)  q = q+1;
else  q = q-1;
end
endmodule
