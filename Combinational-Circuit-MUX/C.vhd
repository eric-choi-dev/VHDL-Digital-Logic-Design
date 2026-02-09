LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY C IS

PORT (
	S: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	L: OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
END C;


ARCHITECTURE Behavior OF C IS
BEGIN	
	
	L(0) <= (S(0) and S(1) and not S(3))
	or (S(1) and not S(2) and not S(3))
	or (not S(0) and not S(1) and not S(2));
	
	L(1) <= (not S(0) and not S(1) and not S(2) and S(3));
	
	L(2) <= (not S(0) and not S(1) and not S(2) and not S(3));
	
	L(3) <= (S(1) and S(2) and not S(3));
	
END Behavior;