/***************************************************
*	Module Name		:	pwm_generator		   
*	Engineer		   :	小梅哥
*	Target Device	:	EP4CE10F17C8
*	Tool versions	:	Quartus II 13.0
*	Create Date		:	2017-3-31
*	Revision		   :	v1.0
*	Description		:  PWM波产生模块
**************************************************/

module pwm_generator(
	Clk,   
	Rst_n,       
	cnt_en,
	counter_arr,
	counter_ccr,
	o_pwm
);
	input Clk;	//时钟输入
	input Rst_n;	//复位输入，低电平复位
	input cnt_en;	//计数使能信号
	input [31:0]counter_arr;//输入32位预重装值
	input [31:0]counter_ccr;//输入32位输出比较值
	output reg o_pwm;	//pwm输出信号

	reg [31:0]counter_ccr_r;
	
	always@(posedge Clk)
	if(!counter)
		counter_ccr_r <= counter_ccr;
	else
		counter_ccr_r <= counter_ccr_r;	
	
	reg [31:0]counter;//定义32位计数器
	always@(posedge Clk or negedge Rst_n)
	if(!Rst_n)
		counter <= 32'd0;
	else if(cnt_en)begin
		if(counter == 0)
			counter <= counter_arr;//计数到0，加载自动预重装寄存器值
		else
			counter <= counter - 1'b1;//计数器自减1
	end
	else
		counter <= counter_arr;	//没有使能时，计数器值等于预重装寄存器值

	always@(posedge Clk or negedge Rst_n)
	if(!Rst_n)	//让PWM输出信号复位时输出低电平
		o_pwm <= 1'b0;
	else if(counter >= counter_ccr_r)//计数值大于比较值
		o_pwm <= 1'b0;	//输出为0
	else	//计数值小于比较值
		o_pwm <= 1'b1; //输出为1
		
endmodule
