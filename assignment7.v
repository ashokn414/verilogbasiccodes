module mux8X1(
input [3:0]a,b,c,d,e,f,g,h,s2,s1,s0,
output [3:0]y);

assign y= (s2==0)?(s1==0)?(s0==0)?a:b
                         :(s0==0)?c:d
                 :(s1==0)?(s0==0)?e:f
                         :(s0==0)?g:h;

endmodule

     