#include <boot/coreboot_tables.h>
#include <device/device.h>
#include <device/pci.h>
#include <fw_config.h>
#include <static.h>
#include "drivers/pc80/tpm/chip.h"
#include "soc/intel/cannonlake/chip.h"
#include "superio/ite/it8786e/chip.h"

#if !DEVTREE_EARLY
__attribute__((weak)) struct chip_operations mainboard_ops = {};
extern struct chip_operations drivers_pc80_tpm_ops;
extern struct chip_operations soc_intel_cannonlake_ops;
extern struct chip_operations superio_ite_it8786e_ops;
#endif

#define STORAGE static __maybe_unused DEVTREE_CONST


/* pass 0 */
STORAGE struct bus dev_root_links[];
STORAGE struct device _dev_0;
STORAGE struct bus _dev_0_links[];
STORAGE struct device _dev_1;
STORAGE struct bus _dev_1_links[];
STORAGE struct device _dev_2;
STORAGE struct device _dev_3;
STORAGE struct device _dev_4;
STORAGE struct device _dev_5;
STORAGE struct device _dev_6;
STORAGE struct device _dev_7;
STORAGE struct device _dev_8;
STORAGE struct device _dev_9;
STORAGE struct device _dev_10;
STORAGE struct device _dev_11;
STORAGE struct device _dev_12;
STORAGE struct device _dev_13;
STORAGE struct device _dev_14;
STORAGE struct device _dev_15;
STORAGE struct device _dev_16;
STORAGE struct device _dev_17;
STORAGE struct device _dev_18;
STORAGE struct device _dev_19;
STORAGE struct device _dev_20;
STORAGE struct device _dev_21;
STORAGE struct device _dev_22;
STORAGE struct device _dev_23;
STORAGE struct device _dev_24;
STORAGE struct device _dev_25;
STORAGE struct device _dev_26;
STORAGE struct device _dev_27;
STORAGE struct device _dev_28;
STORAGE struct device _dev_29;
STORAGE struct device _dev_30;
STORAGE struct device _dev_31;
STORAGE struct device _dev_32;
STORAGE struct device _dev_33;
STORAGE struct device _dev_34;
STORAGE struct device _dev_35;
STORAGE struct device _dev_36;
STORAGE struct device _dev_37;
STORAGE struct device _dev_38;
STORAGE struct device _dev_39;
STORAGE struct device _dev_40;
STORAGE struct device _dev_41;
STORAGE struct device _dev_42;
STORAGE struct device _dev_43;
STORAGE struct device _dev_44;
STORAGE struct device _dev_45;
STORAGE struct device _dev_46;
STORAGE struct device _dev_47;
STORAGE struct device _dev_48;
STORAGE struct bus _dev_48_links[];
STORAGE struct device _dev_49;
STORAGE struct device _dev_50;
STORAGE struct device _dev_51;
STORAGE struct device _dev_52;
STORAGE struct device _dev_53;
STORAGE struct device _dev_54;
STORAGE struct device _dev_55;
STORAGE struct resource _dev_55_res[];
STORAGE struct device _dev_56;
STORAGE struct resource _dev_56_res[];
STORAGE struct device _dev_57;
STORAGE struct device _dev_58;
STORAGE struct resource _dev_58_res[];
STORAGE struct device _dev_59;
STORAGE struct device _dev_60;
STORAGE struct device _dev_61;
STORAGE struct device _dev_62;
STORAGE struct device _dev_63;
STORAGE struct device _dev_64;
STORAGE struct device _dev_65;
STORAGE struct device _dev_66;
STORAGE struct device _dev_67;
DEVTREE_CONST struct device * DEVTREE_CONST last_dev = &_dev_67;

/* chip configs */
STORAGE struct drivers_pc80_tpm_config drivers_pc80_tpm_info_1 = {};

STORAGE struct soc_intel_cannonlake_config soc_intel_cannonlake_info_1 = {
	.AcousticNoiseMitigation = 1,
	.DdiPortBDdc = 1,
	.DdiPortBHpd = 1,
	.DdiPortCHpd = 1,
	.DdiPortEdp = 1,
	.PchHdaAudioLinkHda = 1,
	.PchPmSlpAMinAssert = 4,
	.PchPmSlpS3MinAssert = 3,
	.PchPmSlpS4MinAssert = 1,
	.PchPmSlpSusMinAssert = 2,
	.PchUnlockGpioPads = 1,
	.PchUsb2PhySusPgDisable = 1,
	.PcieClkSrcUsage[0] = PCIE_CLK_FREE,
	.PcieClkSrcUsage[1] = PCIE_CLK_FREE,
	.PcieClkSrcUsage[2] = PCIE_CLK_FREE,
	.PcieClkSrcUsage[3] = PCIE_CLK_FREE,
	.PcieClkSrcUsage[4] = PCIE_CLK_FREE,
	.PcieClkSrcUsage[5] = PCIE_CLK_FREE,
	.PcieRpAdvancedErrorReporting[11] = 1,
	.PcieRpAdvancedErrorReporting[12] = 1,
	.PcieRpAdvancedErrorReporting[13] = 1,
	.PcieRpAdvancedErrorReporting[14] = 1,
	.PcieRpAdvancedErrorReporting[15] = 1,
	.PcieRpAdvancedErrorReporting[4] = 1,
	.PcieRpAdvancedErrorReporting[5] = 1,
	.PcieRpAdvancedErrorReporting[6] = 1,
	.PcieRpAdvancedErrorReporting[7] = 1,
	.PcieRpAdvancedErrorReporting[8] = 1,
	.PcieRpAdvancedErrorReporting[9] = 1,
	.PcieRpEnable[11] = 1,
	.PcieRpEnable[12] = 1,
	.PcieRpEnable[13] = 1,
	.PcieRpEnable[14] = 1,
	.PcieRpEnable[15] = 1,
	.PcieRpEnable[4] = 1,
	.PcieRpEnable[5] = 1,
	.PcieRpEnable[6] = 1,
	.PcieRpEnable[7] = 1,
	.PcieRpEnable[8] = 1,
	.PcieRpEnable[9] = 1,
	.PcieRpLtrEnable[11] = 1,
	.PcieRpLtrEnable[12] = 1,
	.PcieRpLtrEnable[13] = 1,
	.PcieRpLtrEnable[14] = 1,
	.PcieRpLtrEnable[15] = 1,
	.PcieRpLtrEnable[4] = 1,
	.PcieRpLtrEnable[5] = 1,
	.PcieRpLtrEnable[6] = 1,
	.PcieRpLtrEnable[7] = 1,
	.PcieRpLtrEnable[8] = 1,
	.PcieRpLtrEnable[9] = 1,
	.SaGv = SaGv_Enabled,
	.SataMode = 0,
	.SataPortsEnable[0] = 1,
	.SataPortsEnable[2] = 1,
	.ScsEmmcHs400Enabled = 1,
	.SerialIoDevMode = {
		[PchSerialIoIndexI2C0] = PchSerialIoDisabled,
		[PchSerialIoIndexI2C1] = PchSerialIoDisabled,
		[PchSerialIoIndexI2C2] = PchSerialIoDisabled,
		[PchSerialIoIndexI2C3] = PchSerialIoDisabled,
		[PchSerialIoIndexI2C4] = PchSerialIoDisabled,
		[PchSerialIoIndexI2C5] = PchSerialIoDisabled,
		[PchSerialIoIndexSPI0] = PchSerialIoDisabled,
		[PchSerialIoIndexSPI1] = PchSerialIoDisabled,
		[PchSerialIoIndexSPI2] = PchSerialIoDisabled,
		[PchSerialIoIndexUART0] = PchSerialIoDisabled,
		[PchSerialIoIndexUART1] = PchSerialIoDisabled,
		[PchSerialIoIndexUART2] = PchSerialIoDisabled,
	},
	.SkipExtGfxScan = 1,
	.cpu_pl2_4_cfg = baseline,
	.eist_enable = 1,
	.enable_c6dram = 1,
	.gen1_dec = 0x00fc0201,
	.gen2_dec = 0x007c0a01,
	.gen3_dec = 0x000c03e1,
	.gen4_dec = 0x001c02e1,
	.gpe0_dw0 = 0x2,
	.gpe0_dw1 = 0x3,
	.gpe0_dw2 = 0xd,
	.s0ix_enable = 1,
	.serirq_mode = SERIRQ_CONTINUOUS,
	.tcc_offset = 20,
	.usb2_ports[0] = USB2_PORT_MID(OC_SKIP),
	.usb2_ports[1] = USB2_PORT_MID(OC_SKIP),
	.usb2_ports[2] = USB2_PORT_TYPE_C(OC_SKIP),
	.usb2_ports[3] = USB2_PORT_MID(OC_SKIP),
	.usb2_ports[4] = USB2_PORT_MID(OC_SKIP),
	.usb2_ports[5] = USB2_PORT_MID(OC_SKIP),
	.usb2_ports[6] = USB2_PORT_MID(OC_SKIP),
	.usb2_ports[7] = USB2_PORT_MID(OC_SKIP),
	.usb2_ports[8] = USB2_PORT_MID(OC_SKIP),
	.usb2_ports[9] = USB2_PORT_EMPTY,
	.usb2_wake_enable_bitmap = USB_PORT_WAKE_ENABLE(1) | \
					      USB_PORT_WAKE_ENABLE(2) | \
					      USB_PORT_WAKE_ENABLE(3) | \
					      USB_PORT_WAKE_ENABLE(4) | \
					      USB_PORT_WAKE_ENABLE(5) | \
					      USB_PORT_WAKE_ENABLE(6) | \
					      USB_PORT_WAKE_ENABLE(7) | \
					      USB_PORT_WAKE_ENABLE(8) | \
					      USB_PORT_WAKE_ENABLE(9),
	.usb3_ports[0] = USB3_PORT_DEFAULT(OC_SKIP),
	.usb3_ports[1] = USB3_PORT_DEFAULT(OC_SKIP),
	.usb3_ports[2] = USB3_PORT_DEFAULT(OC_SKIP),
	.usb3_ports[3] = USB3_PORT_DEFAULT(OC_SKIP),
	.usb3_ports[4] = USB3_PORT_EMPTY,
	.usb3_ports[5] = USB3_PORT_EMPTY,
	.usb3_wake_enable_bitmap = USB_PORT_WAKE_ENABLE(1) | \
					      USB_PORT_WAKE_ENABLE(2) | \
					      USB_PORT_WAKE_ENABLE(3) | \
					      USB_PORT_WAKE_ENABLE(4),
};

