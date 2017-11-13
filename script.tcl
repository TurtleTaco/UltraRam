############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project proj_sum_io
set_top sum_io
add_files sum_io.cpp
open_solution "solution1"
set_part {xcvu9p-fsgd2104-3-e-es1}
create_clock -period 4 -name default
source "./proj_sum_io/solution1/directives.tcl"
#csim_design -compiler gcc
csynth_design
#cosim_design
export_design -rtl verilog -format ip_catalog
