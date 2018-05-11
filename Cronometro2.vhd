library ieee;
use ieee.std_logic_1164.all;

entity Cronometro2 is
	port (clk, iniciar, zerar : in std_logic;
			saida : out std_logic_vector (3 downto 0));
end Cronometro2;

architecture Cronometro2 of Cronometro2 is

	component Contador2 is
		port(clk, res, pres,enable: in std_logic;
			s : out std_logic_vector (3 downto 0));
	end component;
	
	component DivisorFrequencia is
		port(clock_in : in std_logic;
			  clock_out : out std_logic);
	end component;
	
	signal estado : std_logic;
		begin  
			divFreq : DivisorFrequencia port map (clk, estado);
			cont: Contador2 port map (estado and enable, zerar, '0' ,iniciar, saida);
end Cronometro2;