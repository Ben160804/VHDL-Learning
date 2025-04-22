library IEEE;
use IEEE.std_logic_1164.all;

entity testbench is
end testbench;

architecture rt1 of testbench is

  -- Component Declaration
  component all_gates
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
  end component;

  -- Signals
  signal a, b            : std_logic := '0';
  signal o1_and          : std_logic;
  signal o2_nand         : std_logic;
  signal o3_or           : std_logic;
  signal o4_nor          : std_logic;
  signal o5_xor          : std_logic;
  signal o6_xnor         : std_logic;
  signal o7_not          : std_logic;

begin

  -- Instantiate the Unit Under Test (UUT)
  DUT: all_gates
    port map (
      a       => a,
      b       => b,
      o1_and  => o1_and,
      o2_nand => o2_nand,
      o3_or   => o3_or,
      o4_nor  => o4_nor,
      o5_xor  => o5_xor,
      o6_xnor => o6_xnor,
      o7_not  => o7_not
    );

  -- Stimulus process
  process
  begin
    a <= '0'; b <= '0'; wait for 10 ns;
    a <= '0'; b <= '1'; wait for 10 ns;
    a <= '1'; b <= '0'; wait for 10 ns;
    a <= '1'; b <= '1'; wait for 10 ns;

    -- Stop simulation
    wait;
  end process;

end rt1;
