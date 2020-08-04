module block_nonblock();

reg [2:0]a= 3'b101;
reg [2:0]b= 3'b110;
reg [2:0]x= 3'b100;

initial begin
b<=3;
a<=b;
x<=a;
end

endmodule

