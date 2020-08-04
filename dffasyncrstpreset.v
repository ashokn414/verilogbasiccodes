module dffasyncrstprst (
input d,clk,prst,rst,
output reg q);

always @(posedge clk or posedge prst or negedge rst)
begin
if (rst==0)  q <= 1'b0;
else if(prst == 1)   q<=1'b1;
else    q<=d;
end
endmodule

