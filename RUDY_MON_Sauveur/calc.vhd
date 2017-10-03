----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:35:45 09/20/2017 
-- Design Name: 
-- Module Name:    calc - Behavioral 
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



entity calc is
    Port ( switches : in  STD_LOGIC_VECTOR (7 downto 0);
			  btn : in STD_LOGIC_VECTOR (4 downto 0);
           led : out  STD_LOGIC_VECTOR (7 downto 0);
           sevenseg : out  STD_LOGIC_VECTOR (6 downto 0);
           anodes : out  STD_LOGIC_VECTOR (3 downto 0));
end calc;

architecture Behavioral of calc is

--SIGNAL sw: STD_LOGIC_VECTOR(7 downto 0);
SIGNAL S_add: STD_LOGIC_VECTOR(4 downto 0);
SIGNAL S_and: STD_LOGIC_VECTOR(4 downto 0);
SIGNAL S_or: STD_LOGIC_VECTOR(4 downto 0);
SIGNAL S_xor: STD_LOGIC_VECTOR(4 downto 0);
SIGNAL S_count: STD_LOGIC_VECTOR(4 downto 0);
SIGNAL S_comp: STD_LOGIC_VECTOR(4 downto 0);
SIGNAL S_pari: STD_LOGIC_VECTOR(4 downto 0);

SIGNAL S: STD_LOGIC_VECTOR(4 downto 0);

	COMPONENT add
	PORT(
		a : IN std_logic_vector(3 downto 0);
		b : IN std_logic_vector(3 downto 0);          
		sum : OUT std_logic_vector(4 downto 0)
		);
	END COMPONENT;
	
	COMPONENT or_e
   PORT(
		a : IN std_logic_vector(3 downto 0);
		b : IN std_logic_vector(3 downto 0);          
		r : OUT std_logic_vector(4 downto 0)
		);
	END COMPONENT;
	
	COMPONENT xor_e
	PORT(
		a : IN std_logic_vector(3 downto 0);
		b : IN std_logic_vector(3 downto 0);          
		r : OUT std_logic_vector(4 downto 0)
		);
	END COMPONENT;
	
	COMPONENT and_e
	PORT(
		a : IN std_logic_vector(3 downto 0);
		b : IN std_logic_vector(3 downto 0);          
		r : OUT std_logic_vector(4 downto 0)
		);
	END COMPONENT;
	
	COMPONENT x7seg
	PORT(
		sw : IN std_logic_vector(3 downto 0);
		butt : IN std_logic_vector(4 downto 0);          
		sevenseg : OUT std_logic_vector(6 downto 0);
		anodes : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;
	
	COMPONENT multiplexer
	PORT(
		a : IN std_logic_vector(4 downto 0);
		b : IN std_logic_vector(4 downto 0);
		c : IN std_logic_vector(4 downto 0);
		d : IN std_logic_vector(4 downto 0);
		e : IN std_logic_vector(4 downto 0);
		f : IN std_logic_vector(4 downto 0);
		g : IN std_logic_vector(4 downto 0);
		adr : IN std_logic_vector(4 downto 0);          
		s : OUT std_logic_vector(4 downto 0)
		);
	END COMPONENT;

	COMPONENT count1
	PORT(
		a : IN std_logic_vector(7 downto 0);          
		s : OUT std_logic_vector(4 downto 0)
		);
	END COMPONENT;

	COMPONENT comp
	PORT(
		a : IN std_logic_vector(3 downto 0);
		b : IN std_logic_vector(3 downto 0);          
		s : OUT std_logic_vector(4 downto 0)
		);
	END COMPONENT;

	COMPONENT parity
	PORT(
		a : IN std_logic_vector(7 downto 0);          
		s : OUT std_logic_vector(4 downto 0)
		);
	END COMPONENT;


	

	
begin
led(4 downto 0) <= S; 

Inst_add: add PORT MAP(
		a => switches(7 downto 4),
		b => switches(3 downto 0),
		sum => S_add(4 downto 0)
	);	
	
	Inst_or_e: or_e PORT MAP(
		a => switches(7 downto 4),
		b => switches(3 downto 0),
		r => S_or(4 downto 0)
	);	
	
	Inst_xor_e: xor_e PORT MAP(
		a => switches(7 downto 4),
		b => switches(3 downto 0),
		r => S_xor(4 downto 0)
	);
	
	Inst_and_e: and_e PORT MAP(
		a => switches(7 downto 4),
		b => switches(3 downto 0),
		r => S_and(4 downto 0)
	);
	
	Inst_x7seg: x7seg PORT MAP(
		sw => S(3 downto 0),
		butt => btn,
		sevenseg => sevenseg(6 downto 0) ,
		anodes => anodes(3 downto 0) 
	);
	

	Inst_multiplexer: multiplexer PORT MAP(
		a => S_add,
		b => S_and,
		c => S_or,
		d => S_xor,
		e => S_comp,
		f => S_pari,
		g => S_count,
		adr => btn,
		s => S
	);

	
	Inst_count1: count1 PORT MAP(
		a => switches(7 downto 0),
		s => S_count(4 downto 0)
	);
	
	Inst_comp: comp PORT MAP(
		a => switches(7 downto 4),
		b => switches(3 downto 0),
		s => S_comp(4 downto 0)
	);
	
	Inst_parity: parity PORT MAP(
		a => switches(7 downto 0),
		s => S_pari(4 downto 0)
	);
end Behavioral;

