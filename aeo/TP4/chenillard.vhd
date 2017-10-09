----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:49:43 10/04/2017 
-- Design Name: 
-- Module Name:    chenillard - Behavioral 
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

entity chenillard is
	Port ( btn : in  STD_LOGIC_VECTOR (4 downto 0);
           sw : in  STD_LOGIC_VECTOR (7 downto 0);
           clk : in  STD_LOGIC;
           led : out  STD_LOGIC_VECTOR (7 downto 0)
			);
end chenillard;

architecture Behavioral of chenillard is

signal sortie_clk_4hz : STD_LOGIC;

	COMPONENT shift_vector
	PORT(
		btn : IN std_logic_vector(4 downto 0);
		sw : IN std_logic_vector(7 downto 0);
		clk : IN std_logic;          
		led : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	COMPONENT clk_div
		PORT(
			clk : IN std_logic;          
			clk_4hz : OUT std_logic
			);
	END COMPONENT;
	
begin

	Inst_shift_vector: shift_vector PORT MAP(
		btn => btn,
		sw => sw,
		clk => clk,
		led => led
	);
	
	Inst_clk_div: clk_div PORT MAP(
		clk => clk,
		clk_4hz => sortie_clk_4hz
	);
	
	clk <= sortie_clk_4hz;

end Behavioral;

