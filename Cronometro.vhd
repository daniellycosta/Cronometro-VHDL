library ieee;
use ieee.std_logic_1164.all;

entity Cronometro is
	port (clk, iniciar, zerar : in std_logic;
			saida : out std_logic_vector (3 downto 0));
end Cronometro;

architecture Cronometro of Cronometro is

	component Contador is
		port(clock, reset, enable: in std_logic;
			  q : out std_logic_vector(3 downto 0));
	end component;
	
	component DivisorFrequencia is
		port(clock_in : in std_logic;
			  clock_out : out std_logic);
	end component;
	
	signal estado : std_logic;
		begin
			divFreq : DivisorFrequencia port map (clk, estado);
			cont: Contador port map (estado, zerar, iniciar, saida);
end Cronometro;