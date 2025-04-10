# Seven Segment Display Project

This project demonstrates the design and implementation of a seven-segment display controller using Verilog HDL and Vivado. The hardware platform used for this project is the **Nexys4 DDR FPGA development board**.

## Overview

The seven-segment display is a common output device used to display numerical data. In this project, a Verilog-based design is implemented to control the seven-segment display on the Nexys4 DDR board. The design includes functionality to display numbers and characters dynamically.

## Features

- **Verilog HDL**: The controller is implemented in Verilog for modularity and reusability.
- **Vivado Design Suite**: Used for synthesis, simulation, and implementation.
- **Dynamic Display**: Supports multiplexing to control multiple digits.
- **Configurable Input**: Displays numbers or characters based on input signals.

## Hardware Requirements

- **Nexys4 DDR FPGA Board**
- On-board seven-segment display
- USB cable for programming

## Software Requirements

- **Vivado Design Suite** (Version 2020.2 or later recommended)

## Project Structure

- `src/`: Contains Verilog source files for the seven-segment display controller.
- `constraints/`: XDC file for pin assignments specific to Nexys4 DDR.
- `simulation/`: Testbenches for verifying functionality.
- `README.md`: Project documentation.

## Implementation Details

1. **Multiplexing**: The design uses time-division multiplexing to control multiple digits of the seven-segment display.
2. **Decoder Logic**: A decoder converts binary input to the corresponding seven-segment pattern.
3. **Clock Divider**: A clock divider is implemented to slow down the FPGA clock for human-readable display updates.

## Usage

1. Clone the repository and open the project in Vivado.
2. Synthesize and implement the design.
3. Program the Nexys4 DDR board using the generated bitstream.
4. Provide input signals to observe the output on the seven-segment display.

## Future Enhancements

- Add support for alphanumeric characters.
- Implement brightness control using PWM.
- Extend functionality for custom animations.

## License

This project is licensed under the MIT License. See the `LICENSE` file for details.

## Acknowledgments

Special thanks to the FPGA community and Digilent for providing excellent resources and documentation for the Nexys4 DDR board.