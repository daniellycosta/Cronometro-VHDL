library ieee;
use ieee.std_logic_1164.all;

entity RelHora is
port(clock : in std_logic;
	  hora1 : out std_logic_vector(6 downto 0);
	  hora2: out std_logic_vector(6 downto 0));
end RelHora;

architecture RelHora of Relhora is
	component Contador2 is
		port(clk, res, pres,enable: in std_logic;
			s : out std_logic_vector (3 downto 0));
	end component;
	
	component DivisorFrequencia is
		port(clock_in : in std_logic;
			  clock_out : out std_logic);
	end component;
	
	component Disp is
		Port(entrada:IN std_logic_vector(3 downto 0));
				saida:OUT std_logic_vector(6 downto 0));
		end component;
		
		signal estado1, estado2: std_logic_vector(3 downto 0);
		signal estadoDivFreq: std_logic;
		
		begin
			rel: DivisorFrequencia port map(clock, estadoDivFreq);
			contHora1: Contador2 port map(estadoDivFreq,'0','0','1',estado1);
			contHora2: Contador2 port map((not (estado1(0) and estado1(1) and estado1(2))),'0','0','1',estado2); 
			DispHora1: Disp port map(estado1,hora);
			DispHora2: Disp port map(estado2,hora2);
end RelHora;
