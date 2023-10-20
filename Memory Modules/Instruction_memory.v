module Instruction_memory
#(parameter WIDTH = 32, DEPTH = 8)
(
input [WIDTH-1:0] addr,
output reg [WIDTH-1:0] data
);
reg[WIDTH-1:0] rom [0:2**DEPTH-1];

initial
begin
        $readmemh("Instr.mem", rom);
        /*rom [0]  = 32'h00500113;    
        rom [1]  = 32'h00C00193;    
       	rom [2]  = 32'hFF718393;    
	      rom [3]  = 32'h0023E233;    
	      rom [4]  = 32'h0041F2B3;    
	      rom [5]  = 32'h02728863;   
        rom [6]  = 32'h0041A233;    
	      rom [7]  = 32'h00020463;   
	      rom [8]  = 32'h00000293;
        rom [9]  = 32'h0023A233;    
        rom [10]  = 32'h005203B3;    
        rom [11]  = 32'h0471AA23;    
        rom [12]  = 32'h06002103;  
        rom [13]  = 32'h005104B3; 
        rom [14]  = 32'h008001EF;  
        rom [15]  = 32'h00100113;  
        rom [16]  = 32'h00910133;
        rom [17]  = 32'h0221A023;
        rom [18]  = 32'h00210063;*/

end
always@(*)
data = rom[addr>>2];

endmodule
