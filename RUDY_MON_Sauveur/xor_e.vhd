----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:05:18 09/20/2017 
-- Design Name: 
-- Module Name:    xor_e - archi_xor 
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
use ieee.std_logic_unsigned.all ;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity xor_e is
    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
           b : in  STD_LOGIC_VECTOR (3 downto 0);
           r : out  STD_LOGIC_VECTOR (4 downto 0));
end xor_e;

architecture archi_xor of xor_e is
--signal temp : std_logic_vector(3 downto 0);
--signal tmp : std_logic_vector(3 downto 0);
begin

	r <= '0' & (a xor b); --xor
	--temp <= not a;
	--tmp <= ('0' & std_logic_vector(unsigned(temp + 1)));
	--r <= ('0' & a) - ('0' & b);

end archi_xor;

