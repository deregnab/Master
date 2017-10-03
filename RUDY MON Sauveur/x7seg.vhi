
-- VHDL Instantiation Created from source file x7seg.vhd -- 12:16:05 09/27/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT x7seg
	PORT(
		sw : IN std_logic_vector(3 downto 0);
		butt : IN std_logic_vector(4 downto 0);          
		sevenseg : OUT std_logic_vector(6 downto 0);
		anodes : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	Inst_x7seg: x7seg PORT MAP(
		sw => ,
		butt => ,
		sevenseg => ,
		anodes => 
	);


