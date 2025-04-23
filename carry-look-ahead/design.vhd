-- Code your design here
library IEEE;
use IEEE.std_logic_1164.all;

entity cla is
port(
	a	  : in std_logic_vector(3 downto 0);
    b     : in std_logic_vector(3 downto 0);
    c_in  : in std_logic;
    c_out : out std_logic;
    sum   : out std_logic_vector(3 downto 0)
);
end cla;

architecture rtl of cla is
signal g : std_logic_vector(3 downto 0);
signal p : std_logic_vector(3 downto 0);
signal c: std_logic_vector(4 downto 0);
begin
	process(a,b,c_in,g,p,c) is 
    variable i: integer;
    begin
    c(0) <= c_in;
    	for i in 0 to 3 loop
   		 p(i) <= (a(i) xor b(i)); 
         g(i) <= (a(i) and b(i)); 
         sum(i) <= (p(i) xor c(i)); 
         c(i+1) <= g(i) or (p(i) and c(i));
        end loop;
        c_out <= c(4);
        end process;
        end rtl;
