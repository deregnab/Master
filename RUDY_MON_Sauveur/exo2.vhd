----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:37:39 09/20/2017 
-- Design Name: 
-- Module Name:    exo2 - Archi1exo2 
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

ENTITY exo2 IS 

PORT
(

    a : IN STD_LOGIC;
    b : IN STD_LOGIC;
    c : IN STD_LOGIC;
    d : IN STD_LOGIC;
    adr : IN STD_LOGIC_VECTOR (1 downto 0);
    s : OUT STD_LOGIC

);

END exo2;

ARCHITECTURE Archi1exo2 OF exo2 IS

BEGIN

with adr select
s <= a when "00",
	  b when "01",
	  c when "10",
	  d when others;
	  
--s <= a when adr="00" else
--	  b when adr="01" else
--	  c when adr="10" else
--	  d;
	  
--   s <=    ( a AND NOT adr(1) AND NOT adr(0) )
--        OR ( b AND NOT adr(1) AND adr(0) )
--        OR ( c AND adr(1) AND NOT adr(0) )
--        OR ( d AND adr(1) AND adr(0) );

END Archi1exo2;

