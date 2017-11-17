----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/16/2017 03:12:03 PM
-- Design Name: 
-- Module Name: full_adder - structure
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity full_adder is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           Cin : in STD_LOGIC;
           S : out STD_LOGIC;
           Cout : out STD_LOGIC);
end full_adder;

architecture structure of full_adder is


component half_adder is
    port (a, b : in std_logic;
            s, cout : out std_logic);
 end component;

component or_1
    port (i1, i2 : in std_logic;
            o1 : out std_logic);
 end component;

signal halfToHalf, halfToOr_1, halftoOr_2: std_logic;

begin
G1: half_adder port map (a,b, halfToHalf, halfToOr_1);
G2: half_adder port map (halfToHalf, Cin, s, halfToOr_2);
G3: or_1 port map ( halfToOr_1, halfToOr_2, cout);

end structure;
