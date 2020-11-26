library ieee;
use ieee.std_logic_1164.all;

entity Practica9 is
	port(
		reset_n	: in std_logic;
		clk		: in std_logic;
		p1			: in std_logic;
		p0			: in std_logic;
		valid		: out std_logic;
		espera	: out std_logic
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
	
	component DetectorSecuencia
		port(
		reset_n	: in std_logic;
		clk		: in std_logic;
		p1			: in std_logic;
		p0			: in std_logic;
		valid		: out std_logic;
		espera	: out std_logic
	);
	end component;
	
begin

DetectorFlanco_1 : DetectorFlancobajada
port map(
	e 			=> p1,
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

Detector_secu	: DetectorSecuencia
port map(
	reset_n	=> reset_n,
	clk		=>clk,
	p1			=>entradas(1),
	p0			=>entradas(0),
	valid		=>valid,
	espera	=>espera
);

end behavioral;
			
	

 

