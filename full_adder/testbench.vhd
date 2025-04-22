-- Code your testbench here
library IEEE;
use IEEE.std_logic_1164.all;
entity testbench is 
end testbench;


architecture tb of testbench is
component full_adder is
port(
a: in std_logic;
b: in std_logic;
c: in std_logic;
sum: out std_logic;
c_out: out std_logic
);
end component;
signal a,b,c,sum,c_out:std_logic;

begin
DUT: full_adder port map(a,b,c,sum,c_out);
process
begin
a<= '0';
b <= '0';
c <= '0'; wait for 1 ns;
a <= '0';
b <= '0';
c <= '1'; wait for 1 ns;
a <= '0';
b <= '1';
c <= '0'; wait for 1 ns;
a <= '0';
b <= '1';
c<= '1'; wait for 1 ns;
a <= '1';
b <= '0';
c <= '0'; wait for 1 ns;
a <= '1';
b <= '0';
c <= '1'; wait for 1 ns; a <= '1'; 
b <= '1';
c <= '0'; wait for 1 ns;
a <= '1';
b <= '1';
c <= '1'; wait for 1 ns;
-- Clear inputs
a <= '0';
b <= '0';
c <= '0'; wait;
end process;
end tb;




