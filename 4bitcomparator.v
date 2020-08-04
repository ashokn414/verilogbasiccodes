module comp4bit (
input [3:0]a,b,
output reg g,l,e);

always @(a,b)
begin
if(a==b)
begin
g<=0;
e<=1;
l<=0;
end
else if(a>b)
begin
g<=1;
e<=0;
l<=0;
end
else
begin
g<=0;
e<=0;
l<=1;
end
end
endmodule

