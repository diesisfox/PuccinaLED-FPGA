//Copyright (C)2014-2022 Gowin Semiconductor Corporation.
//All rights reserved.
//File Title: IP file
//GOWIN Version: V1.9.8.09 Education
//Part Number: GW1NSR-LV4CQN48PC6/I5
//Device: GW1NSR-4C
//Created Time: Wed Apr 19 17:50:01 2023

module gamma_map (dout, clka, cea, reseta, clkb, ceb, resetb, oce, ada, din, adb);

output [15:0] dout;
input clka;
input cea;
input reseta;
input clkb;
input ceb;
input resetb;
input oce;
input [7:0] ada;
input [15:0] din;
input [7:0] adb;

wire [15:0] sdpb_inst_0_dout_w;
wire gw_vcc;
wire gw_gnd;

assign gw_vcc = 1'b1;
assign gw_gnd = 1'b0;

SDPB sdpb_inst_0 (
    .DO({sdpb_inst_0_dout_w[15:0],dout[15:0]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({gw_gnd,gw_gnd,gw_gnd}),
    .BLKSELB({gw_gnd,gw_gnd,gw_gnd}),
    .ADA({gw_gnd,gw_gnd,ada[7:0],gw_gnd,gw_gnd,gw_vcc,gw_vcc}),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[15:0]}),
    .ADB({gw_gnd,gw_gnd,adb[7:0],gw_gnd,gw_gnd,gw_gnd,gw_gnd})
);

defparam sdpb_inst_0.READ_MODE = 1'b0;
defparam sdpb_inst_0.BIT_WIDTH_0 = 16;
defparam sdpb_inst_0.BIT_WIDTH_1 = 16;
defparam sdpb_inst_0.BLK_SEL_0 = 3'b000;
defparam sdpb_inst_0.BLK_SEL_1 = 3'b000;
defparam sdpb_inst_0.RESET_MODE = "SYNC";
defparam sdpb_inst_0.INIT_RAM_00 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam sdpb_inst_0.INIT_RAM_01 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam sdpb_inst_0.INIT_RAM_02 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam sdpb_inst_0.INIT_RAM_03 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam sdpb_inst_0.INIT_RAM_04 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam sdpb_inst_0.INIT_RAM_05 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam sdpb_inst_0.INIT_RAM_06 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam sdpb_inst_0.INIT_RAM_07 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam sdpb_inst_0.INIT_RAM_08 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam sdpb_inst_0.INIT_RAM_09 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam sdpb_inst_0.INIT_RAM_0A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam sdpb_inst_0.INIT_RAM_0B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam sdpb_inst_0.INIT_RAM_0C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam sdpb_inst_0.INIT_RAM_0D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam sdpb_inst_0.INIT_RAM_0E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam sdpb_inst_0.INIT_RAM_0F = 256'h0000000000000000000000000000000000000000000000000000000000000000;

endmodule //gamma_map
