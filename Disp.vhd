library IEEE;
use IEEE.std_logic_1164.all;

Entity Disp IS
Port(entrada:IN std_logic_vector(3 downto 0));
		saida:OUT std_logic_vector(6 downto 0));
END Disp;

Architecture Disp OF Disp IS
Begin
	saida(0) <= "0000" or "0010" or "0011" or "0101" or "0110" or "0111" or "1000" or "1001"; --a
	saida(1) <= "0000" or "0001" or "0010" or "0011" or "0100" or "0111" or "1000" or "1001"; --b
	saida(2) <= "0000" or "0001" or "0011" or "0100" or "0101" or "0110" or "0111" or "1000" or "1001"; --c
	saida(3) <= "0000" or "0010" or "0011" or "0101" or "0110" or "1000"; --d
	saida(4) <= "0000" or "0010" or "0110" or "1000"; --e
	saida(5) <= "0000" or "0100" or "0101" or "0110" or "1000" or "1001"; --f
	saida(6) <= "0010" or "0011" or "0100" or "0101" or "0110" or "1000" or "1001"; --g
End Disp;