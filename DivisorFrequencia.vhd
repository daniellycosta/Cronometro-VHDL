library ieee;
use ieee.std_logic_1164.all;

entity DivisorFrequencia is
	port(clock_in : in std_logic;
		  clock_out_hora, clock_out_min, clock_out_seg, clock_out_centSeg: out std_logic);
end DivisorFrequencia;

architecture DivisorFrequencia of DivisorFrequencia is

	signal contagem_divisor_hora,contagem_divisor_min,contagem_divisor_seg,contagem_divisor_cent : integer:= 1;
	signal estado_hora, estado_min, estado_seg, estado_cent : std_logic;
	
	begin
		process(clock_in, contagem_divisor)
		begin
			if(clock_in = '1' and clock_in'EVENT) then 
				if contagem_divisor_cent = 500000 then --Para um clock de 50MHz -- centesimos
					estado_cent <= not estado_cent;
					contagem_divisor_cent <= 1;
					
					if contagem_divisor_seg = 100 then -- segundos
						estado_seg <= not estado_seg;
						contagem_divisor_seg <= 1;
						
						if contagem_divisor_min = 60 then -- minutos
							estado_min <= not estado_min;
							contagem_divisor_min <= 1;
							contagem_divisor_hora <= contagem_divisor_hora + 1;
							
							if contagem_divisor_hora = 60; -- horas
								estado_hora <= not estado_hora;
								contagem_divisor_hora <= 1;
							else --horas
								contagem_divisor_hora <= contagem_divisor_hora + 1;
							end if;
						
						else -- minutos
							contagem_divisor_min <= contagem_divisor_min + 1;
						end if;
						
					else -- segundos
						contagem_divisor_seg <= contagem_divisor_seg + 1;
					end if;
						
				else -- centesimos
					contagem_divisor_cent <= contagem_divisor_cent + 1;
				end if;
			end if;
		end process;
		
		clock_out <= estado;
		
end DivisorFrequencia;