
module moore1 (
input clk,rst,x,
output y);

parameter a=2'b00 , b=2'b01 , c=2'b10;
reg [1:0]cs,ns;

always @(posedge clk or negedge rst)
begin
if(rst==1'b0) cs<=a;
else          cs<=ns;
end

always @(x or cs)
begin
case(cs)
a: begin
   if(x==0) ns=a;
   else     ns=b;
   end
b: begin
   if(x==0) ns=a;
   else     ns=c;
   end
c: begin
   if(x==0) ns=a;
   else     ns=c;
   end
endcase
end

assign y=(cs==c)?1:0;

endmodule
