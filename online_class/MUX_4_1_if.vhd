library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX_4_1_if is
    Port ( S : in  STD_LOGIC_VECTOR (1 downto 0);
           I : in  STD_LOGIC_VECTOR (3 downto 0);
           Y : out  STD_LOGIC);
end MUX_4_1_if;

architecture Behavioral of MUX_4_1_if is

begin
	Process(S,I)
	begin
		if(S(1 downto 0) = "00")
		then Y<=I(0);
		elsif(S(1 downto 0) = "01")
		then Y<=I(1);
		elsif(S(1 downto 0) = "10")
		then Y<=I(2);
		elsif(S(1 downto 0) = "11")
		then Y<=I(3);
		end if;
	end process;
end Behavioral;

