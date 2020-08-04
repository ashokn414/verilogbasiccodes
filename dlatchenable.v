module dlatchen (
input d,clk,
output reg q,q_b);
always @(clk or d)
if (clk) begin
  q = d;
  q_b = ~q;
end
endmodule
