LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY DFF1 IS 
	PORT( D, CK : IN  STD_LOGIC;
			  Q     : OUT STD_LOGIC);
END DFF1;

ARCHITECTURE ARCH OF DFF1 IS
BEGIN
	PROCESS(CK)
	BEGIN
		IF RISING_EDGE(CK) THEN Q <= D;
		END IF;
	END PROCESS;
END ARCH;
