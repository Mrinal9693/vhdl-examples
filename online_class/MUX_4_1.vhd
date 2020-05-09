library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX_4_1 is
    Port ( I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           I2 : in  STD_LOGIC;
           I3 : in  STD_LOGIC;
           S0 : in  STD_LOGIC;
           S1 : in  STD_LOGIC;
           Y : out  STD_LOGIC);
end MUX_4_1;

architecture Behavioral of MUX_4_1 is

begin
Process(I3, I2, I1, I0, S1, S0)
begin
Y <= (((not S1) and (not S0) and I0) or ((not S1) and S0 and I1)) or ((S1 and (not S0) and I2) or (S1 and S0 and I3));
end process;
end Behavioral;
