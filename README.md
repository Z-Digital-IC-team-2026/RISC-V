# RISC-V

# Single-Cycle RISC-V Processor

## Introduction

Welcome to the Single-Cycle RISC-V Processor repository. This project presents a complete design and implementation of a single-cycle RISC-V processor, adhering to the RISC-V instruction set architecture (ISA). The primary objective is to create a processor capable of executing each instruction within a single clock cycle, providing an efficient and straightforward design approach.

## Features

- **Single-Cycle Execution:** The processor is designed to execute each instruction in a single clock cycle, resulting in simplified control logic and efficient processing.

- **RISC-V ISA Compatibility:** The processor strictly adheres to the RISC-V instruction set architecture, ensuring compatibility with RISC-V programs, compilers, and development tools.

- **Arithmetic and Logic Operations:** The processor supports a range of arithmetic and logic operations, including addition, subtraction, logical AND, logical OR, and more, providing essential computation capabilities.

## Architecture

![Complete Single-Cycle RISC-V Processor](<https://i.ibb.co/9Z0Nt7c/Screenshot-2023-10-20-172317.png>)

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

The RISC-V Verilog Projects represent a remarkable collaborative effort to implement the open-source RISC-V instruction set architecture (ISA) using Verilog, a hardware description language. This initiative has been made possible by the dedication and expertise of several key contributors, including:

Omar Mongy: A talented hardware engineer with a deep understanding of digital design and Verilog, Omar Mongy has been an essential part of the RISC-V Verilog Projects. His innovative contributions have played a crucial role in bringing the RISC-V ISA to life in hardware form.

Khaled Mohamed: Khaled Mohamed is another accomplished member of the team, bringing his knowledge of digital logic and Verilog to the table. His work has been instrumental in developing the RISC-V processor cores and associated components.

Mohamed Nabawi: Mohamed Nabawi's dedication and expertise in Verilog have been invaluable to the RISC-V Verilog Projects. He has made significant contributions to the implementation of the RISC-V ISA and the associated tooling.

These contributors have collectively worked to design, simulate, and synthesize RISC-V processor cores and related hardware components in Verilog, making it possible for developers and enthusiasts to explore and experiment with the RISC-V architecture in the realm of digital hardware design.

The RISC-V Verilog Projects serve as a testament to the power of open-source collaboration and the commitment of individuals like Omar Mongy, Khaled Mohamed, and Mohamed Nabawi in advancing open standards and fostering innovation in the field of computer architecture. Their dedication has helped make RISC-V accessible to a broader community of hardware designers and researchers, further promoting open and customizable computing solutions.

## License

This project is licensed under the MIT License, which grants permissions for both personal and commercial use. You are allowed to modify, distribute, sublicense, and use the software. Refer to the LICENSE file for the complete details of the license agreement.
