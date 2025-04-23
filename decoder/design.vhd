-- Code your design here
library IEEE;
use IEEE.std_logic_1164.all;

entity decoder is 
Port( 
 s2: in std_logic; 
 s1: in std_logic; 
 s0: in std_logic; 
 y0: out std_logic; 
 y1: out std_logic; 
 y2: out std_logic; 
 y3: out std_logic; 
 y4: out std_logic; 
 y5: out std_logic; 
 y6: out std_logic; 
 y7: out std_logic); 
end decoder; 
 
architecture rtl of decoder is 
begin 
 process(s2,s1,s0) 
 begin 
 y0 <= '0'; 
 y1 <= '0'; 
 y2 <= '0'; 
 y3 <= '0'; 
 y4 <= '0'; 
 y5 <= '0'; 
 y6 <= '0'; 
 y7 <= '0'; 
  
if s2 = '0' and s1 = '0' and s0 = '0' then 
y0 <= '1'; 
elsif s2 = '0' and s1 = '0' and s0 = '1' then 
y1 <= '1'; 
elsif s2 = '0' and s1 = '1' and s0 = '0' then 
y2 <= '1'; 
elsif s2 = '0' and s1 = '1' and s0 = '1' then 
y3 <= '1'; 
elsif s2 = '1' and s1 = '0' and s0 = '0' then 
y4 <= '1'; 
elsif s2 = '1' and s1 = '0' and s0 = '1' then 
y5 <= '1'; 
elsif s2 = '1' and s1 = '1' and s0 = '0' then 
y6 <= '1'; 
elsif s2 = '1' and s1 = '1' and s0 = '1' then 
y7 <= '1'; 
 
end if; 
end process; 
end rtl;