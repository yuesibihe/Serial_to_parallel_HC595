module dis_top(
               clk,
               rst_n,
               DS,
               SH_CP,
               ST_CP
                );

input clk;
input rst_n;

output DS;
output SH_CP;
output ST_CP;

wire [7:0] sel;
wire [7:0] seg;

dis dis(
        .clk(clk),
        .rst_n(rst_n),
        .sel(sel),
        .seg(seg)
         );
         
HC595 HC595(
            .clk(clk),
            .rst_n(rst_n),
            .sel(sel),
            .seg(seg),
            .en(1'b1),
            .DS(DS),
            .SH_CP(SH_CP),
            .ST_CP(ST_CP)
             );         
endmodule
                        