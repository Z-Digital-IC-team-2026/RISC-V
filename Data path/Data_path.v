module Data_path(
input clk, reset_n,
  
  input [1:0] ResultSrc, ImmSrc,
  
  input MemWrite, ALUSrc, RegWrite, PCSrc, 
  input [2:0] ALUControl,
  
  input [31:0] Instr, ReadData,
  output [31:0] PC,
  output [31:0] ALUResult,
  output [31:0] WriteData,
  output Zero
);
  wire [31:0] SrcA, SrcB;
  wire [31:0] ImmExt;
  wire [31:0] PCPlus4;
  wire [31:0] PCTarget;
  wire [31:0] PCNext;
  wire [31:0] Result;
  
  Register_file U1(
    .clk(clk),
    .reset_n(reset_n),
    .A1(Instr[19:15]),
    .A2(Instr[24:20]),
    .A3(Instr[11:7]),
    .WD3(Result),
    .WE3(RegWrite),
    .RD1(SrcA),
    .RD2(WriteData)
  );

  Mux U2(
    .in0(WriteData),
    .in1(ImmExt),
    .sel(ALUSrc),
    .out(SrcB)
  );

  Sign_Extend U3(
    .Instr(Instr[31:7]),
    .ImmSrc(ImmSrc),
    .ImmExt(ImmExt)
  );
  PC U4(
    .clk(clk),
    .reset_n(reset_n),
    .inp(PCNext),
    .out(PC)
  );
  Adder U5(
    .inp1(PC),
    .inp2(32'd4),
    .sum(PCPlus4)
  );
    Adder U6(
    .inp1(PC),
    .inp2(ImmExt),
    .sum(PCTarget)
  );
    Mux U7(
    .in0(PCPlus4),
    .in1(PCTarget),
    .sel(PCSrc),
    .out(PCNext)
  );
  ALU U8(
    .inp1(SrcA),
    .inp2(SrcB),
    .sel(ALUControl),
    .out(ALUResult),
    .zero_flag(Zero)
  );
  mux3 U9(
    .inp1(ALUResult),
    .inp2(ReadData),
    .inp3(PCPlus4),
    .sel(ResultSrc),
    .out(Result)
  );
endmodule
