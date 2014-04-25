-- VHDL Entity ece411.Pipelined_Datapath.symbol
--
-- Created:
--          by - styve1.ews (gelib-057-24.ews.illinois.edu)
--          at - 21:51:47 04/24/14
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY Pipelined_Datapath IS
   PORT( 
      Clk         : IN     std_logic;
      D_DATAIN    : IN     LC3B_WORD;
      D_MRESP_H   : IN     std_logic;
      I_DATAIN    : IN     LC3B_WORD;
      I_MRESP_H   : IN     std_logic;
      reset_l     : IN     std_logic;
      D_ADDRESS   : OUT    LC3B_WORD;
      D_DATAOUT   : OUT    LC3B_WORD;
      D_MREAD_L   : OUT    std_logic;
      D_MWRITEH_L : OUT    std_logic;
      D_MWRITEL_L : OUT    std_logic;
      I_ADDRESS   : OUT    LC3B_WORD;
      I_DATAOUT   : OUT    LC3B_WORD;
      I_MREAD_L   : OUT    std_logic;
      I_MWRITE_L  : OUT    std_logic
   );

-- Declarations

END Pipelined_Datapath ;

--
-- VHDL Architecture ece411.Pipelined_Datapath.struct
--
-- Created:
--          by - styve1.ews (gelib-057-24.ews.illinois.edu)
--          at - 21:51:47 04/24/14
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

LIBRARY mp3lib;

