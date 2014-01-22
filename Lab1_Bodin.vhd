----------------------------------------------------------------------------------
-- Company:    USAFA
-- Engineer:    C3C Bodin
-- 
-- Create Date:    16:23:01 01/21/2014 
-- Design Name:    The Crusher
-- Module Name:    Lab1_Bodin - Behavioral 
-- Project Name:   Lab 1
-- Target Devices:    Xilinx Spartan3E-500 or 1200
-- Tool versions: 
-- Description:    Circuit to take the 2's complement of a 3bit input
--
-- Dependencies:   None
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Lab1_Bodin is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           X : out  STD_LOGIC;
           Y : out  STD_LOGIC;
           Z : out  STD_LOGIC);
end Lab1_Bodin;

architecture Behavioral of Lab1_Bodin is

signal A_NOT, B_NOT, C_NOT, A_NOT_B_NOT_C, NOT_A_B, NOT_A_C, B_NOT_C, NOT_B_C : STD_LOGIC;

begin

--First level
A_NOT <= not A;
B_NOT <= not B;
C_NOT <= not C;

--Second Level
A_NOT_B_NOT_C <= A and B_NOT and C_NOT;
NOT_A_B <= A_NOT and B;
NOT_A_C <= A_NOT and C;
B_NOT_C <= B and C_NOT;
NOT_B_C <= B_NOT and C;

--Output
X <= A_NOT_B_NOT_C or NOT_A_B or NOT_A_C;
Y <= B_NOT_C or NOT_B_C;
Z <= C;

end Behavioral;

