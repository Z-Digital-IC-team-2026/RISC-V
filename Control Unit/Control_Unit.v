module Contorl_Unit(
  input  zero,
  input  [6:0] op,
  input  [2:0] funct3,
  input  funct7,
  output [2:0] ALUControl,
  output PCSrc,
  output [1:0] ResultSrc,
  output MemWrite,
  output ALUSrc,
  output [1:0] immSrc,
  output RegWrite
);

  wire [1:0] ALUOp;
  
  Main_Decoder maindec(
    .zero(zero),
    .op(op),
    .PCSrc(PCSrc),
    .ResultSrc(ResultSrc),
    .MemWrite(MemWrite),
    .ALUSrc(ALUSrc),
    .immSrc(immSrc),
    .RegWrite(RegWrite),
    .ALUOp(ALUOp)
  );
  
  ALU_Decoder ALu_De(
    .funct3(funct3),
    .funct7(funct7),
    .ALUOp(ALUOp),
    .op(op), 
    .ALUControl(ALUControl) 
    );
  
endmodule
