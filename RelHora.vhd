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
	
	component Disp is
		Port(A,B,C:IN std_logic;
			x,y,z,d,e,f,g:OUT std_logic);
		end component;
		
		signal estado1,estado2: std_logic_vector(3 downto 0);
		begin
			contHora1: Contador2 port map(clock_in,'0','0','1',estado1(0),estado1(1),estado1(2));
			contHora2: Contador2 port map( not (estado1(0)and estado1(1) and estado1(2)),'0','0','1',estado2(0),estado2(1),estado2(2)); 
			DispHora1: Disp port map(estado1(1),estado1(2),estado1(3),hora1(0),hora1(1),hora1(2),hora1(3),hora1(4),hora1(5));
			DispHora2: Disp port map(estado2(1),estado2(2),estado2(3),hora2(0),hora2(1),hora2(2),hora2(3),hora2(4),hora2(5));
end RelHora;
