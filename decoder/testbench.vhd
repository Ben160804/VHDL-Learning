library IEEE; 
use IEEE.std_logic_1164.all; 

entity testbench is -- empty 
end testbench;  
 
architecture tb of testbench is 
 -- DUT component 
component decoder is 
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
end component; 
 
signal s2,s1,s0, y0,y1,y2,y3,y4,y5,y6,y7: std_logic; 
begin -- Connect DUT 
 DUT: decoder port map(s2,s1,s0, y0,y1,y2,y3,y4,y5,y6,y7); 
  
    process 
    begin 
    s2 <= '0'; 
    s1 <= '0'; 
    s0 <= '0'; 
    wait for 1 ns; 
   
    s2 <= '0'; 
    s1 <= '0'; 
    s0 <= '1'; 
    wait for 1 ns; 
 
    s2 <= '0'; 
    s1 <= '1'; 
    s0 <= '0'; 
    wait for 1 ns; 
 
    s2 <= '0'; 
    s1 <= '1'; 
    s0 <= '1'; 
    wait for 1 ns; 
     
    s2 <= '1'; 
    s1 <= '0'; 
    s0 <= '0'; 
    wait for 1 ns; 
     
    s2 <= '1'; 
    s1 <= '0'; 
    s0 <= '1'; 
    wait for 1 ns; 
     
    s2 <= '1'; 
    s1 <= '1'; 
    s0 <= '0'; 
    wait for 1 ns; 
     
    s2 <= '1'; 
    s1 <= '1'; 
    s0 <= '1'; 
    wait for 1 ns; 
  
    wait; 
  end process; 
end tb; 