STORAGE struct superio_ite_it8786e_config superio_ite_it8786e_info_1 = {
	.FAN1.mode = FAN_SMART_AUTOMATIC,
	.FAN1.smart.pwm_start = 20,
	.FAN1.smart.slope = 24,
	.FAN1.smart.tmp_delta =  2,
	.FAN1.smart.tmp_full = 85,
	.FAN1.smart.tmp_off = 40,
	.FAN1.smart.tmp_start = 60,
	.FAN1.smart.tmpin =  1,
	.FAN2.mode = FAN_MODE_OFF,
	.FAN3.mode = FAN_MODE_OFF,
	.TMPIN1.mode = THERMAL_PECI,
	.TMPIN1.offset = 0x63,
	.TMPIN2.mode = THERMAL_MODE_DISABLED,
	.TMPIN3.mode = THERMAL_MODE_DISABLED,
	.ec.smbus_24mhz = 1,
	.ec.smbus_en = 1,
	.ec.vin_mask = VIN_ALL,
};


/* pass 1 */
DEVTREE_CONST struct device dev_root = {
#if !DEVTREE_EARLY
	.ops = &default_dev_ops_root,
#endif
	.bus = &dev_root_links[0],
	.path = { .type = DEVICE_PATH_ROOT },
	.enabled = 1,
	.hidden = 0,
	.mandatory = 0,
	.on_mainboard = 1,
	.link_list = &dev_root_links[0],
	.sibling = NULL,
#if !DEVTREE_EARLY
	.chip_ops = &mainboard_ops,
	.name = mainboard_name,
#endif
	.next=&_dev_0,
#if !DEVTREE_EARLY
#if CONFIG(GENERATE_SMBIOS_TABLES)
#endif
#endif
};
STORAGE struct bus dev_root_links[] = {
		[0] = {
			.link_num = 0,
			.dev = &dev_root,
			.children = &_dev_0,
			.next = NULL,
		},
	};
STORAGE struct device _dev_0 = {
#if !DEVTREE_EARLY
	.ops = NULL,
#endif
	.bus = &dev_root_links[0],
	.path = {.type=DEVICE_PATH_CPU_CLUSTER,{.cpu_cluster={ .cluster = 0x0 }}},
	.enabled = 1,
	.hidden = 0,
	.mandatory = 0,
	.on_mainboard = 1,
	.link_list = &_dev_0_links[0],
	.sibling = &_dev_1,
#if !DEVTREE_EARLY
	.chip_ops = &soc_intel_cannonlake_ops,
#endif
	.chip_info = &soc_intel_cannonlake_info_1,
	.next=&_dev_1,
#if !DEVTREE_EARLY
#if CONFIG(GENERATE_SMBIOS_TABLES)
#endif
#endif
};
STORAGE struct bus _dev_0_links[] = {
		[0] = {
			.link_num = 0,
			.dev = &_dev_0,
			.children = &_dev_2,
			.next = NULL,
		},
	};
STORAGE struct device _dev_1 = {
#if !DEVTREE_EARLY
	.ops = NULL,
#endif
	.bus = &dev_root_links[0],
	.path = {.type=DEVICE_PATH_DOMAIN,{.domain={ .domain = 0x0 }}},
	.enabled = 1,
	.hidden = 0,
	.mandatory = 0,
	.on_mainboard = 1,
	.link_list = &_dev_1_links[0],
	.sibling = NULL,
#if !DEVTREE_EARLY
	.chip_ops = &soc_intel_cannonlake_ops,
#endif
	.chip_info = &soc_intel_cannonlake_info_1,
	.next=&_dev_2,
#if !DEVTREE_EARLY
#if CONFIG(GENERATE_SMBIOS_TABLES)
	.smbios_slot_type = SlotTypeM2Socket1_SD,
	.smbios_slot_data_width = SlotDataBusWidth1X,
	.smbios_slot_designation = "M.2/E 2230 (M2_WIFI2)",
	.smbios_slot_length = SlotLengthOther,
#endif
#endif
};
STORAGE struct bus _dev_1_links[] = {
		[0] = {
			.link_num = 0,
			.dev = &_dev_1,
			.children = &_dev_3,
			.next = NULL,
		},
	};
