module seven_segnment(A,B,opcode,Result,a,b,c,d,e,f,g,enable);
parameter N =4 ;
input [N-1:0] A ,B ;
input [N-3:0] opcode ;
input enable ; 
output reg [N-1:0] Result ;
output reg a,b,c,d,e,f,g;
always @(*) begin
    // ALU operation
    case (opcode)
        2'b00: Result = A + B ;  
        2'b01: Result = A | B ;
        2'b10: Result = A - B ;
        2'b11: Result = A ^ B ;
    endcase  
// 7_segnment 
if (enable == 1'b1) begin
    case ( Result)
        4'b0000:begin a=1'b1;b= 1'b1;c=1'b1;d=1'b1;e=1'b1;f=1'b1;g=1'b0;end
        4'b0001:begin a=1'b0;b= 1'b1;c=1'b1;d=1'b0;e=1'b0;f=1'b0;g=1'b0;end
        4'b0010:begin a=1'b1;b= 1'b1;c=1'b0;d=1'b1;e=1'b1;f=1'b0;g=1'b1;end
        4'b0011:begin a=1'b1;b= 1'b1;c=1'b1;d=1'b1;e=1'b0;f=1'b0;g=1'b1;end
        4'b0100:begin a=1'b0;b= 1'b1;c=1'b1;d=1'b0;e=1'b0;f=1'b1;g=1'b1;end
        4'b0101:begin a=1'b1;b= 1'b0;c=1'b1;d=1'b1;e=1'b0;f=1'b1;g=1'b1;end
        4'b0110:begin a=1'b1;b= 1'b0;c=1'b1;d=1'b1;e=1'b1;f=1'b1;g=1'b1;end
        4'b0111:begin a=1'b1;b= 1'b1;c=1'b1;d=1'b0;e=1'b0;f=1'b0;g=1'b0;end
        4'b1000:begin a=1'b1;b= 1'b1;c=1'b1;d=1'b1;e=1'b1;f=1'b1;g=1'b1;end
        4'b1001:begin a=1'b1;b= 1'b1;c=1'b1;d=1'b1;e=1'b0;f=1'b1;g=1'b1;end
        4'b1010:begin a=1'b1;b= 1'b1;c=1'b1;d=1'b0;e=1'b1;f=1'b1;g=1'b1;end
        4'b1011:begin a=1'b0;b= 1'b0;c=1'b1;d=1'b1;e=1'b1;f=1'b1;g=1'b1;end
        4'b1100:begin a=1'b1;b= 1'b0;c=1'b0;d=1'b1;e=1'b1;f=1'b1;g=1'b0;end
        4'b1101:begin a=1'b0;b= 1'b1;c=1'b1;d=1'b1;e=1'b1;f=1'b0;g=1'b1;end
        4'b1110:begin a=1'b1;b= 1'b0;c=1'b0;d=1'b1;e=1'b1;f=1'b1;g=1'b1;end
        4'b1111:begin a=1'b1;b= 1'b0;c=1'b0;d=1'b0;e=1'b1;f=1'b1;g=1'b1;end
    endcase
    end
    else begin
      a=1'b0;b= 1'b0;c=1'b0;d=1'b0;e=1'b0;f=1'b0;g=1'b0;
    end 
end
endmodule
