----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:34:31 05/09/2020 
-- Design Name: 
-- Module Name:    MUX_4_1_using_2_1 - Behavioral 
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

entity MUX_4_1_using_2_1 is
    Port ( I : in  STD_LOGIC_VECTOR (3 downto 0);
           S : in  STD_LOGIC_VECTOR (1 downto 0);
           Y : out  STD_LOGIC);
end MUX_4_1_using_2_1;

architecture Behavioral of MUX_4_1_using_2_1 is

component MUX_2_1 is
    Port ( I0 : in  STD_LOGIC;
			  I1 : in STD_LOGIC;
           S : in  STD_LOGIC;
           Y : out  STD_LOGIC);
end component;

signal p,q: STD_LOGIC;

begin
f0: MUX_2_1 port map(I(0), I(1), S(0), p);
f1: MUX_2_1 port map(I(2), I(3), S(0), q);
f2: MUX_2_1 port map(p, q, S(1), Y);
end Behavioral;

