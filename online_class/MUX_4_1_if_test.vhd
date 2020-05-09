LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY MUX_4_1_if_test IS
END MUX_4_1_if_test;
 
ARCHITECTURE behavior OF MUX_4_1_if_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MUX_4_1_if
    PORT(
         S : IN  std_logic_vector(1 downto 0);
         I : IN  std_logic_vector(3 downto 0);
         Y : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal S : std_logic_vector(1 downto 0) := (others => '0');
   signal I : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Y : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MUX_4_1_if PORT MAP (
          S => S,
          I => I,
          Y => Y
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      S<="00"; I<="0001"; 
		wait for 100 ns;	
		S<="01"; I<="0010"; 
		wait for 100 ns;
      S<="10"; I<="0100"; 
		wait for 100 ns;
		S<="11"; I<="1000"; 
		wait for 100 ns;	

      wait;
   end process;

END;
