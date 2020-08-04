

module fastructural (
input a,b,c,
output s,co);

ha h1(a,b,s1,c1);
ha h2(s1,c,s,c2);
or o1(co,c1,c2);
endmodule