ARCHITECTURE struct OF Pipelined_Datapath IS

   -- Architecture declarations

   -- Internal signal declarations
   SIGNAL ADJ11Out        : LC3b_word;
   SIGNAL ADJ11_OUT1      : LC3B_WORD;
   SIGNAL ADJ11_OUT2      : LC3B_WORD;
   SIGNAL ADJ11_out       : LC3B_word;
   SIGNAL ADJ4Out         : LC3b_word;
   SIGNAL ADJ4_out        : LC3b_word;
   SIGNAL ADJ5Out         : LC3b_word;
   SIGNAL ADJ5_out        : LC3b_word;
   SIGNAL ADJ6Out         : LC3b_word;
   SIGNAL ADJ6_out        : LC3b_word;
   SIGNAL ADJ9Out         : Lc3b_word;
   SIGNAL ADJ9_OUT1       : LC3B_WORD;
   SIGNAL ADJ9_OUT2       : LC3B_WORD;
   SIGNAL ADJ9_out        : LC3b_word;
   SIGNAL ALUOut_OUT      : lc3b_word;
   SIGNAL ALUResultout    : LC3B_WORD;
   SIGNAL ALUout_out1     : LC3b_word;
   SIGNAL ALUout_out2     : LC3b_word;
   SIGNAL BRAddr          : LC3b_word;
   SIGNAL BRMuxSel        : STD_LOGIC;
   SIGNAL ControlOut      : CONTROL_WORD;
   SIGNAL Control_OUT3    : CONTROL_WORD;
   SIGNAL Control_Out     : Control_word;
   SIGNAL Control_Out4    : control_word;
   SIGNAL CtrMUXOUT       : Control_word;
   SIGNAL DEST_OUT2       : lc3b_reg;
   SIGNAL DEST_OUT3       : LC3b_reg;
   SIGNAL D_Load          : STD_LOGIC;
   SIGNAL Dest            : LC3b_reg;
   SIGNAL DestOut         : LC3b_reg;
   SIGNAL Dest_out        : LC3b_reg;
   SIGNAL Dest_out1       : LC3b_reg;
   SIGNAL EXEControl_Out  : Control_word;
   SIGNAL EXEDATA_Out     : LC3B_WORD;
   SIGNAL EXEDest_Out     : LC3B_REG;
   SIGNAL IMM5Sel         : std_logic;
   SIGNAL IMM5Sel_Out     : std_logic;
   SIGNAL INV_STALL       : STD_LOGIC;
   SIGNAL I_Load          : STD_LOGIC;
   SIGNAL Instr           : LC3b_word;
   SIGNAL Instr_out       : LC3b_word;
   SIGNAL JSR11           : std_logic;
   SIGNAL JSR11_Out       : std_logic;
   SIGNAL JSR11_Out1      : std_logic;
   SIGNAL JSR11_Out2      : std_logic;
   SIGNAL Load_ST_REGS    : STD_LOGIC;
   SIGNAL MEMControl_Out  : Control_word;
   SIGNAL MEMData_Out     : LC3B_WORD;
   SIGNAL MEMDest_Out     : LC3B_REG;
   SIGNAL NOP             : Control_word;
   SIGNAL REGBOut_OUT1    : LC3b_word;
   SIGNAL REG_Write       : std_logic;
   SIGNAL RFAOut_Out      : LC3b_word;
   SIGNAL RFAout          : LC3b_word;
   SIGNAL RFBOut_Out      : LC3b_word;
   SIGNAL RFBout          : LC3b_word;
   SIGNAL ReadData_out    : LC3b_word;
   SIGNAL RegBOut_OUT     : LC3b_word;
   SIGNAL RegData         : LC3B_WORD;
   SIGNAL SHFTOP          : LC3b_SHFTOP;
   SIGNAL SHFTOP_Out      : LC3b_SHFTOP;
   SIGNAL SRCA_OUT1       : lc3b_reg;
   SIGNAL SRCA_OUT2       : LC3B_REG;
   SIGNAL SRCA_OUT3       : lc3b_reg;
   SIGNAL SRCA_OUT4       : LC3b_reg;
   SIGNAL SRCB_OUT1       : lc3b_reg;
   SIGNAL SRCB_OUT2       : LC3B_REG;
   SIGNAL SRCB_OUT3       : lc3b_reg;
   SIGNAL SRCB_OUT4       : LC3b_reg;
   SIGNAL STALL           : STD_LOGIC;
   SIGNAL STALL_LOAD      : STD_LOGIC;
   SIGNAL SrcA            : LC3b_reg;
   SIGNAL SrcA_out        : LC3b_reg;
   SIGNAL SrcB            : LC3b_reg;
   SIGNAL SrcB_out        : LC3b_reg;
   SIGNAL TRAP8_OUT       : LC3B_WORD;
   SIGNAL TRAP8_OUT1      : LC3B_WORD;
   SIGNAL WBDEST          : LC3b_REG;
   SIGNAL control_out1    : CONTROL_WORD;
   SIGNAL control_out2    : control_word;
   SIGNAL iPC             : LC3b_word;
   SIGNAL iPC_OUT3        : lc3b_word;
   SIGNAL iPC_OUT4        : LC3B_WORD;
   SIGNAL iPC_Out1        : LC3b_word;
   SIGNAL iPC_Out5        : LC3b_WORD;
   SIGNAL iPC_Out6        : LC3B_WORD;
   SIGNAL iPC_out         : LC3b_word;
   SIGNAL iPC_out2        : LC3b_word;
   SIGNAL trapvect8       : LC3b_word;
   SIGNAL trapvector8_out : LC3b_word;

   -- Implicit buffer signal declarations
   SIGNAL D_DATAOUT_internal : LC3B_WORD;


   -- Component Declarations
   COMPONENT ControlMux
   PORT (
      A   : IN     Control_word ;
      B   : IN     Control_word ;
      SEL : IN     STD_LOGIC ;
      F   : OUT    Control_word 
   );
   END COMPONENT;
   COMPONENT EXECUTE
   PORT (
      ADJ11        : IN     LC3B_WORD ;
      ADJ4         : IN     LC3B_WORD ;
      ADJ5         : IN     LC3B_WORD ;
      ADJ6out      : IN     LC3B_WORD ;
      ADJ9         : IN     lc3b_word ;
      DEST         : IN     lc3b_reg ;
      EXEControl   : IN     Control_word ;
      EXEDATA      : IN     LC3B_word ;
      EXEDest      : IN     LC3B_Reg ;
      IMM5MuxSel   : IN     STD_LOGIC ;
      JSR11        : IN     std_logic ;
      MEMControl   : IN     Control_word ;
      MEMDATA      : IN     LC3B_WORD ;
      MEMDest      : IN     LC3B_REG ;
      MEMDest2     : IN     LC3b_reg ;
      RegAOut      : IN     LC3b_word ;
      RegBOut      : IN     LC3B_WORD ;
      SHFTOP       : IN     LC3B_SHFTOP ;
      SRCA         : IN     lc3b_reg ;
      SRCB         : IN     lc3b_reg ;
      TRAP8        : IN     LC3B_WORD ;
      control      : IN     CONTROL_WORD ;
      iPC          : IN     lc3b_word  BUS;
      ADJ11_OUT    : OUT    LC3B_WORD ;
      ADJ9_OUT     : OUT    LC3B_WORD ;
      ALUResultout : OUT    LC3B_WORD ;
      DEST_OUT     : OUT    lc3b_reg ;
      INV_STALL    : OUT    STD_LOGIC ;
      JSR11_Out    : OUT    std_logic ;
      RegBOut_OUT  : OUT    LC3b_word ;
      SRCA_OUT     : OUT    lc3b_reg ;
      SRCB_OUT     : OUT    lc3b_reg ;
      STALL        : OUT    STD_LOGIC ;
      TRAP8_OUT    : OUT    LC3B_WORD ;
      control_out  : OUT    CONTROL_WORD ;
      iPC_OUT      : OUT    lc3b_word 
   );
   END COMPONENT;
   COMPONENT EX_MEM
   PORT (
      RESET_L     : IN     std_logic ;
      clk         : IN     std_logic ;
      Load        : IN     std_logic ;
      ALUout      : IN     LC3b_word ;
      Dest        : IN     LC3b_reg ;
      control     : IN     control_word ;
      control_out : OUT    control_word ;
      ALUout_out  : OUT    LC3b_word ;
      Dest_out    : OUT    LC3b_reg ;
      SRCA        : IN     LC3B_REG ;
      SRCB        : IN     LC3B_REG ;
      ADJ11       : IN     LC3B_WORD ;
      RegBOut     : IN     LC3b_WORD ;
      ADJ9        : IN     LC3B_WORD ;
      TRAP8       : IN     LC3B_WORD ;
      iPC         : IN     LC3B_WORD ;
      iPC_OUT     : OUT    LC3B_WORD ;
      ADJ9_OUT    : OUT    LC3B_WORD ;
      ADJ11_OUT   : OUT    LC3B_WORD ;
      TRAP8_OUT   : OUT    LC3B_WORD ;
      SRCA_OUT    : OUT    LC3B_REG ;
      SRCB_OUT    : OUT    LC3B_REG ;
      REGBOut_OUT : OUT    LC3b_word ;
      JSR11       : IN     std_logic ;
      JSR11_Out   : OUT    std_logic 
   );
   END COMPONENT;
   COMPONENT IDECODE
   PORT (
      Clk        : IN     std_logic ;
      Instr      : IN     LC3b_word ;
      RESET_L    : IN     std_logic ;
      RFMUXOUT   : IN     LC3b_word ;
      RegWrite   : IN     std_logic ;
      WBDEST     : IN     LC3b_REG ;
      iPC        : IN     LC3b_word ;
      ADJ11Out   : OUT    LC3b_word ;
      ADJ4Out    : OUT    LC3b_word ;
      ADJ5Out    : OUT    LC3b_word ;
      ADJ6Out    : OUT    LC3b_word ;
      ADJ9Out    : OUT    Lc3b_word ;
      ControlOut : OUT    CONTROL_WORD ;
      DEST       : OUT    LC3b_reg ;
      IMM5Sel    : OUT    std_logic ;
      JSR11      : OUT    std_logic ;
      OPCODE     : OUT    LC3b_opcode ;
      RFAout     : OUT    LC3b_word ;
      RFBout     : OUT    LC3b_word ;
      SHFTOP     : OUT    LC3b_SHFTOP ;
      SRCA       : OUT    LC3b_reg ;
      SRCB       : OUT    LC3b_reg ;
      iPC_Out    : OUT    LC3b_word ;
      trapvect8  : OUT    LC3b_word 
   );
   END COMPONENT;
   COMPONENT ID_EX
   PORT (
      RESET_L         : IN     std_logic ;
      clk             : IN     std_logic ;
      Load            : IN     std_logic ;
      Control         : IN     control_word ;
      iPC             : IN     LC3b_word ;
      Dest            : IN     LC3b_reg ;
      Dest_out        : OUT    LC3b_reg ;
      SrcA            : IN     LC3b_reg ;
      SrcA_out        : OUT    LC3b_reg ;
      SrcB            : IN     LC3b_reg ;
      SrcB_out        : OUT    LC3b_reg ;
      ADJ4            : IN     LC3b_word ;
      ADJ4_out        : OUT    LC3b_word ;
      ADJ5            : IN     LC3b_word ;
      ADJ5_out        : OUT    LC3b_word ;
      ADJ6            : IN     LC3b_word ;
      ADJ6_out        : OUT    LC3b_word ;
      trapvector8     : IN     LC3b_word ;
      trapvector8_out : OUT    LC3b_word ;
      ADJ9            : IN     LC3b_word ;
      ADJ9_out        : OUT    LC3b_word ;
      ADJ11           : IN     LC3b_word ;
      ADJ11_out       : OUT    LC3b_word ;
      iPC_out         : OUT    LC3b_word ;
      RFAOut          : IN     LC3b_word ;
      RFBOut          : IN     LC3b_word ;
      RFAOut_Out      : OUT    LC3b_word ;
      RFBOut_Out      : OUT    LC3b_word ;
      Control_Out     : OUT    Control_word ;
      IMM5Sel         : IN     std_logic ;
      IMM5Sel_Out     : OUT    std_logic ;
      SHFTOP          : IN     LC3b_SHFTOP ;
      SHFTOP_Out      : OUT    LC3b_SHFTOP ;
      JSR11           : IN     std_logic ;
      JSR11_Out       : OUT    std_logic ;
      EXEDest         : IN     LC3B_REG ;
      EXEDest_Out     : OUT    LC3B_REG ;
      EXEData         : IN     LC3B_WORD ;
      EXEDATA_Out     : OUT    LC3B_WORD ;
      MEMDest         : IN     LC3B_REG ;
      MEMDest_Out     : OUT    LC3B_REG ;
      MEMData         : IN     LC3B_WORD ;
      MEMData_Out     : OUT    LC3B_WORD ;
      EXEControl      : IN     Control_word ;
      EXEControl_Out  : OUT    Control_word ;
      MEMControl      : IN     Control_word ;
      MEMControl_Out  : OUT    Control_word 
   );
   END COMPONENT;
   COMPONENT IFETCH
   PORT (
      BrADDR    : IN     LC3B_WORD ;
      Clk       : IN     std_logic ;
      D_LOAD    : IN     STD_LOGIC ;
      I_DATAIN  : IN     LC3b_word ;
      I_MRESP_H : IN     std_logic ;
      PCMuxSel  : IN     STD_LOGIC ;
      RESET_L   : IN     std_logic ;
      I_Load    : OUT    STD_LOGIC ;
      I_MREAD_L : OUT    STD_LOGIC ;
      Instr     : OUT    LC3b_word ;
      iADDR     : OUT    LC3b_word ;
      iPC       : OUT    LC3b_word 
   );
   END COMPONENT;
   COMPONENT IF_ID
   PORT (
      RESET_L   : IN     std_logic ;
      clk       : IN     std_logic ;
      Load      : IN     std_logic ;
      Instr     : IN     LC3b_word ;
      iPC       : IN     LC3b_word ;
      Instr_out : OUT    LC3b_word ;
      iPC_out   : OUT    LC3b_word 
   );
   END COMPONENT;
   COMPONENT MEMCALL
   PORT (
      ADJ11       : IN     lc3b_word ;
      ADJ9        : IN     lc3b_word ;
      ALUOut      : IN     lc3b_word ;
      Control     : IN     Control_Word ;
      DEST        : IN     LC3b_reg ;
      D_DATAIN    : IN     LC3b_word ;
      D_MRESP_H   : IN     std_logic ;
      JSRSel      : IN     STD_LOGIC ;
      RESET_L     : IN     std_logic ;
      SRCA        : IN     lc3b_reg ;
      SRCB        : IN     lc3b_reg ;
      TRAP8       : IN     lc3b_word ;
      WriteData   : IN     LC3b_word ;
      clk         : IN     std_logic ;
      iPC         : IN     lc3b_word ;
      ALUOut_OUT  : OUT    lc3b_word ;
      BRAddress   : OUT    LC3b_word ;
      BRMuxSel    : OUT    STD_LOGIC ;
      Control_OUT : OUT    CONTROL_WORD ;
      D_ADDR      : OUT    LC3b_word ;
      D_DATAOUT   : OUT    LC3b_word ;
      D_Load      : OUT    STD_LOGIC ;
      D_MREAD_L   : OUT    std_logic ;
      D_MWRITEH_L : OUT    STD_LOGIC ;
      D_MWRITEL_L : OUT    STD_LOGIC ;
      DestOut     : OUT    LC3b_reg ;
      SRCA_OUT    : OUT    lc3b_reg ;
      SRCB_OUT    : OUT    lc3b_reg ;
      iPC_Out     : OUT    LC3B_WORD 
   );
   END COMPONENT;
   COMPONENT MEM_WB
   PORT (
      RESET_L      : IN     std_logic ;
      clk          : IN     std_logic ;
      Load         : IN     std_logic ;
      ReadData     : IN     LC3b_word ;
      ALUout       : IN     LC3b_word ;
      DEST         : IN     LC3b_reg ;
      SRCA         : IN     LC3b_reg ;
      SRCB         : IN     LC3b_reg ;
      Control      : IN     control_word ;
      ALUout_out   : OUT    LC3b_word ;
      DEST_OUT     : OUT    LC3b_reg ;
      SRCA_OUT     : OUT    LC3b_reg ;
      SRCB_OUT     : OUT    LC3b_reg ;
      Control_Out  : OUT    control_word ;
      ReadData_out : OUT    LC3b_word ;
      iPC          : IN     LC3b_WORD ;
      iPC_Out      : OUT    LC3b_WORD 
   );
   END COMPONENT;
   COMPONENT NOPGEN
   PORT (
      NOP : OUT    Control_word 
   );
   END COMPONENT;
   COMPONENT WRITEBACK
   PORT (
      ALUout    : IN     LC3B_WORD ;
      Control   : IN     Control_Word ;
      DEST      : IN     Lc3b_reg ;
      ReadData  : IN     LC3B_WORD ;
      SRCA      : IN     LC3b_reg ;
      SRCB      : IN     LC3b_reg ;
      iPC       : IN     LC3B_WORD ;
      DestOut   : OUT    Lc3b_reg ;
      RegData   : OUT    LC3B_WORD ;
      Reg_Write : OUT    std_logic ;
      SRCAOut   : OUT    LC3b_reg ;
      SRCBOut   : OUT    LC3b_reg 
   );
   END COMPONENT;
   COMPONENT AND2
   PORT (
      A : IN     STD_LOGIC ;
      B : IN     STD_LOGIC ;
      F : OUT    STD_LOGIC 
   );
   END COMPONENT;

   -- Optional embedded configurations
   -- pragma synthesis_off
   FOR ALL : AND2 USE ENTITY mp3lib.AND2;
   FOR ALL : ControlMux USE ENTITY ece411.ControlMux;
   FOR ALL : EXECUTE USE ENTITY ece411.EXECUTE;
   FOR ALL : EX_MEM USE ENTITY ece411.EX_MEM;
   FOR ALL : IDECODE USE ENTITY ece411.IDECODE;
   FOR ALL : ID_EX USE ENTITY ece411.ID_EX;
   FOR ALL : IFETCH USE ENTITY ece411.IFETCH;
   FOR ALL : IF_ID USE ENTITY ece411.IF_ID;
   FOR ALL : MEMCALL USE ENTITY ece411.MEMCALL;
   FOR ALL : MEM_WB USE ENTITY ece411.MEM_WB;
   FOR ALL : NOPGEN USE ENTITY ece411.NOPGEN;
   FOR ALL : WRITEBACK USE ENTITY ece411.WRITEBACK;
   -- pragma synthesis_on


