
module moore101101 (
input clk,rst,x,
output y);

parameter s0=3'b000,s1=3'b001,s2=3'b010,s3=3'b011,s4=3'b100,s5=3'b101,s6=3'b110;
reg [2:0] cs,ns;

always @(posedge clk or negedge rst)
begin
if (rst==1'b0)  cs<=s0;
else            cs<=ns;
end

always @(x or cs)
begin
case(cs)
s0:begin
   if(x==1)  ns<=s1;
   else      ns<=s0;
   end
s1:begin
   if(x==0)  ns<=s2;
   else      ns<=s1;
   end
s2:begin
   if(x==1)  ns<=s3;
   else      ns<=s0;
   end
s3:begin
   if(x==1)  ns<=s4;
   else      ns<=s2;
   end
s4:begin
   if(x==0)  ns<=s5;
   else      ns<=s1;
   end
s5:begin
   if(x==1)  ns<=s6;
   else      ns<=s0;
   end
s6:begin
   if(x==0)  ns<=s2;
   else      ns<=s4;
   end
endcase
end

assign y=(cs==s6)?1:0;

endmodule
