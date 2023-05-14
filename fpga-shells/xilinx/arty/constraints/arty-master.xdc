## This file is a general .xdc for the Arty S7-25 Rev. E
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

## Clock signal

set_property -dict { PACKAGE_PIN R2    IOSTANDARD SSTL135 } [get_ports { CLK100MHZ }]; #IO_L12P_T1_MRCC_34 Sch=ddr3_clk[200]
create_clock -add -name sys_clk_pin -period 10.000 -waveform {0 5.000}  [get_ports { CLK100MHZ }];
create_clock -add -name JTCK        -period 100   -waveform {0 50} [get_ports {jd_2}];

##Switches

set_property -dict { PACKAGE_PIN H14   IOSTANDARD LVCMOS33 } [get_ports { sw_0 }]; #IO_L20N_T3_A19_15 Sch=sw[0]
set_property -dict { PACKAGE_PIN H18   IOSTANDARD LVCMOS33 } [get_ports { sw_1 }]; #IO_L21P_T3_DQS_15 Sch=sw[1]
set_property -dict { PACKAGE_PIN G18   IOSTANDARD LVCMOS33 } [get_ports { sw_2 }]; #IO_L21N_T3_DQS_A18_15 Sch=sw[2]
set_property -dict { PACKAGE_PIN M5    IOSTANDARD SSTL135 } [get_ports { sw_3 }]; #IO_L6N_T0_VREF_34 Sch=sw[3]


##RGB LEDs

set_property -dict { PACKAGE_PIN F15   IOSTANDARD LVCMOS33 } [get_ports { led0_b }]; #IO_L13N_T2_MRCC_15 Sch=led0_b
set_property -dict { PACKAGE_PIN G17   IOSTANDARD LVCMOS33 } [get_ports { led0_g }]; #IO_L14N_T2_SRCC_15 Sch=led0_g
set_property -dict { PACKAGE_PIN J15   IOSTANDARD LVCMOS33 } [get_ports { led0_r }]; #IO_L23N_T3_FWE_B_15 Sch=led0_r
set_property -dict { PACKAGE_PIN E14   IOSTANDARD LVCMOS33 } [get_ports { led1_b }]; #IO_L15P_T2_DQS_15 Sch=led1_b
set_property -dict { PACKAGE_PIN F18   IOSTANDARD LVCMOS33 } [get_ports { led1_g }]; #IO_L16P_T2_A28_15 Sch=led1_g
set_property -dict { PACKAGE_PIN E15   IOSTANDARD LVCMOS33 } [get_ports { led1_r }]; #IO_L15N_T2_DQS_ADV_B_15 Sch=led1_r


##LEDs

set_property -dict { PACKAGE_PIN E18   IOSTANDARD LVCMOS33 } [get_ports { led_0 }]; #IO_L16N_T2_A27_15 Sch=led[2]
set_property -dict { PACKAGE_PIN F13   IOSTANDARD LVCMOS33 } [get_ports { led_1 }]; #IO_L17P_T2_A26_15 Sch=led[3]
set_property -dict { PACKAGE_PIN E13   IOSTANDARD LVCMOS33 } [get_ports { led_2 }]; #IO_L17N_T2_A25_15 Sch=led[4]
set_property -dict { PACKAGE_PIN H15   IOSTANDARD LVCMOS33 } [get_ports { led_3 }]; #IO_L18P_T2_A24_15 Sch=led[5]


##Buttons

set_property -dict { PACKAGE_PIN G15   IOSTANDARD LVCMOS33 } [get_ports { btn_0 }]; #IO_L18N_T2_A23_15 Sch=btn[0]
set_property -dict { PACKAGE_PIN K16   IOSTANDARD LVCMOS33 } [get_ports { btn_1 }]; #IO_L19P_T3_A22_15 Sch=btn[1]
set_property -dict { PACKAGE_PIN J16   IOSTANDARD LVCMOS33 } [get_ports { btn_2 }]; #IO_L19N_T3_A21_VREF_15 Sch=btn[2]
set_property -dict { PACKAGE_PIN H13   IOSTANDARD LVCMOS33 } [get_ports { btn_3 }]; #IO_L20P_T3_A20_15 Sch=btn[3]


##Pmod Header JA

