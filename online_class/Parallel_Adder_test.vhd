LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY Parallel_Adder_test IS
END Parallel_Adder_test;
 
ARCHITECTURE behavior OF Parallel_Adder_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Parallel_Adder_4_bit
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         Cin : IN  std_logic;
         S : OUT  std_logic_vector(3 downto 0);
         Cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal Cin : std_logic := '0';

 	--Outputs
   signal S : std_logic_vector(3 downto 0);
   signal Cout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Parallel_Adder_4_bit PORT MAP (
          A => A,
          B => B,
          Cin => Cin,
          S => S,
          Cout => Cout
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      A<="1100"; B<="0010"; Cin<='0'; wait for 100 ns;	



      -- insert stimulus here 

      wait;
   end process;

END;
