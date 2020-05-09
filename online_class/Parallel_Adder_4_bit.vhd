library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Parallel_Adder_4_bit is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           Cin : in  STD_LOGIC;
           S : out  STD_LOGIC_VECTOR (3 downto 0);
           Cout : out  STD_LOGIC);
end Parallel_Adder_4_bit;

architecture Behavioral of Parallel_Adder_4_bit is

component Full_Adder is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           S : out  STD_LOGIC;
           Cout : out  STD_LOGIC);
end component;

signal c_out, c_out1, c_out2: STD_LOGIC;

begin
p0:Full_Adder port map(A(0), B(0), Cin, S(0), c_out);
p1:Full_Adder port map(A(1), B(1), c_out, S(1), c_out1);
p2:Full_Adder port map(A(2), B(2), c_out1, S(2), c_out2);
p3:Full_Adder port map(A(3), B(3), c_out2, S(3), Cout);
end Behavioral;