module demux1x4beh (
input [3:0]i,
input s0,s1,
output reg [3:0]a,b,c,d);

always @(i,s0,s1)
begin
if({s1,s0} == 2'b00)
begin
a <= i;
b <= 4'b0000;
c <= 4'b0000;
d <= 4'b0000;
end
else if({s1,s0} == 2'b01)
begin
b <= i;
a <= 4'b0000;
c <= 4'b0000;
d <= 4'b0000;
end
else if({s1,s0} == 2'b10)
begin
c <= i;
b <= 4'b0000;
a <= 4'b0000;
d <= 4'b0000;
end
else
begin
d <= i;
b <= 4'b0000;
c <= 4'b0000;
a <= 4'b0000;
end
end

endmodule

