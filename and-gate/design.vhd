library IEEE;
use IEEE.std_logic_1164.all;

entity pass is
  port (
    clk      : in std_logic;
    data_in  : in std_logic;
    data_out : out std_logic
  );
end entity pass;

architecture rtl of pass is
begin
  data_out <= data_in AND clk;  -- AND gate behavior
end architecture rtl;
