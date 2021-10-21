#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/home/patricio/tools/xilinx/Vivado/2021.1/ids_lite/ISE/bin/lin64:/home/patricio/tools/xilinx/Vivado/2021.1/bin
else
  PATH=/home/patricio/tools/xilinx/Vivado/2021.1/ids_lite/ISE/bin/lin64:/home/patricio/tools/xilinx/Vivado/2021.1/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/patricio/Facultad/arqui/practico/arqui-alu/tp1/tp1.runs/synth_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log use_alu.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source use_alu.tcl
