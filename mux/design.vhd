-- Code your design here
library IEEE;
use IEEE.std_logic_1164.all;

entity mux is
port(
s: in bit_vector( 2 downto 0);
d: in bit_vector( 7 downto 0);
y: out bit
);
end mux;

architecture rtl of mux is
begin 
	 with s select 
     y <= d(0) when "000",
     d(1) when "001",
     d(2) when "010",
     d(3) when "011",
     d(4) when "100",
     d(5) when "101",
     d(6) when "110",
     d(7) when others;
end rtl;
        
        
