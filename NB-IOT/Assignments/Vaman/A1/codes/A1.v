module helloworldfpga(

    input wire [3:0] in,
    
    input wire latch,
    input wire div,
    input wire dec,
    output reg [2:0]count,
    output reg zero

);
 wire clk,
qlal4s3b_cell_macro u_qlal4s3b_cell_macro (.Sys_Clk0 (clk));

always @(posedge clk)
begin
    case({latch,dec})
    2'b10: begin
    count<=in;
    end
    2'b01: begin
    if (count==8'b00000000) begin
    zero =1;
    end
    else begin
    count<=count-1;
    end
    end
    2'b11: begin
    count<=in;
    end
    2'b00: begin
    if(div) begin
    count = count/2;
    end 
    end
    endcase
    
end
endmodule


