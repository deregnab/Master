
-- VHDL Instantiation Created from source file parity.vhd -- 11:22:55 09/27/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT parity
	PORT(
		a : IN std_logic_vector(7 downto 0);          
		s : OUT std_logic_vector(4 downto 0)
		);
	END COMPONENT;

	Inst_parity: parity PORT MAP(
		a => ,
		s => 
	);


