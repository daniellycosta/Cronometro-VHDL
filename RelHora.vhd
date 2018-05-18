library ieee;
use ieee.std_logic_1164.all;

entity RelHora is
port(clock_in : in std_logic;
	  hora1 : out std_logic_vector(6 downto 0);
	  hora2: out std_logic_vector(6 downto 0));
end RelHora;

architecture RelHora of Relhora is
	component Contador2 is
		port(clk, res, pres,enable: in std_logic;
			s : out std_logic_vector (3 downto 0));
	end component;
end RelHora;
