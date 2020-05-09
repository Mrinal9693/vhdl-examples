----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:44:26 04/06/2020 
-- Design Name: 
-- Module Name:    Full_Adder - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Full_Adder is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           S : out  STD_LOGIC;
           Cout : out  STD_LOGIC);
end Full_Adder;

architecture Behavioral of Full_Adder is

component Half_Adder is
Port ( A : in  STD_LOGIC;
	    B : in  STD_LOGIC;
	    S : out  STD_LOGIC;
	    Cout : out  STD_LOGIC);
end component;

component OR_gate is
Port ( A : in  STD_LOGIC;
       B : in  STD_LOGIC;
       C : out  STD_LOGIC);
end component;

signal x,y,z: STD_LOGIC;

begin
f0:Half_Adder port map(A,B,x,y);
f1:Half_Adder port map(x,Cin,S,z);
f2:OR_gate port map(y,z,Cout);  
end Behavioral;