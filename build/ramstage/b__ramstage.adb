pragma Warnings (Off);
pragma Ada_95;
pragma Source_File_Name (ramstage_adamain, Spec_File_Name => "b__ramstage.ads");
pragma Source_File_Name (ramstage_adamain, Body_File_Name => "b__ramstage.adb");
pragma Suppress (Overflow_Check);

package body ramstage_adamain is

   E084 : Short_Integer; pragma Import (Ada, E084, "hw__port_io_E");
   E087 : Short_Integer; pragma Import (Ada, E087, "hw__time_E");
   E099 : Short_Integer; pragma Import (Ada, E099, "hw__time__timer_E");
   E090 : Short_Integer; pragma Import (Ada, E090, "hw__debug_E");
   E011 : Short_Integer; pragma Import (Ada, E011, "hw__gfx__dp_aux_ch_E");
   E014 : Short_Integer; pragma Import (Ada, E014, "hw__gfx__dp_dual_mode_E");
   E016 : Short_Integer; pragma Import (Ada, E016, "hw__gfx__dp_info_E");
   E018 : Short_Integer; pragma Import (Ada, E018, "hw__gfx__dp_training_E");
   E020 : Short_Integer; pragma Import (Ada, E020, "hw__gfx__edid_E");
   E075 : Short_Integer; pragma Import (Ada, E075, "hw__mmio_range_E");
   E022 : Short_Integer; pragma Import (Ada, E022, "hw__gfx__framebuffer_filler_E");
   E079 : Short_Integer; pragma Import (Ada, E079, "hw__mmio_regs_E");
   E081 : Short_Integer; pragma Import (Ada, E081, "hw__pci__mmconf_E");
   E077 : Short_Integer; pragma Import (Ada, E077, "hw__pci__dev_E");
   E059 : Short_Integer; pragma Import (Ada, E059, "hw__gfx__gma_E");
   E002 : Short_Integer; pragma Import (Ada, E002, "hw__gfx__gma__config_E");
   E024 : Short_Integer; pragma Import (Ada, E024, "hw__gfx__gma__config_helpers_E");
   E026 : Short_Integer; pragma Import (Ada, E026, "hw__gfx__gma__connector_info_E");
   E006 : Short_Integer; pragma Import (Ada, E006, "hw__gfx__gma__connectors_E");
   E032 : Short_Integer; pragma Import (Ada, E032, "hw__gfx__gma__dp_aux_request_E");
   E042 : Short_Integer; pragma Import (Ada, E042, "hw__gfx__gma__pch__fdi_E");
   E044 : Short_Integer; pragma Import (Ada, E044, "hw__gfx__gma__pch__sideband_E");
   E046 : Short_Integer; pragma Import (Ada, E046, "hw__gfx__gma__pch__transcoder_E");
   E048 : Short_Integer; pragma Import (Ada, E048, "hw__gfx__gma__pch__vga_E");
   E070 : Short_Integer; pragma Import (Ada, E070, "hw__gfx__gma__plls_E");
   E066 : Short_Integer; pragma Import (Ada, E066, "hw__gfx__gma__plls__dpll_E");
   E068 : Short_Integer; pragma Import (Ada, E068, "hw__gfx__gma__plls__dpll_0_E");
   E009 : Short_Integer; pragma Import (Ada, E009, "hw__gfx__gma__port_detect_E");
   E072 : Short_Integer; pragma Import (Ada, E072, "hw__gfx__gma__power_and_clocks_E");
   E055 : Short_Integer; pragma Import (Ada, E055, "hw__gfx__gma__registers_E");
   E004 : Short_Integer; pragma Import (Ada, E004, "hw__gfx__gma__connectors__ddi_E");
   E063 : Short_Integer; pragma Import (Ada, E063, "hw__gfx__gma__connectors__ddi__buffers_E");
   E040 : Short_Integer; pragma Import (Ada, E040, "hw__gfx__gma__panel_E");
   E051 : Short_Integer; pragma Import (Ada, E051, "hw__gfx__gma__pcode_E");
   E053 : Short_Integer; pragma Import (Ada, E053, "hw__gfx__gma__pipe_setup_E");
   E057 : Short_Integer; pragma Import (Ada, E057, "hw__gfx__gma__transcoder_E");
   E038 : Short_Integer; pragma Import (Ada, E038, "hw__gfx__gma__i2c_E");
   E028 : Short_Integer; pragma Import (Ada, E028, "hw__gfx__gma__display_probing_E");
   E094 : Short_Integer; pragma Import (Ada, E094, "gma_E");
   E096 : Short_Integer; pragma Import (Ada, E096, "gma__gfx_init_E");


   procedure ramstage_adainit is
   begin
      null;

      E084 := E084 + 1;
      E099 := E099 + 1;
      E087 := E087 + 1;
      E090 := E090 + 1;
      E011 := E011 + 1;
      E014 := E014 + 1;
      E016 := E016 + 1;
      E018 := E018 + 1;
      E020 := E020 + 1;
      E075 := E075 + 1;
      E022 := E022 + 1;
      E079 := E079 + 1;
      E081 := E081 + 1;
      E077 := E077 + 1;
      E002 := E002 + 1;
      E070 := E070 + 1;
      E055 := E055 + 1;
      E024 := E024 + 1;
      E063 := E063 + 1;
      E032 := E032 + 1;
      E040 := E040 + 1;
      E026 := E026 + 1;
      E006 := E006 + 1;
      E042 := E042 + 1;
      E044 := E044 + 1;
      E046 := E046 + 1;
      E048 := E048 + 1;
      E051 := E051 + 1;
      if E059 = 0 then
         HW.GFX.GMA'ELAB_BODY;
      end if;
      E059 := E059 + 1;
      E066 := E066 + 1;
      E068 := E068 + 1;
      E009 := E009 + 1;
      E004 := E004 + 1;
      if E057 = 0 then
         HW.GFX.GMA.TRANSCODER'ELAB_SPEC;
      end if;
      E057 := E057 + 1;
      E053 := E053 + 1;
      E072 := E072 + 1;
      E038 := E038 + 1;
      E028 := E028 + 1;
      E094 := E094 + 1;
      E096 := E096 + 1;
   end ramstage_adainit;

