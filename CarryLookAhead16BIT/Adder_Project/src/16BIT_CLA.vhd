-------------------------------------------------------------------------------
--
-- Title       : CLA16_entity
-- Design      : Adder_Project
-- Author      : Mahmoud Youssef
-- Company     : Faculty of Engineering
--
-------------------------------------------------------------------------------
--
-- File        : 16BIT_CLA.vhd
-- Generated   : Tue May  1 19:01:34 2018
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
--{entity {CLA16_entity} architecture {CLA16_arch}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity CLA16_entity is
	 port(
		 Cin : in STD_LOGIC;
		 x : in STD_LOGIC_VECTOR(15 downto 0);
		 y : in STD_LOGIC_VECTOR(15 downto 0);
		 s : out STD_LOGIC_VECTOR(15 downto 0)
	     );
end CLA16_entity;

--}} End of automatically maintained section

architecture CLA16_arch of CLA16_entity is	 
signal c : STD_LOGIC_VECTOR ( 4 downto 1);
signal pi : STD_LOGIC_VECTOR ( 3 downto 0);
signal gi : STD_LOGIC_VECTOR ( 3 downto 0);

Component CLA4_entity is
	 port(
		 C : in STD_LOGIC;
		 Xin : in STD_LOGIC_VECTOR(3 downto 0);
		 Yin : in STD_LOGIC_VECTOR(3 downto 0);
		 Pi : out STD_LOGIC; 
		 Gi : out STD_LOGIC;
		 Sum : out STD_LOGIC_VECTOR(3 downto 0)
	     );
end Component; 

Component CLA_entity is
	 port(
		 Cin : in STD_LOGIC;
		 P : in STD_LOGIC_VECTOR(3 downto 0);
		 G : in STD_LOGIC_VECTOR(3 downto 0);
		 C : out STD_LOGIC_VECTOR(4 downto 1)
	     );
end Component;

begin

	-- enter your statements here --	 
	L0 : CLA_entity  port map (Cin, pi, gi, c);
	L1 : CLA4_entity port map(Cin,x(3 downto 0), y(3 downto 0), pi(0), gi(0), s(3 downto 0));
	L2 : CLA4_entity port map(C(1), x(7 downto 4), y(7 downto 4), pi(1), gpi(1), s(7 downto 4));
	L3 : CLA4_entity port map(C(2), x(11 downto 8), y(11 downto 8), pi(2), gi(2), s(11 downto 8));
	L4 : CLA4_entity port map(C(3), x(15 downto 12), y(15 downto 12), pi(3), gi(3), s(15 downto 12));

end CLA16_arch;
