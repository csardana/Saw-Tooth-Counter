`timescale 1 ns/1 ps

module Lab1tb();

reg clk;
wire [3:0] ledo;



Lab1 dut(.clk(clk),.ledo(ledo));

always
begin
clk = 1'b1;
#10;
clk = 1'b0;
#10;
end

endmodule