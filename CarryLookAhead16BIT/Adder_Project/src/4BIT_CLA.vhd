-------------------------------------------------------------------------------
--
-- Title       : CLA4_entity
-- Design      : Adder_Project
-- Author      : Mahmoud Youssef
-- Company     : Faculty of Engineering
--
-------------------------------------------------------------------------------
--
-- File        : 4BIT_CLA.vhd
-- Generated   : Sat Apr 28 03:14:00 2018
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
--{entity {CLA4_entity} architecture {CLA4_arch}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity CLA4_entity is
	 port(
		 C : in STD_LOGIC;
		 Xin : in STD_LOGIC_VECTOR(3 downto 0);
		 Yin : in STD_LOGIC_VECTOR(3 downto 0);
		 Pi : out STD_LOGIC; 
		 Gi : out STD_LOGIC;
		 Sum : out STD_LOGIC_VECTOR(3 downto 0)
	     );
end CLA4_entity;

--}} End of automatically maintained section

architecture CLA4_arch of CLA4_entity is 
signal Pint : STD_LOGIC_VECTOR (3 downto 0);
signal Gint : STD_LOGIC_VECTOR (3 downto 0);
signal Cint : STD_LOGIC_VECTOR (4 downto 1);

Component B_entity is 
	port(
		 x : in STD_LOGIC;
		 y : in STD_LOGIC;
		 ci : in STD_LOGIC;
		 p : out STD_LOGIC;
		 g : out STD_LOGIC;
		 s : out STD_LOGIC
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
	
	U0 : CLA_entity port map (C, Pint, Gint, Cint);
	U1 : B_entity port map (Xin(0), Yin(0), C, Pint(0), Gint(0), Sum(0));
	U2 : B_entity port map (Xin(1), Yin(1), Cint(1), Pint(1), Gint(1), Sum(1)); 
	U3 : B_entity port map (Xin(2), Yin(2), Cint(2), Pint(2), Gint(2), Sum(2));
	U4 : B_entity port map (Xin(3), Yin(3), Cint(3), Pint(3), Gint(3), Sum(3));	  
	Pi <= Pint(3) and Pint(2) and Pint(1) and Pint(0);
	Gi <= Gint(3) or (Pint(3) and Gint(2)) or (Pint(3) and Pint(2) and Gint(1)) or (Pint(3) and Pint(2) and Pint(1) and Gint(0));

end CLA4_arch;
