LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY MUX_test IS
END MUX_test;
 
ARCHITECTURE behavior OF MUX_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MUX_2_1
    PORT(
         I0 : IN  std_logic;
			I1 : IN  std_logic;
         S : IN  std_logic;
         Y : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal I0 : std_logic := '0';
	signal I1 : std_logic := '0';
   signal S : std_logic := '0';

 	--Outputs
   signal Y : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MUX_2_1 PORT MAP (
          I0 => I0,
			 I1 => I1,
          S => S,
          Y => Y
        );

   -- Clock process definitions
   

 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      I0<='0'; I1<='0'; S<='0'; wait for 100 ns;	
		I0<='0'; I1<='0'; S<='1'; wait for 100 ns;
		I0<='0'; I1<='1'; S<='0'; wait for 100 ns;
		I0<='0'; I1<='1'; S<='1'; wait for 100 ns;
		I0<='1'; I1<='0'; S<='0'; wait for 100 ns;	
		I0<='1'; I1<='0'; S<='1'; wait for 100 ns;
		I0<='1'; I1<='1'; S<='0'; wait for 100 ns;
		I0<='1'; I1<='1'; S<='1'; wait for 100 ns;

      -- insert stimulus here 

      wait;
   end process;

END;
