LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;


ENTITY MUX IS
	PORT(
		A, B, C : IN  STD_LOGIC;
		S       : IN  STD_LOGIC_VECTOR( 1 DOWNTO 0);
		F, G    : OUT STD_LOGIC
		);
END MUX;


ARCHITECTURE ARCH OF MUX IS
	COMPONENT MUX4TO1
		PORT(
		A : IN  STD_LOGIC_VECTOR( 3 DOWNTO 0 );
		S : IN  STD_LOGIC_VECTOR( 1 DOWNTO 0 );
		Y : OUT STD_LOGIC
		);
	END COMPONENT;
	
	SIGNAL TMP1 : STD_LOGIC;
	SIGNAL TMP2 : STD_LOGIC;
	SIGNAL TMP3 : STD_LOGIC;

BEGIN 
	F <= ( A OR B) AND (NOT C);
	TMP1 <= B AND C;
	TMP2 <= C;
	TMP3 <= A XOR B;
	U : MUX4TO1 PORT MAP( A(0) => TMP1, A(1) => TMP1, A(2) => TMP2, A(3) => TMP3, S => S, Y => G);
END ARCH;

