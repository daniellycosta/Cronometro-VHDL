library ieee;
use ieee.std_logic_1164.all;

entity DivisorFrequencia is
	port(clock_in : in std_logic;
			clock_out : out std_logic);
end DivisorFrequencia;

architecture DivisorFrequencia of DivisorFrequencia is

	signal contagem_divisor : integer:= 1;
	signal estado : std_logic;
	
	begin
		process(clock_in, contagem_divisor)
		begin
			if(clock_in = '1' and clock_in'EVENT) then
				if contagem_divisor = 50000 then --Para um clock de 50MHz
					estado <= not estado;
					contagem_divisor <= 1;
				else
					contagem_divisor <= contagem_divisor + 1;
				end if;
			end if;
		end process;
		
		clock_out <= estado;
		
end DivisorFrequencia;