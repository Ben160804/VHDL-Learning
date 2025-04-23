-- testbench.vhd (Testbench Code)
library IEEE;
use IEEE.std_logic_1164.all;

entity testbench is
end testbench;

architecture tb of testbench is

  component ripple_carry is
    port(
      a     : in std_logic_vector(3 downto 0);
      b     : in std_logic_vector(3 downto 0);
      c_in  : in std_logic;
      sum   : out std_logic_vector(3 downto 0);
      c_out : out std_logic
    );
  end component;

  signal a     : std_logic_vector(3 downto 0);
  signal b     : std_logic_vector(3 downto 0);
  signal c_in  : std_logic;
  signal sum   : std_logic_vector(3 downto 0);
  signal c_out : std_logic;

begin

  DUT: ripple_carry port map(
    a     => a,
    b     => b,
    c_in  => c_in,
    sum   => sum,
    c_out => c_out
  );

  process
  begin
    a     <= "0101";
    b     <= "0011";
    c_in  <= '1';
    wait for 10 ns;

    a     <= "1111";
    b     <= "0001";
    c_in  <= '0';
    wait for 10 ns;

    wait;
  end process;

end tb;
