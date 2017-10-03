----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:24:53 09/20/2017 
-- Design Name: 
-- Module Name:    exo1 - Behavioral 
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

entity exo1 is
    Port ( a : in  STD_LOGIC_VECTOR (4 downto 0);
           s : out  STD_LOGIC_VECTOR (2 downto 0));
end exo1;

architecture aexo1 of exo1 is

begin
with a select
s <= "101" when "01001",
	  "011" when "10010",
	  "001" when others;

end aexo1;