set_property -dict { PACKAGE_PIN L17   IOSTANDARD LVCMOS33 } [get_ports { ja_0 }]; #IO_L4P_T0_D04_14 Sch=ja_p[1]
set_property -dict { PACKAGE_PIN L18   IOSTANDARD LVCMOS33 } [get_ports { ja_1 }]; #IO_L4N_T0_D05_14 Sch=ja_n[1]
set_property -dict { PACKAGE_PIN M14   IOSTANDARD LVCMOS33 } [get_ports { ja_2 }]; #IO_L5P_T0_D06_14 Sch=ja_p[2]
set_property -dict { PACKAGE_PIN N14   IOSTANDARD LVCMOS33 } [get_ports { ja_3 }]; #IO_L5N_T0_D07_14 Sch=ja_n[2]
set_property -dict { PACKAGE_PIN M16   IOSTANDARD LVCMOS33 } [get_ports { ja_4 }]; #IO_L7P_T1_D09_14 Sch=ja_p[3]
set_property -dict { PACKAGE_PIN M17   IOSTANDARD LVCMOS33 } [get_ports { ja_5 }]; #IO_L7N_T1_D10_14 Sch=ja_n[3]
set_property -dict { PACKAGE_PIN M18   IOSTANDARD LVCMOS33 } [get_ports { ja_6 }]; #IO_L8P_T1_D11_14 Sch=ja_p[4]
set_property -dict { PACKAGE_PIN N18   IOSTANDARD LVCMOS33 } [get_ports { ja_7 }]; #IO_L8N_T1_D12_14 Sch=ja_n[4]

##Pmod Header JB

#set_property -dict { PACKAGE_PIN P17   IOSTANDARD LVCMOS33 } [get_ports { jb_0 }]; #IO_L9P_T1_DQS_14 Sch=jb_p[1]
#set_property -dict { PACKAGE_PIN P18   IOSTANDARD LVCMOS33 } [get_ports { jb_1 }]; #IO_L9N_T1_DQS_D13_14 Sch=jb_n[1]
#set_property -dict { PACKAGE_PIN R18   IOSTANDARD LVCMOS33 } [get_ports { jb_2 }]; #IO_L10P_T1_D14_14 Sch=jb_p[2]
#set_property -dict { PACKAGE_PIN T18   IOSTANDARD LVCMOS33 } [get_ports { jb_3 }]; #IO_L10N_T1_D15_14 Sch=jb_n[2]
#set_property -dict { PACKAGE_PIN P14   IOSTANDARD LVCMOS33 } [get_ports { jb_4 }]; #IO_L11P_T1_SRCC_14 Sch=jb_p[3]
#set_property -dict { PACKAGE_PIN P15   IOSTANDARD LVCMOS33 } [get_ports { jb_5 }]; #IO_L11N_T1_SRCC_14 Sch=jb_n[3]
#set_property -dict { PACKAGE_PIN N15   IOSTANDARD LVCMOS33 } [get_ports { jb_6 }]; #IO_L12P_T1_MRCC_14 Sch=jb_p[4]
#set_property -dict { PACKAGE_PIN P16   IOSTANDARD LVCMOS33 } [get_ports { jb_7 }]; #IO_L12N_T1_MRCC_14 Sch=jb_n[4]

##Pmod Header JC

#set_property -dict { PACKAGE_PIN U15   IOSTANDARD LVCMOS33 } [get_ports { jc_0 }]; #IO_L18P_T2_A12_D28_14 Sch=jc1/ck_io[41]
#set_property -dict { PACKAGE_PIN V16   IOSTANDARD LVCMOS33 } [get_ports { jc_1 }]; #IO_L18N_T2_A11_D27_14 Sch=jc2/ck_io[40]
#set_property -dict { PACKAGE_PIN U17   IOSTANDARD LVCMOS33 } [get_ports { jc_2 }]; #IO_L15P_T2_DQS_RDWR_B_14 Sch=jc3/ck_io[39]
#set_property -dict { PACKAGE_PIN U18   IOSTANDARD LVCMOS33 } [get_ports { jc_3 }]; #IO_L15N_T2_DQS_DOUT_CSO_B_14 Sch=jc4/ck_io[38]
#set_property -dict { PACKAGE_PIN U16   IOSTANDARD LVCMOS33 } [get_ports { jc_4 }]; #IO_L16P_T2_CSI_B_14 Sch=jc7/ck_io[37]
#set_property -dict { PACKAGE_PIN P13   IOSTANDARD LVCMOS33 } [get_ports { jc_5 }]; #IO_L19P_T3_A10_D26_14 Sch=jc8/ck_io[36]
#set_property -dict { PACKAGE_PIN R13   IOSTANDARD LVCMOS33 } [get_ports { jc_6 }]; #IO_L19N_T3_A09_D25_VREF_14 Sch=jc9/ck_io[35]
#set_property -dict { PACKAGE_PIN V14   IOSTANDARD LVCMOS33 } [get_ports { jc_7 }]; #IO_L20P_T3_A08_D24_14 Sch=jc10/ck_io[34]

