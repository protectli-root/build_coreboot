#include <device/device.h>
#include <device/pci.h>
#include <fw_config.h>
#include <static.h>
#include "southbridge/intel/i82371eb/chip.h"

#if !DEVTREE_EARLY
__attribute__((weak)) struct chip_operations mainboard_ops = {};
__attribute__((weak)) struct chip_operations cpu_qemu_x86_ops = {};
extern struct chip_operations mainboard_emulation_qemu_i440fx_ops;
extern struct chip_operations southbridge_intel_i82371eb_ops;
#endif

#define STORAGE static __unused DEVTREE_CONST


/* pass 0 */
STORAGE struct bus dev_root_links[];
STORAGE struct device _dev0;
STORAGE struct bus _dev0_links[];
STORAGE struct device _dev1;
STORAGE struct bus _dev1_links[];
STORAGE struct device _dev2;
STORAGE struct device _dev3;
STORAGE struct device _dev4;
STORAGE struct device _dev5;
STORAGE struct device _dev6;
DEVTREE_CONST struct device * DEVTREE_CONST last_dev = &_dev6;

/* chip configs */
STORAGE struct southbridge_intel_i82371eb_config southbridge_intel_i82371eb_info_1 = {
	.gpo = 0x7fffbbff,
	.ide0_enable = 1,
	.ide1_enable = 1,
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
	.next=&_dev0,
};
STORAGE struct bus dev_root_links[] = {
		[0] = {
			.link_num = 0,
			.dev = &dev_root,
			.children = &_dev0,
			.next = NULL,
		},
	};
STORAGE struct device _dev0 = {
#if !DEVTREE_EARLY
	.ops = NULL,
#endif
	.bus = &dev_root_links[0],
	.path = {.type=DEVICE_PATH_CPU_CLUSTER,{.cpu_cluster={ .cluster = 0x0 }}},
	.enabled = 1,
	.hidden = 0,
	.mandatory = 0,
	.on_mainboard = 1,
	.link_list = &_dev0_links[0],
	.sibling = &_dev1,
#if !DEVTREE_EARLY
	.chip_ops = &mainboard_emulation_qemu_i440fx_ops,
#endif
	.next=&_dev1,
};
STORAGE struct bus _dev0_links[] = {
		[0] = {
			.link_num = 0,
			.dev = &_dev0,
			.children = &_dev2,
			.next = NULL,
		},
	};
STORAGE struct device _dev1 = {
#if !DEVTREE_EARLY
	.ops = NULL,
#endif
	.bus = &dev_root_links[0],
	.path = {.type=DEVICE_PATH_DOMAIN,{.domain={ .domain = 0x0 }}},
	.enabled = 1,
	.hidden = 0,
	.mandatory = 0,
	.on_mainboard = 1,
	.link_list = &_dev1_links[0],
	.sibling = NULL,
#if !DEVTREE_EARLY
	.chip_ops = &mainboard_emulation_qemu_i440fx_ops,
#endif
	.next=&_dev2,
};
STORAGE struct bus _dev1_links[] = {
		[0] = {
			.link_num = 0,
			.dev = &_dev1,
			.children = &_dev3,
			.next = NULL,
		},
	};
STORAGE struct device _dev2 = {
#if !DEVTREE_EARLY
	.ops = NULL,
#endif
	.bus = &_dev0_links[0],
	.path = {.type=DEVICE_PATH_APIC,{.apic={ .apic_id = 0x0 }}},
	.enabled = 1,
	.hidden = 0,
	.mandatory = 0,
	.on_mainboard = 1,
	.link_list = NULL,
	.sibling = NULL,
#if !DEVTREE_EARLY
	.chip_ops = &cpu_qemu_x86_ops,
#endif
	.next=&_dev3,
};
STORAGE struct device _dev3 = {
#if !DEVTREE_EARLY
	.ops = NULL,
#endif
	.bus = &_dev1_links[0],
	.path = {.type=DEVICE_PATH_PCI,{.pci={ .devfn = PCI_DEVFN(0x0,0)}}},
	.enabled = 1,
	.hidden = 0,
	.mandatory = 0,
	.on_mainboard = 1,
	.link_list = NULL,
	.sibling = &_dev4,
#if !DEVTREE_EARLY
	.chip_ops = &mainboard_emulation_qemu_i440fx_ops,
#endif
	.next=&_dev4,
};
STORAGE struct device _dev4 = {
#if !DEVTREE_EARLY
	.ops = NULL,
#endif
	.bus = &_dev1_links[0],
	.path = {.type=DEVICE_PATH_PCI,{.pci={ .devfn = PCI_DEVFN(0x1,0)}}},
	.enabled = 1,
	.hidden = 0,
	.mandatory = 0,
	.on_mainboard = 1,
	.link_list = NULL,
	.sibling = &_dev5,
#if !DEVTREE_EARLY
	.chip_ops = &southbridge_intel_i82371eb_ops,
#endif
	.chip_info = &southbridge_intel_i82371eb_info_1,
	.next=&_dev5,
};
STORAGE struct device _dev5 = {
#if !DEVTREE_EARLY
	.ops = NULL,
#endif
	.bus = &_dev1_links[0],
	.path = {.type=DEVICE_PATH_PCI,{.pci={ .devfn = PCI_DEVFN(0x1,1)}}},
	.enabled = 1,
	.hidden = 0,
	.mandatory = 0,
	.on_mainboard = 1,
	.link_list = NULL,
	.sibling = &_dev6,
#if !DEVTREE_EARLY
	.chip_ops = &southbridge_intel_i82371eb_ops,
#endif
	.chip_info = &southbridge_intel_i82371eb_info_1,
	.next=&_dev6,
};
STORAGE struct device _dev6 = {
#if !DEVTREE_EARLY
	.ops = NULL,
#endif
	.bus = &_dev1_links[0],
	.path = {.type=DEVICE_PATH_PCI,{.pci={ .devfn = PCI_DEVFN(0x1,3)}}},
	.enabled = 1,
	.hidden = 0,
	.mandatory = 0,
	.on_mainboard = 1,
	.link_list = NULL,
	.sibling = NULL,
#if !DEVTREE_EARLY
	.chip_ops = &southbridge_intel_i82371eb_ops,
#endif
	.chip_info = &southbridge_intel_i82371eb_info_1,
};
DEVTREE_CONST struct device *const __pci_0_00_0 = &_dev3;
DEVTREE_CONST struct device *const __pci_0_01_0 = &_dev4;
DEVTREE_CONST void *const __pci_0_01_0_config = &southbridge_intel_i82371eb_info_1;
DEVTREE_CONST struct device *const __pci_0_01_1 = &_dev5;
DEVTREE_CONST void *const __pci_0_01_1_config = &southbridge_intel_i82371eb_info_1;
DEVTREE_CONST struct device *const __pci_0_01_3 = &_dev6;
DEVTREE_CONST void *const __pci_0_01_3_config = &southbridge_intel_i82371eb_info_1;
