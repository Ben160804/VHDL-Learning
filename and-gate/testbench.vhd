library IEEE;
use IEEE.std_logic_1164.all;

entity testbench is
end testbench;

architecture tb of testbench is

  -- Declare the component
  component pass
    port(
      clk      : in std_logic;
      data_in  : in std_logic;
      data_out : out std_logic
    );
  end component;

  -- Signals to connect to the UUT
  signal clk, data_in, data_out : std_logic;

begin

  -- Instantiate the Unit Under Test (UUT)
  DUT: pass port map(clk, data_in, data_out);

  -- Stimulus process
  process
  begin
    -- 1st test case: 0 AND 0
    clk <= '0';
    data_in <= '0';
    wait for 10 ns;

    -- 2nd test case: 0 AND 1
    clk <= '0';
    data_in <= '1';
    wait for 10 ns;

    -- 3rd test case: 1 AND 0
    clk <= '1';
    data_in <= '0';
    wait for 10 ns;

    -- 4th test case: 1 AND 1
    clk <= '1';
    data_in <= '1';
    wait for 10 ns;

    -- Finish simulation
    wait;
  end process;

end architecture tb;
