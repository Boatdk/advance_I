--------------------------------------------------------------------------------
-- Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: O.87xd
--  \   \         Application: netgen
--  /   /         Filename: counter_synthesis.vhd
-- /___/   /\     Timestamp: Tue Oct 18 11:05:40 2016
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm counter -w -dir netgen/synthesis -ofmt vhdl -sim counter.ngc counter_synthesis.vhd 
-- Device	: xc3s200-4-tq144
-- Input file	: counter.ngc
-- Output file	: C:\Users\comeng\Desktop\lab5\counter\netgen\synthesis\counter_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: counter
-- Xilinx	: C:\Xilinx\13.4\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity counter is
  port (
    clk : in STD_LOGIC := 'X'; 
    o : out STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end counter;

architecture Structure of counter is
  signal o_0_OBUF_4 : STD_LOGIC; 
begin
  XST_GND : GND
    port map (
      G => o_0_OBUF_4
    );
  o_3_OBUF : OBUF
    port map (
      I => o_0_OBUF_4,
      O => o(3)
    );
  o_2_OBUF : OBUF
    port map (
      I => o_0_OBUF_4,
      O => o(2)
    );
  o_1_OBUF : OBUF
    port map (
      I => o_0_OBUF_4,
      O => o(1)
    );
  o_0_OBUF : OBUF
    port map (
      I => o_0_OBUF_4,
      O => o(0)
    );

end Structure;

