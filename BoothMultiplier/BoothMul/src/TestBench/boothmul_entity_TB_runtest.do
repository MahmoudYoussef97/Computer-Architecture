SetActiveLib -work
comp -include "$DSN\src\BoothMultiplier.vhd" 
comp -include "$DSN\src\TestBench\boothmul_entity_TB.vhd" 
asim TESTBENCH_FOR_boothmul_entity 
wave 
wave -noreg Q
wave -noreg X
wave -noreg P
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# comp -include "$DSN\src\TestBench\boothmul_entity_TB_tim_cfg.vhd" 
# asim TIMING_FOR_boothmul_entity 
