-- ripple_carry_adder.vhd (Design Code)
library IEEE;
use IEEE.std_logic_1164.all;

entity ripple_carry is
  port(
    a     : in std_logic_vector(3 downto 0);
    b     : in std_logic_vector(3 downto 0);
    c_in  : in std_logic;
    sum   : out std_logic_vector(3 downto 0);
    c_out : out std_logic
  );
end ripple_carry;

architecture rtl of ripple_carry is
  signal c : std_logic_vector(4 downto 0); -- 5 bits for carry chain
begin
  process(a, b, c_in)
    variable i : integer;
  begin
    c(0) <= c_in;

    for i in 0 to 3 loop
      sum(i) <= a(i) xor b(i) xor c(i);
      c(i+1) <= (a(i) and b(i)) or (b(i) and c(i)) or (a(i) and c(i));
    end loop;

    c_out <= c(4);
  end process;
end rtl;
