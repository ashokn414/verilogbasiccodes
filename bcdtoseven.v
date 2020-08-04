module bcdtoseven (
input a,b,c,d,
output a1,b1,c1,d1,e1,f1,g1);

assign a1 = (a|c)|(b~^d);
assign b1 = (a|(~b))|(c~^d);
assign c1 = (a|b)|((~c)|d);
assign d1 = (a|(c&(~d)))|(((~b)&(~d))|((~b)&c))|(b&(~c)&d);
assign e1 = ((~b)&(~d))|(c&(~d));
assign f1 = (a|((~c)&(~d)))|((b&(~c))|(b&(~d)));
assign g1 = (a|(c&(~d)))|(b^c);

endmodule

