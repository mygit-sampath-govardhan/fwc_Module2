module helloworldfpga(

    output reg [7:0] c,
    input wire rst;
);
 reg [7:0] a,b;
 wire clk,
qlal4s3b_cell_macro u_qlal4s3b_cell_macro (.Sys_Clk0 (clk));

always @(posedge clk)
begin
   if (rst) begin
   a=8'd0;
   b=8'd1;
   end
   else begin
   c = a+b;
   a=b;
   b=c;
   end
    
end
endmodule


