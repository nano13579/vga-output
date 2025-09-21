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

## Day 3

Starting with the VGA aspect of things,

- HSYNC goes through pixel data line by line horizontally. An HSYNC pulse is sent once a line is completed and the process is repeated for consecutive lines

- Once HSYNC maxes, a VSYNC pulse is created, starting the next frame from the top left corner (default)

- Horizontal/Vertical Retrace is the time that it takes for pulse to be sent/created and the next line/frame to start

- Retrace periods = Back Porch (time before) + Front Porch (time after)

- Aiming for a 640 x 480 display area (calculations for horizontal and vertical maxes will be done accordingly)

TODO: find the clock speed (MHz) according to dimensions and frame speed and specs for ice40up5k

## Day 4

Will use a 25.175 MHz clock. The standard number of horizontal pixels is 800, therefore max is 799. Total active pixels is 640 horizontally. Generally the front porch for 640 x 480 is 16 pixels and retrace is generally 96 pixels. So 800 - 640 - 16 - 96 = 48 which is the width of the horizontal back porch in pixels. Same calculations go for vertical widths only with a standard horizontal pixel width of 524 pixels and 10 pixels for front porch and 2 pixels for retrace. 
