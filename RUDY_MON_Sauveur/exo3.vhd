----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:02:40 09/20/2017 
-- Design Name: 
-- Module Name:    exo3 - archi_circuit 
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

entity circuit is
    port (e1, e2, e3, e4 : in std_logic;
            s : out std_logic);
end circuit;

architecture archi_circuit of circuit is

signal s1,s2,s3 : std_logic;

component fct
    port ( a, b : in std_logic;
            s: out std_logic);
end component;

begin

    cmp1 : fct port map (a=>e1, b=>e2, s=>s1);
    cmp2 : fct port map (a=>e3, b=>e4, s=>s2);
    cmp3 : fct port map (a=>e1, b=>e3, s=>s3);
    s<= s1 and s2 and s3;

end archi_circuit; 

