----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/05/2019 02:11:47 PM
-- Design Name: 
-- Module Name: Problem8_3 - Behavioral
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

entity Problem8_3 is
Port (a1, a2, b1, b2, d1: in std_logic;
      e_out: out std_logic);
end Problem8_3;

architecture Behavioral of Problem8_3 is

signal a_out, b_out, c_out: std_logic;

begin
    a_out <= a1 and a2;
    b_out <= b1 or b2;
    c_out <= b2 and not d1;

    e_out <= a_out or b_out or c_out;

end Behavioral;
