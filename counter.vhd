--
-- 	Contador em VHDL
--	

	library IEEE;
	use IEEE.std_logic_1164.all;
	
	entity counter is port
	(
		un_dis	:	out std_logic_vector(6 downto 0);	-- display de unidades
		clk	:	in std_logic
	);
	end counter;
	
	architecture arch of counter is
	begin
	
	process(clk)
		
		variable count	: integer range 0 to 10;

	begin
	
		if(clk = '1') then
		
			count := count + 1;
			
			if(count = 10) then
			
				count := 0;
				
			end if;
			
		end if;
		
		case count is
		
			when 0 => un_dis <= "1111110";
			when 1 => un_dis <= "0110000";
			when 2 => un_dis <= "1101101";
			when 3 => un_dis <= "1111001";
			when 4 => un_dis <= "0110011";
			when 5 => un_dis <= "1011011";
			when 6 => un_dis <= "1011111";
			when 7 => un_dis <= "1110000";
			when 8 => un_dis <= "1111111";
			when 9 => un_dis <= "1111011";
			when others => un_dis <= "0000000";
			
		end case;
		
	end process;
		
	end arch;