--  BEGIN Object file/option list
   --   lib/cb.o
   --   ./cb-config.o
   --   libhwbase/common/hw.o
   --   libhwbase/common/hw-config.o
   --   libhwbase/debug/null/hw-debug_sink.o
   --   libgfxinit/common/hw-gfx.o
   --   libgfxinit/common/hw-gfx-dp_defs.o
   --   libgfxinit/common/hw-gfx-i2c.o
   --   libhwbase/common/hw-pci.o
   --   libhwbase/common/hw-port_io.o
   --   libhwbase/common/hw-sub_regs.o
   --   lib/hw-time-timer.o
   --   libhwbase/common/hw-time.o
   --   libhwbase/debug/hw-debug.o
   --   libgfxinit/common/hw-gfx-dp_aux_ch.o
   --   libgfxinit/common/hw-gfx-dp_dual_mode.o
   --   libgfxinit/common/hw-gfx-dp_info.o
   --   libgfxinit/common/hw-gfx-dp_training.o
   --   libgfxinit/common/hw-gfx-edid.o
   --   libhwbase/ada/dynamic_mmio/hw-mmio_range.o
   --   libgfxinit/common/hw-gfx-framebuffer_filler.o
   --   libhwbase/common/hw-mmio_regs.o
   --   libhwbase/common/hw-pci-mmconf.o
   --   libhwbase/common/direct/hw-pci-dev.o
   --   libgfxinit/common/dyncpu/hw-gfx-gma-config.o
   --   libgfxinit/common/hw-gfx-gma-dp_aux_ch.o
   --   libgfxinit/common/hw-gfx-gma-dp_dual_mode.o
   --   libgfxinit/common/hw-gfx-gma-dp_info.o
   --   libgfxinit/common/haswell_shared/hw-gfx-gma-ddi_phy_stub.o
   --   libgfxinit/common/skylake/hw-gfx-gma-ddi_phy.o
   --   libgfxinit/common/hw-gfx-gma-pch.o
   --   libgfxinit/common/skylake/hw-gfx-gma-plls.o
   --   libgfxinit/common/hw-gfx-gma-registers.o
   --   libgfxinit/common/hw-gfx-gma-config_helpers.o
   --   libgfxinit/common/skylake/hw-gfx-gma-connectors-ddi-buffers.o
   --   libgfxinit/common/hw-gfx-gma-dp_aux_request.o
   --   libgfxinit/common/hw-gfx-gma-panel.o
   --   libgfxinit/common/hw-gfx-gma-connector_info.o
   --   libgfxinit/common/haswell_shared/hw-gfx-gma-connectors.o
   --   libgfxinit/common/hw-gfx-gma-pch-fdi.o
   --   libgfxinit/common/hw-gfx-gma-pch-sideband.o
   --   libgfxinit/common/hw-gfx-gma-pch-transcoder.o
   --   libgfxinit/common/hw-gfx-gma-pch-vga.o
   --   libgfxinit/common/hw-gfx-gma-pcode.o
   --   libgfxinit/common/hw-gfx-gma.o
   --   libgfxinit/common/skylake/hw-gfx-gma-plls-dpll.o
   --   libgfxinit/common/skylake/hw-gfx-gma-plls-dpll_0.o
   --   libgfxinit/common/haswell_shared/hw-gfx-gma-port_detect.o
   --   libgfxinit/common/skylake/hw-gfx-gma-spll.o
   --   libgfxinit/common/haswell_shared/hw-gfx-gma-connectors-ddi.o
   --   libgfxinit/common/hw-gfx-gma-transcoder.o
   --   libgfxinit/common/hw-gfx-gma-pipe_setup.o
   --   libgfxinit/common/skylake/hw-gfx-gma-power_and_clocks.o
   --   libgfxinit/common/hw-gfx-gma-i2c.o
   --   libgfxinit/common/hw-gfx-gma-display_probing.o
   --   drivers/intel/gma/gma.o
   --   mainboard/protectli/vault_cml/gma-mainboard.o
   --   drivers/intel/gma/hires_fb/gma-gfx_init.o
   --   -L./
   --   -L/home/coreboot/coreboot/build/libgnat-x86_32/adalib/
   --   -static
   --   -lgnat
--  END Object file/option list   

end ramstage_adamain;
