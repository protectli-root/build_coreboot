package CB.Config is

   --
   -- Automatically generated file; DO NOT EDIT.
   -- coreboot configuration
   --
   --
   -- General setup
   --
   COREBOOT_BUILD                                 : constant boolean := true;
   LOCALVERSION                                   : constant string  := "v1.0.19";
   CBFS_PREFIX                                    : constant string  := "fallback";
   COMPILER_GCC                                   : constant boolean := true;
   COMPILER_LLVM_CLANG                            : constant boolean := false;
   ARCH_SUPPORTS_CLANG                            : constant boolean := true;
   ANY_TOOLCHAIN                                  : constant boolean := false;
   CCACHE                                         : constant boolean := false;
   FMD_GENPARSER                                  : constant boolean := false;
   UTIL_GENPARSER                                 : constant boolean := false;
   OPTION_BACKEND_NONE                            : constant boolean := true;
   USE_OPTION_TABLE                               : constant boolean := false;
   COMPRESS_RAMSTAGE                              : constant boolean := true;
   INCLUDE_CONFIG_FILE                            : constant boolean := true;
   COLLECT_TIMESTAMPS                             : constant boolean := true;
   TIMESTAMPS_ON_CONSOLE                          : constant boolean := false;
   USE_BLOBS                                      : constant boolean := true;
   USE_AMD_BLOBS                                  : constant boolean := false;
   USE_QC_BLOBS                                   : constant boolean := false;
   COVERAGE                                       : constant boolean := false;
   UBSAN                                          : constant boolean := false;
   HAVE_ASAN_IN_RAMSTAGE                          : constant boolean := true;
   ASAN                                           : constant boolean := false;
   NO_STAGE_CACHE                                 : constant boolean := false;
   TSEG_STAGE_CACHE                               : constant boolean := true;
   UPDATE_IMAGE                                   : constant boolean := false;
   BOOTSPLASH_IMAGE                               : constant boolean := false;
   FW_CONFIG                                      : constant boolean := false;
   --
   -- Software Bill Of Materials (SBOM)
   --
   SBOM                                           : constant boolean := false;
   -- end of Software Bill Of Materials (SBOM)
   -- end of General setup
   --
   -- Mainboard
   --
   --
   -- Important: Run 'make distclean' before switching boards
   --
   VENDOR_51NB                                    : constant boolean := false;
   VENDOR_ACER                                    : constant boolean := false;
   VENDOR_ADLINK                                  : constant boolean := false;
   VENDOR_AMD                                     : constant boolean := false;
   VENDOR_AOPEN                                   : constant boolean := false;
   VENDOR_APPLE                                   : constant boolean := false;
   VENDOR_ASROCK                                  : constant boolean := false;
   VENDOR_ASUS                                    : constant boolean := false;
   VENDOR_BAP                                     : constant boolean := false;
   VENDOR_BIOSTAR                                 : constant boolean := false;
   VENDOR_BOSTENTECH                              : constant boolean := false;
   VENDOR_CAVIUM                                  : constant boolean := false;
   VENDOR_CLEVO                                   : constant boolean := false;
   VENDOR_COMPULAB                                : constant boolean := false;
   VENDOR_DELL                                    : constant boolean := false;
   VENDOR_ELMEX                                   : constant boolean := false;
   VENDOR_EMULATION                               : constant boolean := false;
   VENDOR_EXAMPLE                                 : constant boolean := false;
   VENDOR_FACEBOOK                                : constant boolean := false;
   VENDOR_FOXCONN                                 : constant boolean := false;
   VENDOR_GETAC                                   : constant boolean := false;
   VENDOR_GIGABYTE                                : constant boolean := false;
   VENDOR_GIZMOSPHERE                             : constant boolean := false;
   VENDOR_GOOGLE                                  : constant boolean := false;
   VENDOR_HP                                      : constant boolean := false;
   VENDOR_IBASE                                   : constant boolean := false;
   VENDOR_INTEL                                   : constant boolean := false;
   VENDOR_JETWAY                                  : constant boolean := false;
   VENDOR_KONTRON                                 : constant boolean := false;
   VENDOR_LENOVO                                  : constant boolean := false;
   VENDOR_LIBRETREND                              : constant boolean := false;
   VENDOR_LIPPERT                                 : constant boolean := false;
   VENDOR_MSI                                     : constant boolean := false;
   VENDOR_OCP                                     : constant boolean := false;
   VENDOR_OPENCELLULAR                            : constant boolean := false;
   VENDOR_PACKARDBELL                             : constant boolean := false;
   VENDOR_PCENGINES                               : constant boolean := false;
   VENDOR_PINE64                                  : constant boolean := false;
   VENDOR_PORTWELL                                : constant boolean := false;
   VENDOR_PRODRIVE                                : constant boolean := false;
   VENDOR_PROTECTLI                               : constant boolean := true;
   VENDOR_PURISM                                  : constant boolean := false;
   VENDOR_RAZER                                   : constant boolean := false;
   VENDOR_RODA                                    : constant boolean := false;
   VENDOR_SAMSUNG                                 : constant boolean := false;
   VENDOR_SAPPHIRE                                : constant boolean := false;
   VENDOR_SCALEWAY                                : constant boolean := false;
   VENDOR_SIEMENS                                 : constant boolean := false;
   VENDOR_SIFIVE                                  : constant boolean := false;
   VENDOR_STARLABS                                : constant boolean := false;
   VENDOR_SUPERMICRO                              : constant boolean := false;
   VENDOR_SYSTEM76                                : constant boolean := false;
   VENDOR_TI                                      : constant boolean := false;
   VENDOR_UP                                      : constant boolean := false;
   BOARD_SPECIFIC_OPTIONS                         : constant boolean := true;
   MAINBOARD_FAMILY                               : constant string  := "Vault Pro";
   MAINBOARD_PART_NUMBER                          : constant string  := "VP46XX";
   MAINBOARD_VERSION                              : constant string  := "1.0";
   MAINBOARD_DIR                                  : constant string  := "protectli/vault_cml";
   DIMM_MAX                                       : constant         := 2;
   DIMM_SPD_SIZE                                  : constant         := 512;
   FMDFILE                                        : constant string  := "src/mainboard/$(CONFIG_MAINBOARD_DIR)/vboot-rwa.fmd";
   NO_POST                                        : constant boolean := false;
   MAINBOARD_VENDOR                               : constant string  := "Protectli";
   CBFS_SIZE                                      : constant         := 16#00a0_0000#;
   CONSOLE_SERIAL                                 : constant boolean := true;
   LINEAR_FRAMEBUFFER_MAX_HEIGHT                  : constant         := 1600;
   LINEAR_FRAMEBUFFER_MAX_WIDTH                   : constant         := 2560;
   MAX_CPUS                                       : constant         := 12;
   ONBOARD_VGA_IS_PRIMARY                         : constant boolean := false;
   POST_DEVICE                                    : constant boolean := true;
   POST_IO                                        : constant boolean := true;
   UART_FOR_CONSOLE                               : constant         := 0;
   VBOOT                                          : constant boolean := true;
   VBOOT_VBNV_OFFSET                              : constant         := 16#0056#;
   RO_REGION_ONLY                                 : constant string  := "";
   DEVICETREE                                     : constant string  := "devicetree.cb";
   VGA_BIOS                                       : constant boolean := false;
   MAINBOARD_SMBIOS_MANUFACTURER                  : constant string  := "Protectli";
   INTEL_GMA_VBT_FILE                             : constant string  := "src/mainboard/$(MAINBOARDDIR)/data.vbt";
   DISABLE_HECI1_AT_PRE_BOOT                      : constant boolean := false;
   PRERAM_CBMEM_CONSOLE_SIZE                      : constant         := 16#1000#;
   OVERRIDE_DEVICETREE                            : constant string  := "";
   CMOS_DEFAULT_FILE                              : constant string  := "src/mainboard/$(MAINBOARDDIR)/cmos.default";
   CMOS_LAYOUT_FILE                               : constant string  := "src/mainboard/$(MAINBOARDDIR)/cmos.layout";
   BOOT_DEVICE_SPI_FLASH_BUS                      : constant         := 0;
   CONSOLE_POST                                   : constant boolean := false;
   TPM_PIRQ                                       : constant         := 16#0000#;
   USE_PM_ACPI_TIMER                              : constant boolean := true;
   MEMLAYOUT_LD_FILE                              : constant string  := "src/arch/x86/memlayout.ld";
   VBOOT_SLOTS_RW_A                               : constant boolean := true;
   DCACHE_RAM_BASE                                : constant         := 16#fef0_0000#;
   DCACHE_RAM_SIZE                                : constant         := 16#0004_0000#;
   C_ENV_BOOTBLOCK_SIZE                           : constant         := 16#0004_0000#;
   DCACHE_BSP_STACK_SIZE                          : constant         := 16#0002_0400#;
   ECAM_MMCONF_BASE_ADDRESS                       : constant         := 16#e000_0000#;
   ECAM_MMCONF_BUS_NUMBER                         : constant         := 256;
   MAX_ACPI_TABLE_SIZE_KB                         : constant         := 144;
   HAVE_INTEL_FIRMWARE                            : constant boolean := true;
   VBOOT_VBNV_CMOS                                : constant boolean := true;
   VBOOT_NO_BOARD_SUPPORT                         : constant boolean := true;
   RW_REGION_ONLY                                 : constant string  := "";
   MRC_SETTINGS_CACHE_SIZE                        : constant         := 16#0001_0000#;
   DRIVERS_INTEL_WIFI                             : constant boolean := true;
   IFD_BIN_PATH                                   : constant string  := "3rdparty/blobs/mainboard/$(MAINBOARDDIR)/descriptor.bin";
   ME_BIN_PATH                                    : constant string  := "3rdparty/blobs/mainboard/$(MAINBOARDDIR)/me.bin";
   VBOOT_ALWAYS_ALLOW_UDC                         : constant boolean := false;
   CONSOLE_CBMEM_BUFFER_SIZE                      : constant         := 16#0002_0000#;
   EDK2_BOOT_TIMEOUT                              : constant         := 6;
   VBOOT_FWID_MODEL                               : constant string  := "$(CONFIG_MAINBOARD_VENDOR)_$(CONFIG_MAINBOARD_PART_NUMBER)";
   VBOOT_STARTS_IN_BOOTBLOCK                      : constant boolean := true;
   USE_LEGACY_8254_TIMER                          : constant boolean := true;
   GBB_HWID                                       : constant string  := "";
   MAINBOARD_SMBIOS_PRODUCT_NAME                  : constant string  := "VP46XX";
   HAVE_IFD_BIN                                   : constant boolean := true;
   VBOOT_SLOTS_RW_AB                              : constant boolean := false;
   PS2K_EISAID                                    : constant string  := "PNP0303";
   PS2M_EISAID                                    : constant string  := "PNP0F13";
   GFX_GMA_PANEL_1_PORT                           : constant string  := "LVDS";
   POWER_STATE_DEFAULT_ON_AFTER_FAILURE           : constant boolean := true;
   PCIEXP_L1_SUB_STATE                            : constant boolean := true;
   PCIEXP_CLK_PM                                  : constant boolean := true;
   BOARD_PROTECTLI_FW2B                           : constant boolean := false;
   BOARD_PROTECTLI_FW4B                           : constant boolean := false;
   BOARD_PROTECTLI_VP4630_VP4650                  : constant boolean := true;
   BOARD_PROTECTLI_VP4670                         : constant boolean := false;
   BOARD_PROTECTLI_FW6                            : constant boolean := false;
   BEEP_ON_BOOT                                   : constant boolean := true;
   DRIVERS_UART_8250IO                            : constant boolean := true;
   HEAP_SIZE                                      : constant         := 16#8000#;
   EC_GPE_SCI                                     : constant         := 16#0050#;
   EDK2_BOOTSPLASH_FILE                           : constant string  := "$(top)/3rdparty/blobs/mainboard/$(MAINBOARDDIR)/bootsplash.bmp";
   BOARD_ROMSIZE_KB_16384                         : constant boolean := true;
   COREBOOT_ROMSIZE_KB_256                        : constant boolean := false;
   COREBOOT_ROMSIZE_KB_512                        : constant boolean := false;
   COREBOOT_ROMSIZE_KB_1024                       : constant boolean := false;
   COREBOOT_ROMSIZE_KB_2048                       : constant boolean := false;
   COREBOOT_ROMSIZE_KB_4096                       : constant boolean := false;
   COREBOOT_ROMSIZE_KB_5120                       : constant boolean := false;
   COREBOOT_ROMSIZE_KB_6144                       : constant boolean := false;
   COREBOOT_ROMSIZE_KB_8192                       : constant boolean := false;
   COREBOOT_ROMSIZE_KB_10240                      : constant boolean := false;
   COREBOOT_ROMSIZE_KB_12288                      : constant boolean := false;
   COREBOOT_ROMSIZE_KB_16384                      : constant boolean := true;
   COREBOOT_ROMSIZE_KB_32768                      : constant boolean := false;
   COREBOOT_ROMSIZE_KB_65536                      : constant boolean := false;
   COREBOOT_ROMSIZE_KB                            : constant         := 16384;
   ROM_SIZE                                       : constant         := 16#0100_0000#;
   HAVE_POWER_STATE_AFTER_FAILURE                 : constant boolean := true;
   HAVE_POWER_STATE_PREVIOUS_AFTER_FAILURE        : constant boolean := true;
   POWER_STATE_OFF_AFTER_FAILURE                  : constant boolean := false;
   POWER_STATE_ON_AFTER_FAILURE                   : constant boolean := true;
   POWER_STATE_PREVIOUS_AFTER_FAILURE             : constant boolean := false;
   MAINBOARD_POWER_FAILURE_STATE                  : constant         := 1;
   -- end of Mainboard
   --
   -- Chipset
   --
   --
   -- SoC
   --
   ARCH_ALL_STAGES_X86                            : constant boolean := true;
   CHIPSET_DEVICETREE                             : constant string  := "";
   FSP_M_FILE                                     : constant string  := "$(obj)/Fsp_M.fd";
   FSP_S_FILE                                     : constant string  := "$(obj)/Fsp_S.fd";
   CBFS_MCACHE_SIZE                               : constant         := 16#4000#;
   ROMSTAGE_ADDR                                  : constant         := 16#0200_0000#;
   FSP_TEMP_RAM_SIZE                              : constant         := 16#0001_0000#;
   VERSTAGE_ADDR                                  : constant         := 16#0200_0000#;
   SMM_TSEG_SIZE                                  : constant         := 16#0080_0000#;
   SMM_RESERVED_SIZE                              : constant         := 16#0020_0000#;
   SMM_MODULE_STACK_SIZE                          : constant         := 16#0800#;
   ACPI_BERT_SIZE                                 : constant         := 16#0000#;
   DRIVERS_I2C_DESIGNWARE_CLOCK_MHZ               : constant         := 216;
   VBOOT_HASH_BLOCK_SIZE                          : constant         := 16#0400#;
   CPU_SPECIFIC_OPTIONS                           : constant boolean := true;
   ACPI_CPU_STRING                                : constant string  := "\\_SB.CP%02d";
   STACK_SIZE                                     : constant         := 16#2000#;
   IFD_CHIPSET                                    : constant string  := "cnl";
   IED_REGION_SIZE                                : constant         := 16#0040_0000#;
   MAX_ROOT_PORTS                                 : constant         := 16;
   MAX_PCIE_CLOCK_SRC                             : constant         := 6;
   PCR_BASE_ADDRESS                               : constant         := 16#fd00_0000#;
   CPU_BCLK_MHZ                                   : constant         := 100;
   SOC_INTEL_COMMON_BLOCK_GSPI_CLOCK_MHZ          : constant         := 120;
   CPU_XTAL_HZ                                    : constant         := 24000000;
   SOC_INTEL_COMMON_BLOCK_GSPI_MAX                : constant         := 3;
   SOC_INTEL_I2C_DEV_MAX                          : constant         := 6;
   VBT_DATA_SIZE_KB                               : constant         := 8;
   SOC_INTEL_COMMON_LPSS_UART_CLK_M_VAL           : constant         := 16#0030#;
   SOC_INTEL_COMMON_LPSS_UART_CLK_N_VAL           : constant         := 16#0c35#;
   FSP_HEADER_PATH                                : constant string  := "3rdparty/fsp/CometLakeFspBinPkg/CometLake2/Include/";
   FSP_FD_PATH                                    : constant string  := "3rdparty/fsp/CometLakeFspBinPkg/CometLake2/Fsp.fd";
   MAX_HECI_DEVICES                               : constant         := 6;
   INTEL_GMA_BCLV_OFFSET                          : constant         := 16#000c_8258#;
   INTEL_GMA_BCLV_WIDTH                           : constant         := 32;
   INTEL_GMA_BCLM_OFFSET                          : constant         := 16#000c_8254#;
   INTEL_GMA_BCLM_WIDTH                           : constant         := 32;
   BOOTBLOCK_IN_CBFS                              : constant boolean := true;
   HAVE_PAM0_REGISTER                             : constant boolean := true;
   PCIEXP_ASPM                                    : constant boolean := true;
   PCIEXP_COMMON_CLOCK                            : constant boolean := true;
   SOC_INTEL_CANNONLAKE_BASE                      : constant boolean := true;
   SOC_INTEL_COMETLAKE                            : constant boolean := true;
   SOC_INTEL_COMETLAKE_2                          : constant boolean := true;
   SOC_INTEL_CANNONLAKE_DEBUG_CONSENT             : constant         := 0;
   INTEL_TXT_BIOSACM_ALIGNMENT                    : constant         := 16#0004_0000#;
   CPU_INTEL_NUM_FIT_ENTRIES                      : constant         := 4;
   SOC_INTEL_GFX_FRAMEBUFFER_OFFSET               : constant         := 16#0000#;
   TTYS0_BASE                                     : constant         := 16#03f8#;
   TTYS0_LCS                                      : constant         := 3;
   UART_PCI_ADDR                                  : constant         := 16#0000#;
   SOC_INTEL_COMMON_BLOCK_P2SB                    : constant boolean := true;
   CBFS_CACHE_ALIGN                               : constant         := 8;
   SOC_INTEL_COMMON                               : constant boolean := true;
   --
   -- Intel SoC Common Code for IP blocks
   --
   SOC_INTEL_COMMON_BLOCK                         : constant boolean := true;
   SOC_INTEL_COMMON_BLOCK_ACPI                    : constant boolean := true;
   SOC_INTEL_COMMON_BLOCK_ACPI_GPIO               : constant boolean := true;
   SOC_INTEL_COMMON_BLOCK_ACPI_LPIT               : constant boolean := true;
   SOC_INTEL_COMMON_BLOCK_ACPI_PEP                : constant boolean := true;
   SOC_INTEL_COMMON_BLOCK_ACPI_CPPC               : constant boolean := true;
   SOC_INTEL_COMMON_BLOCK_CHIP_CONFIG             : constant boolean := true;
   SOC_INTEL_COMMON_BLOCK_CNVI                    : constant boolean := true;
   SOC_INTEL_COMMON_BLOCK_CPU                     : constant boolean := true;
   SOC_INTEL_COMMON_BLOCK_CPU_MPINIT              : constant boolean := true;
   SOC_INTEL_COMMON_BLOCK_CPU_SMMRELOCATE         : constant boolean := true;
   SOC_INTEL_COMMON_BLOCK_CAR                     : constant boolean := true;
   INTEL_CAR_NEM_ENHANCED                         : constant boolean := true;
   USE_INTEL_FSP_MP_INIT                          : constant boolean := false;
   USE_INTEL_FSP_TO_CALL_COREBOOT_PUBLISH_MP_PPI  : constant boolean := false;
   CPU_SUPPORTS_PM_TIMER_EMULATION                : constant boolean := true;
   HAVE_HYPERTHREADING                            : constant boolean := true;
   FSP_HYPERTHREADING                             : constant boolean := true;
   SOC_INTEL_COMMON_BLOCK_CSE                     : constant boolean := true;
   SOC_INTEL_COMMON_BLOCK_HECI1_DISABLE_USING_PMC_IPC : constant boolean := true;
   SOC_INTEL_CSE_FMAP_NAME                        : constant string  := "SI_ME";
   SOC_INTEL_CSE_RW_A_FMAP_NAME                   : constant string  := "ME_RW_A";
   SOC_INTEL_CSE_RW_B_FMAP_NAME                   : constant string  := "ME_RW_B";
   SOC_INTEL_CSE_RW_CBFS_NAME                     : constant string  := "me_rw";
   SOC_INTEL_CSE_RW_HASH_CBFS_NAME                : constant string  := "me_rw.hash";
   SOC_INTEL_CSE_RW_VERSION_CBFS_NAME             : constant string  := "me_rw.version";
   SOC_INTEL_CSE_RW_FILE                          : constant string  := "";
   SOC_INTEL_CSE_RW_VERSION                       : constant string  := "";
   SOC_INTEL_CSE_IOM_CBFS_NAME                    : constant string  := "cse_iom";
   SOC_INTEL_CSE_IOM_CBFS_FILE                    : constant string  := "";
   SOC_INTEL_CSE_NPHY_CBFS_NAME                   : constant string  := "cse_nphy";
   SOC_INTEL_CSE_NPHY_CBFS_FILE                   : constant string  := "";
   SOC_INTEL_COMMON_BLOCK_DSP                     : constant boolean := true;
   SOC_INTEL_COMMON_BLOCK_FAST_SPI                : constant boolean := true;
   FAST_SPI_DISABLE_WRITE_STATUS                  : constant boolean := true;
   SOC_INTEL_COMMON_BLOCK_GPIO                    : constant boolean := true;
   SOC_INTEL_COMMON_BLOCK_GPIO_ITSS_POL_CFG       : constant boolean := true;
   SOC_INTEL_COMMON_BLOCK_GPIO_DUAL_ROUTE_SUPPORT : constant boolean := true;
   SOC_INTEL_COMMON_BLOCK_GPMR                    : constant boolean := true;
   SOC_INTEL_COMMON_BLOCK_GRAPHICS                : constant boolean := true;
   SOC_INTEL_CONFIGURE_DDI_A_4_LANES              : constant boolean := true;
   SOC_INTEL_DISABLE_IGD                          : constant boolean := false;
   SOC_INTEL_COMMON_BLOCK_GSPI                    : constant boolean := true;
   SOC_INTEL_COMMON_BLOCK_GSPI_VERSION_2          : constant boolean := true;
   SOC_INTEL_COMMON_BLOCK_HDA                     : constant boolean := true;
   SOC_INTEL_COMMON_BLOCK_HDA_VERB                : constant boolean := true;
   SOC_INTEL_COMMON_BLOCK_I2C                     : constant boolean := true;
   SOC_INTEL_COMMON_BLOCK_IRQ                     : constant boolean := true;
   SOC_INTEL_COMMON_BLOCK_ITSS                    : constant boolean := true;
   SOC_INTEL_COMMON_BLOCK_LPC                     : constant boolean := true;
   SOC_INTEL_COMMON_BLOCK_LPC_MIRROR_TO_GPMR      : constant boolean := true;
   SOC_INTEL_COMMON_BLOCK_LPSS                    : constant boolean := true;
   SOC_INTEL_COMMON_BLOCK_BASE_P2SB               : constant boolean := true;
   SOC_INTEL_COMMON_BLOCK_PCIE                    : constant boolean := true;
   SOC_INTEL_COMMON_BLOCK_PCR                     : constant boolean := true;
   SOC_INTEL_COMMON_BLOCK_PMC                     : constant boolean := true;
   SOC_INTEL_MEM_MAPPED_PM_CONFIGURATION          : constant boolean := true;
   PMC_GLOBAL_RESET_ENABLE_LOCK                   : constant boolean := true;
   SOC_INTEL_COMMON_BLOCK_POWER_LIMIT             : constant boolean := true;
   SOC_INTEL_COMMON_BLOCK_RTC                     : constant boolean := true;
   SOC_INTEL_COMMON_BLOCK_SATA                    : constant boolean := true;
   SOC_INTEL_COMMON_BLOCK_SCS                     : constant boolean := true;
   SOC_INTEL_COMMON_BLOCK_SMBUS                   : constant boolean := true;
   FIXED_SMBUS_IO_BASE                            : constant         := 16#efa0#;
   SOC_INTEL_COMMON_BLOCK_TCO                     : constant boolean := true;
   SOC_INTEL_COMMON_BLOCK_TCO_ENABLE_THROUGH_SMBUS : constant boolean := true;
   SOC_INTEL_COMMON_BLOCK_SMM                     : constant boolean := true;
   SOC_INTEL_COMMON_BLOCK_SMM_IO_TRAP             : constant boolean := true;
   SOC_INTEL_COMMON_BLOCK_SMM_TCO_ENABLE          : constant boolean := false;
   SOC_INTEL_COMMON_BLOCK_SMM_S5_DELAY_MS         : constant         := 0;
   SOC_INTEL_COMMON_BLOCK_SPI                     : constant boolean := true;
   SOC_INTEL_COMMON_BLOCK_SA                      : constant boolean := true;
   SOC_INTEL_COMMON_BLOCK_THERMAL                 : constant boolean := true;
   SOC_INTEL_COMMON_BLOCK_THERMAL_PCI_DEV         : constant boolean := true;
   SOC_INTEL_COMMON_BLOCK_TIMER                   : constant boolean := true;
   SOC_INTEL_COMMON_BLOCK_UART                    : constant boolean := true;
   SOC_INTEL_COMMON_BLOCK_XDCI                    : constant boolean := true;
   SOC_INTEL_COMMON_BLOCK_XHCI                    : constant boolean := true;
   SOC_INTEL_COMMON_BLOCK_XHCI_ELOG               : constant boolean := true;
   --
   -- Intel SoC Common PCH Code
   --
   SOC_INTEL_COMMON_PCH_CLIENT                    : constant boolean := true;
   SOC_INTEL_COMMON_PCH_BASE                      : constant boolean := true;
   SOC_INTEL_COMMON_PCH_LOCKDOWN                  : constant boolean := true;
   PCH_SPECIFIC_BASE_OPTIONS                      : constant boolean := true;
   PCH_SPECIFIC_DISCRETE_OPTIONS                  : constant boolean := true;
   PCH_SPECIFIC_CLIENT_OPTIONS                    : constant boolean := true;
   --
   -- Intel SoC Common coreboot stages and non-IP blocks
   --
   SOC_INTEL_COMMON_RESET                         : constant boolean := true;
   SOC_INTEL_COMMON_ACPI_WAKE_SOURCE              : constant boolean := true;
   PAVP                                           : constant boolean := true;
   SOC_INTEL_COMMON_NHLT                          : constant boolean := true;
   SOC_INTEL_DEBUG_CONSENT                        : constant boolean := false;
   --
   -- CPU
   --
   SSE2                                           : constant boolean := true;
   CPU_INTEL_FIRMWARE_INTERFACE_TABLE             : constant boolean := true;
   CPU_INTEL_COMMON                               : constant boolean := true;
   ENABLE_VMX                                     : constant boolean := true;
   SET_IA32_FC_LOCK_BIT                           : constant boolean := true;
   SET_MSR_AESNI_LOCK_BIT                         : constant boolean := true;
   CPU_INTEL_COMMON_SMM                           : constant boolean := true;
   MICROCODE_UPDATE_PRE_RAM                       : constant boolean := true;
   PARALLEL_MP                                    : constant boolean := true;
   PARALLEL_MP_AP_WORK                            : constant boolean := true;
   XAPIC_ONLY                                     : constant boolean := true;
   X2APIC_ONLY                                    : constant boolean := false;
   X2APIC_RUNTIME                                 : constant boolean := false;
   X2APIC_LATE_WORKAROUND                         : constant boolean := false;
   UDELAY_TSC                                     : constant boolean := true;
   TSC_MONOTONIC_TIMER                            : constant boolean := true;
   LOGICAL_CPUS                                   : constant boolean := true;
   HAVE_SMI_HANDLER                               : constant boolean := true;
   SMM_TSEG                                       : constant boolean := true;
   SMM_STUB_STACK_SIZE                            : constant         := 16#0400#;
   CPU_INFO_V2                                    : constant boolean := true;
   SMP                                            : constant boolean := true;
   SSE                                            : constant boolean := true;
   SUPPORT_CPU_UCODE_IN_CBFS                      : constant boolean := true;
   USE_CPU_MICROCODE_CBFS_BINS                    : constant boolean := true;
   CPU_MICROCODE_CBFS_DEFAULT_BINS                : constant boolean := true;
   CPU_MICROCODE_CBFS_EXTERNAL_BINS               : constant boolean := false;
   CPU_MICROCODE_CBFS_EXTERNAL_HEADER             : constant boolean := false;
   CPU_MICROCODE_CBFS_NONE                        : constant boolean := false;
   --
   -- Northbridge
   --
   --
   -- Southbridge
   --
   PCIEXP_HOTPLUG                                 : constant boolean := false;
   INTEL_DESCRIPTOR_MODE_REQUIRED                 : constant boolean := true;
   SOUTHBRIDGE_INTEL_COMMON_SMBUS                 : constant boolean := true;
   SOUTHBRIDGE_INTEL_COMMON_PIRQ_ACPI_GEN         : constant boolean := true;
   INTEL_DESCRIPTOR_MODE_CAPABLE                  : constant boolean := true;
   VALIDATE_INTEL_DESCRIPTOR                      : constant boolean := false;
   FIXED_RCBA_MMIO_BASE                           : constant         := 16#fed1_c000#;
   RCBA_LENGTH                                    : constant         := 16#4000#;
   --
   -- Super I/O
   --
   SUPERIO_ITE_COMMON_PRE_RAM                     : constant boolean := true;
   SUPERIO_ITE_ENV_CTRL                           : constant boolean := true;
   SUPERIO_ITE_ENV_CTRL_8BIT_PWM                  : constant boolean := true;
   SUPERIO_ITE_ENV_CTRL_PWM_FREQ2                 : constant boolean := true;
   SUPERIO_ITE_ENV_CTRL_7BIT_SLOPE_REG            : constant boolean := true;
   SUPERIO_ITE_ENV_CTRL_EXT_ANY_TMPIN             : constant boolean := true;
   SUPERIO_ITE_IT8786E                            : constant boolean := true;
   --
   -- Embedded Controllers
   --
   --
   -- Intel Firmware
   --
   HAVE_ME_BIN                                    : constant boolean := true;
   STITCH_ME_BIN                                  : constant boolean := false;
   ME_REGION_ALLOW_CPU_READ_ACCESS                : constant boolean := true;
   DO_NOT_TOUCH_DESCRIPTOR_REGION                 : constant boolean := false;
   LOCK_MANAGEMENT_ENGINE                         : constant boolean := false;
   UNLOCK_FLASH_REGIONS                           : constant boolean := true;
   UDK_BASE                                       : constant boolean := true;
   UDK_2017_BINDING                               : constant boolean := true;
   UDK_2013_VERSION                               : constant         := 2013;
   UDK_2017_VERSION                               : constant         := 2017;
   UDK_202005_VERSION                             : constant         := 202005;
   UDK_202111_VERSION                             : constant         := 202111;
   UDK_VERSION                                    : constant         := 2017;
   ARCH_X86                                       : constant boolean := true;
   ARCH_BOOTBLOCK_X86_32                          : constant boolean := true;
   ARCH_VERSTAGE_X86_32                           : constant boolean := true;
   ARCH_ROMSTAGE_X86_32                           : constant boolean := true;
   ARCH_POSTCAR_X86_32                            : constant boolean := true;
   ARCH_RAMSTAGE_X86_32                           : constant boolean := true;
   ARCH_ALL_STAGES_X86_32                         : constant boolean := true;
   X86_TOP4G_BOOTMEDIA_MAP                        : constant boolean := true;
   NUM_IPI_STARTS                                 : constant         := 2;
   PC80_SYSTEM                                    : constant boolean := true;
   HAVE_CMOS_DEFAULT                              : constant boolean := true;
   POSTCAR_STAGE                                  : constant boolean := true;
   COLLECT_TIMESTAMPS_TSC                         : constant boolean := true;
   IDT_IN_EVERY_STAGE                             : constant boolean := true;
   HAVE_CF9_RESET                                 : constant boolean := true;
   DEBUG_HW_BREAKPOINTS                           : constant boolean := true;
   DEBUG_HW_BREAKPOINTS_IN_ALL_STAGES             : constant boolean := true;
   DEBUG_NULL_DEREF_BREAKPOINTS                   : constant boolean := true;
   DEBUG_NULL_DEREF_BREAKPOINTS_IN_ALL_STAGES     : constant boolean := true;
   -- end of Chipset
   --
   -- Devices
   --
   HAVE_VGA_TEXT_FRAMEBUFFER                      : constant boolean := true;
   HAVE_LINEAR_FRAMEBUFFER                        : constant boolean := true;
   HAVE_FSP_GOP                                   : constant boolean := true;
   MAINBOARD_HAS_LIBGFXINIT                       : constant boolean := true;
   MAINBOARD_USE_LIBGFXINIT                       : constant boolean := true;
   VGA_ROM_RUN                                    : constant boolean := false;
   RUN_FSP_GOP                                    : constant boolean := false;
   NO_GFX_INIT                                    : constant boolean := false;
   --
   -- Display
   --
   WANT_LINEAR_FRAMEBUFFER                        : constant boolean := true;
   VGA_TEXT_FRAMEBUFFER                           : constant boolean := false;
   GENERIC_LINEAR_FRAMEBUFFER                     : constant boolean := true;
   LINEAR_FRAMEBUFFER                             : constant boolean := true;
   BOOTSPLASH                                     : constant boolean := false;
   -- end of Display
   PCI                                            : constant boolean := true;
   ECAM_MMCONF_SUPPORT                            : constant boolean := true;
   PCIX_PLUGIN_SUPPORT                            : constant boolean := true;
   CARDBUS_PLUGIN_SUPPORT                         : constant boolean := true;
   AZALIA_PLUGIN_SUPPORT                          : constant boolean := true;
   AZALIA_LOCK_DOWN_R_WO_GCAP                     : constant boolean := true;
   PCIEXP_PLUGIN_SUPPORT                          : constant boolean := true;
   ECAM_MMCONF_LENGTH                             : constant         := 16#1000_0000#;
   PCI_ALLOW_BUS_MASTER                           : constant boolean := true;
   PCI_SET_BUS_MASTER_PCI_BRIDGES                 : constant boolean := true;
   PCI_ALLOW_BUS_MASTER_ANY_DEVICE                : constant boolean := true;
   PCIEXP_SUPPORT_RESIZABLE_BARS                  : constant boolean := false;
   PCIEXP_LANE_ERR_STAT_CLEAR                     : constant boolean := false;
   EARLY_PCI_BRIDGE                               : constant boolean := false;
   SUBSYSTEM_VENDOR_ID                            : constant         := 16#0000#;
   SUBSYSTEM_DEVICE_ID                            : constant         := 16#0000#;
   INTEL_GMA_HAVE_VBT                             : constant boolean := true;
   INTEL_GMA_ADD_VBT                              : constant boolean := true;
   SOFTWARE_I2C                                   : constant boolean := false;
   I2C_TRANSFER_TIMEOUT_US                        : constant         := 500000;
   RESOURCE_ALLOCATOR_V4                          : constant boolean := true;
   RESOURCE_ALLOCATION_TOP_DOWN                   : constant boolean := false;
   -- end of Devices
   --
   -- Generic Drivers
   --
   CRB_TPM_BASE_ADDRESS                           : constant         := 16#fed4_0000#;
   DRIVERS_EFI_VARIABLE_STORE                     : constant boolean := true;
   ELOG                                           : constant boolean := false;
   CACHE_MRC_SETTINGS                             : constant boolean := true;
   MRC_SETTINGS_PROTECT                           : constant boolean := true;
   SMMSTORE                                       : constant boolean := true;
   SMMSTORE_V2                                    : constant boolean := true;
   SMMSTORE_SIZE                                  : constant         := 16#0004_0000#;
   SPI_FLASH                                      : constant boolean := true;
   BOOT_DEVICE_SPI_FLASH_RW_NOMMAP                : constant boolean := true;
   BOOT_DEVICE_SPI_FLASH_RW_NOMMAP_EARLY          : constant boolean := true;
   SPI_FLASH_DONT_INCLUDE_ALL_DRIVERS             : constant boolean := true;
   SPI_FLASH_SMM                                  : constant boolean := true;
   SPI_FLASH_NO_FAST_READ                         : constant boolean := false;
   SPI_FLASH_MACRONIX                             : constant boolean := true;
   TPM_INIT_RAMSTAGE                              : constant boolean := true;
   TPM_PPI                                        : constant boolean := true;
   DRIVERS_UART                                   : constant boolean := true;
   DRIVERS_UART_OXPCIE                            : constant boolean := false;
   VPD                                            : constant boolean := false;
   DRIVERS_GENERIC_CBFS_SERIAL                    : constant boolean := false;
   DRIVERS_GENESYSLOGIC_GL9750                    : constant boolean := false;
   DRIVERS_GENESYSLOGIC_GL9755                    : constant boolean := false;
   DRIVERS_GENESYSLOGIC_GL9763E                   : constant boolean := false;
   DRIVERS_I2C_DESIGNWARE                         : constant boolean := true;
   DRIVERS_I2C_MAX98396                           : constant boolean := false;
   FSP_USE_REPO                                   : constant boolean := true;
   DISPLAY_HOBS                                   : constant boolean := false;
   DISPLAY_UPD_DATA                               : constant boolean := false;
   BMP_LOGO                                       : constant boolean := false;
   PLATFORM_USES_FSP2_0                           : constant boolean := true;
   PLATFORM_USES_FSP2_X86_32                      : constant boolean := true;
   HAVE_INTEL_FSP_REPO                            : constant boolean := true;
   ADD_FSP_BINARIES                               : constant boolean := true;
   FSP_T_LOCATION                                 : constant         := 16#fffe_0000#;
   FSP_S_CBFS                                     : constant string  := "fsps.bin";
   FSP_M_CBFS                                     : constant string  := "fspm.bin";
   FSP_FULL_FD                                    : constant boolean := true;
   FSP_T_RESERVED_SIZE                            : constant         := 16#0000#;
   FSP_M_XIP                                      : constant boolean := true;
   FSP_USES_CB_STACK                              : constant boolean := true;
   HAVE_FSP_LOGO_SUPPORT                          : constant boolean := true;
   FSP_COMPRESS_FSP_S_LZMA                        : constant boolean := true;
   FSP_STATUS_GLOBAL_RESET_REQUIRED_3             : constant boolean := true;
   FSP_STATUS_GLOBAL_RESET                        : constant         := 16#4000_0003#;
   SOC_INTEL_COMMON_FSP_RESET                     : constant boolean := true;
   USE_FSP_NOTIFY_PHASE_POST_PCI_ENUM             : constant boolean := true;
   USE_FSP_NOTIFY_PHASE_READY_TO_BOOT             : constant boolean := true;
   USE_FSP_NOTIFY_PHASE_END_OF_FIRMWARE           : constant boolean := true;
   DISPLAY_FSP_TIMESTAMPS                         : constant boolean := false;
   INTEL_GMA_ACPI                                 : constant boolean := true;
   GFX_GMA_IGNORE_PRESENCE_STRAPS                 : constant boolean := true;
   GFX_GMA                                        : constant boolean := true;
   INTEL_GMA_OPREGION_2_0                         : constant boolean := true;
   GFX_GMA_DYN_CPU                                : constant boolean := true;
   GFX_GMA_GENERATION                             : constant string  := "Skylake";
   GFX_GMA_PCH                                    : constant string  := "Cannon_Point";
   GFX_GMA_PANEL_2_PORT                           : constant string  := "Disabled";
   GFX_GMA_ANALOG_I2C_PORT                        : constant string  := "PCH_DAC";
   DRIVERS_NXP_UWB_SR1XX                          : constant boolean := false;
   DRIVERS_PS2_KEYBOARD                           : constant boolean := false;
   DRIVERS_MC146818                               : constant boolean := true;
   USE_PC_CMOS_ALTCENTURY                         : constant boolean := true;
   MEMORY_MAPPED_TPM                              : constant boolean := true;
   TPM_TIS_BASE_ADDRESS                           : constant         := 16#fed4_0000#;
   DRIVERS_SIL_3114                               : constant boolean := false;
   DRIVERS_WIFI_GENERIC                           : constant boolean := true;
   -- end of Generic Drivers
   --
   -- Security
   --
   --
   -- CBFS verification
   --
   CBFS_VERIFICATION                              : constant boolean := false;
   -- end of CBFS verification
   --
   -- Verified Boot (vboot)
   --
   VBOOT_LIB                                      : constant boolean := true;
   --
   -- Anti-Rollback Protection disabled because mocking secdata is enabled.
   --
   VBOOT_VBNV_CMOS_BACKUP_TO_FLASH                : constant boolean := true;
   VBOOT_NO_TPM                                   : constant boolean := true;
   VBOOT_MOCK_SECDATA                             : constant boolean := true;
   VBOOT_SEPARATE_VERSTAGE                        : constant boolean := true;
   VBOOT_MUST_REQUEST_DISPLAY                     : constant boolean := true;
   VBOOT_ALWAYS_ENABLE_DISPLAY                    : constant boolean := true;
   VBOOT_FWID_VERSION                             : constant string  := ".$(KERNELVERSION)";
   CBFS_MCACHE_RW_PERCENTAGE                      : constant         := 50;
   VBOOT_EC_EFS                                   : constant boolean := false;
   VBOOT_X86_SHA256_ACCELERATION                  : constant boolean := false;
   --
   -- GBB configuration
   --
   GBB_BMPFV_FILE                                 : constant string  := "";
   GBB_FLAG_DEV_SCREEN_SHORT_DELAY                : constant boolean := false;
   GBB_FLAG_LOAD_OPTION_ROMS                      : constant boolean := false;
   GBB_FLAG_ENABLE_ALTERNATE_OS                   : constant boolean := false;
   GBB_FLAG_FORCE_DEV_SWITCH_ON                   : constant boolean := false;
   GBB_FLAG_FORCE_DEV_BOOT_USB                    : constant boolean := true;
   GBB_FLAG_DISABLE_FW_ROLLBACK_CHECK             : constant boolean := true;
   GBB_FLAG_ENTER_TRIGGERS_TONORM                 : constant boolean := false;
   GBB_FLAG_FORCE_DEV_BOOT_ALTFW                  : constant boolean := false;
   GBB_FLAG_RUNNING_FAFT                          : constant boolean := false;
   GBB_FLAG_DISABLE_EC_SOFTWARE_SYNC              : constant boolean := true;
   GBB_FLAG_DEFAULT_DEV_BOOT_ALTFW                : constant boolean := false;
   GBB_FLAG_DISABLE_PD_SOFTWARE_SYNC              : constant boolean := true;
   GBB_FLAG_DISABLE_LID_SHUTDOWN                  : constant boolean := true;
   GBB_FLAG_FORCE_MANUAL_RECOVERY                 : constant boolean := false;
   GBB_FLAG_DISABLE_FWMP                          : constant boolean := true;
   GBB_FLAG_ENABLE_UDC                            : constant boolean := false;
   -- end of GBB configuration
   --
   -- Vboot Keys
   --
   VBOOT_ROOT_KEY                                 : constant string  := "$(VBOOT_SOURCE)/tests/devkeys/root_key.vbpubk";
   VBOOT_RECOVERY_KEY                             : constant string  := "$(VBOOT_SOURCE)/tests/devkeys/recovery_key.vbpubk";
   VBOOT_FIRMWARE_PRIVKEY                         : constant string  := "$(VBOOT_SOURCE)/tests/devkeys/firmware_data_key.vbprivk";
   VBOOT_KERNEL_KEY                               : constant string  := "$(VBOOT_SOURCE)/tests/devkeys/kernel_subkey.vbpubk";
   VBOOT_KEYBLOCK                                 : constant string  := "$(VBOOT_SOURCE)/tests/devkeys/firmware.keyblock";
   VBOOT_KEYBLOCK_VERSION                         : constant         := 1;
   VBOOT_KEYBLOCK_PREAMBLE_FLAGS                  : constant         := 16#0000#;
   -- end of Vboot Keys
   -- end of Verified Boot (vboot)
   --
   -- Trusted Platform Module
   --
   NO_TPM                                         : constant boolean := false;
   TPM1                                           : constant boolean := false;
   TPM2                                           : constant boolean := true;
   TPM                                            : constant boolean := true;
   DEBUG_TPM                                      : constant boolean := false;
   TPM_RDRESP_NEED_DELAY                          : constant boolean := false;
   TPM_MEASURED_BOOT                              : constant boolean := true;
   TPM_MEASURED_BOOT_RUNTIME_DATA                 : constant string  := "";
   -- end of Trusted Platform Module
   --
   -- Memory initialization
   --
   PLATFORM_HAS_DRAM_CLEAR                        : constant boolean := true;
   SECURITY_CLEAR_DRAM_ON_REGULAR_BOOT            : constant boolean := false;
   -- end of Memory initialization
   INTEL_TXT                                      : constant boolean := false;
   STM                                            : constant boolean := false;
   INTEL_CBNT_SUPPORT                             : constant boolean := false;
   BOOTMEDIA_LOCK_NONE                            : constant boolean := false;
   BOOTMEDIA_LOCK_CONTROLLER                      : constant boolean := true;
   BOOTMEDIA_LOCK_CHIP                            : constant boolean := false;
   BOOTMEDIA_LOCK_WHOLE_RO                        : constant boolean := false;
   BOOTMEDIA_LOCK_WHOLE_NO_ACCESS                 : constant boolean := false;
   BOOTMEDIA_LOCK_WPRO_VBOOT_RO                   : constant boolean := true;
   BOOTMEDIA_LOCK_IN_VERSTAGE                     : constant boolean := true;
   BOOTMEDIA_SMM_BWP                              : constant boolean := false;
   -- end of Security
   ACPI_HAVE_PCAT_8259                            : constant boolean := true;
   ACPI_INTEL_HARDWARE_SLEEP_VALUES               : constant boolean := true;
   ACPI_SOC_NVS                                   : constant boolean := true;
   HAVE_ACPI_TABLES                               : constant boolean := true;
   ACPI_LPIT                                      : constant boolean := true;
   BOOT_DEVICE_SPI_FLASH                          : constant boolean := true;
   BOOT_DEVICE_MEMORY_MAPPED                      : constant boolean := true;
   BOOT_DEVICE_SUPPORTS_WRITES                    : constant boolean := true;
   RTC                                            : constant boolean := true;
   --
   -- Console
   --
   BOOTBLOCK_CONSOLE                              : constant boolean := true;
   POSTCAR_CONSOLE                                : constant boolean := true;
   SQUELCH_EARLY_SMP                              : constant boolean := true;
   --
   -- I/O mapped, 8250-compatible
   --
   --
   -- Serial port base address = 0x3f8
   --
   CONSOLE_SERIAL_921600                          : constant boolean := false;
   CONSOLE_SERIAL_460800                          : constant boolean := false;
   CONSOLE_SERIAL_230400                          : constant boolean := false;
   CONSOLE_SERIAL_115200                          : constant boolean := true;
   CONSOLE_SERIAL_57600                           : constant boolean := false;
   CONSOLE_SERIAL_38400                           : constant boolean := false;
   CONSOLE_SERIAL_19200                           : constant boolean := false;
   CONSOLE_SERIAL_9600                            : constant boolean := false;
   TTYS0_BAUD                                     : constant         := 115200;
   SPKMODEM                                       : constant boolean := false;
   CONSOLE_NE2K                                   : constant boolean := false;
   CONSOLE_CBMEM                                  : constant boolean := true;
   CONSOLE_SPI_FLASH                              : constant boolean := false;
   CONSOLE_I2C_SMBUS                              : constant boolean := false;
   DEFAULT_CONSOLE_LOGLEVEL_8                     : constant boolean := false;
   DEFAULT_CONSOLE_LOGLEVEL_7                     : constant boolean := false;
   DEFAULT_CONSOLE_LOGLEVEL_6                     : constant boolean := false;
   DEFAULT_CONSOLE_LOGLEVEL_5                     : constant boolean := false;
   DEFAULT_CONSOLE_LOGLEVEL_4                     : constant boolean := false;
   DEFAULT_CONSOLE_LOGLEVEL_3                     : constant boolean := false;
   DEFAULT_CONSOLE_LOGLEVEL_2                     : constant boolean := false;
   DEFAULT_CONSOLE_LOGLEVEL_1                     : constant boolean := false;
   DEFAULT_CONSOLE_LOGLEVEL_0                     : constant boolean := true;
   DEFAULT_CONSOLE_LOGLEVEL                       : constant         := 0;
   CONSOLE_USE_LOGLEVEL_PREFIX                    : constant boolean := false;
   CONSOLE_USE_ANSI_ESCAPES                       : constant boolean := false;
   CMOS_POST                                      : constant boolean := false;
   POST_DEVICE_NONE                               : constant boolean := true;
   POST_DEVICE_LPC                                : constant boolean := false;
   POST_DEVICE_PCI_PCIE                           : constant boolean := false;
   POST_IO_PORT                                   : constant         := 16#0080#;
   HWBASE_DEBUG_NULL                              : constant boolean := true;
   -- end of Console
   HAVE_ACPI_RESUME                               : constant boolean := true;
   RESUME_PATH_SAME_AS_BOOT                       : constant boolean := true;
   HAVE_MONOTONIC_TIMER                           : constant boolean := true;
   HAVE_OPTION_TABLE                              : constant boolean := true;
   IOAPIC                                         : constant boolean := true;
   ACPI_NHLT                                      : constant boolean := true;
   --
   -- System tables
   --
   GENERATE_SMBIOS_TABLES                         : constant boolean := true;
   MAINBOARD_SERIAL_NUMBER                        : constant string  := "123456789";
   -- end of System tables
   --
   -- Payload
   --
   PAYLOAD_NONE                                   : constant boolean := false;
   PAYLOAD_ELF                                    : constant boolean := false;
   PAYLOAD_BOOTBOOT                               : constant boolean := false;
   PAYLOAD_FILO                                   : constant boolean := false;
   PAYLOAD_GRUB2                                  : constant boolean := false;
   PAYLOAD_SEAGRUB                                : constant boolean := false;
   PAYLOAD_LINUXBOOT                              : constant boolean := false;
   PAYLOAD_SEABIOS                                : constant boolean := false;
   PAYLOAD_UBOOT                                  : constant boolean := false;
   PAYLOAD_YABITS                                 : constant boolean := false;
   PAYLOAD_EDK2                                   : constant boolean := true;
   PAYLOAD_LINUX                                  : constant boolean := false;
   PAYLOAD_FILE                                   : constant string  := "build/UEFIPAYLOAD.fd";
   PAYLOAD_OPTIONS                                : constant string  := "";
   EDK2_UEFIPAYLOAD                               : constant boolean := true;
   EDK2_UPSTREAM                                  : constant boolean := false;
   EDK2_CUSTOM                                    : constant boolean := false;
   EDK2_REPOSITORY                                : constant string  := "https://github.com/Dasharo/edk2";
   EDK2_TAG_OR_REV                                : constant string  := "e31b7a712735f0623f67149efca0103be6134234";
   EDK2_DEBUG                                     : constant boolean := false;
   EDK2_RELEASE                                   : constant boolean := true;
   EDK2_ABOVE_4G_MEMORY                           : constant boolean := false;
   EDK2_BOOT_MANAGER_ESCAPE                       : constant boolean := false;
   EDK2_CBMEM_LOGGING                             : constant boolean := false;
   EDK2_FOLLOW_BGRT_SPEC                          : constant boolean := true;
   EDK2_FULL_SCREEN_SETUP                         : constant boolean := true;
   EDK2_HAVE_EFI_SHELL                            : constant boolean := true;
   EDK2_PRIORITIZE_INTERNAL                       : constant boolean := true;
   EDK2_PS2_SUPPORT                               : constant boolean := false;
   EDK2_SD_MMC_TIMEOUT                            : constant         := 10;
   EDK2_SERIAL_SUPPORT                            : constant boolean := true;
   EDK2_ENABLE_IPXE                               : constant boolean := true;
   EDK2_SECURE_BOOT                               : constant boolean := true;
   EDK2_SATA_PASSWORD                             : constant boolean := false;
   EDK2_OPAL_PASSWORD                             : constant boolean := false;
   EDK2_BOOT_MENU_KEY                             : constant         := 16#0015#;
   EDK2_SETUP_MENU_KEY                            : constant         := 16#0008#;
   EDK2_SECURE_BOOT_DEFAULT_ENABLE                : constant boolean := false;
   EDK2_CUSTOM_BUILD_PARAMS                       : constant string  := "-D LOAD_OPTION_ROMS=FALSE -D DASHARO_SYSTEM_FEATURES_ENABLE=TRUE";
   EDK2_LAN_ROM_DRIVER                            : constant string  := "3rdparty/blobs/mainboard/protectli/vault_cml/E0104X7.EFI";
   PXE                                            : constant boolean := false;
   COMPRESSED_PAYLOAD_NONE                        : constant boolean := false;
   COMPRESSED_PAYLOAD_LZMA                        : constant boolean := true;
   COMPRESSED_PAYLOAD_LZ4                         : constant boolean := false;
   COMPRESS_SECONDARY_PAYLOAD                     : constant boolean := true;
   --
   -- Secondary Payloads
   --
   COREINFO_SECONDARY_PAYLOAD                     : constant boolean := false;
   GRUB2_SECONDARY_PAYLOAD                        : constant boolean := false;
   MEMTEST_SECONDARY_PAYLOAD                      : constant boolean := false;
   NVRAMCUI_SECONDARY_PAYLOAD                     : constant boolean := false;
   SEABIOS_SECONDARY_PAYLOAD                      : constant boolean := false;
   TINT_SECONDARY_PAYLOAD                         : constant boolean := false;
   COREDOOM_SECONDARY_PAYLOAD                     : constant boolean := false;
   -- end of Secondary Payloads
   -- end of Payload
   --
   -- Debugging
   --
   --
   -- CPU Debug Settings
   --
   DISPLAY_MTRRS                                  : constant boolean := false;
   --
   -- BLOB Debug Settings
   --
   DISPLAY_FSP_CALLS_AND_STATUS                   : constant boolean := false;
   DISPLAY_FSP_HEADER                             : constant boolean := false;
   VERIFY_HOBS                                    : constant boolean := false;
   DISPLAY_FSP_VERSION_INFO                       : constant boolean := true;
   HAVE_GPIO_SNAPSHOT_VERIFY_SUPPORT              : constant boolean := true;
   CHECK_GPIO_CONFIG_CHANGES                      : constant boolean := false;
   --
   -- General Debug Settings
   --
   GDB_STUB                                       : constant boolean := false;
   FATAL_ASSERTS                                  : constant boolean := false;
   HAVE_DEBUG_GPIO                                : constant boolean := true;
   DEBUG_GPIO                                     : constant boolean := false;
   DEBUG_CBFS                                     : constant boolean := false;
   HAVE_DEBUG_SMBUS                               : constant boolean := true;
   DEBUG_SMBUS                                    : constant boolean := false;
   DEBUG_SMI                                      : constant boolean := false;
   DEBUG_CONSOLE_INIT                             : constant boolean := false;
   DEBUG_SPI_FLASH                                : constant boolean := false;
   DEBUG_BOOT_STATE                               : constant boolean := false;
   DEBUG_ADA_CODE                                 : constant boolean := false;
   HAVE_EM100_SUPPORT                             : constant boolean := true;
   EM100                                          : constant boolean := false;
   -- end of Debugging
   RAMSTAGE_ADA                                   : constant boolean := true;
   RAMSTAGE_LIBHWBASE                             : constant boolean := true;
   HWBASE_DYNAMIC_MMIO                            : constant boolean := true;
   HWBASE_DEFAULT_MMCONF                          : constant         := 16#e000_0000#;
   HWBASE_DIRECT_PCIDEV                           : constant boolean := true;
   WARNINGS_ARE_ERRORS                            : constant boolean := true;
   MAX_REBOOT_CNT                                 : constant         := 3;
   RELOCATABLE_MODULES                            : constant boolean := true;
   GENERIC_GPIO_LIB                               : constant boolean := true;
   HAVE_BOOTBLOCK                                 : constant boolean := true;
   HAVE_VERSTAGE                                  : constant boolean := true;
   HAVE_ROMSTAGE                                  : constant boolean := true;
   HAVE_RAMSTAGE                                  : constant boolean := true;

end CB.Config;
