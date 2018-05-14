-------------------------------------------------------------------------------
--
-- Title       : SEQMUL_entity
-- Design      : SeqMultiplier
-- Author      : Mahmoud Youssef
-- Company     : Faculty of Engineering
--
-------------------------------------------------------------------------------
--
-- File        : SEQ_MUL.vhd
-- Generated   : Tue May  1 19:47:11 2018
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.20
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------

--{{ Section below this comment is automatically maintained
--   and may be overwritten
--{entity {SEQMUL_entity} architecture {SEQMUL_arch}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all; 


entity SEQMUL_entity is
	 port(
		 M : in SIGNED (7 downto 0);
		 Q : in SIGNED(7 downto 0);
		 P : out SIGNED(15 downto 0)
	     );
end SEQMUL_entity;

--}} End of automatically maintained section

architecture SEQMUL_arch of SEQMUL_entity is
begin										   
	
	process(M, Q) 
	variable tmp1 : SIGNED(7 downto 0);
	variable tmp2 : SIGNED(7 downto 0);
	variable res : SIGNED(16 downto 0);
	variable c_tmp : SIGNED(8 downto 0);
	begin
	tmp1(7 downto 0) := Q;
	res(7 downto 0) := tmp1;
	res(16 downto 8) := "000000000";
	tmp2 (7 downto 0) := M; 
	c_tmp := "000000000";
	for i in 0 to 7 loop
		if (res(0) = '1') then 
			c_tmp := tmp2 + res(16 downto 8);
			res := c_tmp & tmp1;
			res := res srl 1;
			tmp1 := res(7 downto 0);
		else
			res := res srl 1;
			tmp1 := res(7 downto 0);
		end if;		
	end loop;	
		p(15 downto 0) <= res(15 downto 0);
		end process;

	 -- enter your statements here --

end SEQMUL_arch;
