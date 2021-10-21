#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2021.1 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Wed Oct 20 21:16:43 -03 2021
# SW Build 3247384 on Thu Jun 10 19:36:07 MDT 2021
#
# IP Build 3246043 on Fri Jun 11 00:30:35 MDT 2021
#
# usage: elaborate.sh
#
# ****************************************************************************
set -Eeuo pipefail
# elaborate design
echo "xelab -wto 292bfd3cf49b44f5b170b7b8bea0fe79 --incr --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot use_alu_tb_behav xil_defaultlib.use_alu_tb xil_defaultlib.glbl -log elaborate.log"
xelab -wto 292bfd3cf49b44f5b170b7b8bea0fe79 --incr --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot use_alu_tb_behav xil_defaultlib.use_alu_tb xil_defaultlib.glbl -log elaborate.log

