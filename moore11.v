module moore11 (
input clk,rst,x,
output y);

parameter s0=2'b00,s1=2'b01,s2=2'b10;
reg [1:0]cs,ns;

always @(posedge clk or negedge rst)
begin
if(rst == 1'b0)  cs<=s0;
else             cs<=ns;
end

always @(x or cs)
begin
case(cs)
s0: begin
    if(x==1)  ns<=s1;
    else      ns<=s0;
    end
s1: begin
    if(x==1)  ns<=s2;
    else      ns<=s0;
    end
s2: begin
    if(x==0)  ns<=s0;
    else      ns<=s2;
    end
endcase
end

assign y=(cs==s2)?1:0;

endmodule

