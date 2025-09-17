# FPGA Design (Using Verilog HDL)

## Day 1

Installed Verilator and Simple DirectMedia Layer to simulate VGA output when using Verilog in VSCode. Also installed internal extensions within VSCode for Verilog features.

- Verilator converts Verilog to C++

- SDL displays the graphics to simulate VGA graphical output

- C++ builds simulation exec.

- WSL since Verilator and SDL are easier to install in Linux env.

Had to create an SSH key to clone the repo into the proper directory since all installations were done inside of WSL.

## Day 2

I decided to create a simple 64 bit adder and have corresponding graphical output (TBD). Instead of using Ripple Carry Adders which run sequentially (i.e. first adder calculates carry-out, second adder receives it then does calculations that include the previous carry-out then carry-out’s itself etc. etc.) Will likely use Carry Look-Ahead Adders which are slightly more complex and offer faster calculation times. The individual adders are just duplicates of each other so this process should be fairly easy.