##Pmod Header JD

set_property -dict { PACKAGE_PIN V15   IOSTANDARD LVCMOS33 } [get_ports { jd_0 }]; #IO_L20N_T3_A07_D23_14 Sch=jd1/ck_io[33]
set_property -dict { PACKAGE_PIN U12   IOSTANDARD LVCMOS33 } [get_ports { jd_1 }]; #IO_L21P_T3_DQS_14 Sch=jd2/ck_io[32]
set_property -dict { PACKAGE_PIN V13   IOSTANDARD LVCMOS33 } [get_ports { jd_2 }]; #IO_L21N_T3_DQS_A06_D22_14 Sch=jd3/ck_io[31]
#set_property -dict { PACKAGE_PIN T12   IOSTANDARD LVCMOS33 } [get_ports { jd_3 }]; #IO_L22P_T3_A05_D21_14 Sch=jd4/ck_io[30]
set_property -dict { PACKAGE_PIN T13   IOSTANDARD LVCMOS33 } [get_ports { jd_4 }]; #IO_L22N_T3_A04_D20_14 Sch=jd7/ck_io[29]
set_property -dict { PACKAGE_PIN R11   IOSTANDARD LVCMOS33 } [get_ports { jd_5 }]; #IO_L23P_T3_A03_D19_14 Sch=jd8/ck_io[28]
set_property -dict { PACKAGE_PIN T11   IOSTANDARD LVCMOS33 } [get_ports { jd_6 }]; #IO_L23N_T3_A02_D18_14 Sch=jd9/ck_io[27]
#set_property -dict { PACKAGE_PIN U11   IOSTANDARD LVCMOS33 } [get_ports { jd_7 }]; #IO_L24P_T3_A01_D17_14 Sch=jd10/ck_io[26]

##USB-UART Interface (FTDI FT2232H)

set_property -dict { PACKAGE_PIN R12   IOSTANDARD LVCMOS33 } [get_ports { uart_rxd_out }]; #IO_25_14 Sch=uart_rxd_out
set_property -dict { PACKAGE_PIN V12   IOSTANDARD LVCMOS33 } [get_ports { uart_txd_in }]; #IO_L24N_T3_A00_D16_14 Sch=uart_txd_in

##ChipKit Single Ended Analog Inputs
##NOTE: The ck_an_p pins can be used as single ended analog inputs with voltages from 0-3.3V (Chipkit Analog pins A0-A5).
##      These signals should only be connected to the XADC core. When using these pins as digital I/O, use pins ck_io[14-19].

##ChipKit Digital I/O Low

