# Simple script for compiling a vhdl file for simulation
# fcampi@sfu.ca / atino@sfu.ca

# Cleaning the work folder (This should not be done if compiling incrementally)
\rm -rf work

# Creating and mapping to logic name work the local work library
vlib work
vmap work work

# Compiling the VHDL code for simulation
vcom ../vhdl/fpu_double/fpupack.vhd
vcom ../vhdl/fpu_double/comppack.vhd
vcom ../vhdl/fpu_double/fpu_double.vhd
vcom ../vhdl/fpu_double/fpu_add.vhd
vcom ../vhdl/fpu_double/fpu_sub.vhd
vcom ../vhdl/fpu_double/fpu_mul.vhd
vcom ../vhdl/fpu_double/fpu_div.vhd
vcom ../vhdl/fpu_double/fpu_round.vhd
vcom ../vhdl/fpu_double/fpu_exceptions.vhd
vcom ../vhdl/fpu_double/fpu_double_TB.vhd #-novopt 
