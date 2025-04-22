-- Code your design here
-- File: design.vhd
library IEEE;
use IEEE.std_logic_1164.all;

entity pass is
	port(
    A : in std_logic;
    B : out std_logic
    );
end entity pass;


architecture rtl of pass is
begin
	B <= A;
end architecture rtl;
