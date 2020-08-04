module  graytobin (
input [3:0]g,
output [3:0]b);

assign b[3] = g[3];
xor(b[2],b[3],g[2]);
xor(b[1],b[2],g[1]);
xor(b[0],b[1],g[0]);

endmodule