STORAGE struct device _dev_2 = {
#if !DEVTREE_EARLY
	.ops = NULL,
#endif
	.bus = &_dev_0_links[0],
	.path = {.type=DEVICE_PATH_APIC,{.apic={ .apic_id = 0x0 }}},
	.enabled = 1,
	.hidden = 0,
	.mandatory = 0,
	.on_mainboard = 1,
	.link_list = NULL,
	.sibling = NULL,
#if !DEVTREE_EARLY
	.chip_ops = &soc_intel_cannonlake_ops,
#endif
	.chip_info = &soc_intel_cannonlake_info_1,
	.next=&_dev_3,
#if !DEVTREE_EARLY
#if CONFIG(GENERATE_SMBIOS_TABLES)
#endif
#endif
};
STORAGE struct device _dev_3 = {
#if !DEVTREE_EARLY
	.ops = NULL,
#endif
	.bus = &_dev_1_links[0],
	.path = {.type=DEVICE_PATH_PCI,{.pci={ .devfn = PCI_DEVFN(0x0,0)}}},
	.enabled = 1,
	.hidden = 0,
	.mandatory = 0,
	.on_mainboard = 1,
	.link_list = NULL,
	.sibling = &_dev_4,
#if !DEVTREE_EARLY
	.chip_ops = &soc_intel_cannonlake_ops,
#endif
	.chip_info = &soc_intel_cannonlake_info_1,
	.next=&_dev_4,
#if !DEVTREE_EARLY
#if CONFIG(GENERATE_SMBIOS_TABLES)
#endif
#endif
};
STORAGE struct device _dev_4 = {
#if !DEVTREE_EARLY
	.ops = NULL,
#endif
	.bus = &_dev_1_links[0],
	.path = {.type=DEVICE_PATH_PCI,{.pci={ .devfn = PCI_DEVFN(0x2,0)}}},
	.enabled = 1,
	.hidden = 0,
	.mandatory = 0,
	.on_mainboard = 1,
	.link_list = NULL,
	.sibling = &_dev_5,
#if !DEVTREE_EARLY
	.chip_ops = &soc_intel_cannonlake_ops,
#endif
	.chip_info = &soc_intel_cannonlake_info_1,
	.next=&_dev_5,
#if !DEVTREE_EARLY
#if CONFIG(GENERATE_SMBIOS_TABLES)
#endif
#endif
};
STORAGE struct device _dev_5 = {
#if !DEVTREE_EARLY
	.ops = NULL,
#endif
	.bus = &_dev_1_links[0],
	.path = {.type=DEVICE_PATH_PCI,{.pci={ .devfn = PCI_DEVFN(0x4,0)}}},
	.enabled = 1,
	.hidden = 0,
	.mandatory = 0,
	.on_mainboard = 1,
	.link_list = NULL,
	.sibling = &_dev_6,
#if !DEVTREE_EARLY
	.chip_ops = &soc_intel_cannonlake_ops,
#endif
	.chip_info = &soc_intel_cannonlake_info_1,
	.next=&_dev_6,
#if !DEVTREE_EARLY
#if CONFIG(GENERATE_SMBIOS_TABLES)
#endif
#endif
};
STORAGE struct device _dev_6 = {
#if !DEVTREE_EARLY
	.ops = NULL,
#endif
	.bus = &_dev_1_links[0],
	.path = {.type=DEVICE_PATH_PCI,{.pci={ .devfn = PCI_DEVFN(0x8,0)}}},
	.enabled = 0,
	.hidden = 0,
	.mandatory = 0,
	.on_mainboard = 1,
	.link_list = NULL,
	.sibling = &_dev_7,
#if !DEVTREE_EARLY
	.chip_ops = &soc_intel_cannonlake_ops,
#endif
	.chip_info = &soc_intel_cannonlake_info_1,
	.next=&_dev_7,
#if !DEVTREE_EARLY
#if CONFIG(GENERATE_SMBIOS_TABLES)
#endif
#endif
};
STORAGE struct device _dev_7 = {
#if !DEVTREE_EARLY
	.ops = NULL,
#endif
	.bus = &_dev_1_links[0],
	.path = {.type=DEVICE_PATH_PCI,{.pci={ .devfn = PCI_DEVFN(0x12,0)}}},
	.enabled = 1,
	.hidden = 0,
	.mandatory = 0,
	.on_mainboard = 1,
	.link_list = NULL,
	.sibling = &_dev_8,
#if !DEVTREE_EARLY
	.chip_ops = &soc_intel_cannonlake_ops,
#endif
	.chip_info = &soc_intel_cannonlake_info_1,
	.next=&_dev_8,
#if !DEVTREE_EARLY
#if CONFIG(GENERATE_SMBIOS_TABLES)
#endif
#endif
};
STORAGE struct device _dev_8 = {
#if !DEVTREE_EARLY
	.ops = NULL,
#endif
	.bus = &_dev_1_links[0],
	.path = {.type=DEVICE_PATH_PCI,{.pci={ .devfn = PCI_DEVFN(0x12,5)}}},
	.enabled = 0,
	.hidden = 0,
	.mandatory = 0,
	.on_mainboard = 1,
	.link_list = NULL,
	.sibling = &_dev_9,
#if !DEVTREE_EARLY
	.chip_ops = &soc_intel_cannonlake_ops,
#endif
	.chip_info = &soc_intel_cannonlake_info_1,
	.next=&_dev_9,
#if !DEVTREE_EARLY
#if CONFIG(GENERATE_SMBIOS_TABLES)
#endif
#endif
};
STORAGE struct device _dev_9 = {
#if !DEVTREE_EARLY
	.ops = NULL,
#endif
	.bus = &_dev_1_links[0],
	.path = {.type=DEVICE_PATH_PCI,{.pci={ .devfn = PCI_DEVFN(0x12,6)}}},
	.enabled = 0,
	.hidden = 0,
	.mandatory = 0,
	.on_mainboard = 1,
	.link_list = NULL,
	.sibling = &_dev_10,
#if !DEVTREE_EARLY
	.chip_ops = &soc_intel_cannonlake_ops,
#endif
	.chip_info = &soc_intel_cannonlake_info_1,
	.next=&_dev_10,
#if !DEVTREE_EARLY
#if CONFIG(GENERATE_SMBIOS_TABLES)
#endif
#endif
};
STORAGE struct device _dev_10 = {
#if !DEVTREE_EARLY
	.ops = NULL,
#endif
	.bus = &_dev_1_links[0],
	.path = {.type=DEVICE_PATH_PCI,{.pci={ .devfn = PCI_DEVFN(0x14,0)}}},
	.enabled = 1,
	.hidden = 0,
	.mandatory = 0,
	.on_mainboard = 1,
	.link_list = NULL,
	.sibling = &_dev_11,
#if !DEVTREE_EARLY
	.chip_ops = &soc_intel_cannonlake_ops,
#endif
	.chip_info = &soc_intel_cannonlake_info_1,
	.next=&_dev_11,
#if !DEVTREE_EARLY
#if CONFIG(GENERATE_SMBIOS_TABLES)
#endif
#endif
};
STORAGE struct device _dev_11 = {
#if !DEVTREE_EARLY
	.ops = NULL,
#endif
	.bus = &_dev_1_links[0],
	.path = {.type=DEVICE_PATH_PCI,{.pci={ .devfn = PCI_DEVFN(0x14,1)}}},
	.enabled = 0,
	.hidden = 0,
	.mandatory = 0,
	.on_mainboard = 1,
	.link_list = NULL,
	.sibling = &_dev_12,
#if !DEVTREE_EARLY
	.chip_ops = &soc_intel_cannonlake_ops,
#endif
	.chip_info = &soc_intel_cannonlake_info_1,
	.next=&_dev_12,
#if !DEVTREE_EARLY
#if CONFIG(GENERATE_SMBIOS_TABLES)
#endif
#endif
};
STORAGE struct device _dev_12 = {
#if !DEVTREE_EARLY
	.ops = NULL,
#endif
	.bus = &_dev_1_links[0],
	.path = {.type=DEVICE_PATH_PCI,{.pci={ .devfn = PCI_DEVFN(0x14,5)}}},
	.enabled = 0,
	.hidden = 0,
	.mandatory = 0,
	.on_mainboard = 1,
	.link_list = NULL,
	.sibling = &_dev_13,
#if !DEVTREE_EARLY
	.chip_ops = &soc_intel_cannonlake_ops,
#endif
	.chip_info = &soc_intel_cannonlake_info_1,
	.next=&_dev_13,
#if !DEVTREE_EARLY
#if CONFIG(GENERATE_SMBIOS_TABLES)
#endif
#endif
};
STORAGE struct device _dev_13 = {
#if !DEVTREE_EARLY
	.ops = NULL,
#endif
	.bus = &_dev_1_links[0],
	.path = {.type=DEVICE_PATH_PCI,{.pci={ .devfn = PCI_DEVFN(0x15,0)}}},
	.enabled = 0,
	.hidden = 0,
	.mandatory = 0,
	.on_mainboard = 1,
	.link_list = NULL,
	.sibling = &_dev_14,
#if !DEVTREE_EARLY
	.chip_ops = &soc_intel_cannonlake_ops,
#endif
	.chip_info = &soc_intel_cannonlake_info_1,
	.next=&_dev_14,
#if !DEVTREE_EARLY
#if CONFIG(GENERATE_SMBIOS_TABLES)
#endif
#endif
};
STORAGE struct device _dev_14 = {
#if !DEVTREE_EARLY
	.ops = NULL,
#endif
	.bus = &_dev_1_links[0],
	.path = {.type=DEVICE_PATH_PCI,{.pci={ .devfn = PCI_DEVFN(0x15,1)}}},
	.enabled = 0,
	.hidden = 0,
	.mandatory = 0,
	.on_mainboard = 1,
	.link_list = NULL,
	.sibling = &_dev_15,
#if !DEVTREE_EARLY
	.chip_ops = &soc_intel_cannonlake_ops,
#endif
	.chip_info = &soc_intel_cannonlake_info_1,
	.next=&_dev_15,
#if !DEVTREE_EARLY
#if CONFIG(GENERATE_SMBIOS_TABLES)
#endif
#endif
};
STORAGE struct device _dev_15 = {
#if !DEVTREE_EARLY
	.ops = NULL,
#endif
	.bus = &_dev_1_links[0],
	.path = {.type=DEVICE_PATH_PCI,{.pci={ .devfn = PCI_DEVFN(0x15,2)}}},
	.enabled = 0,
	.hidden = 0,
	.mandatory = 0,
	.on_mainboard = 1,
	.link_list = NULL,
	.sibling = &_dev_16,
#if !DEVTREE_EARLY
	.chip_ops = &soc_intel_cannonlake_ops,
#endif
	.chip_info = &soc_intel_cannonlake_info_1,
	.next=&_dev_16,
#if !DEVTREE_EARLY
#if CONFIG(GENERATE_SMBIOS_TABLES)
#endif
#endif
};
STORAGE struct device _dev_16 = {
#if !DEVTREE_EARLY
	.ops = NULL,
#endif
	.bus = &_dev_1_links[0],
	.path = {.type=DEVICE_PATH_PCI,{.pci={ .devfn = PCI_DEVFN(0x15,3)}}},
	.enabled = 0,
	.hidden = 0,
	.mandatory = 0,
	.on_mainboard = 1,
	.link_list = NULL,
	.sibling = &_dev_17,
#if !DEVTREE_EARLY
	.chip_ops = &soc_intel_cannonlake_ops,
#endif
	.chip_info = &soc_intel_cannonlake_info_1,
	.next=&_dev_17,
#if !DEVTREE_EARLY
#if CONFIG(GENERATE_SMBIOS_TABLES)
#endif
#endif
};
STORAGE struct device _dev_17 = {
#if !DEVTREE_EARLY
	.ops = NULL,
#endif
	.bus = &_dev_1_links[0],
	.path = {.type=DEVICE_PATH_PCI,{.pci={ .devfn = PCI_DEVFN(0x16,0)}}},
	.enabled = 1,
	.hidden = 0,
	.mandatory = 0,
	.on_mainboard = 1,
	.link_list = NULL,
	.sibling = &_dev_18,
#if !DEVTREE_EARLY
	.chip_ops = &soc_intel_cannonlake_ops,
#endif
	.chip_info = &soc_intel_cannonlake_info_1,
	.next=&_dev_18,
#if !DEVTREE_EARLY
#if CONFIG(GENERATE_SMBIOS_TABLES)
#endif
#endif
};
STORAGE struct device _dev_18 = {
#if !DEVTREE_EARLY
	.ops = NULL,
#endif
	.bus = &_dev_1_links[0],
	.path = {.type=DEVICE_PATH_PCI,{.pci={ .devfn = PCI_DEVFN(0x16,1)}}},
	.enabled = 0,
	.hidden = 0,
	.mandatory = 0,
	.on_mainboard = 1,
	.link_list = NULL,
	.sibling = &_dev_19,
#if !DEVTREE_EARLY
	.chip_ops = &soc_intel_cannonlake_ops,
#endif
	.chip_info = &soc_intel_cannonlake_info_1,
	.next=&_dev_19,
#if !DEVTREE_EARLY
#if CONFIG(GENERATE_SMBIOS_TABLES)
#endif
#endif
};
STORAGE struct device _dev_19 = {
#if !DEVTREE_EARLY
	.ops = NULL,
#endif
	.bus = &_dev_1_links[0],
	.path = {.type=DEVICE_PATH_PCI,{.pci={ .devfn = PCI_DEVFN(0x16,2)}}},
	.enabled = 0,
	.hidden = 0,
	.mandatory = 0,
	.on_mainboard = 1,
	.link_list = NULL,
	.sibling = &_dev_20,
#if !DEVTREE_EARLY
	.chip_ops = &soc_intel_cannonlake_ops,
#endif
	.chip_info = &soc_intel_cannonlake_info_1,
	.next=&_dev_20,
#if !DEVTREE_EARLY
#if CONFIG(GENERATE_SMBIOS_TABLES)
#endif
#endif
};
STORAGE struct device _dev_20 = {
#if !DEVTREE_EARLY
	.ops = NULL,
#endif
	.bus = &_dev_1_links[0],
	.path = {.type=DEVICE_PATH_PCI,{.pci={ .devfn = PCI_DEVFN(0x16,3)}}},
	.enabled = 0,
	.hidden = 0,
	.mandatory = 0,
	.on_mainboard = 1,
	.link_list = NULL,
	.sibling = &_dev_21,
#if !DEVTREE_EARLY
	.chip_ops = &soc_intel_cannonlake_ops,
#endif
	.chip_info = &soc_intel_cannonlake_info_1,
	.next=&_dev_21,
#if !DEVTREE_EARLY
#if CONFIG(GENERATE_SMBIOS_TABLES)
#endif
#endif
};
STORAGE struct device _dev_21 = {
#if !DEVTREE_EARLY
	.ops = NULL,
#endif
	.bus = &_dev_1_links[0],
	.path = {.type=DEVICE_PATH_PCI,{.pci={ .devfn = PCI_DEVFN(0x16,4)}}},
	.enabled = 0,
	.hidden = 0,
	.mandatory = 0,
	.on_mainboard = 1,
	.link_list = NULL,
	.sibling = &_dev_22,
#if !DEVTREE_EARLY
	.chip_ops = &soc_intel_cannonlake_ops,
#endif
	.chip_info = &soc_intel_cannonlake_info_1,
	.next=&_dev_22,
#if !DEVTREE_EARLY
#if CONFIG(GENERATE_SMBIOS_TABLES)
#endif
#endif
};
STORAGE struct device _dev_22 = {
#if !DEVTREE_EARLY
	.ops = NULL,
#endif
	.bus = &_dev_1_links[0],
	.path = {.type=DEVICE_PATH_PCI,{.pci={ .devfn = PCI_DEVFN(0x16,5)}}},
	.enabled = 0,
	.hidden = 0,
	.mandatory = 0,
	.on_mainboard = 1,
	.link_list = NULL,
	.sibling = &_dev_23,
#if !DEVTREE_EARLY
	.chip_ops = &soc_intel_cannonlake_ops,
#endif
	.chip_info = &soc_intel_cannonlake_info_1,
	.next=&_dev_23,
#if !DEVTREE_EARLY
#if CONFIG(GENERATE_SMBIOS_TABLES)
#endif
#endif
};
STORAGE struct device _dev_23 = {
#if !DEVTREE_EARLY
	.ops = NULL,
#endif
	.bus = &_dev_1_links[0],
	.path = {.type=DEVICE_PATH_PCI,{.pci={ .devfn = PCI_DEVFN(0x17,0)}}},
	.enabled = 1,
	.hidden = 0,
	.mandatory = 0,
	.on_mainboard = 1,
	.link_list = NULL,
	.sibling = &_dev_24,
#if !DEVTREE_EARLY
	.chip_ops = &soc_intel_cannonlake_ops,
#endif
	.chip_info = &soc_intel_cannonlake_info_1,
	.next=&_dev_24,
#if !DEVTREE_EARLY
#if CONFIG(GENERATE_SMBIOS_TABLES)
#endif
#endif
};
STORAGE struct device _dev_24 = {
#if !DEVTREE_EARLY
	.ops = NULL,
#endif
	.bus = &_dev_1_links[0],
	.path = {.type=DEVICE_PATH_PCI,{.pci={ .devfn = PCI_DEVFN(0x19,0)}}},
	.enabled = 0,
	.hidden = 0,
	.mandatory = 0,
	.on_mainboard = 1,
	.link_list = NULL,
	.sibling = &_dev_25,
#if !DEVTREE_EARLY
	.chip_ops = &soc_intel_cannonlake_ops,
#endif
	.chip_info = &soc_intel_cannonlake_info_1,
	.next=&_dev_25,
#if !DEVTREE_EARLY
#if CONFIG(GENERATE_SMBIOS_TABLES)
#endif
#endif
};
STORAGE struct device _dev_25 = {
#if !DEVTREE_EARLY
	.ops = NULL,
#endif
	.bus = &_dev_1_links[0],
	.path = {.type=DEVICE_PATH_PCI,{.pci={ .devfn = PCI_DEVFN(0x19,1)}}},
	.enabled = 0,
	.hidden = 0,
	.mandatory = 0,
	.on_mainboard = 1,
	.link_list = NULL,
	.sibling = &_dev_26,
#if !DEVTREE_EARLY
	.chip_ops = &soc_intel_cannonlake_ops,
#endif
	.chip_info = &soc_intel_cannonlake_info_1,
	.next=&_dev_26,
#if !DEVTREE_EARLY
#if CONFIG(GENERATE_SMBIOS_TABLES)
#endif
#endif
};
STORAGE struct device _dev_26 = {
#if !DEVTREE_EARLY
	.ops = NULL,
#endif
	.bus = &_dev_1_links[0],
	.path = {.type=DEVICE_PATH_PCI,{.pci={ .devfn = PCI_DEVFN(0x19,2)}}},
	.enabled = 0,
	.hidden = 0,
	.mandatory = 0,
	.on_mainboard = 1,
	.link_list = NULL,
	.sibling = &_dev_27,
#if !DEVTREE_EARLY
	.chip_ops = &soc_intel_cannonlake_ops,
#endif
	.chip_info = &soc_intel_cannonlake_info_1,
	.next=&_dev_27,
#if !DEVTREE_EARLY
#if CONFIG(GENERATE_SMBIOS_TABLES)
#endif
#endif
};
STORAGE struct device _dev_27 = {
#if !DEVTREE_EARLY
	.ops = NULL,
#endif
	.bus = &_dev_1_links[0],
	.path = {.type=DEVICE_PATH_PCI,{.pci={ .devfn = PCI_DEVFN(0x1a,0)}}},
	.enabled = 1,
	.hidden = 0,
	.mandatory = 0,
	.on_mainboard = 1,
	.link_list = NULL,
	.sibling = &_dev_28,
#if !DEVTREE_EARLY
	.chip_ops = &soc_intel_cannonlake_ops,
#endif
	.chip_info = &soc_intel_cannonlake_info_1,
	.next=&_dev_28,
#if !DEVTREE_EARLY
#if CONFIG(GENERATE_SMBIOS_TABLES)
#endif
#endif
};
STORAGE struct device _dev_28 = {
#if !DEVTREE_EARLY
	.ops = NULL,
#endif
	.bus = &_dev_1_links[0],
	.path = {.type=DEVICE_PATH_PCI,{.pci={ .devfn = PCI_DEVFN(0x1c,0)}}},
	.enabled = 0,
	.hidden = 0,
	.mandatory = 0,
	.on_mainboard = 1,
	.link_list = NULL,
	.sibling = &_dev_29,
#if !DEVTREE_EARLY
	.chip_ops = &soc_intel_cannonlake_ops,
#endif
	.chip_info = &soc_intel_cannonlake_info_1,
	.next=&_dev_29,
#if !DEVTREE_EARLY
#if CONFIG(GENERATE_SMBIOS_TABLES)
#endif
#endif
};
STORAGE struct device _dev_29 = {
#if !DEVTREE_EARLY
	.ops = NULL,
#endif
	.bus = &_dev_1_links[0],
	.path = {.type=DEVICE_PATH_PCI,{.pci={ .devfn = PCI_DEVFN(0x1c,1)}}},
	.enabled = 0,
	.hidden = 0,
	.mandatory = 0,
	.on_mainboard = 1,
	.link_list = NULL,
	.sibling = &_dev_30,
#if !DEVTREE_EARLY
	.chip_ops = &soc_intel_cannonlake_ops,
#endif
	.chip_info = &soc_intel_cannonlake_info_1,
	.next=&_dev_30,
#if !DEVTREE_EARLY
#if CONFIG(GENERATE_SMBIOS_TABLES)
#endif
#endif
};
STORAGE struct device _dev_30 = {
#if !DEVTREE_EARLY
	.ops = NULL,
#endif
	.bus = &_dev_1_links[0],
	.path = {.type=DEVICE_PATH_PCI,{.pci={ .devfn = PCI_DEVFN(0x1c,2)}}},
	.enabled = 0,
	.hidden = 0,
	.mandatory = 0,
	.on_mainboard = 1,
	.link_list = NULL,
	.sibling = &_dev_31,
#if !DEVTREE_EARLY
	.chip_ops = &soc_intel_cannonlake_ops,
#endif
	.chip_info = &soc_intel_cannonlake_info_1,
	.next=&_dev_31,
#if !DEVTREE_EARLY
#if CONFIG(GENERATE_SMBIOS_TABLES)
#endif
#endif
};
STORAGE struct device _dev_31 = {
#if !DEVTREE_EARLY
	.ops = NULL,
#endif
	.bus = &_dev_1_links[0],
	.path = {.type=DEVICE_PATH_PCI,{.pci={ .devfn = PCI_DEVFN(0x1c,3)}}},
	.enabled = 0,
	.hidden = 0,
	.mandatory = 0,
	.on_mainboard = 1,
	.link_list = NULL,
	.sibling = &_dev_32,
#if !DEVTREE_EARLY
	.chip_ops = &soc_intel_cannonlake_ops,
#endif
	.chip_info = &soc_intel_cannonlake_info_1,
	.next=&_dev_32,
#if !DEVTREE_EARLY
#if CONFIG(GENERATE_SMBIOS_TABLES)
#endif
#endif
};
STORAGE struct device _dev_32 = {
#if !DEVTREE_EARLY
	.ops = NULL,
#endif
	.bus = &_dev_1_links[0],
	.path = {.type=DEVICE_PATH_PCI,{.pci={ .devfn = PCI_DEVFN(0x1c,4)}}},
	.enabled = 1,
	.hidden = 0,
	.mandatory = 0,
	.on_mainboard = 1,
	.link_list = NULL,
	.sibling = &_dev_33,
#if !DEVTREE_EARLY
	.chip_ops = &soc_intel_cannonlake_ops,
#endif
	.chip_info = &soc_intel_cannonlake_info_1,
	.next=&_dev_33,
#if !DEVTREE_EARLY
#if CONFIG(GENERATE_SMBIOS_TABLES)
#endif
#endif
};
STORAGE struct device _dev_33 = {
#if !DEVTREE_EARLY
	.ops = NULL,
#endif
	.bus = &_dev_1_links[0],
	.path = {.type=DEVICE_PATH_PCI,{.pci={ .devfn = PCI_DEVFN(0x1c,5)}}},
	.enabled = 1,
	.hidden = 0,
	.mandatory = 0,
	.on_mainboard = 1,
	.link_list = NULL,
	.sibling = &_dev_34,
#if !DEVTREE_EARLY
	.chip_ops = &soc_intel_cannonlake_ops,
#endif
	.chip_info = &soc_intel_cannonlake_info_1,
	.next=&_dev_34,
#if !DEVTREE_EARLY
#if CONFIG(GENERATE_SMBIOS_TABLES)
#endif
#endif
};
STORAGE struct device _dev_34 = {
#if !DEVTREE_EARLY
	.ops = NULL,
#endif
	.bus = &_dev_1_links[0],
	.path = {.type=DEVICE_PATH_PCI,{.pci={ .devfn = PCI_DEVFN(0x1c,6)}}},
	.enabled = 1,
	.hidden = 0,
	.mandatory = 0,
	.on_mainboard = 1,
	.link_list = NULL,
	.sibling = &_dev_35,
#if !DEVTREE_EARLY
	.chip_ops = &soc_intel_cannonlake_ops,
#endif
	.chip_info = &soc_intel_cannonlake_info_1,
	.next=&_dev_35,
#if !DEVTREE_EARLY
#if CONFIG(GENERATE_SMBIOS_TABLES)
#endif
#endif
};
STORAGE struct device _dev_35 = {
#if !DEVTREE_EARLY
	.ops = NULL,
#endif
	.bus = &_dev_1_links[0],
	.path = {.type=DEVICE_PATH_PCI,{.pci={ .devfn = PCI_DEVFN(0x1c,7)}}},
	.enabled = 1,
	.hidden = 0,
	.mandatory = 0,
	.on_mainboard = 1,
	.link_list = NULL,
	.sibling = &_dev_36,
#if !DEVTREE_EARLY
	.chip_ops = &soc_intel_cannonlake_ops,
#endif
	.chip_info = &soc_intel_cannonlake_info_1,
	.next=&_dev_36,
#if !DEVTREE_EARLY
#if CONFIG(GENERATE_SMBIOS_TABLES)
#endif
#endif
};
STORAGE struct device _dev_36 = {
#if !DEVTREE_EARLY
	.ops = NULL,
#endif
	.bus = &_dev_1_links[0],
	.path = {.type=DEVICE_PATH_PCI,{.pci={ .devfn = PCI_DEVFN(0x1d,0)}}},
	.enabled = 1,
	.hidden = 0,
	.mandatory = 0,
	.on_mainboard = 1,
	.link_list = NULL,
	.sibling = &_dev_37,
#if !DEVTREE_EARLY
	.chip_ops = &soc_intel_cannonlake_ops,
#endif
	.chip_info = &soc_intel_cannonlake_info_1,
	.next=&_dev_37,
#if !DEVTREE_EARLY
#if CONFIG(GENERATE_SMBIOS_TABLES)
#endif
#endif
};
STORAGE struct device _dev_37 = {
#if !DEVTREE_EARLY
	.ops = NULL,
#endif
	.bus = &_dev_1_links[0],
	.path = {.type=DEVICE_PATH_PCI,{.pci={ .devfn = PCI_DEVFN(0x1d,1)}}},
	.enabled = 1,
	.hidden = 0,
	.mandatory = 0,
	.on_mainboard = 1,
	.link_list = NULL,
	.sibling = &_dev_38,
#if !DEVTREE_EARLY
	.chip_ops = &soc_intel_cannonlake_ops,
#endif
	.chip_info = &soc_intel_cannonlake_info_1,
	.next=&_dev_38,
#if !DEVTREE_EARLY
#if CONFIG(GENERATE_SMBIOS_TABLES)
#endif
#endif
};
STORAGE struct device _dev_38 = {
#if !DEVTREE_EARLY
	.ops = NULL,
#endif
	.bus = &_dev_1_links[0],
	.path = {.type=DEVICE_PATH_PCI,{.pci={ .devfn = PCI_DEVFN(0x1d,2)}}},
	.enabled = 0,
	.hidden = 0,
	.mandatory = 0,
	.on_mainboard = 1,
	.link_list = NULL,
	.sibling = &_dev_39,
#if !DEVTREE_EARLY
	.chip_ops = &soc_intel_cannonlake_ops,
#endif
	.chip_info = &soc_intel_cannonlake_info_1,
	.next=&_dev_39,
#if !DEVTREE_EARLY
#if CONFIG(GENERATE_SMBIOS_TABLES)
#endif
#endif
};
STORAGE struct device _dev_39 = {
#if !DEVTREE_EARLY
	.ops = NULL,
#endif
	.bus = &_dev_1_links[0],
	.path = {.type=DEVICE_PATH_PCI,{.pci={ .devfn = PCI_DEVFN(0x1d,3)}}},
	.enabled = 1,
	.hidden = 0,
	.mandatory = 0,
	.on_mainboard = 1,
	.link_list = NULL,
	.sibling = &_dev_40,
#if !DEVTREE_EARLY
	.chip_ops = &soc_intel_cannonlake_ops,
#endif
	.chip_info = &soc_intel_cannonlake_info_1,
	.next=&_dev_40,
#if !DEVTREE_EARLY
#if CONFIG(GENERATE_SMBIOS_TABLES)
#endif
#endif
};
STORAGE struct device _dev_40 = {
#if !DEVTREE_EARLY
	.ops = NULL,
#endif
	.bus = &_dev_1_links[0],
	.path = {.type=DEVICE_PATH_PCI,{.pci={ .devfn = PCI_DEVFN(0x1d,4)}}},
	.enabled = 1,
	.hidden = 0,
	.mandatory = 0,
	.on_mainboard = 1,
	.link_list = NULL,
	.sibling = &_dev_41,
#if !DEVTREE_EARLY
	.chip_ops = &soc_intel_cannonlake_ops,
#endif
	.chip_info = &soc_intel_cannonlake_info_1,
	.next=&_dev_41,
#if !DEVTREE_EARLY
#if CONFIG(GENERATE_SMBIOS_TABLES)
	.smbios_slot_type = SlotTypeM2Socket3,
	.smbios_slot_data_width = SlotDataBusWidth4X,
	.smbios_slot_designation = "M.2/M 2280 (J1)",
	.smbios_slot_length = SlotLengthOther,
#endif
#endif
};
STORAGE struct device _dev_41 = {
#if !DEVTREE_EARLY
	.ops = NULL,
#endif
	.bus = &_dev_1_links[0],
	.path = {.type=DEVICE_PATH_PCI,{.pci={ .devfn = PCI_DEVFN(0x1d,5)}}},
	.enabled = 1,
	.hidden = 0,
	.mandatory = 0,
	.on_mainboard = 1,
	.link_list = NULL,
	.sibling = &_dev_42,
#if !DEVTREE_EARLY
	.chip_ops = &soc_intel_cannonlake_ops,
#endif
	.chip_info = &soc_intel_cannonlake_info_1,
	.next=&_dev_42,
#if !DEVTREE_EARLY
#if CONFIG(GENERATE_SMBIOS_TABLES)
#endif
#endif
};
STORAGE struct device _dev_42 = {
#if !DEVTREE_EARLY
	.ops = NULL,
#endif
	.bus = &_dev_1_links[0],
	.path = {.type=DEVICE_PATH_PCI,{.pci={ .devfn = PCI_DEVFN(0x1d,6)}}},
	.enabled = 1,
	.hidden = 0,
	.mandatory = 0,
	.on_mainboard = 1,
	.link_list = NULL,
	.sibling = &_dev_43,
#if !DEVTREE_EARLY
	.chip_ops = &soc_intel_cannonlake_ops,
#endif
	.chip_info = &soc_intel_cannonlake_info_1,
	.next=&_dev_43,
#if !DEVTREE_EARLY
#if CONFIG(GENERATE_SMBIOS_TABLES)
#endif
#endif
};
STORAGE struct device _dev_43 = {
#if !DEVTREE_EARLY
	.ops = NULL,
#endif
	.bus = &_dev_1_links[0],
	.path = {.type=DEVICE_PATH_PCI,{.pci={ .devfn = PCI_DEVFN(0x1d,7)}}},
	.enabled = 1,
	.hidden = 0,
	.mandatory = 0,
	.on_mainboard = 1,
	.link_list = NULL,
	.sibling = &_dev_44,
#if !DEVTREE_EARLY
	.chip_ops = &soc_intel_cannonlake_ops,
#endif
	.chip_info = &soc_intel_cannonlake_info_1,
	.next=&_dev_44,
#if !DEVTREE_EARLY
#if CONFIG(GENERATE_SMBIOS_TABLES)
#endif
#endif
};
STORAGE struct device _dev_44 = {
#if !DEVTREE_EARLY
	.ops = NULL,
#endif
	.bus = &_dev_1_links[0],
	.path = {.type=DEVICE_PATH_PCI,{.pci={ .devfn = PCI_DEVFN(0x1e,0)}}},
	.enabled = 0,
	.hidden = 0,
	.mandatory = 0,
	.on_mainboard = 1,
	.link_list = NULL,
	.sibling = &_dev_45,
#if !DEVTREE_EARLY
	.chip_ops = &soc_intel_cannonlake_ops,
#endif
	.chip_info = &soc_intel_cannonlake_info_1,
	.next=&_dev_45,
#if !DEVTREE_EARLY
#if CONFIG(GENERATE_SMBIOS_TABLES)
#endif
#endif
};
STORAGE struct device _dev_45 = {
#if !DEVTREE_EARLY
	.ops = NULL,
#endif
	.bus = &_dev_1_links[0],
	.path = {.type=DEVICE_PATH_PCI,{.pci={ .devfn = PCI_DEVFN(0x1e,1)}}},
	.enabled = 0,
	.hidden = 0,
	.mandatory = 0,
	.on_mainboard = 1,
	.link_list = NULL,
	.sibling = &_dev_46,
#if !DEVTREE_EARLY
	.chip_ops = &soc_intel_cannonlake_ops,
#endif
	.chip_info = &soc_intel_cannonlake_info_1,
	.next=&_dev_46,
#if !DEVTREE_EARLY
#if CONFIG(GENERATE_SMBIOS_TABLES)
#endif
#endif
};
STORAGE struct device _dev_46 = {
#if !DEVTREE_EARLY
	.ops = NULL,
#endif
	.bus = &_dev_1_links[0],
	.path = {.type=DEVICE_PATH_PCI,{.pci={ .devfn = PCI_DEVFN(0x1e,2)}}},
	.enabled = 0,
	.hidden = 0,
	.mandatory = 0,
	.on_mainboard = 1,
	.link_list = NULL,
	.sibling = &_dev_47,
#if !DEVTREE_EARLY
	.chip_ops = &soc_intel_cannonlake_ops,
#endif
	.chip_info = &soc_intel_cannonlake_info_1,
	.next=&_dev_47,
#if !DEVTREE_EARLY
#if CONFIG(GENERATE_SMBIOS_TABLES)
#endif
#endif
};
STORAGE struct device _dev_47 = {
#if !DEVTREE_EARLY
	.ops = NULL,
#endif
	.bus = &_dev_1_links[0],
	.path = {.type=DEVICE_PATH_PCI,{.pci={ .devfn = PCI_DEVFN(0x1e,3)}}},
	.enabled = 0,
	.hidden = 0,
	.mandatory = 0,
	.on_mainboard = 1,
	.link_list = NULL,
	.sibling = &_dev_48,
#if !DEVTREE_EARLY
	.chip_ops = &soc_intel_cannonlake_ops,
#endif
	.chip_info = &soc_intel_cannonlake_info_1,
	.next=&_dev_48,
#if !DEVTREE_EARLY
#if CONFIG(GENERATE_SMBIOS_TABLES)
#endif
#endif
};
STORAGE struct device _dev_48 = {
#if !DEVTREE_EARLY
	.ops = NULL,
#endif
	.bus = &_dev_1_links[0],
	.path = {.type=DEVICE_PATH_PCI,{.pci={ .devfn = PCI_DEVFN(0x1f,0)}}},
	.enabled = 1,
	.hidden = 0,
	.mandatory = 0,
	.on_mainboard = 1,
	.link_list = &_dev_48_links[0],
	.sibling = &_dev_49,
#if !DEVTREE_EARLY
	.chip_ops = &soc_intel_cannonlake_ops,
#endif
	.chip_info = &soc_intel_cannonlake_info_1,
	.next=&_dev_49,
#if !DEVTREE_EARLY
#if CONFIG(GENERATE_SMBIOS_TABLES)
#endif
#endif
};
STORAGE struct bus _dev_48_links[] = {
		[0] = {
			.link_num = 0,
			.dev = &_dev_48,
			.children = &_dev_55,
			.next = NULL,
		},
	};
