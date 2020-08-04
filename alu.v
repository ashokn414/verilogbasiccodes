module alu (
input [7:0]a,b,
input [2:0]op,
output reg [8:0]c);

always @(a,b,op)
begin
case(op)
3'b000: c <= a+b;
3'b001: c <= a-b;
3'b010: c <= ~a;
3'b011: c <= a&b;
3'b100: c <= a|b;
3'b101: c <= ~(a&b);
3'b110: c <= ~(a|b);
3'b111: c <= a^b;
endcase
end
endmodule

