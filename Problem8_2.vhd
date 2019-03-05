----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/05/2019 10:53:32 AM
-- Design Name: 
-- Module Name: Problem8_2 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Problem8_2 is
Port (a1,a2,b1,b2,d1: in std_logic;
      E_out: out std_logic);
end Problem8_2;

architecture case_statement of Problem8_2 is --made another architecture of the same entity because it does the same thing(for this homework problem)
    
signal a_out, b_out, c_out: std_logic;
signal abc: std_logic_vector(2 downto 0);

begin 
a_out <= a1 and a2;
b_out <= b1 or b2;
c_out <= b2 and d1;
abc <= a_out & b_out & c_out;
    process(abc)
    begin
        case(abc) is
        when "000" => e_out <= '0';
        when "--1" => e_out <= '1';
        when "-1-" => e_out <= '1';
        when "1--" => e_out <= '1';
        when others => e_out <='0';
        end case;
    end process;
end case_statement;
