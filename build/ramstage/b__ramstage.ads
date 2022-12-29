pragma Warnings (Off);
pragma Ada_95;
pragma Restrictions (No_Exception_Handlers);
with System;
package ramstage_adamain is

   procedure ramstage_adainit;
   pragma Export (C, ramstage_adainit, "ramstage_adainit");
   pragma Linker_Constructor (ramstage_adainit);

   type Version_32 is mod 2 ** 32;
   u00001 : constant Version_32 := 16#e30191a7#;
   pragma Export (C, u00001, "hw__gfx__gma__configB");
   u00002 : constant Version_32 := 16#fb7485af#;
   pragma Export (C, u00002, "hw__gfx__gma__configS");
   u00003 : constant Version_32 := 16#6ec2d167#;
   pragma Export (C, u00003, "hw__gfx__gma__connectors__ddiB");
   u00004 : constant Version_32 := 16#97f915c9#;
   pragma Export (C, u00004, "hw__gfx__gma__connectors__ddiS");
   u00005 : constant Version_32 := 16#29972944#;
   pragma Export (C, u00005, "hw__gfx__gma__connectorsB");
   u00006 : constant Version_32 := 16#ec83b2a0#;
   pragma Export (C, u00006, "hw__gfx__gma__connectorsS");
   u00007 : constant Version_32 := 16#5d3d7f71#;
   pragma Export (C, u00007, "hw__gfx__gma__ddi_phy_stubS");
   u00008 : constant Version_32 := 16#5ee7b543#;
   pragma Export (C, u00008, "hw__gfx__gma__port_detectB");
   u00009 : constant Version_32 := 16#41c04848#;
   pragma Export (C, u00009, "hw__gfx__gma__port_detectS");
   u00010 : constant Version_32 := 16#41ab3edb#;
   pragma Export (C, u00010, "hw__gfx__dp_aux_chB");
   u00011 : constant Version_32 := 16#55dabd2c#;
   pragma Export (C, u00011, "hw__gfx__dp_aux_chS");
   u00012 : constant Version_32 := 16#e2948386#;
   pragma Export (C, u00012, "hw__gfx__dp_defsS");
   u00013 : constant Version_32 := 16#743b7ed2#;
   pragma Export (C, u00013, "hw__gfx__dp_dual_modeB");
   u00014 : constant Version_32 := 16#e8e7bbc5#;
   pragma Export (C, u00014, "hw__gfx__dp_dual_modeS");
   u00015 : constant Version_32 := 16#a7984cb7#;
   pragma Export (C, u00015, "hw__gfx__dp_infoB");
   u00016 : constant Version_32 := 16#c43e61f3#;
   pragma Export (C, u00016, "hw__gfx__dp_infoS");
   u00017 : constant Version_32 := 16#85aed5af#;
   pragma Export (C, u00017, "hw__gfx__dp_trainingB");
   u00018 : constant Version_32 := 16#04b8a02d#;
   pragma Export (C, u00018, "hw__gfx__dp_trainingS");
   u00019 : constant Version_32 := 16#cd05dfd3#;
   pragma Export (C, u00019, "hw__gfx__edidB");
   u00020 : constant Version_32 := 16#4bdfd417#;
   pragma Export (C, u00020, "hw__gfx__edidS");
   u00021 : constant Version_32 := 16#52a91bf5#;
   pragma Export (C, u00021, "hw__gfx__framebuffer_fillerB");
   u00022 : constant Version_32 := 16#cc363673#;
   pragma Export (C, u00022, "hw__gfx__framebuffer_fillerS");
   u00023 : constant Version_32 := 16#62ada891#;
   pragma Export (C, u00023, "hw__gfx__gma__config_helpersB");
   u00024 : constant Version_32 := 16#15de6eeb#;
   pragma Export (C, u00024, "hw__gfx__gma__config_helpersS");
   u00025 : constant Version_32 := 16#ce82d57f#;
   pragma Export (C, u00025, "hw__gfx__gma__connector_infoB");
   u00026 : constant Version_32 := 16#0c4e0f94#;
   pragma Export (C, u00026, "hw__gfx__gma__connector_infoS");
   u00027 : constant Version_32 := 16#1bdc88f5#;
   pragma Export (C, u00027, "hw__gfx__gma__display_probingB");
   u00028 : constant Version_32 := 16#29f308f2#;
   pragma Export (C, u00028, "hw__gfx__gma__display_probingS");
   u00029 : constant Version_32 := 16#53944791#;
   pragma Export (C, u00029, "hw__gfx__gma__dp_aux_chB");
   u00030 : constant Version_32 := 16#f7c06fc7#;
   pragma Export (C, u00030, "hw__gfx__gma__dp_aux_chS");
   u00031 : constant Version_32 := 16#81c5c274#;
   pragma Export (C, u00031, "hw__gfx__gma__dp_aux_requestB");
   u00032 : constant Version_32 := 16#c6a79bd6#;
   pragma Export (C, u00032, "hw__gfx__gma__dp_aux_requestS");
   u00033 : constant Version_32 := 16#8fb53536#;
   pragma Export (C, u00033, "hw__gfx__gma__dp_dual_modeB");
   u00034 : constant Version_32 := 16#9482b171#;
   pragma Export (C, u00034, "hw__gfx__gma__dp_dual_modeS");
   u00035 : constant Version_32 := 16#38def494#;
   pragma Export (C, u00035, "hw__gfx__gma__dp_infoB");
   u00036 : constant Version_32 := 16#0f30aae5#;
   pragma Export (C, u00036, "hw__gfx__gma__dp_infoS");
   u00037 : constant Version_32 := 16#378e555e#;
   pragma Export (C, u00037, "hw__gfx__gma__i2cB");
   u00038 : constant Version_32 := 16#19545f9a#;
   pragma Export (C, u00038, "hw__gfx__gma__i2cS");
   u00039 : constant Version_32 := 16#50893795#;
   pragma Export (C, u00039, "hw__gfx__gma__panelB");
   u00040 : constant Version_32 := 16#a9bc22a2#;
   pragma Export (C, u00040, "hw__gfx__gma__panelS");
   u00041 : constant Version_32 := 16#5d50794b#;
   pragma Export (C, u00041, "hw__gfx__gma__pch__fdiB");
   u00042 : constant Version_32 := 16#9accaa52#;
   pragma Export (C, u00042, "hw__gfx__gma__pch__fdiS");
   u00043 : constant Version_32 := 16#e9a2fd02#;
   pragma Export (C, u00043, "hw__gfx__gma__pch__sidebandB");
   u00044 : constant Version_32 := 16#d9724cc9#;
   pragma Export (C, u00044, "hw__gfx__gma__pch__sidebandS");
   u00045 : constant Version_32 := 16#d90a2c5f#;
   pragma Export (C, u00045, "hw__gfx__gma__pch__transcoderB");
   u00046 : constant Version_32 := 16#c8134541#;
   pragma Export (C, u00046, "hw__gfx__gma__pch__transcoderS");
   u00047 : constant Version_32 := 16#434d0d27#;
   pragma Export (C, u00047, "hw__gfx__gma__pch__vgaB");
   u00048 : constant Version_32 := 16#65e1fddd#;
   pragma Export (C, u00048, "hw__gfx__gma__pch__vgaS");
   u00049 : constant Version_32 := 16#1da89aa0#;
   pragma Export (C, u00049, "hw__gfx__gma__pchS");
   u00050 : constant Version_32 := 16#7bbd4bba#;
   pragma Export (C, u00050, "hw__gfx__gma__pcodeB");
   u00051 : constant Version_32 := 16#cbf2e1ff#;
   pragma Export (C, u00051, "hw__gfx__gma__pcodeS");
   u00052 : constant Version_32 := 16#1edcbab0#;
   pragma Export (C, u00052, "hw__gfx__gma__pipe_setupB");
   u00053 : constant Version_32 := 16#9946d972#;
   pragma Export (C, u00053, "hw__gfx__gma__pipe_setupS");
   u00054 : constant Version_32 := 16#5941de6f#;
   pragma Export (C, u00054, "hw__gfx__gma__registersB");
   u00055 : constant Version_32 := 16#15de704b#;
   pragma Export (C, u00055, "hw__gfx__gma__registersS");
   u00056 : constant Version_32 := 16#e653d8a2#;
   pragma Export (C, u00056, "hw__gfx__gma__transcoderB");
   u00057 : constant Version_32 := 16#f4210883#;
   pragma Export (C, u00057, "hw__gfx__gma__transcoderS");
   u00058 : constant Version_32 := 16#56ccc8bf#;
   pragma Export (C, u00058, "hw__gfx__gmaB");
   u00059 : constant Version_32 := 16#76d5c337#;
   pragma Export (C, u00059, "hw__gfx__gmaS");
   u00060 : constant Version_32 := 16#37290eac#;
   pragma Export (C, u00060, "hw__gfx__i2cS");
   u00061 : constant Version_32 := 16#d263ba5b#;
   pragma Export (C, u00061, "hw__gfxS");
   u00062 : constant Version_32 := 16#e7ac758d#;
   pragma Export (C, u00062, "hw__gfx__gma__connectors__ddi__buffersB");
   u00063 : constant Version_32 := 16#b084459e#;
   pragma Export (C, u00063, "hw__gfx__gma__connectors__ddi__buffersS");
   u00064 : constant Version_32 := 16#943e94ef#;
   pragma Export (C, u00064, "hw__gfx__gma__ddi_phyS");
   u00065 : constant Version_32 := 16#ed4f3480#;
   pragma Export (C, u00065, "hw__gfx__gma__plls__dpllB");
   u00066 : constant Version_32 := 16#f34bc29d#;
   pragma Export (C, u00066, "hw__gfx__gma__plls__dpllS");
   u00067 : constant Version_32 := 16#9ce95879#;
   pragma Export (C, u00067, "hw__gfx__gma__plls__dpll_0B");
   u00068 : constant Version_32 := 16#02e5334f#;
   pragma Export (C, u00068, "hw__gfx__gma__plls__dpll_0S");
   u00069 : constant Version_32 := 16#9b075475#;
   pragma Export (C, u00069, "hw__gfx__gma__pllsB");
   u00070 : constant Version_32 := 16#c9d5b4fd#;
   pragma Export (C, u00070, "hw__gfx__gma__pllsS");
   u00071 : constant Version_32 := 16#f029da11#;
   pragma Export (C, u00071, "hw__gfx__gma__power_and_clocksB");
   u00072 : constant Version_32 := 16#db05f4cd#;
   pragma Export (C, u00072, "hw__gfx__gma__power_and_clocksS");
   u00073 : constant Version_32 := 16#7981b070#;
   pragma Export (C, u00073, "hw__gfx__gma__spllS");
   u00074 : constant Version_32 := 16#94b5b62b#;
   pragma Export (C, u00074, "hw__mmio_rangeB");
   u00075 : constant Version_32 := 16#ce9421df#;
   pragma Export (C, u00075, "hw__mmio_rangeS");
   u00076 : constant Version_32 := 16#740bfa60#;
   pragma Export (C, u00076, "hw__pci__devB");
   u00077 : constant Version_32 := 16#19713f06#;
   pragma Export (C, u00077, "hw__pci__devS");
   u00078 : constant Version_32 := 16#ff7aacc6#;
   pragma Export (C, u00078, "hw__mmio_regsB");
   u00079 : constant Version_32 := 16#f8568111#;
   pragma Export (C, u00079, "hw__mmio_regsS");
   u00080 : constant Version_32 := 16#63db401a#;
   pragma Export (C, u00080, "hw__pci__mmconfB");
   u00081 : constant Version_32 := 16#1638822d#;
   pragma Export (C, u00081, "hw__pci__mmconfS");
   u00082 : constant Version_32 := 16#e63e29d4#;
   pragma Export (C, u00082, "hw__pciS");
   u00083 : constant Version_32 := 16#edda6f07#;
   pragma Export (C, u00083, "hw__port_ioB");
   u00084 : constant Version_32 := 16#7678d008#;
   pragma Export (C, u00084, "hw__port_ioS");
   u00085 : constant Version_32 := 16#ab5919c7#;
   pragma Export (C, u00085, "hw__sub_regsS");
   u00086 : constant Version_32 := 16#2ce84eaa#;
   pragma Export (C, u00086, "hw__timeB");
   u00087 : constant Version_32 := 16#ac96429c#;
   pragma Export (C, u00087, "hw__timeS");
   u00088 : constant Version_32 := 16#bd96d023#;
   pragma Export (C, u00088, "hwS");
   u00089 : constant Version_32 := 16#3a0dabf0#;
   pragma Export (C, u00089, "hw__debugB");
   u00090 : constant Version_32 := 16#27b64be9#;
   pragma Export (C, u00090, "hw__debugS");
   u00091 : constant Version_32 := 16#ce77d9a2#;
   pragma Export (C, u00091, "hw__debug_sinkS");
   u00092 : constant Version_32 := 16#b31cbdc0#;
   pragma Export (C, u00092, "hw__configS");
   u00093 : constant Version_32 := 16#bc33d79b#;
   pragma Export (C, u00093, "gmaB");
   u00094 : constant Version_32 := 16#f765cb3d#;
   pragma Export (C, u00094, "gmaS");
   u00095 : constant Version_32 := 16#b562262b#;
   pragma Export (C, u00095, "gma__gfx_initB");
   u00096 : constant Version_32 := 16#cd05678f#;
   pragma Export (C, u00096, "gma__gfx_initS");
   u00097 : constant Version_32 := 16#e6df39c3#;
   pragma Export (C, u00097, "cbS");
   u00098 : constant Version_32 := 16#6fbaf8d3#;
   pragma Export (C, u00098, "hw__time__timerB");
   u00099 : constant Version_32 := 16#3e460172#;
   pragma Export (C, u00099, "hw__time__timerS");
   u00100 : constant Version_32 := 16#b5112af1#;
   pragma Export (C, u00100, "gma__mainboardS");
   u00101 : constant Version_32 := 16#24478a6c#;
   pragma Export (C, u00101, "cb__configS");

   --  BEGIN ELABORATION ORDER
   --  ada%s
   --  gnat%s
   --  gnat.source_info%s
   --  interfaces%s
   --  system%s
   --  system.machine_code%s
   --  system.parameters%s
   --  interfaces.c%s
   --  interfaces.c%b
   --  system.storage_elements%s
   --  system.storage_elements%b
   --  system.unsigned_types%s
   --  cb%s
   --  cb.config%s
   --  hw%s
   --  hw.config%s
   --  hw.debug_sink%s
   --  hw.gfx%s
   --  hw.gfx.dp_defs%s
   --  hw.gfx.i2c%s
   --  hw.pci%s
   --  hw.port_io%s
   --  hw.port_io%b
   --  hw.sub_regs%s
   --  hw.time%s
   --  hw.time.timer%s
   --  hw.time.timer%b
   --  hw.time%b
   --  hw.debug%s
   --  hw.debug%b
   --  hw.gfx.dp_aux_ch%s
   --  hw.gfx.dp_aux_ch%b
   --  hw.gfx.dp_dual_mode%s
   --  hw.gfx.dp_dual_mode%b
   --  hw.gfx.dp_info%s
   --  hw.gfx.dp_info%b
   --  hw.gfx.dp_training%s
   --  hw.gfx.dp_training%b
   --  hw.gfx.edid%s
   --  hw.gfx.edid%b
   --  hw.mmio_range%s
   --  hw.mmio_range%b
   --  hw.gfx.framebuffer_filler%s
   --  hw.gfx.framebuffer_filler%b
   --  hw.mmio_regs%s
   --  hw.mmio_regs%b
   --  hw.pci.mmconf%s
   --  hw.pci.mmconf%b
   --  hw.pci.dev%s
   --  hw.pci.dev%b
   --  hw.gfx.gma%s
   --  hw.gfx.gma.config%s
   --  hw.gfx.gma.config%b
   --  hw.gfx.gma.config_helpers%s
   --  hw.gfx.gma.connector_info%s
   --  hw.gfx.gma.connectors%s
   --  hw.gfx.gma.dp_aux_request%s
   --  hw.gfx.gma.dp_aux_ch%s
   --  hw.gfx.gma.dp_aux_ch%b
   --  hw.gfx.gma.dp_dual_mode%s
   --  hw.gfx.gma.dp_dual_mode%b
   --  hw.gfx.gma.dp_info%s
   --  hw.gfx.gma.dp_info%b
   --  hw.gfx.gma.ddi_phy_stub%s
   --  hw.gfx.gma.ddi_phy%s
   --  hw.gfx.gma.pch%s
   --  hw.gfx.gma.pch.fdi%s
   --  hw.gfx.gma.pch.sideband%s
   --  hw.gfx.gma.pch.transcoder%s
   --  hw.gfx.gma.pch.vga%s
   --  hw.gfx.gma.plls%s
   --  hw.gfx.gma.plls.dpll%s
   --  hw.gfx.gma.plls.dpll_0%s
   --  hw.gfx.gma.plls%b
   --  hw.gfx.gma.port_detect%s
   --  hw.gfx.gma.power_and_clocks%s
   --  hw.gfx.gma.registers%s
   --  hw.gfx.gma.registers%b
   --  hw.gfx.gma.config_helpers%b
   --  hw.gfx.gma.connectors.ddi%s
   --  hw.gfx.gma.connectors.ddi.buffers%s
   --  hw.gfx.gma.connectors.ddi.buffers%b
   --  hw.gfx.gma.dp_aux_request%b
   --  hw.gfx.gma.panel%s
   --  hw.gfx.gma.panel%b
   --  hw.gfx.gma.connector_info%b
   --  hw.gfx.gma.connectors%b
   --  hw.gfx.gma.pch.fdi%b
   --  hw.gfx.gma.pch.sideband%b
   --  hw.gfx.gma.pch.transcoder%b
   --  hw.gfx.gma.pch.vga%b
   --  hw.gfx.gma.pcode%s
   --  hw.gfx.gma.pcode%b
   --  hw.gfx.gma.pipe_setup%s
   --  hw.gfx.gma%b
   --  hw.gfx.gma.plls.dpll%b
   --  hw.gfx.gma.plls.dpll_0%b
   --  hw.gfx.gma.port_detect%b
   --  hw.gfx.gma.spll%s
   --  hw.gfx.gma.connectors.ddi%b
   --  hw.gfx.gma.transcoder%s
   --  hw.gfx.gma.transcoder%b
   --  hw.gfx.gma.pipe_setup%b
   --  hw.gfx.gma.power_and_clocks%b
   --  hw.gfx.gma.i2c%s
   --  hw.gfx.gma.i2c%b
   --  hw.gfx.gma.display_probing%s
   --  hw.gfx.gma.display_probing%b
   --  gma%s
   --  gma%b
   --  gma.mainboard%s
   --  gma.gfx_init%s
   --  gma.gfx_init%b
   --  END ELABORATION ORDER

end ramstage_adamain;
