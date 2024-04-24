`timescale 1ns / 1ps

module fish_timer(
    input clk,  
    output reg clk_sec,
    output reg [15:0] count_down,
    input q_base_play,
    input q_line_reel,
    input rst
);

reg [64:0] count; 

always @(posedge clk) begin
    if (count == 50000000) begin  
        clk_sec <= ~clk_sec;      
        count <= 0;             
    end else begin
        count <= count + 1;    
    end
end

always @(posedge clk_sec, posedge rst) begin
    if (rst)
        count_down <= 30;
    else begin
        if (q_base_play || q_line_reel) begin
            count_down <= count_down - 1;
        end
        else begin
            count_down <= 30;
        end
    end
end


endmodule
