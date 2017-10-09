----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:58:24 10/04/2017 
-- Design Name: 
-- Module Name:    td_ex1 - Behavioral 
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

entity td_ex1 is
	Port(D, clk, reset : in Std_Logic; 
			Q : out Std_Logic); 
end td_ex1;

architecture Behavioral of td_ex1 is
begin
process (clk) -- En rajoutant le reset dans le process, on obtient un flip flop asynchrone (fdc)
begin
if (clk'event and clk='1') then  -- rising_edge(clk)  fait "à peu prés" la même chose proposé ds la bilio IEEE
											-- en ajoutant la condition du reset directement dans la condition, sans condition else,
											-- on obtient un flip flop enable (fde)
	if (reset = '1') then			-- de cette manière, on obtient un flip flop synchrone (fdr)
		Q <= '0';
	else
		Q <= D;
	end if;
end if ;
end process ;

end Behavioral;

