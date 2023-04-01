`timescale 1ns / 1ps
module clk_freq_div_TB( );

    reg clk_fast;
    reg reset;
    reg [31:0]ratio;
    wire clk_slow;
    
    clock_freq_divider dut_clk_divider(
    .clk_in(clk_fast),
    .reset(reset),
    .ratio(ratio),
    .clk_out(clk_slow)
    );
    
    //generates 20MHz input clock
    always #25 clk_fast = ~clk_fast; 
    
    initial begin
    clk_fast=0;
    reset=0;    #20;    reset=1;
    end
    initial begin
    ratio=32'd20_000;//output clock with 1kHz freq
    #10_000_000;    
    ratio=32'd10_000;//output clock with 2kHz freq
    #10_000_000;
    ratio=32'd5000;//output clock with 4kHz freq
    #10_000_000;
    $stop;
    end
endmodule