BEGIN

   -- Instance port mappings.
   U_1 : ControlMux
      PORT MAP (
         A   => control_out1,
         B   => NOP,
         SEL => STALL,
         F   => CtrMUXOUT
      );
   EXE : EXECUTE
      PORT MAP (
         ADJ11        => ADJ11_out,
         ADJ4         => ADJ4_out,
         ADJ5         => ADJ5_out,
         ADJ6out      => ADJ6_out,
         ADJ9         => ADJ9_out,
         DEST         => Dest_out1,
         EXEControl   => EXEControl_Out,
         EXEDATA      => EXEDATA_Out,
         EXEDest      => EXEDest_Out,
         IMM5MuxSel   => IMM5Sel_Out,
         JSR11        => JSR11_Out,
         MEMControl   => Control_OUT3,
         MEMDATA      => D_DATAOUT_internal,
         MEMDest      => MEMDest_Out,
         MEMDest2     => DestOut,
         RegAOut      => RFAOut_Out,
         RegBOut      => RFBOut_Out,
         SHFTOP       => SHFTOP_Out,
         SRCA         => SrcA_out,
         SRCB         => SrcB_out,
         TRAP8        => trapvector8_out,
         control      => Control_Out,
         iPC          => iPC_out2,
         ADJ11_OUT    => ADJ11_OUT1,
         ADJ9_OUT     => ADJ9_OUT1,
         ALUResultout => ALUResultout,
         DEST_OUT     => DEST_OUT2,
         INV_STALL    => INV_STALL,
         JSR11_Out    => JSR11_Out1,
         RegBOut_OUT  => RegBOut_OUT,
         SRCA_OUT     => SRCA_OUT1,
         SRCB_OUT     => SRCB_OUT1,
         STALL        => STALL,
         TRAP8_OUT    => TRAP8_OUT,
         control_out  => control_out1,
         iPC_OUT      => iPC_OUT3
      );
   EX_MEM_REG : EX_MEM
      PORT MAP (
         RESET_L     => reset_l,
         clk         => Clk,
         Load        => Load_ST_REGS,
         ALUout      => ALUResultout,
         Dest        => DEST_OUT2,
         control     => CtrMUXOUT,
         control_out => control_out2,
         ALUout_out  => ALUout_out1,
         Dest_out    => Dest_out,
         SRCA        => SRCA_OUT1,
         SRCB        => SRCB_OUT1,
         ADJ11       => ADJ11_OUT1,
         RegBOut     => RegBOut_OUT,
         ADJ9        => ADJ9_OUT1,
         TRAP8       => TRAP8_OUT,
         iPC         => iPC_OUT3,
         iPC_OUT     => iPC_OUT4,
         ADJ9_OUT    => ADJ9_OUT2,
         ADJ11_OUT   => ADJ11_OUT2,
         TRAP8_OUT   => TRAP8_OUT1,
         SRCA_OUT    => SRCA_OUT2,
         SRCB_OUT    => SRCB_OUT2,
         REGBOut_OUT => REGBOut_OUT1,
         JSR11       => JSR11_Out1,
         JSR11_Out   => JSR11_Out2
      );
   iDEC : IDECODE
      PORT MAP (
         Clk        => Clk,
         Instr      => Instr_out,
         RESET_L    => reset_l,
         RFMUXOUT   => RegData,
         RegWrite   => REG_Write,
         WBDEST     => WBDEST,
         iPC        => iPC_out,
         ADJ11Out   => ADJ11Out,
         ADJ4Out    => ADJ4Out,
         ADJ5Out    => ADJ5Out,
         ADJ6Out    => ADJ6Out,
         ADJ9Out    => ADJ9Out,
         ControlOut => ControlOut,
         DEST       => Dest,
         IMM5Sel    => IMM5Sel,
         JSR11      => JSR11,
         OPCODE     => OPEN,
         RFAout     => RFAout,
         RFBout     => RFBout,
         SHFTOP     => SHFTOP,
         SRCA       => SrcA,
         SRCB       => SrcB,
         iPC_Out    => iPC_Out1,
         trapvect8  => trapvect8
      );
   ID_EX_REG : ID_EX
      PORT MAP (
         RESET_L         => reset_l,
         clk             => Clk,
         Load            => STALL_LOAD,
         Control         => ControlOut,
         iPC             => iPC_Out1,
         Dest            => Dest,
         Dest_out        => Dest_out1,
         SrcA            => SrcA,
         SrcA_out        => SrcA_out,
         SrcB            => SrcB,
         SrcB_out        => SrcB_out,
         ADJ4            => ADJ4Out,
         ADJ4_out        => ADJ4_out,
         ADJ5            => ADJ5Out,
         ADJ5_out        => ADJ5_out,
         ADJ6            => ADJ6Out,
         ADJ6_out        => ADJ6_out,
         trapvector8     => trapvect8,
         trapvector8_out => trapvector8_out,
         ADJ9            => ADJ9Out,
         ADJ9_out        => ADJ9_out,
         ADJ11           => ADJ11Out,
         ADJ11_out       => ADJ11_out,
         iPC_out         => iPC_out2,
         RFAOut          => RFAout,
         RFBOut          => RFBout,
         RFAOut_Out      => RFAOut_Out,
         RFBOut_Out      => RFBOut_Out,
         Control_Out     => Control_Out,
         IMM5Sel         => IMM5Sel,
         IMM5Sel_Out     => IMM5Sel_Out,
         SHFTOP          => SHFTOP,
         SHFTOP_Out      => SHFTOP_Out,
         JSR11           => JSR11,
         JSR11_Out       => JSR11_Out,
         EXEDest         => DEST_OUT2,
         EXEDest_Out     => EXEDest_Out,
         EXEData         => ALUResultout,
         EXEDATA_Out     => EXEDATA_Out,
         MEMDest         => DestOut,
         MEMDest_Out     => MEMDest_Out,
         MEMData         => D_DATAOUT_internal,
         MEMData_Out     => MEMData_Out,
         EXEControl      => control_out1,
         EXEControl_Out  => EXEControl_Out,
         MEMControl      => Control_OUT3,
         MEMControl_Out  => MEMControl_Out
      );
   IFState : IFETCH
      PORT MAP (
         BrADDR    => BRAddr,
         Clk       => Clk,
         D_LOAD    => D_Load,
         I_DATAIN  => I_DATAIN,
         I_MRESP_H => I_MRESP_H,
         PCMuxSel  => BRMuxSel,
         RESET_L   => reset_l,
         I_Load    => I_Load,
         I_MREAD_L => I_MREAD_L,
         Instr     => Instr,
         iADDR     => I_ADDRESS,
         iPC       => iPC
      );
   IF_ID_REG : IF_ID
      PORT MAP (
         RESET_L   => reset_l,
         clk       => Clk,
         Load      => STALL_LOAD,
         Instr     => Instr,
         iPC       => iPC,
         Instr_out => Instr_out,
         iPC_out   => iPC_out
      );
   aMEMCALL : MEMCALL
      PORT MAP (
         ADJ11       => ADJ11_OUT2,
         ADJ9        => ADJ9_OUT2,
         ALUOut      => ALUout_out1,
         Clk         => Clk,
         Control     => control_out2,
         DEST        => Dest_out,
         D_DATAIN    => D_DATAIN,
         D_MRESP_H   => D_MRESP_H,
         JSRSel      => JSR11_Out2,
         RESET_L     => reset_l,
         SRCA        => SRCA_OUT2,
         SRCB        => SRCB_OUT2,
         TRAP8       => TRAP8_OUT1,
         WriteData   => REGBOut_OUT1,
         iPC         => iPC_OUT4,
         ALUOut_OUT  => ALUOut_OUT,
         BRAddress   => BRAddr,
         BRMuxSel    => BRMuxSel,
         Control_OUT => Control_OUT3,
         D_ADDR      => D_ADDRESS,
         D_DATAOUT   => D_DATAOUT_internal,
         D_Load      => D_Load,
         D_MREAD_L   => D_MREAD_L,
         D_MWRITEH_L => D_MWRITEH_L,
         D_MWRITEL_L => D_MWRITEL_L,
         DestOut     => DestOut,
         SRCA_OUT    => SRCA_OUT3,
         SRCB_OUT    => SRCB_OUT3,
         iPC_Out     => iPC_Out6
      );
   aMEM_WB : MEM_WB
      PORT MAP (
         RESET_L      => reset_l,
         clk          => Clk,
         Load         => Load_ST_REGS,
         ReadData     => D_DATAOUT_internal,
         ALUout       => ALUOut_OUT,
         DEST         => DestOut,
         SRCA         => SRCA_OUT3,
         SRCB         => SRCB_OUT3,
         Control      => Control_OUT3,
         ALUout_out   => ALUout_out2,
         DEST_OUT     => DEST_OUT3,
         SRCA_OUT     => SRCA_OUT4,
         SRCB_OUT     => SRCB_OUT4,
         Control_Out  => Control_Out4,
         ReadData_out => ReadData_out,
         iPC          => iPC_Out6,
         iPC_Out      => iPC_Out5
      );
   aNOP : NOPGEN
      PORT MAP (
         NOP => NOP
      );
   aWB : WRITEBACK
      PORT MAP (
         ALUout    => ALUout_out2,
         Control   => Control_Out4,
         DEST      => DEST_OUT3,
         ReadData  => ReadData_out,
         SRCA      => SRCA_OUT4,
         SRCB      => SRCB_OUT4,
         iPC       => iPC_Out5,
         DestOut   => WBDEST,
         RegData   => RegData,
         Reg_Write => REG_Write,
         SRCAOut   => OPEN,
         SRCBOut   => OPEN
      );
   U_0 : AND2
      PORT MAP (
         A => D_Load,
         B => I_Load,
         F => Load_ST_REGS
      );
   U_2 : AND2
      PORT MAP (
         A => Load_ST_REGS,
         B => INV_STALL,
         F => STALL_LOAD
      );

   -- Implicit buffered output assignments
   D_DATAOUT <= D_DATAOUT_internal;

END struct;
