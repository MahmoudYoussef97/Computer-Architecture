SetActiveLib -work
comp -include "$DSN\src\B_Cell.vhd" 
comp -include "$DSN\src\CarryLookAhead.vhd" 
comp -include "$DSN\src\4BIT_CLA.vhd" 
comp -include "$DSN\src\16BIT_CLA.vhd" 
comp -include "$DSN\src\TestBench\cla16_entity_TB.vhd" 
asim TESTBENCH_FOR_cla16_entity 
wave 
wave -noreg Cin
wave -noreg x
wave -noreg y
wave -noreg s
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# comp -include "$DSN\src\TestBench\cla16_entity_TB_tim_cfg.vhd" 
# asim TIMING_FOR_cla16_entity 
