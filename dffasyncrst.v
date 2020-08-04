module dffasynrst (
input d,clk,rst,
output reg q);

always @(posedge clk or negedge rst)
begin
if (rst==0)  q <= 1'b0;
else    q<=d;
end
endmodule

