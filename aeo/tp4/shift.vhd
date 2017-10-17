----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:16:10 10/04/2017 
-- Design Name: 
-- Module Name:    shift - Behavioral 
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

entity shift is
    Port ( btn : in  STD_LOGIC_VECTOR (4 downto 0);
           sw : in  STD_LOGIC_VECTOR (7 downto 0);
           clk : in  STD_LOGIC;
           led : out  STD_LOGIC_VECTOR (7 downto 0)
			);	
end shift;

architecture Behavioral of shift is

signal Q0, Q1, Q2, Q3, Q4, Q5, Q6, Q7 : STD_LOGIC;

COMPONENT fpd
	GENERIC (init_value: STD_Logic  := '0');
	PORT(
		d : IN std_logic;
		clk : IN std_logic;          
		q : OUT std_logic
		);
	END COMPONENT;

begin

	d7: fpd
		GENERIC MAP(init_value => '1')
		PORT MAP(
			d => Q6,
			q => Q7,
			clk => clk
	);
	
	d6: fpd
		PORT MAP(
			d => Q5,
			q => Q6,
			clk => clk
	);
	
	d5: fpd
		PORT MAP(
			d => Q4,
			q => Q5,
			clk => clk
	);
	
	d4: fpd
		PORT MAP(
			d => Q3,
			q => Q4,
			clk => clk
	);
	
	d3: fpd
		PORT MAP(
			d => Q2,
			q => Q3,
			clk => clk
	);
	
	d2: fpd
		PORT MAP(
			d => Q1,
			q => Q2,
			clk => clk
	);

	d1: fpd
		PORT MAP(
			d => Q0,
			q => Q1,
			clk => clk
	);
	
	d0: fpd
		PORT MAP(
			d => Q7,
			q => Q0,
			clk => clk
	);
	
	led<= Q7&Q6&Q5&Q4&Q3&Q2&Q1&Q0 ;

end Behavioral;

