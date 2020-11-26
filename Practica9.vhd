library ieee;
use ieee.std_logic_1164.all;

entity Practica9 is
	port(
		reset_n	: in std_logic;
		clk		: in std_logic;
		p1			: in std_logic;
		p0			: in std_logic;
		valid		: out std_logic;
		red		: out std_logic
	);
end Practica9;

architecture behavioral of Practica9 is

	type t_estados is (Reposo,EP0,EP01,EP011,EP0110);
	
	signal estado_act,estado_sig : t_estados;
	
	signal entradas: std_logic_vector(1 downto 0);
	
	component DetectorFlancobajada
		port(
		e			: in std_logic;
		reset_n	: in std_logic;
		clk		: in std_logic;
		s			: out std_logic
	);
	end component;
	
begin

DetectorFlanco_1 : DetectorFlancobajada
port map(
	e 	=> p1,
	reset_n	=> reset_n,
	clk		=> clk,
	s			=> entradas(1)
);

DetectorFlanco_2 : DetectorFlancobajada
port map(
	e 			=> p0,
	reset_n	=> reset_n,
	clk		=> clk,
	s			=> entradas(0)
);

VarEstado : process(clk,reset_n)
begin
	if reset_n = '0' then
		estado_act <=Reposo;
	else
		if falling_edge(clk) then
			estado_act <= estado_sig;
		end if;
	end if;
end process VarEstado;

valid <= '1' when estado_act = EP0110 else '0';
red <= '0' when estado_act = EP0110 else '1';

TransicionEstados : process(estado_act,entradas)
begin

	estado_sig<=estado_act;
	
	case estado_act is
		when Reposo =>
			if entradas = "01" then
				estado_sig <=EP0;
			end if;
		when EP0 =>
			if entradas = "11" then
				estado_sig <= Reposo;
			elsif entradas = "10" then
				estado_sig <= EP01;
			end if;
		when EP01 =>
			if entradas = "11" then
				estado_sig <= Reposo;
			elsif entradas = "10" then
				estado_sig <= EP011;
			elsif entradas = "01" then
				estado_sig <= EP0;
			end if;
		when EP011 =>
			if entradas = "11" then
				estado_sig <= Reposo;
			elsif entradas = "10" then
				estado_sig <= Reposo;
			elsif entradas = "01" then
				estado_sig <= EP0110;
			end if;
		when EP0110 =>
			if entradas = "11" then
				estado_sig <= Reposo;
			elsif entradas = "10" then
				estado_sig <= EP01;
			elsif entradas = "01" then
				estado_sig <= EP0;
			end if;
		when others =>
			estado_sig <= Reposo;
	end case;
end process;
end behavioral;
			
	

 

