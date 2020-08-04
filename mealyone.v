
module mealy1 (
input clk,rst,x,
output reg y);

parameter a=1'b0 , b=1'b1;
reg cs,ns;

always @(posedge clk or negedge rst)
begin
if(rst==1'b0)   cs<=a;
else            cs<=ns;
end

always @(x or cs)
begin
case(cs)
a:begin 
  if(x==1) ns=b;
  else     ns=a;
  end
b:begin
  if(x==1)  ns=b;
  else      ns=a;
  end
endcase
end

always@(x or cs)
begin
case(cs)
a: y=0;
b: if(x==0) y=0;
   else     y=1;
endcase
end

endmodule
 