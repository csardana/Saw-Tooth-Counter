module Lab1(clk,ledo);
input clk;
reg clkout;
output [3:0] ledo;


reg[31:0] counter = 32'd0 ;
parameter frequency = 32'd50000000 ;
reg[3:0] counter1 = 4'd0 ;
reg value = 1'd0 ;
reg direction = 1'd0 ;

always @(posedge clk)
begin
	counter <= counter + 32'd1;
	if (counter >= frequency - 1)
	begin
		counter <= 32'd0;
	end
	if (counter == 0)
	begin
		if (direction == 0)
		begin
			counter1 <= counter1 + 4'd1;
		end
		if (direction == 1)
		begin
			counter1 <= counter1 - 4'd1;
		end
	end
	if (counter1 >= 4'd7)
	begin
		direction <= 1'b1;
	end
	if (counter1 <= 4'd0)
	begin
		direction <= 1'b0;
	end
end




assign ledo = counter1;

endmodule