--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:03:43 05/08/2020
-- Design Name:   
-- Module Name:   /home/nibba/Xilinx/online_class/DEMUX_1_4_case_test.vhd
-- Project Name:  online_class
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: DEMUX_1_4_case
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
 
ENTITY DEMUX_1_4_case_test IS
END DEMUX_1_4_case_test;
 
ARCHITECTURE behavior OF DEMUX_1_4_case_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT DEMUX_1_4_case
    PORT(
         I : IN  std_logic;
         S : IN  std_logic_vector(1 downto 0);
         D : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal I : std_logic := '0';
   signal S : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal D : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DEMUX_1_4_case PORT MAP (
          I => I,
          S => S,
          D => D
        );


 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		S<="00"; I<='1';
		wait for 100 ns;
		S<="01"; I<='1';
		wait for 100 ns;
		S<="10"; I<='1';
		wait for 100 ns;
		S<="11"; I<='1';
		wait for 100 ns;

      -- insert stimulus here 

      wait;
   end process;

END;
