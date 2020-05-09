LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY MUX_4_1_test IS
END MUX_4_1_test;
 
ARCHITECTURE behavior OF MUX_4_1_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MUX_4_1
    PORT(
         I0 : IN  std_logic;
         I1 : IN  std_logic;
         I2 : IN  std_logic;
         I3 : IN  std_logic;
         S0 : IN  std_logic;
         S1 : IN  std_logic;
         Y : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal I0 : std_logic := '0';
   signal I1 : std_logic := '0';
   signal I2 : std_logic := '0';
   signal I3 : std_logic := '0';
   signal S0 : std_logic := '0';
   signal S1 : std_logic := '0';

 	--Outputs
   signal Y : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MUX_4_1 PORT MAP (
          I0 => I0,
          I1 => I1,
          I2 => I2,
          I3 => I3,
          S0 => S0,
          S1 => S1,
          Y => Y
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		I3<='0'; I2<='0'; I1<='0'; I0<='1'; S1<='0'; S0<='0'; wait for 100 ns;
		I3<='0'; I2<='0'; I1<='1'; I0<='0'; S1<='0'; S0<='1'; wait for 100 ns;
		I3<='0'; I2<='1'; I1<='0'; I0<='0'; S1<='1'; S0<='0'; wait for 100 ns;
		I3<='1'; I2<='0'; I1<='0'; I0<='0'; S1<='1'; S0<='1'; wait for 100 ns;

      -- insert stimulus here 

      wait;
   end process;

END;
