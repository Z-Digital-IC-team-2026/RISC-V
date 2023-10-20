# RISC-V

# Single-Cycle RISC-V Processor

## Introduction

Welcome to the Single-Cycle RISC-V Processor repository. This project presents a complete design and implementation of a single-cycle RISC-V processor, adhering to the RISC-V instruction set architecture (ISA). The primary objective is to create a processor capable of executing each instruction within a single clock cycle, providing an efficient and straightforward design approach.

## Features

- **Single-Cycle Execution:** The processor is designed to execute each instruction in a single clock cycle, resulting in simplified control logic and efficient processing.

- **RISC-V ISA Compatibility:** The processor strictly adheres to the RISC-V instruction set architecture, ensuring compatibility with RISC-V programs, compilers, and development tools.

- **Arithmetic and Logic Operations:** The processor supports a range of arithmetic and logic operations, including addition, subtraction, logical AND, logical OR, and more, providing essential computation capabilities.

## Architecture

![Complete Single-Cycle RISC-V Processor](<"https://i.ibb.co/9Z0Nt7c/Screenshot-2023-10-20-172317.png" alt="Screenshot-2023-10-20-172317">)

The architecture of the Single-Cycle RISC-V Processor is based on the RISC-V ISA and comprises the following key components:

- **Instruction Memory (IMem):** This component stores the program instructions that need to be executed by the processor.

- **Data Memory (DMem):** The data memory is used for data storage and facilitates load and store operations within the processor.

- **Control Unit:** The control unit governs the overall operation of the processor, ensuring correct instruction execution and proper handling of control signals.

- **Data Path Components:** The data path is constructed by integrating the Arithmetic Logic Unit (ALU), which handles arithmetic and logic operations according to the executing instruction. Additionally, the Register File holds the data being processed by the ALU and other processor components, along with the Program Counter for managing the program's execution flow.

For a detailed and in-depth understanding of the architecture and its components, please refer to the source files and accompanying documentation within this repository.

## Supported RISC-V Instructions

The RISC-V architecture provides a variety of instructions, and this single-cycle processor implementation supports the following instructions:

- **Load Word (lw):** Loads a 32-bit word from memory into a register.

- **Store Word (sw):** Stores a 32-bit word from a register into memory.

- **Add Immediate (addi):** Adds a 16-bit immediate value to the value in a register.

- **Branch Equal (beq):** Branches to a target address if the values in two registers are equal.

- **Jump and Jump Register (jal, j):** Jumps to a target address, either with or without saving the return address in a register.

- **R-type instructions (Arithmetic and Logical Operations):** Supported instructions include add, sub, slt, and mul. These instructions perform arithmetic and logical operations on register operands.

## Implementation

The implementation of the Single-Cycle RISC-V Processor is primarily done using Verilog HDL. The design involves defining the components and interconnections, ensuring their proper functionality, and strictly adhering to the specifications of the RISC-V ISA.

## Contributing

Contributions to this project are highly appreciated. If you encounter any issues, have suggestions for improvements, or wish to contribute new features, please adhere to the standard GitHub contribution process. Feel free to open an issue to discuss problems or create a pull request to propose changes.

## License

This project is licensed under the MIT License, which grants permissions for both personal and commercial use. You are allowed to modify, distribute, sublicense, and use the software. Refer to the LICENSE file for the complete details of the license agreement.
