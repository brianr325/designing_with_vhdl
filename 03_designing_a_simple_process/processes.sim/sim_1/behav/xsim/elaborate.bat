@echo off
REM ****************************************************************************
REM Vivado (TM) v2019.1 (64-bit)
REM
REM Filename    : elaborate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for elaborating the compiled design
REM
REM Generated by Vivado on Fri Jun 05 16:13:57 -0400 2020
REM SW Build 2552052 on Fri May 24 14:49:42 MDT 2019
REM
REM Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
REM
REM usage: elaborate.bat
REM
REM ****************************************************************************
echo "xelab -wto f7b61bc6a7ec45c7b47a0bf5c6337c56 --incr --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot reset_bridge_tb_behav xil_defaultlib.reset_bridge_tb -log elaborate.log"
call xelab  -wto f7b61bc6a7ec45c7b47a0bf5c6337c56 --incr --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot reset_bridge_tb_behav xil_defaultlib.reset_bridge_tb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0