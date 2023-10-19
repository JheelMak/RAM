module dual_port_ram(data1,data2,addr1,addr2,we1,we2,clk,q1,q2);
input [7:0]data1,data2;
input [5:0]addr1,addr2;
input clk;
input we1,we2;
output reg [7:0] q1,q2;

reg [7:0] ram[63:0];

always @ (posedge clk)
begin
     if(we1)
	        ram[addr1]<=data1;
	  if(!we1)
	        q1<=ram[addr1];
     if(we2)
	         ram[addr2]<=data2;
     if(!we2)
            q2<=ram[addr2];
end				
	       
endmodule
