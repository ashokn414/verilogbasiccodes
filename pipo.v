module pipo (
input clk,rst,wr,
input [3:0]d,
output reg [3:0]q);

reg [3:0]temp;
always @(posedge clk)
begin
if(rst == 0) begin
temp <= 'd0;
q <='d0;
end
else if(wr == 0) begin
temp <= d ;
q<='d0;
end
else
q<=temp;
end
endmodule
