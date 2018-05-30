ibrary ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all; --Para usar a conversão de integer para binário de 4 bits

entity Contador is
	port(clock, reset, enable: in std_logic;
			q : out std_logic_vector(3 downto 0));
end Contador;

architecture Contador of Contador is
signal contagem : integer range 0 to 15;
	begin
		process(clock, reset)
		begin
			if (reset = '1') then
				contagem <= 0;
			elsif (clock'EVENT and clock = '1') then
				if (enable = '1') then
					contagem <= contagem +1;
				end if;
			end if;
			q <= conv_std_logic_vector(contagem,4);
		end process;
		
end Contador;