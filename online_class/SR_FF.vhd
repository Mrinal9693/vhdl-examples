----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:58:41 05/09/2020 
-- Design Name: 
-- Module Name:    SR_FF - Behavioral 
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

entity SR_FF is
    Port ( CLK : in  STD_LOGIC;
           S : in  STD_LOGIC;
           R : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Qn : out  STD_LOGIC);
end SR_FF;

architecture Behavioral of SR_FF is

signal temp, tempn:STD_LOGIC:='0';

begin
Process(CLK, S, R)
	begin
		if rising_edge(CLK) then
			if S='0' and R='0' then
				temp <= temp;
				tempn <= not tempn;
			elsif S='0' and R='1' then
				temp <= '0';
				tempn <= '1';
			elsif S='1' and R='0' then
				temp <= '1';
				tempn <= '0';
			else
				temp <= 'X';
				tempn <= 'X';
			end if;
		end if;
	end process;

Q <= temp; Qn <= tempn;

end Behavioral;

