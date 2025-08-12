module x4bit_adder(A,B,C,carry);
input [3:0] A,B;
output [3:0] C ;
output carry ;
assign {carry,C} = A + B ;
endmodule