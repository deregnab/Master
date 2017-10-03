----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:08:50 09/26/2017 
-- Design Name: 
-- Module Name:    multiplexer - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity multiplexer is
    Port ( a : in  STD_LOGIC_VECTOR (4 downto 0);
           b : in  STD_LOGIC_VECTOR (4 downto 0);
           c : in  STD_LOGIC_VECTOR (4 downto 0);
           d : in  STD_LOGIC_VECTOR (4 downto 0);
           e : in  STD_LOGIC_VECTOR (4 downto 0);
           f : in  STD_LOGIC_VECTOR (4 downto 0);
           g : in  STD_LOGIC_VECTOR (4 downto 0);
			adr : IN STD_LOGIC_VECTOR (4 downto 0);
          s : out  STD_LOGIC_VECTOR (4 downto 0));
end multiplexer;




architecture Behavioral of multiplexer is

begin
with adr select
s <= a when "00000",
	  b when "00010",
	  c when "00001",
	  d when "00011",
	  e when "00100",
	  f when "01000",
	  g when others;

end Behavioral;

