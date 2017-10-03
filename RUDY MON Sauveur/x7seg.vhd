----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:18:03 09/20/2017 
-- Design Name: 
-- Module Name:    x7seg - Behavioral 
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

entity x7seg is
    Port ( sw : in  STD_LOGIC_VECTOR (3 downto 0);
			  butt : in STD_LOGIC_VECTOR (4 downto 0);
           sevenseg : out  STD_LOGIC_VECTOR (6 downto 0);
			  anodes  : out STD_LOGIC_VECTOR (3 downto 0));
end x7seg;

architecture Behavioral of x7seg is

begin

anodes <= "1110";
--with sw select
--sevenseg <= "1000000" when "0000",
--	         "1111001" when "0001",
--				"0100100" when "0010",
--				"0110000" when "0011",
--				"0011001" when "0100",
--				"0010010" when "0101",
--				"0000010" when "0110",
--				"1111000" when "0111",
--				"0000000" when "1000",
--				"0010000" when "1001",
--				"0001000" when "1010",
--				"0000011" when "1011",
--				"1000110" when "1100",
--				"0100001" when "1101",
--				"0000110" when "1110",
--				"0001110" when "1111",
--				--"0001100"
--				--"1001111"
--				--"0000111"
--				"1111111" when others;
process(butt, sw)
begin


	case butt is
		when "00100" =>
			case sw is
			when "0000" => sevenseg <= "0001110";
			when "0001" => sevenseg <= "0000111";
			when others => sevenseg <= "0000000";
			end case;
		when "01000" =>
			case sw is
			when "0000" => sevenseg <= "0001100";
			when "0001" => sevenseg <= "1001111";
			when others => sevenseg <= "0000000";
			end case;

		when "00000"   =>
			case sw is 
				when "0000" => sevenseg <= "1000000";
				when "0001" => sevenseg <= "1111001";
				when "0010" => sevenseg <= "0100100";
				when "0011" => sevenseg <= "0110000";
				when "0100" => sevenseg <= "0011001";
				when "0101" => sevenseg <= "0010010";
				when "0110" => sevenseg <= "0000010";
				when "0111" => sevenseg <= "1111000";
				when "1000" => sevenseg <= "0000000";
				when "1001" => sevenseg <= "0010000";
				when "1010" => sevenseg <= "0001000";
				when "1011" => sevenseg <= "0000011";
				when "1100" => sevenseg <= "1000110";
				when "1101" => sevenseg <= "0100001";
				when "1110" => sevenseg <= "0000110";
				when "1111" => sevenseg <= "0001110";
				when others => sevenseg <= "1111111";
			end case;
		when "00001"   =>
			case sw is 
				when "0000" => sevenseg <= "1000000";
				when "0001" => sevenseg <= "1111001";
				when "0010" => sevenseg <= "0100100";
				when "0011" => sevenseg <= "0110000";
				when "0100" => sevenseg <= "0011001";
				when "0101" => sevenseg <= "0010010";
				when "0110" => sevenseg <= "0000010";
				when "0111" => sevenseg <= "1111000";
				when "1000" => sevenseg <= "0000000";
				when "1001" => sevenseg <= "0010000";
				when "1010" => sevenseg <= "0001000";
				when "1011" => sevenseg <= "0000011";
				when "1100" => sevenseg <= "1000110";
				when "1101" => sevenseg <= "0100001";
				when "1110" => sevenseg <= "0000110";
				when "1111" => sevenseg <= "0001110";
				when others => sevenseg <= "1111111";
			end case;
		when "00010"   =>
			case sw is 
				when "0000" => sevenseg <= "1000000";
				when "0001" => sevenseg <= "1111001";
				when "0010" => sevenseg <= "0100100";
				when "0011" => sevenseg <= "0110000";
				when "0100" => sevenseg <= "0011001";
				when "0101" => sevenseg <= "0010010";
				when "0110" => sevenseg <= "0000010";
				when "0111" => sevenseg <= "1111000";
				when "1000" => sevenseg <= "0000000";
				when "1001" => sevenseg <= "0010000";
				when "1010" => sevenseg <= "0001000";
				when "1011" => sevenseg <= "0000011";
				when "1100" => sevenseg <= "1000110";
				when "1101" => sevenseg <= "0100001";
				when "1110" => sevenseg <= "0000110";
				when "1111" => sevenseg <= "0001110";
				when others => sevenseg <= "1111111";
			end case;
		when "00011"   =>
			case sw is 
				when "0000" => sevenseg <= "1000000";
				when "0001" => sevenseg <= "1111001";
				when "0010" => sevenseg <= "0100100";
				when "0011" => sevenseg <= "0110000";
				when "0100" => sevenseg <= "0011001";
				when "0101" => sevenseg <= "0010010";
				when "0110" => sevenseg <= "0000010";
				when "0111" => sevenseg <= "1111000";
				when "1000" => sevenseg <= "0000000";
				when "1001" => sevenseg <= "0010000";
				when "1010" => sevenseg <= "0001000";
				when "1011" => sevenseg <= "0000011";
				when "1100" => sevenseg <= "1000110";
				when "1101" => sevenseg <= "0100001";
				when "1110" => sevenseg <= "0000110";
				when "1111" => sevenseg <= "0001110";
				when others => sevenseg <= "1111111";
			end case;
		when "10000"   =>
			case sw is 
				when "0000" => sevenseg <= "1000000";
				when "0001" => sevenseg <= "1111001";
				when "0010" => sevenseg <= "0100100";
				when "0011" => sevenseg <= "0110000";
				when "0100" => sevenseg <= "0011001";
				when "0101" => sevenseg <= "0010010";
				when "0110" => sevenseg <= "0000010";
				when "0111" => sevenseg <= "1111000";
				when "1000" => sevenseg <= "0000000";
				when "1001" => sevenseg <= "0010000";
				when "1010" => sevenseg <= "0001000";
				when "1011" => sevenseg <= "0000011";
				when "1100" => sevenseg <= "1000110";
				when "1101" => sevenseg <= "0100001";
				when "1110" => sevenseg <= "0000110";
				when "1111" => sevenseg <= "0001110";
				when others => sevenseg <= "1111111";
			end case;
		when others => sevenseg <= "1111111";
		end case;
end process;			
	
end Behavioral;

