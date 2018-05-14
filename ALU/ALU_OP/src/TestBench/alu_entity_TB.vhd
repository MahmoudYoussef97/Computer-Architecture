library ALU_OP;
use ALU_OP.aluop_package.all;
library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

	-- Add your library and packages declaration here ...

entity alu_entity_tb is
end alu_entity_tb;

architecture TB_ARCHITECTURE of alu_entity_tb is
	-- Component declaration of the tested unit
	component alu_entity
	port(
		Sel : in ALU_OP;
		A : in STD_LOGIC_VECTOR(7 downto 0);
		B : in STD_LOGIC_VECTOR(7 downto 0);
		Z : out STD_LOGIC_VECTOR(7 downto 0) );
	end component;

	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	signal Sel : ALU_OP;
	signal A : STD_LOGIC_VECTOR(7 downto 0);
	signal B : STD_LOGIC_VECTOR(7 downto 0);
	-- Observed signals - signals mapped to the output ports of tested entity
	signal Z : STD_LOGIC_VECTOR(7 downto 0);

	-- Add your code here ...

begin

	-- Unit Under Test port map
	UUT : alu_entity
		port map (
			Sel => Sel,
			A => A,
			B => B,
			Z => Z
		);

	-- Add your stimulus here ... 
	
	process
	begin
		Sel <= ADD;
		A <= "00000100";
		B <= "00000001";  
		wait for 50 ns;
		Sel <= NO_OPERATION;
		A <= "00000111";
		B <= "00000011";  
		wait for 50 ns;
		Sel <= SHR;
		A <= "00001100";
		B <= "00000010";  
		wait for 50 ns;
		end process;

end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_alu_entity of alu_entity_tb is
	for TB_ARCHITECTURE
		for UUT : alu_entity
			use entity work.alu_entity(alu_arch);
		end for;
	end for;
end TESTBENCH_FOR_alu_entity;

