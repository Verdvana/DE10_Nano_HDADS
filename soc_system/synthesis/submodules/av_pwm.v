module av_pwm(
	clk,
	reset_n,

	as_chipselect,
	as_address,
	as_write,
	as_readdata,
	as_writedata,
	
	o_pwm
);

	input clk;
	input reset_n;

	input as_chipselect;
	input [1:0]as_address;
	input as_write;
	output reg [31:0]as_readdata;
	input [31:0]as_writedata;

	output o_pwm;


	reg control;
	reg [31:0]counter_arr;
	reg [31:0]counter_ccr;


	pwm_generator pwm_generator(
		.Clk(clk),
		.Rst_n(reset_n),
		.cnt_en(control),
		.counter_arr(counter_arr),
		.counter_ccr(counter_ccr),
		.o_pwm(o_pwm)
	);

	//写预设寄存器
	always@(posedge clk or negedge reset_n)
	if(!reset_n)
		counter_arr <= 32'd0;
	else if(as_chipselect && as_write && (as_address == 0))
		counter_arr <= as_writedata;
	else
		counter_arr <= counter_arr;
		
	//写比较通道寄存器
	always@(posedge clk or negedge reset_n)
	if(!reset_n)
		counter_ccr <= 32'd0;
	else if(as_chipselect && as_write && (as_address == 1))
		counter_ccr <= as_writedata;
	else
		counter_ccr <= counter_ccr;
		
	//写控制寄存器
	always@(posedge clk or negedge reset_n)
	if(!reset_n)
		control <= 1'd0;
	else if(as_chipselect && as_write && (as_address == 2))
		control <= as_writedata[0];
	else
		control <= control;
		
//读寄存器逻辑		
	always@(posedge clk or negedge reset_n)
	if(!reset_n)
		as_readdata <= 32'd0;
	else if(as_chipselect)begin
		case(as_address)
			0:as_readdata <= counter_arr;
			1:as_readdata <= counter_ccr;
			2:as_readdata <= control;
			default:as_readdata <= 32'd0;
		endcase	
	end

endmodule
