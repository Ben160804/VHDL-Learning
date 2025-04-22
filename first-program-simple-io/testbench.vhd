-- Code your testbench here
library IEEE;
use IEEE.std_logic_1164.all;

entity tb_pass is end entity tb_pass;

architecture sim of tb_pass is
signal a,b:std_logic;

begin
UUT:entity work.pass(rtl)
port map(A => a,B => b);

stim:process

begin
a <= '0'; wait for 5 ns;
a <= '1'; wait for 5 ns;
a <= '0'; wait for 5 ns;
a <= '1'; wait for 5 ns;
wait;
end process;
end architecture sim;
