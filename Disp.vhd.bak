library IEEE;
use IEEE.std_logic_1164.all;

Entity Disp IS
Port(A,B,C:IN std_logic;
		x,y,z,d,e,f,g:OUT std_logic);
END Disp;

Architecture Disp OF Disp IS
Begin
	x <= (not(A) and not(B) and C) or (A and not(B) and not(C));
	y <= (A and not(B) and C) or (A and B and not(C));
	z <= not(A) and B and not(C);
	d <= (not(A) and not(B) and C) or (A and not(B) and not(C)) or (A and B and C);
	e <= not((not(A) and not(B) and not(C)) or (not(A) and B and not(C)) or (A and B and not(C)));
	f <= not((not(A) and not(B) and not(C)) or (A and not(B) and not(C)) or (A and not(B) and C) or (A and B and not(C)));
	g <= (not(A) and not(B) and not(C)) or (not(A) and not(B) and C) or (A and B and C);
End Disp;