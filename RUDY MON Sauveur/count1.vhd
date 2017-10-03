----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:59:35 09/27/2017 
-- Design Name: 
-- Module Name:    count1 - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

use ieee.std_logic_arith.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity count1 is
    Port ( a : in  STD_LOGIC_VECTOR (7 downto 0);
           s : out  STD_LOGIC_VECTOR (4 downto 0));
end count1;

architecture Behavioral of count1 is

begin
	process
	    variable N : INTEGER; 

	begin
	  N := 0; 
		for i in a'range loop
			if a(i) = '1'
			then
				N := N + 1;
			end if;
		end loop;
		s <= conv_std_logic_vector(N,5);
	end process;

end Behavioral;

