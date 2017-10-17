
-- VHDL Instantiation Created from source file shift_vector.vhd -- 11:51:44 10/04/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT shift_vector
	PORT(
		btn : IN std_logic_vector(4 downto 0);
		sw : IN std_logic_vector(7 downto 0);
		clk : IN std_logic;          
		led : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_shift_vector: shift_vector PORT MAP(
		btn => ,
		sw => ,
		clk => ,
		led => 
	);


