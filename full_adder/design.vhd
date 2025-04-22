-- Code your design here
library IEEE;
use IEEE.std_logic_1164.all;
entity full_adder is
port(
a: in std_logic;
b: in std_logic;
c: in std_logic;
sum: out std_logic;
c_out: out std_logic
);
end full_adder;
architecture rt1 of full_adder is
begin 
process(a,b,c)
begin
sum<= a xor b xor c;
c_out<= (a and b) or (b and c) or (c and a);
end process;
end rt1;
