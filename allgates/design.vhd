library IEEE;
use IEEE.std_logic_1164.all;

entity all_gates is
  port (
    a       : in std_logic;
    b       : in std_logic;
    o1_and  : out std_logic;
    o2_nand : out std_logic;
    o3_or   : out std_logic;
    o4_nor  : out std_logic;
    o5_xor  : out std_logic;
    o6_xnor : out std_logic;
    o7_not  : out std_logic
  );
end all_gates;

architecture rt1 of all_gates is
begin
  process(a, b)
  begin
    o1_and  <= a AND b;
    o2_nand <= a NAND b;
    o3_or   <= a OR b;
    o4_nor  <= a NOR b;
    o5_xor  <= a XOR b;
    o6_xnor <= a XNOR b;
    o7_not  <= NOT a;
  end process;
end rt1;
