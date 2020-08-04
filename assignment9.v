module case4x1(
input [3:0]a,b,c,d,[1:0]s,
output reg [3:0]y);
always@(s,a,b,c,d) begin
case(s)
2'b00: y=a;
2'b01: y=b;
2'b10: y=c;
2'b11: y=d;
endcase
end

endmodule

