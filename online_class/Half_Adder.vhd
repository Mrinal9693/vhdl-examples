library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Half_Adder is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           S : out  STD_LOGIC;
           Cout : out  STD_LOGIC);
end Half_Adder;

architecture Behavioral of Half_Adder is

begin
S <= A XOR B;
Cout <= A AND B;
end Behavioral;

