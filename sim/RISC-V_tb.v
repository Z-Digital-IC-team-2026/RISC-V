module RISC_V_tb();
reg clk, reset_n;

RISC_V_top uut(
.clk(clk),
.reset(reset_n)
);
always
begin
clk = 1'b0;
#5
clk = 1'b1;
#5;
end

initial 
begin
reset_n = 1'b0;
#10
reset_n = 1'b1;
#1000
$stop;
end  
endmodule
