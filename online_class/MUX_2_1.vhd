library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX_2_1 is
    Port ( I0 : in  STD_LOGIC;
			  I1 : in STD_LOGIC;
           S : in  STD_LOGIC;
           Y : out  STD_LOGIC);
end MUX_2_1;

architecture Behavioral of MUX_2_1 is

begin
Process(I0, I1, S)
begin
Y <= ((not S) and I0) or (S and I1);
end process;
end Behavioral;

