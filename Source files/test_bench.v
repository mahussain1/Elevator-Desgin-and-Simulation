module test_bench;
// Inputs
	reg clk;
	reg rst;
	reg up;
	reg down;
	reg [2:0] inf;

	// Outputs
	wire [2:0] outfloor;

	
	elevator_design uut (
		.clk(clk), 
		.rst(rst), 
		.up(up), 
		.down(down), 
		.inf(inf), 
		.outfloor(outfloor)
	);

	initial
	begin
clk=0;
forever
clk=#1 ~clk;
end
	initial 
	begin
		// Initialize Inputs
		
		#10 
		begin
		rst = 0;
		up = 0;
		down = 0;
		inf = 0;
		end

#4 begin
    rst=1;
    up=1;
    inf=1;
  end
	 
#4  inf=3; 
#4  inf=6;
#4  inf=4;

#4  begin
         up=0;
	 down=1;
	 inf=4;
	 end
#4 inf=1;
	 
#4 begin
  down=0;
  up=0; 
  rst=0;
  end
  
#10 $stop;
#10 $finish;

end
endmodule
