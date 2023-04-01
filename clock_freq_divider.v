`timescale 1ns / 1ps

module clock_freq_divider(clk_in,reset,ratio,clk_out
    );
    input clk_in;
    input reset;
    input [31:0]ratio;
    output reg clk_out;
    
    reg [31:0]counter;
    
    always@(posedge clk_in,negedge reset)
    begin
    if(reset==0)
    begin
        clk_out<= 0;
        counter <= 32'd0;
    end
    else if(counter==(ratio-1))
    begin
        clk_out<= 0;
        counter <= 32'd0;
    end
    else if(counter==((ratio/2)-1)) 
    begin
        clk_out <=1;
        counter <= counter+1;
    end
    else
    counter <= counter+1;
    end
endmodule
