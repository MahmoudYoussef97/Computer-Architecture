-------------------------------------------------------------------------------
--
-- Title       : BoothMul_entity
-- Design      : BoothMul
-- Author      : Mahmoud Youssef
-- Company     : Faculty of Engineering
--
-------------------------------------------------------------------------------
--
-- File        : BoothMultiplier.vhd
-- Generated   : Fri May  4 16:57:52 2018
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
--{entity {BoothMul_entity} architecture {BoothMul_arch}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.NUMERIC_STD.all;
entity BoothMul_entity is
	 port(
		 X : in signed(7 downto 0);
		 Q : in signed(7 downto 0);
		 P : out signed(15 downto 0)
	     );
end BoothMul_entity;

--}} End of automatically maintained section

architecture BoothMul_arch of BoothMul_entity is
begin  
	
	-- enter your statements here --	  
	
	process (X,Q)
	variable Q_TMP : signed (8 downto 0);
	variable X_TMP : signed (15 downto 0);
	variable MUL : signed (15 downto 0); 

	begin
		X_TMP := "0000000000000000";
		MUL := "0000000000000000";
		Q_TMP (8 downto 0) := "000000000";
		Q_TMP (8 downto 1) := Q;
		for i in 0 to 7 loop
			X_TMP (7 downto 0) := X; 
			if(X(7)='0') then
			X_TMP (15 downto 8):= "00000000";  
			else
			X_TMP (15 downto 8):= "11111111";
			end if;
			if ((Q_tmp(i+1 downto i) = "10")) then
				X_TMP := - X_TMP;
				X_TMP := X_TMP sll i;
				MUL := MUL + X_TMP;
			elsif((Q_tmp(i+1 downto i) = "01")) then
				 X_TMP := X_TMP sll i;
				 MUL := MUL + X_TMP; 
			end if;	  
			end loop;
			P <= MUL;
		
	end process;

end BoothMul_arch;
