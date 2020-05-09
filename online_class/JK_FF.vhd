----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:20:36 05/09/2020 
-- Design Name: 
-- Module Name:    JK_FF - Behavioral 
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

entity JK_FF is
    Port ( CLK : in  STD_LOGIC;
           J : in  STD_LOGIC;
           K : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Qn : out  STD_LOGIC);
end JK_FF;

architecture Behavioral of JK_FF is

signal temp, tempn:STD_LOGIC:='0';

begin
	process(CLK, J, K)
	begin
		if rising_edge(CLK) then
			if J='0' and K='0' then
				temp <= temp;
				tempn <= not tempn;
			elsif J='0' and K='1' then
				temp<='0';
				tempn<='1';
			elsif J='1' and K='1' then
				temp<='1';
				tempn<='0';
			else
				temp <= not temp;
				tempn <= not tempn;
			end if;
		end if;
	end process;
	Q<=temp; Qn<=tempn;
end Behavioral;

