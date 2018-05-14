-------------------------------------------------------------------------------
--
-- Title       : CLA_entity
-- Design      : Adder_Project
-- Author      : Mahmoud Youssef
-- Company     : Faculty of Engineering
--
-------------------------------------------------------------------------------
--
-- File        : CarryLookAhead.vhd
-- Generated   : Sat Apr 28 02:49:13 2018
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
--{entity {CLA_entity} architecture {CLA_arch}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity CLA_entity is
	 port(
		 Cin : in STD_LOGIC;
		 P : in STD_LOGIC_VECTOR(3 downto 0);
		 G : in STD_LOGIC_VECTOR(3 downto 0);
		 C : out STD_LOGIC_VECTOR(4 downto 1)
	     );
end CLA_entity;

--}} End of automatically maintained section

architecture CLA_arch of CLA_entity is
begin

	-- enter your statements here -- 
	C(1) <= G(0)or ( p(0) and Cin );
	C(2) <= G(1) or ( p(1) and G(0) ) or ( P(1) and P(0) and Cin );	 
	C(3) <= G(2) or ( P(2) and G(1) ) or ( P(2) and P(1) and G(0) ) or ( P(2) and P(1) and P(0) and Cin );
	C(4) <= G(3) or ( P(3) and G(2) ) or ( P(3) and P(2) and G(1) ) or ( P(3) and P(2) and P(1) and G(0) ) or ( P(3) and P(2) and P(1) and P(0) and Cin);

end CLA_arch;
