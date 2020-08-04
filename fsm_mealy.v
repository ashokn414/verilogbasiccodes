module mealy_fsm (//seq=11010
input clk,rst,x,
output reg y);


parameter s0=3'b000,s1=3'b001,s2=3'b010,s3=3'b011,s4=3'b100;
reg [2:0] ns,cs;

always @(posedge clk or negedge rst)//for current state with aynchronous input
begin
if(rst==1'b0) cs<=s0;
else          cs<=ns;
end
always @(x or cs)//next state calculation
begin
case(cs)
s0:begin
   if(x==1)   ns<=s1;
   else       ns<=s0;
   end
s1:begin
   if(x==1)   ns<=s2;
   else       ns<=s0;
   end
s2:begin
   if(x==0)   ns<=s3;
   else       ns<=s2;
   end
s3:begin
   if(x==1)   ns<=s4;
   else       ns<=s0;
   end
s4:begin
   if(x==0)   ns<=s0;
   else       ns<=s2;
   end
endcase
end

always @(x or cs)//output calculation
begin
case(cs)
s0: y=0;
s1: y=0;
s2: y=0;
s3: y=0;
s4: if(x==0) y=1;
     else    y=0;
endcase

end
endmodule
