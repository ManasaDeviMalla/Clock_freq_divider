# Clock_freq_divider
#verilog
A clock signal is needed in order for sequential circuits to function. Usually the clock signal comes from a crystal oscillator on-board. The oscillator used on FPGA boards usually ranges from 50 MHz to 100 MHz; however, some peripheral controllers do not need such a high frequency to operate.
The clock signal is actually a constantly oscillating signal. Using the Nexys 3 as an example, the input clock frequency is 100 MHz, i.e., the period of the clock is 10 ns. Half of the period the clock is high, half of the period clock is low. In other words, every half of the period, 5 ns in this case, the clock will flip itself.

The clock divider is useful to generate low frequency clock signals using high frequency system clock signal.
we take input clock as clk_fast say 20MHz i.e 10ns time period, output clock as clk_slow.
we take a parameter called ratio which is equal to clk_fast/clk_slow.

if clk_fast=20MHz then clk_slow=1kHz as ratio=20000
clk_slow=2kHz as ratio=10000
clk_slow=4kHz as ratio=5000

On FPGA board implementation, we cannot observe a LED with clk of 100MHz frequency so we genearte a clock signal with frequency 1Hz i.e timeperiod of 1s.
ratio=100MHz/1Hz=100M.
