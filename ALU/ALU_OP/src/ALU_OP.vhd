-------------------------------------------------------------------------------
--
-- Title       : ALU_entity
-- Design      : ALU_OP
-- Author      : Mahmoud Youssef
-- Company     : Faculty of Engineering
--
-------------------------------------------------------------------------------
--
-- File        : ALU_OP.vhd
-- Generated   : Tue May  1 21:39:06 2018
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.20
--
-------------------------------------------------------------------------------
--
-- Description :	Design 8-bit ALU with inputs (A , B) and Z as output which is capable of carrying out 16 operation, but for now only implement the following operations:
--					No operation
--					Z=A
--					ADD
--					Z=A+B
--					SUB
--					Z=A-B
--					Increment
--					Z=A+1
--					Decrement
--					Z=A-1
--					Zero
--					Z=0
--					SHL
--					Shift left
--					SHR
--					Shift right
--					ROL
--					Rotate left
--					ROR
--					Rotate Right
-------------------------------------------------------------------------------

--{{ Section below this comment is automatically maintained
--   and may be overwritten
--{entity {ALU_entity} architecture {ALU_arch}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ALUOP_Package.all;
use IEEE.std_logic_unsigned.all; 
USE ieee.numeric_std.ALL;
entity ALU_entity is
	 port(
		 Sel : in ALU_OP;
		 A : in STD_LOGIC_VECTOR(7 downto 0);
		 B : in STD_LOGIC_VECTOR(7 downto 0);
		 Z : out STD_LOGIC_VECTOR(7 downto 0)
	     );
end ALU_entity;

--}} End of automatically maintained section

architecture ALU_arch of ALU_entity is
begin

	-- enter your statements here --	
	
	process(Sel, A, B)	
	variable tmp1 : BIT_VECTOR(7 downto 0):="00000000";
	variable tmp2 : integer := 0;
	variable res : BIT_VECTOR(7 downto 0):="00000000";
	begin 
	 	case Sel is
					when NO_OPERATION => Z <= A;
					when SHL =>				
					tmp1 := to_bitvector(A);
					tmp2 := to_integer(signed(B));
					res := tmp1 sll tmp2;
					Z <= to_StdLogicVector(res);
					when SHR =>
					tmp1 := to_bitvector(A);
					tmp2 := to_integer(signed(B));
					res := tmp1 srl tmp2;
					Z <= to_StdLogicVector(res);
					when ROLC =>
					tmp1 := to_bitvector(A);
					tmp2 := to_integer(signed(B));
					res := tmp1 rol tmp2;
					Z <= to_StdLogicVector(res);
					when RORC =>
					tmp1 := to_bitvector(A);
					tmp2 := to_integer(signed(B));
					res := tmp1 ror tmp2;
					Z <= to_StdLogicVector(res);
					when ADD => Z <= A + B;
					when SUB=> Z <= A - B;
					when INCREMENT => Z <= A + "00000001";
					when DECREMENT => Z <= A - "00000001";
					when ZERO => Z <= "00000000";
		 end case;
		end process;

end ALU_arch;