set_property -dict { PACKAGE_PIN L13   IOSTANDARD LVCMOS33 } [get_ports { ck_io_0 }]; #IO_0_14 Sch=ck_io[0]
set_property -dict { PACKAGE_PIN N13   IOSTANDARD LVCMOS33 } [get_ports { ck_io_1 }]; #IO_L6N_T0_D08_VREF_14 Sch=ck_io[1]
set_property -dict { PACKAGE_PIN L16   IOSTANDARD LVCMOS33 } [get_ports { ck_io_2 }]; #IO_L3N_T0_DQS_EMCCLK_14 Sch=ck_io[2]
set_property -dict { PACKAGE_PIN R14   IOSTANDARD LVCMOS33 } [get_ports { ck_io_3 }]; #IO_L13P_T2_MRCC_14 Sch=ck_io[3]
set_property -dict { PACKAGE_PIN T14   IOSTANDARD LVCMOS33 } [get_ports { ck_io_4 }]; #IO_L13N_T2_MRCC_14 Sch=ck_io[4]
set_property -dict { PACKAGE_PIN R16   IOSTANDARD LVCMOS33 } [get_ports { ck_io_5 }]; #IO_L14P_T2_SRCC_14 Sch=ck_io[5]
set_property -dict { PACKAGE_PIN R17   IOSTANDARD LVCMOS33 } [get_ports { ck_io_6 }]; #IO_L14N_T2_SRCC_14 Sch=ck_io[6]
set_property -dict { PACKAGE_PIN V17   IOSTANDARD LVCMOS33 } [get_ports { ck_io_7 }]; #IO_L16N_T2_A15_D31_14 Sch=ck_io[7]
set_property -dict { PACKAGE_PIN R15   IOSTANDARD LVCMOS33 } [get_ports { ck_io_8 }]; #IO_L17P_T2_A14_D30_14 Sch=ck_io[8]
set_property -dict { PACKAGE_PIN T15   IOSTANDARD LVCMOS33 } [get_ports { ck_io_9 }]; #IO_L17N_T2_A13_D29_14 Sch=ck_io[9]

##ChipKit Digital I/O On Outer Analog Header
##NOTE: These pins should be used when using the analog header signals A0-A5 as digital I/O (Chipkit digital pins 14-19)


##ChipKit Digital I/O On Inner Analog Header
##NOTE: These pins will need to be connected to the XADC core when used as differential analog inputs (Chipkit analog pins A6-A11)

##ChipKit Digital I/O High

## ChipKit SPI

## ChipKit I2C

##Misc. ChipKit signals

#set_property -dict { PACKAGE_PIN K13   IOSTANDARD LVCMOS33 } [get_ports { ck_ioa }]; #IO_25_15 Sch=ck_ioa
set_property -dict { PACKAGE_PIN C18   IOSTANDARD LVCMOS33 } [get_ports { ck_rst }]; #IO_L11N_T1_SRCC_15

##SMSC Ethernet PHY

##Quad SPI Flash

# What to do here??!! See
# https://forums.sifive.com/t/freedom-on-arty-s7-port-in-progress-but-need-some-help-please/1193/4
#set_property -dict { PACKAGE_PIN L16   IOSTANDARD LVCMOS33  IOB TRUE } [get_ports { qspi_sck }];
#create_clock -add -name qspi_sck_pin -period 20.00 -waveform {0 10}    [get_ports { qspi_sck }];
set_property -dict { PACKAGE_PIN M13   IOSTANDARD LVCMOS33  IOB TRUE } [get_ports { qspi_cs }]; #IO_L6P_T0_FCS_B_14 Sch=qspi_cs
set_property -dict { PACKAGE_PIN K17   IOSTANDARD LVCMOS33  IOB TRUE  PULLUP TRUE } [get_ports { qspi_dq_0 }]; #IO_L1P_T0_D00_MOSI_14 Sch=qspi_dq[0]
set_property -dict { PACKAGE_PIN K18   IOSTANDARD LVCMOS33  IOB TRUE  PULLUP TRUE } [get_ports { qspi_dq_1 }]; #IO_L1N_T0_D01_DIN_14 Sch=qspi_dq[1]
set_property -dict { PACKAGE_PIN L14   IOSTANDARD LVCMOS33  IOB TRUE  PULLUP TRUE } [get_ports { qspi_dq_2 }]; #IO_L2P_T0_D02_14 Sch=qspi_dq[2]
set_property -dict { PACKAGE_PIN M15   IOSTANDARD LVCMOS33  IOB TRUE  PULLUP TRUE } [get_ports { qspi_dq_3 }]; #IO_L2N_T0_D03_14 Sch=qspi_dq[3]


##Power Measurements

set_clock_groups -asynchronous \
  -group [list \
     [get_clocks -include_generated_clocks -of_objects [get_ports jd_2]]] \
  -group [list \
     [get_clocks -of_objects [get_pins ip_mmcm/inst/mmcm_adv_inst/CLKOUT0]]] \
  -group [list \
     [get_clocks -of_objects [get_pins ip_mmcm/inst/mmcm_adv_inst/CLKOUT1]] \
     [get_clocks -of_objects [get_pins ip_mmcm/inst/mmcm_adv_inst/CLKOUT2]]]
