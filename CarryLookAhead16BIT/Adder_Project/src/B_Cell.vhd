-------------------------------------------------------------------------------
--
-- Title       : B_entity
-- Design      : Adder_Project
-- Author      : Mahmoud Youssef
-- Company     : Faculty of Engineering
--
-------------------------------------------------------------------------------
--
-- File        : B_Cell.vhd
-- Generated   : Sat Apr 28 03:00:32 2018
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
--{entity {B_entity} architecture {B_arch}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity B_entity is
	 port(
		 x : in STD_LOGIC;
		 y : in STD_LOGIC;
		 ci : in STD_LOGIC;
		 p : out STD_LOGIC;
		 g : out STD_LOGIC;
		 s : out STD_LOGIC
	     );
end B_entity;

--}} End of automatically maintained section

architecture B_arch of B_entity is
begin

	-- enter your statements here -- 
	s <= x xor y xor ci;
	p <= x xor y;  
	g <= x and y;

end B_arch;
