----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/05/2019 02:30:00 PM
-- Design Name: 
-- Module Name: Problem8_7 - if_statement
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

entity Problem8_7 is
Port (D: in std_logic_vector(2 downto 0);
      output: out std_logic_vector(7 downto 0));
end Problem8_7;

architecture if_statement of Problem8_7 is
begin
    process(D)
    begin
        if      (D = "000") then output <= "00000001";
        elsif   (D = "001") then output <= "00000010";
        elsif   (D = "010") then output <= "00000100";
        elsif   (D = "011") then output <= "00001000";
        elsif   (D = "100") then output <= "00010000";
        elsif   (D = "101") then output <= "00100000";
        elsif   (D = "110") then output <= "01000000";
        elsif   (D = "111") then output <= "10000000";
        else output <= "00000000";
        end if;
        end process;
end if_statement;

architecture case_statement of Problem8_7 is
begin
    process(D)
    begin
        case(D) is
        when "000" => output <= "00000001";
        when "001" => output <= "00000010";
        when "010" => output <= "00000100";
        when "011" => output <= "00001000";
        when "100" => output <= "00010000";
        when "101" => output <= "00100000";
        when "110" => output <= "01000000";
        when "111" => output <= "10000000";
        when others => output <= "00000000";
        end case;
    end process;
end case_statement;
