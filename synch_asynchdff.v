
module syn_asyn_dff (
input clk,rst,d,
output reg q);

//synchronous dff
always@(posedge clk)
begin
if(rst==1'b1)  q<=1'b0;
else   q<=d;
end
/*
//asynchronous dff
always@(posedge clk or posedge rst)
begin
if(rst==1'b1)  q<=1'b0;
else    q<=d;
end 
*/
endmodule
