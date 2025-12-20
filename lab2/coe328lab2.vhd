library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;


entity coe328lab2 is
    port (
        x1, x2, x3, x4 : IN STD_logic;
        f : OUT STD_logic
    );
end coe328lab2;

architecture behavior of coe328lab2 is
begin
    f <= (
        (x1 and (not x2) and (not x4)) or
        ((not x1) and (not x3) and x4) or
        (x2 and (not x3) and x4) or
        ((not x2) and x3 and (not x4)) or
        (x1 and x3 and (not x4))
    ); 
end behavior;