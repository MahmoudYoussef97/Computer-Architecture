library ieee;
use ieee.std_logic_1164.all;

	-- Add your library and packages declaration here ...

entity cla16_entity_tb is
end cla16_entity_tb;

architecture TB_ARCHITECTURE of cla16_entity_tb is
	-- Component declaration of the tested unit
	component cla16_entity
	port(
		Cin : in STD_LOGIC;
		x : in STD_LOGIC_VECTOR(15 downto 0);
		y : in STD_LOGIC_VECTOR(15 downto 0);
		s : out STD_LOGIC_VECTOR(15 downto 0) );
	end component;

	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	signal Cin : STD_LOGIC;
	signal x : STD_LOGIC_VECTOR(15 downto 0);
	signal y : STD_LOGIC_VECTOR(15 downto 0);
	-- Observed signals - signals mapped to the output ports of tested entity
	signal s : STD_LOGIC_VECTOR(15 downto 0);

	-- Add your code here ...

begin

	-- Unit Under Test port map
	UUT : cla16_entity
		port map (
			Cin => Cin,
			x => x,
			y => y,
			s => s
		);

	-- Add your stimulus here ...  
		process
		begin
		x <= "0000000000000111";
		y <= "0000000000010000";
		Cin <= '0';
		wait for 100 ns;
		end process;

end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_cla16_entity of cla16_entity_tb is
	for TB_ARCHITECTURE
		for UUT : cla16_entity
			use entity work.cla16_entity(cla16_arch);
		end for;
	end for;
end TESTBENCH_FOR_cla16_entity;

