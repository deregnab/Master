--------------------------------------------------------------------------------
-- Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 12.4
--  \   \         Application : sch2hdl
--  /   /         Filename : toplevel.vhf
-- /___/   /\     Timestamp : 09/13/2017 11:23:03
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl /home/m1/deregnaucourt/Documents/Master/aeo/TP1/toplevel.vhf -w /home/m1/deregnaucourt/Documents/Master/aeo/TP1/toplevel.sch
--Design Name: toplevel
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL IBUF8_HXILINX_toplevel -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity IBUF8_HXILINX_toplevel is
port(
    O  : out std_logic_vector(7 downto 0);
    I  : in std_logic_vector(7 downto 0)
  );
end IBUF8_HXILINX_toplevel;

architecture IBUF8_HXILINX_toplevel_V of IBUF8_HXILINX_toplevel is
begin

  O <= I;

end IBUF8_HXILINX_toplevel_V;
----- CELL OBUFT8_HXILINX_toplevel -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity OBUFT8_HXILINX_toplevel is
port(
    O  : out std_logic_vector(7 downto 0);

    I  : in std_logic_vector(7 downto 0);
    T  : in std_logic
  );
end OBUFT8_HXILINX_toplevel;

architecture OBUFT8_HXILINX_toplevel_V of OBUFT8_HXILINX_toplevel is
begin
  process (I, T)
  begin
    if (T='0') then
      O  <= I;
    else
      O  <= (others => 'Z');
  end if;
 end process;

end OBUFT8_HXILINX_toplevel_V;

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity toplevel is
   port ( switches : in    std_logic_vector (7 downto 0); 
          led      : out   std_logic_vector (7 downto 0));
end toplevel;

architecture BEHAVIORAL of toplevel is
   attribute HU_SET     : string ;
   signal XLXN_2              : std_logic_vector (7 downto 0);
   signal XLXI_2_T_openSignal : std_logic;
   component IBUF8_HXILINX_toplevel
      port ( I : in    std_logic_vector (7 downto 0); 
             O : out   std_logic_vector (7 downto 0));
   end component;
   
   component OBUFT8_HXILINX_toplevel
      port ( I : in    std_logic_vector (7 downto 0); 
             T : in    std_logic; 
             O : out   std_logic_vector (7 downto 0));
   end component;
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_0";
   attribute HU_SET of XLXI_2 : label is "XLXI_2_1";
begin
   XLXI_1 : IBUF8_HXILINX_toplevel
      port map (I(7 downto 0)=>switches(7 downto 0),
                O(7 downto 0)=>XLXN_2(7 downto 0));
   
   XLXI_2 : OBUFT8_HXILINX_toplevel
      port map (I(7 downto 0)=>XLXN_2(7 downto 0),
                T=>XLXI_2_T_openSignal,
                O(7 downto 0)=>led(7 downto 0));
   
end BEHAVIORAL;


