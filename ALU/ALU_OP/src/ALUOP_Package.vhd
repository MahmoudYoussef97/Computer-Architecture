-------------------------------------------------------------------------------
--
-- Title       : ALUOP_Package
-- Design      : ALU_OP
-- Author      : Mahmoud Youssef
-- Company     : Faculty of Engineering
--
-------------------------------------------------------------------------------
--
-- File        : ALUOP_Package.vhd
-- Generated   : Tue May  1 22:00:02 2018
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
--{entity {ALUOP_Package} architecture {ALUOP_Package}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity ALUOP_entity is
end ALUOP_entity;

--}} End of automatically maintained section

package ALUOP_Package is 

   
        type ALU_OP is (NO_OPERATION, ADD, SUB, ZERO, SHR, SHL, ROLC, RORC, INCREMENT, DECREMENT);

end ALUOP_Package; 


architecture ALUOP_arch of ALUOP_entity is
begin

	 -- enter your statements here --

end ALUOP_arch;
