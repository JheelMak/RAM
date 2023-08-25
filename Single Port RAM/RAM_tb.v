`timescale 1ns / 1ps

module RAM_tb;
	reg [7:0] data;
	reg [5:0] addr;
	reg we, clk;
	wire [7:0] q;

	Single_Port_RAM uut (.data(data), .addr(addr), .we(we), .clk(clk), .q(q));
	
	initial 
	begin
		clk=1'b1;
		forever #5 clk=~clk;
	end

	initial begin

		data = 8'h01;
		addr = 5'd0;
		we = 1'b1;
		#10;
		
		data = 8'h02;
		addr = 5'd1;
		#10;
		
		data = 8'h03;
		addr = 5'd2;
		#10;
		
		we=1'b0;
		addr = 5'd0;
		#10;
		
		addr=5'd1;
		#10;
		
		addr = 5'd2;
		#10;
		
		data = 8'h04;
		addr = 5'd1;
		we = 1'd1;
		#10;
		
		addr = 5'd4;
		we = 1'b0;
		#10;
		
		#20 $finish;
		
	end
      
endmodule

