-- Code your design here
library IEEE;
use IEEE.std_logic_1164.all;

entity cas is
port(
	a	  : in std_logic_vector(3 downto 0);
    b     : in std_logic_vector(3 downto 0);
    c_in  : in std_logic;
    mode  : in std_logic;
    c_out : out std_logic;
    sum   : out std_logic_vector(3 downto 0)
);
end cas;

architecture rtl of cas is
signal c: std_logic_vector(4 downto 0);
begin
	process(a,b,c_in,mode,c) is 
    variable i: integer;
    begin
    	if mode ='0' then
        	c(0) <= c_in;
        else
        	c(0) <= c_in or mode;
        end if;
    	for i in 0 to 3 loop
    sum(i) <= a(i) xor (b(i) xor mode) xor c(i);
    c(i+1) <= (a(i) and (b(i) xor mode)) or 
              ((b(i) xor mode) and c(i)) or 
              (a(i) and c(i)); 
        end loop;
        c_out <= c(4);
        end process;
        end rtl;
