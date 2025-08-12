module Q_1(A,B,C,D,E,F,out,out_bar,sel);
input A,B,C,D,E,F,sel ;
output out,out_bar ;
wire z1,z2;
assign z1=A & B & C;
assign z2 = ~(D ^ E ^ F);
assign out = (sel == 1)? z2 : z1;
assign out_bar = (sel == 1)? ~z2 : ~z1;

endmodule