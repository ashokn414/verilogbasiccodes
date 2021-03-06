module piso (
input clk,rst,l_s,
input [3:0]d,
output reg q);

reg [3:0] temp;
always @(posedge clk)
begin
if(rst == 0) begin
temp<='d0;
q<='d0;
end
else if(l_s == 1) begin
temp<=d;
q <='d0;
end
else
begin
temp <={1'b0,temp[3:1]};
q <= temp[0];
end
end
endmodule
