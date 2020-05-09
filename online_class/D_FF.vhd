----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:13:38 05/09/2020 
-- Design Name: 
-- Module Name:    D_FF - Behavioral 
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

entity D_FF is
    Port ( CLK : in  STD_LOGIC;
           D : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Qn : out  STD_LOGIC);
end D_FF;

architecture Behavioral of D_FF is

signal temp, tempn:STD_LOGIC:='0';

begin
	process(CLK, D)
	begin
		if rising_edge(CLK) then
			if D = '0' then
				temp<='0';
				tempn<='1';
			elsif D = '1' then
				temp<='1';
				tempn<='0';
			end if;
		end if;
	end process;
	Q<=temp; Qn<=tempn;
end Behavioral;

