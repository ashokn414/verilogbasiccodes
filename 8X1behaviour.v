module beh8X1 (
input [3:0]a,b,c,d,e,f,g,h,
input [2:0]s,
output reg [3:0] y);

always @(*)
begin
case(s)
3'b000: y<=a;
3'b001: y<=b;
3'b010: y<=c;
3'b011: y<=d;
3'b100: y<=e;
3'b101: y<=f;
3'b110: y<=g;
3'b111: y<=h;
endcase
end
endmodule

