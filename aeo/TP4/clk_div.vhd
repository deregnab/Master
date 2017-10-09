----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:18:18 10/04/2017 
-- Design Name: 
-- Module Name:    clk_div - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity clk_div is
    Port ( clk : in  STD_LOGIC;
           clk_4hz : out  STD_LOGIC);
end clk_div;

architecture Behavioral of clk_div is
signal sortie : STD_LOGIC := '0';
begin

process(clk)
  variable cpt : unsigned(23 downto 0):= (others => '0');
begin
	if (clk'event and clk='1') then
		cpt:= cpt + 1;
		if cpt = X"BEBC20" then
			cpt := (others => '0');
			sortie <= NOT sortie;
		end if;
	end if;
end process;
	clk_4hz <= sortie;
end Behavioral;

