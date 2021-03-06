library ieee;
use ieee.std_logic_1164.all;

entity FFJK is
	port(j,k, clock, preset,clear : in std_logic;
			q : out std_logic);
end FFJK;
	
architecture FFJK of FFJK is
	signal estado: std_logic;
	begin
		process(clock, preset, clear)
		begin
			if (preset = '1') then estado <= '1';
			elsif (clear = '1') then estado <='0';
			elsif (clock='0' and clock 'event) then
				if (j='0' and k='1') then estado <= '1';
				elsif (j='1' and k='0') then estado <='0';
				elsif (j='0' and k='0') then estado <= not estado;
				end if;
			end if;
		end process;
		q <= estado;
	end FFJK;
	