STORAGE struct device _dev_49 = {
#if !DEVTREE_EARLY
	.ops = NULL,
#endif
	.bus = &_dev_1_links[0],
	.path = {.type=DEVICE_PATH_PCI,{.pci={ .devfn = PCI_DEVFN(0x1f,1)}}},
	.enabled = 1,
	.hidden = 1,
	.mandatory = 0,
	.on_mainboard = 1,
	.link_list = NULL,
	.sibling = &_dev_50,
#if !DEVTREE_EARLY
	.chip_ops = &soc_intel_cannonlake_ops,
#endif
	.chip_info = &soc_intel_cannonlake_info_1,
	.next=&_dev_50,
#if !DEVTREE_EARLY
#if CONFIG(GENERATE_SMBIOS_TABLES)
#endif
#endif
};
STORAGE struct device _dev_50 = {
#if !DEVTREE_EARLY
	.ops = NULL,
#endif
	.bus = &_dev_1_links[0],
	.path = {.type=DEVICE_PATH_PCI,{.pci={ .devfn = PCI_DEVFN(0x1f,2)}}},
	.enabled = 1,
	.hidden = 1,
	.mandatory = 0,
	.on_mainboard = 1,
	.link_list = NULL,
	.sibling = &_dev_51,
#if !DEVTREE_EARLY
	.chip_ops = &soc_intel_cannonlake_ops,
#endif
	.chip_info = &soc_intel_cannonlake_info_1,
	.next=&_dev_51,
#if !DEVTREE_EARLY
#if CONFIG(GENERATE_SMBIOS_TABLES)
#endif
#endif
};
STORAGE struct device _dev_51 = {
#if !DEVTREE_EARLY
	.ops = NULL,
#endif
	.bus = &_dev_1_links[0],
	.path = {.type=DEVICE_PATH_PCI,{.pci={ .devfn = PCI_DEVFN(0x1f,3)}}},
	.enabled = 1,
	.hidden = 0,
	.mandatory = 0,
	.on_mainboard = 1,
	.link_list = NULL,
	.sibling = &_dev_52,
#if !DEVTREE_EARLY
	.chip_ops = &soc_intel_cannonlake_ops,
#endif
	.chip_info = &soc_intel_cannonlake_info_1,
	.next=&_dev_52,
#if !DEVTREE_EARLY
#if CONFIG(GENERATE_SMBIOS_TABLES)
#endif
#endif
};
STORAGE struct device _dev_52 = {
#if !DEVTREE_EARLY
	.ops = NULL,
#endif
	.bus = &_dev_1_links[0],
	.path = {.type=DEVICE_PATH_PCI,{.pci={ .devfn = PCI_DEVFN(0x1f,4)}}},
	.enabled = 1,
	.hidden = 0,
	.mandatory = 0,
	.on_mainboard = 1,
	.link_list = NULL,
	.sibling = &_dev_53,
#if !DEVTREE_EARLY
	.chip_ops = &soc_intel_cannonlake_ops,
#endif
	.chip_info = &soc_intel_cannonlake_info_1,
	.next=&_dev_53,
#if !DEVTREE_EARLY
#if CONFIG(GENERATE_SMBIOS_TABLES)
#endif
#endif
};
STORAGE struct device _dev_53 = {
#if !DEVTREE_EARLY
	.ops = NULL,
#endif
	.bus = &_dev_1_links[0],
	.path = {.type=DEVICE_PATH_PCI,{.pci={ .devfn = PCI_DEVFN(0x1f,5)}}},
	.enabled = 1,
	.hidden = 0,
	.mandatory = 0,
	.on_mainboard = 1,
	.link_list = NULL,
	.sibling = &_dev_54,
#if !DEVTREE_EARLY
	.chip_ops = &soc_intel_cannonlake_ops,
#endif
	.chip_info = &soc_intel_cannonlake_info_1,
	.next=&_dev_54,
#if !DEVTREE_EARLY
#if CONFIG(GENERATE_SMBIOS_TABLES)
#endif
#endif
};
STORAGE struct device _dev_54 = {
#if !DEVTREE_EARLY
	.ops = NULL,
#endif
	.bus = &_dev_1_links[0],
	.path = {.type=DEVICE_PATH_PCI,{.pci={ .devfn = PCI_DEVFN(0x1f,6)}}},
	.enabled = 0,
	.hidden = 0,
	.mandatory = 0,
	.on_mainboard = 1,
	.link_list = NULL,
	.sibling = NULL,
#if !DEVTREE_EARLY
	.chip_ops = &soc_intel_cannonlake_ops,
#endif
	.chip_info = &soc_intel_cannonlake_info_1,
	.next=&_dev_55,
#if !DEVTREE_EARLY
#if CONFIG(GENERATE_SMBIOS_TABLES)
#endif
#endif
};
STORAGE struct device _dev_55 = {
#if !DEVTREE_EARLY
	.ops = NULL,
#endif
	.bus = &_dev_48_links[0],
	.path = {.type=DEVICE_PATH_PNP,{.pnp={ .port = 0x2e, .device = 0x1 }}},
	.enabled = 1,
	.hidden = 0,
	.mandatory = 0,
	.on_mainboard = 1,
	.resource_list = &_dev_55_res[0],
	.link_list = NULL,
	.sibling = &_dev_56,
#if !DEVTREE_EARLY
	.chip_ops = &superio_ite_it8786e_ops,
#endif
	.chip_info = &superio_ite_it8786e_info_1,
	.next=&_dev_56,
#if !DEVTREE_EARLY
#if CONFIG(GENERATE_SMBIOS_TABLES)
#endif
#endif
};
STORAGE struct resource _dev_55_res[] = {
		{ .flags=IORESOURCE_FIXED | IORESOURCE_ASSIGNED | IORESOURCE_IO, .index=0x60, .base=0x3f8,.next=&_dev_55_res[1]},
		{ .flags=IORESOURCE_FIXED | IORESOURCE_ASSIGNED | IORESOURCE_IRQ, .index=0x70, .base=0x4,.next=NULL },
	 };
