----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:56:26 05/08/2020 
-- Design Name: 
-- Module Name:    DEMUX_1_4_case - Behavioral 
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

entity DEMUX_1_4_case is
    Port ( I : in  STD_LOGIC;
           S : in  STD_LOGIC_VECTOR (1 downto 0);
           D : out  STD_LOGIC_VECTOR (3 downto 0));
end DEMUX_1_4_case;

architecture Behavioral of DEMUX_1_4_case is

begin
	Process(S, I)
	begin
		D <= (others => '0');
		case S is
			when "00" => D(0)<=I;
			when "01" => D(1)<=I;
			when "10" => D(2)<=I;
			when "11" => D(3)<=I;
		end case;
	end process;
end Behavioral;

