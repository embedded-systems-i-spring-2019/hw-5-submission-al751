----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/05/2019 02:16:02 PM
-- Design Name: 
-- Module Name: Problem8_6 - Behavioral
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

entity Problem8_6 is
Port (D: in std_logic_vector(7 downto 0);
      SEL: in std_logic_vector(2 downto 0);
      output: out std_logic);
end Problem8_6;

architecture case_statement of Problem8_6 is

begin
    Process(SEL, D)
    begin
        case(SEL) is
            when "000" => output <= D(0);
            when "001" => output <= D(1);
            when "010" => output <= D(2);
            when "011" => output <= D(3);
            when "100" => output <= D(4);
            when "101" => output <= D(5);
            when "110" => output <= D(6);
            when "111" => output <= D(7);
       end case;
   end process; 
end case_statement;

---------------IF Statement-----------------

architecture if_statement of Problem8_6 is 

begin
    Process(SEL, D)
    begin
        if      (SEL = "000") then output <= D(0);
        elsif   (SEL = "001") then output <= D(1);
        elsif   (SEL = "010") then output <= D(2);
        elsif   (SEL = "011") then output <= D(3);
        elsif   (SEL = "100") then output <= D(4);
        elsif   (SEL = "101") then output <= D(5);
        elsif   (SEL = "110") then output <= D(6);
        elsif   (SEL = "111") then output <= D(7);
        end if;
    end process;
end if_statement;