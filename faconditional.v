module faconditional(
input a,b,c,
output s,cout);

assign s=(a==0)?((b==0)?c:~c):
                (b==0)?~c:c;
assign cout=(a==0)?((b==0)?1'b0:c):
                   (b==0)?c:1'b1;
       
endmodule

