module sipo (
input si,clk,rst,s_u,
output reg [3:0]q);
reg[3:0] temp;

always @(posedge clk)
begin
if(rst == 0)  begin
temp <= 'd0;
q<='d0;
end
else if(s_u == 1) begin
temp<={si,temp[3:1]};
q<='d0;
end
else
q<=temp;
end
endmodule

