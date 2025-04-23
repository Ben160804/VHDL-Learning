-- Code your testbench here
library IEEE;
use IEEE.std_logic_1164.all;

entity testbench is
end testbench;

architecture tb of testbench is 

component cas is 
port(
a: in std_logic_vector(3 downto 0);
b: in std_logic_vector(3 downto 0);
c_in: in std_logic;
mode: in std_logic;
c_out: out std_logic;
sum: out std_logic_vector(3 downto 0)
);
end component;

signal a:  std_logic_vector(3 downto 0);
signal b:  std_logic_vector(3 downto 0);
signal c_in:  std_logic;
signal mode:  std_logic;
signal c_out:  std_logic;
signal sum:  std_logic_vector(3 downto 0);

begin
DUT: cas port map(
a,b,c_in,mode,c_out,sum);
process
begin
a<="1001";
b<="0101";
mode<='0';
wait for 1 ns;

a<="1001";
b<="0101";
mode<='1';
wait for 10 ns;

wait;
end process;
end tb;
