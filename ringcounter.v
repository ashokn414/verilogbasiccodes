module ringcounter (
input clk,rst,
output [3:0]q);
reg [3:0]temp ;
always @(posedge clk)
begin
if(rst == 0) temp<=4'b0001;  
else      temp<={temp[2:0],temp[3]};
end
assign q = temp;
endmodule
