module Q_2(A,B,C,sel,D,out,out_bar);
input[2:0] D;
input A,B,C,sel;
output reg out,out_bar ;
reg  out_AND,out_OR,out_XNOR ;
always @(*) begin
    out_AND = D[0] & D[1];
    out_OR = D [2] | out_AND ;
    out_XNOR = ~ (A ^ B ^ C ) ;
    if (sel == 1) begin
        out = out_XNOR ;
        out_bar = ~out_XNOR;
    end
    else begin
        out = out_OR ;
        out_bar = ~ out_OR;
    end
    
end

endmodule