STORAGE struct device _dev_56 = {
#if !DEVTREE_EARLY
	.ops = NULL,
#endif
	.bus = &_dev_48_links[0],
	.path = {.type=DEVICE_PATH_PNP,{.pnp={ .port = 0x2e, .device = 0x2 }}},
	.enabled = 1,
	.hidden = 0,
	.mandatory = 0,
	.on_mainboard = 1,
	.resource_list = &_dev_56_res[0],
	.link_list = NULL,
	.sibling = &_dev_57,
#if !DEVTREE_EARLY
	.chip_ops = &superio_ite_it8786e_ops,
#endif
	.chip_info = &superio_ite_it8786e_info_1,
	.next=&_dev_57,
#if !DEVTREE_EARLY
#if CONFIG(GENERATE_SMBIOS_TABLES)
#endif
#endif
};
STORAGE struct resource _dev_56_res[] = {
		{ .flags=IORESOURCE_FIXED | IORESOURCE_ASSIGNED | IORESOURCE_IO, .index=0x60, .base=0x2f8,.next=&_dev_56_res[1]},
		{ .flags=IORESOURCE_FIXED | IORESOURCE_ASSIGNED | IORESOURCE_IRQ, .index=0x70, .base=0x3,.next=NULL },
	 };
STORAGE struct device _dev_57 = {
#if !DEVTREE_EARLY
	.ops = NULL,
#endif
	.bus = &_dev_48_links[0],
	.path = {.type=DEVICE_PATH_PNP,{.pnp={ .port = 0x2e, .device = 0x3 }}},
	.enabled = 0,
	.hidden = 0,
	.mandatory = 0,
	.on_mainboard = 1,
	.link_list = NULL,
	.sibling = &_dev_58,
#if !DEVTREE_EARLY
	.chip_ops = &superio_ite_it8786e_ops,
#endif
	.chip_info = &superio_ite_it8786e_info_1,
	.next=&_dev_58,
#if !DEVTREE_EARLY
#if CONFIG(GENERATE_SMBIOS_TABLES)
#endif
#endif
};
STORAGE struct device _dev_58 = {
#if !DEVTREE_EARLY
	.ops = NULL,
#endif
	.bus = &_dev_48_links[0],
	.path = {.type=DEVICE_PATH_PNP,{.pnp={ .port = 0x2e, .device = 0x4 }}},
	.enabled = 1,
	.hidden = 0,
	.mandatory = 0,
	.on_mainboard = 1,
	.resource_list = &_dev_58_res[0],
	.link_list = NULL,
	.sibling = &_dev_59,
#if !DEVTREE_EARLY
	.chip_ops = &superio_ite_it8786e_ops,
#endif
	.chip_info = &superio_ite_it8786e_info_1,
	.next=&_dev_59,
#if !DEVTREE_EARLY
#if CONFIG(GENERATE_SMBIOS_TABLES)
#endif
#endif
};
STORAGE struct resource _dev_58_res[] = {
		{ .flags=IORESOURCE_FIXED | IORESOURCE_ASSIGNED | IORESOURCE_IO, .index=0x60, .base=0xa40,.next=&_dev_58_res[1]},
		{ .flags=IORESOURCE_FIXED | IORESOURCE_ASSIGNED | IORESOURCE_IO, .index=0x62, .base=0xa30,.next=&_dev_58_res[2]},
		{ .flags=IORESOURCE_FIXED | IORESOURCE_ASSIGNED | IORESOURCE_IRQ, .index=0x70, .base=0x9,.next=NULL },
	 };
