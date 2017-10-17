----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:26:28 10/04/2017 
-- Design Name: 
-- Module Name:    td_ex2 - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity td_ex2 is
    Port ( clk : in  STD_LOGIC;
           raz : in  STD_LOGIC;
			  enable : in STD_LOGIC;
           qs : out  STD_LOGIC_VECTOR (15 downto 0));
end td_ex2;

architecture Behavioral of td_ex2 is

	signal q : std_logic_vector(15 downto 0);  

begin

	process(clk) 
	begin 
		if clk'event and clk='1' then
			if raz='1' then
				q<=(others=>'0');
			else
				q<=q+1;
			end if;
		end if;
	end process; 

	qs <= q when enable = '1' else (others=>'Z');

end Behavioral;

