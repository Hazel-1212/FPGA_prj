# Full Adder Design with Gate-Level Modeling

This project demonstrates the implementation of a **Full Adder** using gate-level modeling in digital design. A full adder is a combinational circuit that performs the arithmetic sum of three input bits: two significant bits and a carry bit.

## Features
- Designed using basic logic gates: AND, OR, and XOR.
- Implements the sum and carry-out logic for three input bits.
- Suitable for use in larger arithmetic circuits like ripple-carry adders.

## Truth Table

| Input A | Input B | Carry In | Sum | Carry Out |
|---------|---------|----------|-----|-----------|
|    0    |    0    |     0    |  0  |     0     |
|    0    |    0    |     1    |  1  |     0     |
|    0    |    1    |     0    |  1  |     0     |
|    0    |    1    |     1    |  0  |     1     |
|    1    |    0    |     0    |  1  |     0     |
|    1    |    0    |     1    |  0  |     1     |
|    1    |    1    |     0    |  0  |     1     |
|    1    |    1    |     1    |  1  |     1     |

## Logic Equations
- **Sum** = A ⊕ B ⊕ Carry In
- **Carry Out** = (A ⋅ B) + (B ⋅ Carry In) + (A ⋅ Carry In)

## File Structure
- `full_adder.v`: Verilog file containing the gate-level implementation.
- `testbench.v`: Testbench for verifying the functionality of the full adder.
- `README.md`: Project documentation.

## Simulation
To simulate the design:
1. Use a Verilog simulator like ModelSim or Vivado.
2. Compile `full_adder.v` and `testbench.v`.
3. Run the simulation to verify the truth table and logic.

## Applications
- Arithmetic Logic Units (ALUs)
- Binary addition in digital systems
- Building blocks for multi-bit adders

## License
This project is open-source and available under the [MIT License](LICENSE).
