module even_parity(A, out_with_parity );
input[7:0] A ;
output [8:0]  out_with_parity ;
wire parity_bit;
assign parity_bit = ^ A; 
assign out_with_parity ={A,parity_bit};
endmodule