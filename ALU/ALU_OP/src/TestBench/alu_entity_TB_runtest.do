SetActiveLib -work
comp -include "$DSN\src\ALU_OP.vhd" 
comp -include "$DSN\src\TestBench\alu_entity_TB.vhd" 
asim TESTBENCH_FOR_alu_entity 
wave 
wave -noreg Sel
wave -noreg A
wave -noreg B
wave -noreg Z
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# comp -include "$DSN\src\TestBench\alu_entity_TB_tim_cfg.vhd" 
# asim TIMING_FOR_alu_entity 
