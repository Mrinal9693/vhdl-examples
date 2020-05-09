--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:40:19 05/09/2020
-- Design Name:   
-- Module Name:   /home/nibba/Xilinx/online_class/MUX_4_1_using_2_1_test.vhd
-- Project Name:  online_class
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MUX_4_1_using_2_1
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY MUX_4_1_using_2_1_test IS
END MUX_4_1_using_2_1_test;
 
ARCHITECTURE behavior OF MUX_4_1_using_2_1_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MUX_4_1_using_2_1
    PORT(
         I : IN  std_logic_vector(3 downto 0);
         S : IN  std_logic_vector(1 downto 0);
         Y : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal I : std_logic_vector(3 downto 0) := (others => '0');
   signal S : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal Y : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MUX_4_1_using_2_1 PORT MAP (
          I => I,
          S => S,
          Y => Y
        );

   -- Clock process definitions
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      I<="0001"; S<="00"; wait for 100 ns;
		I<="0010"; S<="01"; wait for 100 ns;
		I<="0100"; S<="10"; wait for 100 ns;
		I<="1000"; S<="11"; wait for 100 ns;


      -- insert stimulus here 
      -- insert stimulus here 

      wait;
   end process;

END;
