library ieee;
use ieee.std_logic_1164.all;

entity Contador2 is
	port(clk, res, pres,enable: in std_logic;
			s : out std_logic_vector(3 downto 0));
end Contador2;

architecture Contador2 of Contador2 is
signal saux: std_logic_vector(3 downto 0);

component FFJK is
	port(j,k, clock, preset,clear : in std_logic;
			q : out std_logic);
end component;

begin
	s <= saux;
	ffjk1: FFJK port map('0','0',clk and enable,pres,res,saux(0));
	ffjk2: FFJK port map('0','0',saux(0),pres,res,saux(1));
	ffjk3: FFJK port map('0','0',saux(1),pres,res,saux(2));
	ffjk4: FFJK port map('0','0',saux(2),pres,res,saux(3));

end Contador2;
