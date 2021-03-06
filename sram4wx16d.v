module sramsingleport 
#(parameter addr_width =4,
  parameter data_width =4,
  parameter depth =16)
( input clk,rst,wr,
  input [data_width-1:0] din,//n
  input [addr_width-1:0] addr,//k
  output reg [data_width-1:0] dout);
reg [data_width-1:0] temp [0:depth-1]; //SRAM Memory
always @(posedge clk)
begin
if(rst ==0) dout<='d0;
else if(wr == 1)  temp[addr]<=din;
else        dout <= temp[addr];
end
endmodule