STORAGE struct device _dev_59 = {
#if !DEVTREE_EARLY
	.ops = NULL,
#endif
	.bus = &_dev_48_links[0],
	.path = {.type=DEVICE_PATH_PNP,{.pnp={ .port = 0x2e, .device = 0x5 }}},
	.enabled = 0,
	.hidden = 0,
	.mandatory = 0,
	.on_mainboard = 1,
	.link_list = NULL,
	.sibling = &_dev_60,
#if !DEVTREE_EARLY
	.chip_ops = &superio_ite_it8786e_ops,
#endif
	.chip_info = &superio_ite_it8786e_info_1,
	.next=&_dev_60,
#if !DEVTREE_EARLY
#if CONFIG(GENERATE_SMBIOS_TABLES)
#endif
#endif
};
STORAGE struct device _dev_60 = {
#if !DEVTREE_EARLY
	.ops = NULL,
#endif
	.bus = &_dev_48_links[0],
	.path = {.type=DEVICE_PATH_PNP,{.pnp={ .port = 0x2e, .device = 0x6 }}},
	.enabled = 0,
	.hidden = 0,
	.mandatory = 0,
	.on_mainboard = 1,
	.link_list = NULL,
	.sibling = &_dev_61,
#if !DEVTREE_EARLY
	.chip_ops = &superio_ite_it8786e_ops,
#endif
	.chip_info = &superio_ite_it8786e_info_1,
	.next=&_dev_61,
#if !DEVTREE_EARLY
#if CONFIG(GENERATE_SMBIOS_TABLES)
#endif
#endif
};
STORAGE struct device _dev_61 = {
#if !DEVTREE_EARLY
	.ops = NULL,
#endif
	.bus = &_dev_48_links[0],
	.path = {.type=DEVICE_PATH_PNP,{.pnp={ .port = 0x2e, .device = 0x7 }}},
	.enabled = 0,
	.hidden = 0,
	.mandatory = 0,
	.on_mainboard = 1,
	.link_list = NULL,
	.sibling = &_dev_62,
#if !DEVTREE_EARLY
	.chip_ops = &superio_ite_it8786e_ops,
#endif
	.chip_info = &superio_ite_it8786e_info_1,
	.next=&_dev_62,
#if !DEVTREE_EARLY
#if CONFIG(GENERATE_SMBIOS_TABLES)
#endif
#endif
};
STORAGE struct device _dev_62 = {
#if !DEVTREE_EARLY
	.ops = NULL,
#endif
	.bus = &_dev_48_links[0],
	.path = {.type=DEVICE_PATH_PNP,{.pnp={ .port = 0x2e, .device = 0x8 }}},
	.enabled = 0,
	.hidden = 0,
	.mandatory = 0,
	.on_mainboard = 1,
	.link_list = NULL,
	.sibling = &_dev_63,
#if !DEVTREE_EARLY
	.chip_ops = &superio_ite_it8786e_ops,
#endif
	.chip_info = &superio_ite_it8786e_info_1,
	.next=&_dev_63,
#if !DEVTREE_EARLY
#if CONFIG(GENERATE_SMBIOS_TABLES)
#endif
#endif
};
STORAGE struct device _dev_63 = {
#if !DEVTREE_EARLY
	.ops = NULL,
#endif
	.bus = &_dev_48_links[0],
	.path = {.type=DEVICE_PATH_PNP,{.pnp={ .port = 0x2e, .device = 0x9 }}},
	.enabled = 0,
	.hidden = 0,
	.mandatory = 0,
	.on_mainboard = 1,
	.link_list = NULL,
	.sibling = &_dev_64,
#if !DEVTREE_EARLY
	.chip_ops = &superio_ite_it8786e_ops,
#endif
	.chip_info = &superio_ite_it8786e_info_1,
	.next=&_dev_64,
#if !DEVTREE_EARLY
#if CONFIG(GENERATE_SMBIOS_TABLES)
#endif
#endif
};
STORAGE struct device _dev_64 = {
#if !DEVTREE_EARLY
	.ops = NULL,
#endif
	.bus = &_dev_48_links[0],
	.path = {.type=DEVICE_PATH_PNP,{.pnp={ .port = 0x2e, .device = 0xa }}},
	.enabled = 0,
	.hidden = 0,
	.mandatory = 0,
	.on_mainboard = 1,
	.link_list = NULL,
	.sibling = &_dev_65,
#if !DEVTREE_EARLY
	.chip_ops = &superio_ite_it8786e_ops,
#endif
	.chip_info = &superio_ite_it8786e_info_1,
	.next=&_dev_65,
#if !DEVTREE_EARLY
#if CONFIG(GENERATE_SMBIOS_TABLES)
#endif
#endif
};
STORAGE struct device _dev_65 = {
#if !DEVTREE_EARLY
	.ops = NULL,
#endif
	.bus = &_dev_48_links[0],
	.path = {.type=DEVICE_PATH_PNP,{.pnp={ .port = 0x2e, .device = 0xb }}},
	.enabled = 0,
	.hidden = 0,
	.mandatory = 0,
	.on_mainboard = 1,
	.link_list = NULL,
	.sibling = &_dev_66,
#if !DEVTREE_EARLY
	.chip_ops = &superio_ite_it8786e_ops,
#endif
	.chip_info = &superio_ite_it8786e_info_1,
	.next=&_dev_66,
#if !DEVTREE_EARLY
#if CONFIG(GENERATE_SMBIOS_TABLES)
#endif
#endif
};
STORAGE struct device _dev_66 = {
#if !DEVTREE_EARLY
	.ops = NULL,
#endif
	.bus = &_dev_48_links[0],
	.path = {.type=DEVICE_PATH_PNP,{.pnp={ .port = 0x2e, .device = 0xc }}},
	.enabled = 0,
	.hidden = 0,
	.mandatory = 0,
	.on_mainboard = 1,
	.link_list = NULL,
	.sibling = &_dev_67,
#if !DEVTREE_EARLY
	.chip_ops = &superio_ite_it8786e_ops,
#endif
	.chip_info = &superio_ite_it8786e_info_1,
	.next=&_dev_67,
#if !DEVTREE_EARLY
#if CONFIG(GENERATE_SMBIOS_TABLES)
#endif
#endif
};
STORAGE struct device _dev_67 = {
#if !DEVTREE_EARLY
	.ops = NULL,
#endif
	.bus = &_dev_48_links[0],
	.path = {.type=DEVICE_PATH_PNP,{.pnp={ .port = 0xc31, .device = 0x0 }}},
	.enabled = 1,
	.hidden = 0,
	.mandatory = 0,
	.on_mainboard = 1,
	.link_list = NULL,
	.sibling = NULL,
#if !DEVTREE_EARLY
	.chip_ops = &drivers_pc80_tpm_ops,
#endif
	.chip_info = &drivers_pc80_tpm_info_1,
#if !DEVTREE_EARLY
#if CONFIG(GENERATE_SMBIOS_TABLES)
#endif
#endif
};
DEVTREE_CONST struct device *const __pci_0_00_0 = &_dev_3;
DEVTREE_CONST void *const __pci_0_00_0_config = &soc_intel_cannonlake_info_1;
DEVTREE_CONST struct device *const __pci_0_02_0 = &_dev_4;
DEVTREE_CONST void *const __pci_0_02_0_config = &soc_intel_cannonlake_info_1;
DEVTREE_CONST struct device *const __pci_0_04_0 = &_dev_5;
DEVTREE_CONST void *const __pci_0_04_0_config = &soc_intel_cannonlake_info_1;
DEVTREE_CONST struct device *const __pci_0_08_0 = &_dev_6;
DEVTREE_CONST void *const __pci_0_08_0_config = &soc_intel_cannonlake_info_1;
DEVTREE_CONST struct device *const __pci_0_12_0 = &_dev_7;
DEVTREE_CONST void *const __pci_0_12_0_config = &soc_intel_cannonlake_info_1;
DEVTREE_CONST struct device *const __pci_0_12_5 = &_dev_8;
DEVTREE_CONST void *const __pci_0_12_5_config = &soc_intel_cannonlake_info_1;
DEVTREE_CONST struct device *const __pci_0_12_6 = &_dev_9;
DEVTREE_CONST void *const __pci_0_12_6_config = &soc_intel_cannonlake_info_1;
DEVTREE_CONST struct device *const __pci_0_14_0 = &_dev_10;
DEVTREE_CONST void *const __pci_0_14_0_config = &soc_intel_cannonlake_info_1;
DEVTREE_CONST struct device *const __pci_0_14_1 = &_dev_11;
DEVTREE_CONST void *const __pci_0_14_1_config = &soc_intel_cannonlake_info_1;
DEVTREE_CONST struct device *const __pci_0_14_5 = &_dev_12;
DEVTREE_CONST void *const __pci_0_14_5_config = &soc_intel_cannonlake_info_1;
DEVTREE_CONST struct device *const __pci_0_15_0 = &_dev_13;
DEVTREE_CONST void *const __pci_0_15_0_config = &soc_intel_cannonlake_info_1;
DEVTREE_CONST struct device *const __pci_0_15_1 = &_dev_14;
DEVTREE_CONST void *const __pci_0_15_1_config = &soc_intel_cannonlake_info_1;
DEVTREE_CONST struct device *const __pci_0_15_2 = &_dev_15;
DEVTREE_CONST void *const __pci_0_15_2_config = &soc_intel_cannonlake_info_1;
DEVTREE_CONST struct device *const __pci_0_15_3 = &_dev_16;
DEVTREE_CONST void *const __pci_0_15_3_config = &soc_intel_cannonlake_info_1;
DEVTREE_CONST struct device *const __pci_0_16_0 = &_dev_17;
DEVTREE_CONST void *const __pci_0_16_0_config = &soc_intel_cannonlake_info_1;
DEVTREE_CONST struct device *const __pci_0_16_1 = &_dev_18;
DEVTREE_CONST void *const __pci_0_16_1_config = &soc_intel_cannonlake_info_1;
DEVTREE_CONST struct device *const __pci_0_16_2 = &_dev_19;
DEVTREE_CONST void *const __pci_0_16_2_config = &soc_intel_cannonlake_info_1;
DEVTREE_CONST struct device *const __pci_0_16_3 = &_dev_20;
DEVTREE_CONST void *const __pci_0_16_3_config = &soc_intel_cannonlake_info_1;
DEVTREE_CONST struct device *const __pci_0_16_4 = &_dev_21;
DEVTREE_CONST void *const __pci_0_16_4_config = &soc_intel_cannonlake_info_1;
DEVTREE_CONST struct device *const __pci_0_16_5 = &_dev_22;
DEVTREE_CONST void *const __pci_0_16_5_config = &soc_intel_cannonlake_info_1;
DEVTREE_CONST struct device *const __pci_0_17_0 = &_dev_23;
DEVTREE_CONST void *const __pci_0_17_0_config = &soc_intel_cannonlake_info_1;
DEVTREE_CONST struct device *const __pci_0_19_0 = &_dev_24;
DEVTREE_CONST void *const __pci_0_19_0_config = &soc_intel_cannonlake_info_1;
DEVTREE_CONST struct device *const __pci_0_19_1 = &_dev_25;
DEVTREE_CONST void *const __pci_0_19_1_config = &soc_intel_cannonlake_info_1;
DEVTREE_CONST struct device *const __pci_0_19_2 = &_dev_26;
DEVTREE_CONST void *const __pci_0_19_2_config = &soc_intel_cannonlake_info_1;
DEVTREE_CONST struct device *const __pci_0_1a_0 = &_dev_27;
DEVTREE_CONST void *const __pci_0_1a_0_config = &soc_intel_cannonlake_info_1;
DEVTREE_CONST struct device *const __pci_0_1c_0 = &_dev_28;
DEVTREE_CONST void *const __pci_0_1c_0_config = &soc_intel_cannonlake_info_1;
DEVTREE_CONST struct device *const __pci_0_1c_1 = &_dev_29;
DEVTREE_CONST void *const __pci_0_1c_1_config = &soc_intel_cannonlake_info_1;
DEVTREE_CONST struct device *const __pci_0_1c_2 = &_dev_30;
DEVTREE_CONST void *const __pci_0_1c_2_config = &soc_intel_cannonlake_info_1;
DEVTREE_CONST struct device *const __pci_0_1c_3 = &_dev_31;
DEVTREE_CONST void *const __pci_0_1c_3_config = &soc_intel_cannonlake_info_1;
DEVTREE_CONST struct device *const __pci_0_1c_4 = &_dev_32;
DEVTREE_CONST void *const __pci_0_1c_4_config = &soc_intel_cannonlake_info_1;
DEVTREE_CONST struct device *const __pci_0_1c_5 = &_dev_33;
DEVTREE_CONST void *const __pci_0_1c_5_config = &soc_intel_cannonlake_info_1;
DEVTREE_CONST struct device *const __pci_0_1c_6 = &_dev_34;
DEVTREE_CONST void *const __pci_0_1c_6_config = &soc_intel_cannonlake_info_1;
DEVTREE_CONST struct device *const __pci_0_1c_7 = &_dev_35;
DEVTREE_CONST void *const __pci_0_1c_7_config = &soc_intel_cannonlake_info_1;
DEVTREE_CONST struct device *const __pci_0_1d_0 = &_dev_36;
DEVTREE_CONST void *const __pci_0_1d_0_config = &soc_intel_cannonlake_info_1;
DEVTREE_CONST struct device *const __pci_0_1d_1 = &_dev_37;
DEVTREE_CONST void *const __pci_0_1d_1_config = &soc_intel_cannonlake_info_1;
DEVTREE_CONST struct device *const __pci_0_1d_2 = &_dev_38;
DEVTREE_CONST void *const __pci_0_1d_2_config = &soc_intel_cannonlake_info_1;
DEVTREE_CONST struct device *const __pci_0_1d_3 = &_dev_39;
DEVTREE_CONST void *const __pci_0_1d_3_config = &soc_intel_cannonlake_info_1;
DEVTREE_CONST struct device *const __pci_0_1d_4 = &_dev_40;
DEVTREE_CONST void *const __pci_0_1d_4_config = &soc_intel_cannonlake_info_1;
DEVTREE_CONST struct device *const __pci_0_1d_5 = &_dev_41;
DEVTREE_CONST void *const __pci_0_1d_5_config = &soc_intel_cannonlake_info_1;
DEVTREE_CONST struct device *const __pci_0_1d_6 = &_dev_42;
DEVTREE_CONST void *const __pci_0_1d_6_config = &soc_intel_cannonlake_info_1;
DEVTREE_CONST struct device *const __pci_0_1d_7 = &_dev_43;
DEVTREE_CONST void *const __pci_0_1d_7_config = &soc_intel_cannonlake_info_1;
DEVTREE_CONST struct device *const __pci_0_1e_0 = &_dev_44;
DEVTREE_CONST void *const __pci_0_1e_0_config = &soc_intel_cannonlake_info_1;
DEVTREE_CONST struct device *const __pci_0_1e_1 = &_dev_45;
DEVTREE_CONST void *const __pci_0_1e_1_config = &soc_intel_cannonlake_info_1;
DEVTREE_CONST struct device *const __pci_0_1e_2 = &_dev_46;
DEVTREE_CONST void *const __pci_0_1e_2_config = &soc_intel_cannonlake_info_1;
DEVTREE_CONST struct device *const __pci_0_1e_3 = &_dev_47;
DEVTREE_CONST void *const __pci_0_1e_3_config = &soc_intel_cannonlake_info_1;
DEVTREE_CONST struct device *const __pci_0_1f_0 = &_dev_48;
DEVTREE_CONST void *const __pci_0_1f_0_config = &soc_intel_cannonlake_info_1;
DEVTREE_CONST struct device *const __pci_0_1f_1 = &_dev_49;
DEVTREE_CONST void *const __pci_0_1f_1_config = &soc_intel_cannonlake_info_1;
DEVTREE_CONST struct device *const __pci_0_1f_2 = &_dev_50;
DEVTREE_CONST void *const __pci_0_1f_2_config = &soc_intel_cannonlake_info_1;
DEVTREE_CONST struct device *const __pci_0_1f_3 = &_dev_51;
DEVTREE_CONST void *const __pci_0_1f_3_config = &soc_intel_cannonlake_info_1;
DEVTREE_CONST struct device *const __pci_0_1f_4 = &_dev_52;
DEVTREE_CONST void *const __pci_0_1f_4_config = &soc_intel_cannonlake_info_1;
DEVTREE_CONST struct device *const __pci_0_1f_5 = &_dev_53;
DEVTREE_CONST void *const __pci_0_1f_5_config = &soc_intel_cannonlake_info_1;
DEVTREE_CONST struct device *const __pci_0_1f_6 = &_dev_54;
DEVTREE_CONST void *const __pci_0_1f_6_config = &soc_intel_cannonlake_info_1;
DEVTREE_CONST struct device *const __pnp_002e_01 = &_dev_55;
DEVTREE_CONST struct device *const __pnp_002e_02 = &_dev_56;
DEVTREE_CONST struct device *const __pnp_002e_03 = &_dev_57;
DEVTREE_CONST struct device *const __pnp_002e_04 = &_dev_58;
DEVTREE_CONST struct device *const __pnp_002e_05 = &_dev_59;
DEVTREE_CONST struct device *const __pnp_002e_06 = &_dev_60;
DEVTREE_CONST struct device *const __pnp_002e_07 = &_dev_61;
DEVTREE_CONST struct device *const __pnp_002e_08 = &_dev_62;
DEVTREE_CONST struct device *const __pnp_002e_09 = &_dev_63;
DEVTREE_CONST struct device *const __pnp_002e_0a = &_dev_64;
DEVTREE_CONST struct device *const __pnp_002e_0b = &_dev_65;
DEVTREE_CONST struct device *const __pnp_002e_0c = &_dev_66;
DEVTREE_CONST struct device *const __pnp_0c31_00 = &_dev_67;
