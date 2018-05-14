library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

	-- Add your library and packages declaration here ...

entity seqmul_entity_tb is
end seqmul_entity_tb;

architecture TB_ARCHITECTURE of seqmul_entity_tb is
	-- Component declaration of the tested unit
	component seqmul_entity
	port(
		M : in SIGNED(7 downto 0);
		Q : in SIGNED(7 downto 0);
		P : out SIGNED(15 downto 0) );
	end component;

	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	signal M : SIGNED(7 downto 0);
	signal Q : SIGNED(7 downto 0);
	-- Observed signals - signals mapped to the output ports of tested entity
	signal P : SIGNED(15 downto 0);

	-- Add your code here ...

begin

	-- Unit Under Test port map
	UUT : seqmul_entity
		port map (
			M => M,
			Q => Q,
			P => P
		);

	-- Add your stimulus here ...  
	
	process
	begin	
		M <= "00001000";
		Q <= "00000111";   
		wait for 100 ns;
		end process;
			

end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_seqmul_entity of seqmul_entity_tb is
	for TB_ARCHITECTURE
		for UUT : seqmul_entity
			use entity work.seqmul_entity(seqmul_arch);
		end for;
	end for;
end TESTBENCH_FOR_seqmul_entity;

