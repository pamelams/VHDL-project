--
-- 	Cronômetro em VHDL
--	

	library IEEE;
	use IEEE.std_logic_1164.all;
	
	entity chronometer is port
	(
		un_cen	:	out std_logic_vector(6 downto 0);
		ten_cen	:	out std_logic_vector(6 downto 0);
		un_sec	:	out std_logic_vector(6 downto 0);
		ten_sec	:	out std_logic_vector(6 downto 0);	
		enable	:	in bit;
		reset		:	in bit;
		clk_50MHz	:	in bit 
	);
	end chronometer;
	
	architecture arch of chronometer is
	
	signal clk	:	bit;
	signal en	:	bit := '0';
	
	begin
	
	pause: process(enable)
	begin
		if(enable = '1') then
			en <= not en;
		end if;
	end process pause;
	
	divisor: process(clk_50MHz)
	
	variable	k	:	integer range 0 to 500000;
	
		begin
			if(en = '1') then
			if(clk_50MHz = '1' and clk_50MHz'event) then
					if(k > 250000) then
							clk <= '1';
							k := k + 1;
							if(k = 500000) then
							k := 0;
							end if;
					else
							k := k + 1;
							clk <= '0';
					end if;
			end if;
			end if;
		end process divisor;
	
	counter: process(clk)
	
	variable count		:	integer range 0 to 10;
	variable count2	:	integer range 0 to 10;
	variable count3 	: 	integer range 0 to 10;
	variable count4 	: 	integer range 0 to 6;

	begin
		if(reset = '0') then
			count := 0;
			count2 := 0;
			count3 := 0;
			count4 := 0;
		else if(clk = '1' and clk'event) then
			count := count + 1;
			if(count = 10) then
				count := 0;
				count2 := count2 + 1;
				if(count2 = 10) then
					count2 := 0;
					count3 := count3 + 1;
					if(count3 = 10) then
						count3 := 0;
						count4 := count4 + 1;
						if(count4 = 6) then
							count4 := 0;
						end if;
					end if;
				end if;
			end if;
		end if;
		end if;
		
		case count is
		
			when 0 => un_cen <= "0000001";
			when 1 => un_cen <= "1001111";
			when 2 => un_cen <= "0010010";
			when 3 => un_cen <= "0000110";
			when 4 => un_cen <= "1001100";
			when 5 => un_cen <= "0100100";
			when 6 => un_cen <= "0100000";
			when 7 => un_cen <= "0001111";
			when 8 => un_cen <= "0000000";
			when 9 => un_cen <= "0000100";
			when others => un_cen <= "1111111";
			
		end case;
		
		case count2 is
		
			when 0 => ten_cen <= "0000001";
			when 1 => ten_cen <= "1001111";
			when 2 => ten_cen <= "0010010";
			when 3 => ten_cen <= "0000110";
			when 4 => ten_cen <= "1001100";
			when 5 => ten_cen <= "0100100";
			when 6 => ten_cen <= "0100000";
			when 7 => ten_cen <= "0001111";
			when 8 => ten_cen <= "0000000";
			when 9 => ten_cen <= "0000100";
			when others => ten_cen <= "1111111";
			
		end case;
		
		case count3 is
		
			when 0 => un_sec <= "0000001";
			when 1 => un_sec <= "1001111";
			when 2 => un_sec <= "0010010";
			when 3 => un_sec <= "0000110";
			when 4 => un_sec <= "1001100";
			when 5 => un_sec <= "0100100";
			when 6 => un_sec <= "0100000";
			when 7 => un_sec <= "0001111";
			when 8 => un_sec <= "0000000";
			when 9 => un_sec <= "0000100";
			when others => un_sec <= "1111111";
			
		end case;
		
		case count4 is
		
			when 0 => ten_sec <= "0000001";
			when 1 => ten_sec <= "1001111";
			when 2 => ten_sec <= "0010010";
			when 3 => ten_sec <= "0000110";
			when 4 => ten_sec <= "1001100";
			when 5 => ten_sec <= "0100100";
			when 6 => ten_sec <= "0100000";
			when others => ten_sec <= "1111111";
		end case;
		
	end process counter;
		
	end arch;