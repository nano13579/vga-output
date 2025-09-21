`default_nettype none

module controller (
    input pixel_clk,
    input reset,
    output [9:0] x, // 800 pixels horizontal
    output [9:0] y, // 525 pixels vertical
    output hsync,
    output vsync,
    output vid_on

)

    parameter horizontal_active = 640;
    parameter horizontal_max = 799;
    parameter horizontal_fp = 16;
    parameter horizontal_bp = 48;
    parameter horizontal_retrace = 96;

    parameter vertical_active = 640;
    parameter vertical_max = 799;
    parameter vertical_fp = 16;
    parameter vertical_bp = 48;
    parameter vertical_retrace = 96;
 
endmodule;