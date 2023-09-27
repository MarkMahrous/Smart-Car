library ieee; 
use ieee.std_logic_1164.all;

entity MyProject is port(
IR : in std_logic;
track : in std_logic;
motor : out std_logic;
seven1, seven2, seven3, seven4, seven5 : out std_logic_vector(0 to 6)
);
end MyProject;

architecture arch of MyProject is
begin
process (IR, track)
	begin
	if IR='0'
		then motor<='0';
	else
		motor <='1';
	end if;
	if track='0'
		then
		seven1 <= "0001000";
		seven2 <= "1110001";
		seven3 <= "0110000";
		seven4 <= "1111010";
		seven5 <= "1110000";
	else
		seven1 <= "1111111";
		seven2 <= "1111111";
		seven3 <= "1111111";
		seven4 <= "1111111";
		seven5 <= "1111111";
	end if;
	end process;
end arch;

