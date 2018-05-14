SetActiveLib -work
comp -include "$DSN\src\SEQ_MUL.vhd" 
comp -include "$DSN\src\TestBench\seqmul_entity_TB.vhd" 
asim TESTBENCH_FOR_seqmul_entity 
wave 
wave -noreg M
wave -noreg Q
wave -noreg P
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# comp -include "$DSN\src\TestBench\seqmul_entity_TB_tim_cfg.vhd" 
# asim TIMING_FOR_seqmul_entity 
