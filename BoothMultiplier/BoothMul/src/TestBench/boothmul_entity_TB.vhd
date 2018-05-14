library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

	-- Add your library and packages declaration here ...

entity boothmul_entity_tb is
end boothmul_entity_tb;

architecture TB_ARCHITECTURE of boothmul_entity_tb is
	-- Component declaration of the tested unit
	component boothmul_entity
	port(
		Q : in SIGNED(7 downto 0);
		X : in SIGNED(7 downto 0);
		P : out SIGNED(15 downto 0) );
	end component;

	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	signal Q : SIGNED(7 downto 0);
	signal X : SIGNED(7 downto 0);
	-- Observed signals - signals mapped to the output ports of tested entity
	signal P : SIGNED(15 downto 0);

	-- Add your code here ...

begin

	-- Unit Under Test port map
	UUT : boothmul_entity
		port map (
			Q => Q,
			X => X,
			P => P
		);

	-- Add your stimulus here ...	
	
	process
	begin 
		X <= "00000100";
		Q <= "00000010";
		wait for 100 ns;  
		X <= "00000100";
		Q <= "00000100";
		wait for 100 ns;
		X <= "00000100";
		Q <= "00000100";
		wait for 100 ns;
		X <= "00000100";
		Q <= "00000010";
		wait for 100 ns;
		end process;

end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_boothmul_entity of boothmul_entity_tb is
	for TB_ARCHITECTURE
		for UUT : boothmul_entity
			use entity work.boothmul_entity(boothmul_arch);
		end for;
	end for;
end TESTBENCH_FOR_boothmul_entity;

