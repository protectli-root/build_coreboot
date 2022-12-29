. = 0xfef00000;
.car.data . (NOLOAD) : {
 _car_region_start = . ;
 . += 0;
 _ = ASSERT(. <= ., "vboot2_work overlaps the previous region!"); . = .; _vboot2_work = ABSOLUTE(.); _ = ASSERT(. == ALIGN(16), "vboot2_work must be aligned to 16!"); _ = ASSERT(. <= . + 12K, "evboot2_work overlaps the previous region!"); . = . + 12K; _evboot2_work = ABSOLUTE(.); _vboot2_work_size = ABSOLUTE(_evboot2_work - _vboot2_work); _ = ASSERT(12K == (12 * 1024), "vboot2 work buffer size must be equivalent to (12 * 1024)! (12K)");
 _ = ASSERT(. <= ., "tpm_tcpa_log overlaps the previous region!"); . = .; _tpm_tcpa_log = ABSOLUTE(.); _ = ASSERT(. == ALIGN(16), "tpm_tcpa_log must be aligned to 16!"); _ = ASSERT(. <= . + 2K, "etpm_tcpa_log overlaps the previous region!"); . = . + 2K; _etpm_tcpa_log = ABSOLUTE(.); _tpm_tcpa_log_size = ABSOLUTE(_etpm_tcpa_log - _tpm_tcpa_log); _ = ASSERT(2K >= 2K, "tpm tcpa log buffer must be at least 2K!");
 _ = ASSERT(. <= ., "car_stack overlaps the previous region!"); . = .; _car_stack = ABSOLUTE(.); _ = ASSERT(. == ALIGN(4), "car_stack must be aligned to 4!"); _ = ASSERT(. <= . + 0x20400, "ecar_stack overlaps the previous region!"); . = . + 0x20400; _ecar_stack = ABSOLUTE(.); _car_stack_size = ABSOLUTE(_ecar_stack - _car_stack);
 _ = ASSERT(. <= ., "preram_cbmem_console overlaps the previous region!"); . = .; _preram_cbmem_console = ABSOLUTE(.); _ = ASSERT(. == ALIGN(4), "preram_cbmem_console must be aligned to 4!"); _ = ASSERT(. <= . + 0x1000, "epreram_cbmem_console overlaps the previous region!"); . = . + 0x1000; _epreram_cbmem_console = ABSOLUTE(.); _preram_cbmem_console_size = ABSOLUTE(_epreram_cbmem_console - _preram_cbmem_console);
 _ = ASSERT(. <= ., "timestamp overlaps the previous region!"); . = .; _timestamp = ABSOLUTE(.); _ = ASSERT(. == ALIGN(8), "timestamp must be aligned to 8!"); _ = ASSERT(. <= . + 0x200, "etimestamp overlaps the previous region!"); . = . + 0x200; _etimestamp = ABSOLUTE(.); _timestamp_size = ABSOLUTE(_etimestamp - _timestamp); _ = ASSERT(0x200 >= 212, "Timestamp region must fit timestamp_cache!");
 _ = ASSERT(. <= ., "cbfs_mcache overlaps the previous region!"); . = .; _cbfs_mcache = ABSOLUTE(.); _ = ASSERT(. == ALIGN(4), "cbfs_mcache must be aligned to 4!"); _ = ASSERT(. <= . + 0x4000, "ecbfs_mcache overlaps the previous region!"); . = . + 0x4000; _ecbfs_mcache = ABSOLUTE(.); _cbfs_mcache_size = ABSOLUTE(_ecbfs_mcache - _cbfs_mcache);
 _ = ASSERT(. <= ., "fmap_cache overlaps the previous region!"); . = .; _fmap_cache = ABSOLUTE(.); _ = ASSERT(. == ALIGN(4), "fmap_cache must be aligned to 4!"); _ = ASSERT(. <= . + 0x452, "efmap_cache overlaps the previous region!"); . = . + 0x452; _efmap_cache = ABSOLUTE(.); _fmap_cache_size = ABSOLUTE(_efmap_cache - _fmap_cache); _ = ASSERT(0x452 >= 0x452, "FMAP does not fit in FMAP_CACHE! (0x452 < 0x452)");
 _ = ASSERT(. <= ., "car_ehci_dbg_info overlaps the previous region!"); . = .; _car_ehci_dbg_info = ABSOLUTE(.); _ = ASSERT(. == ALIGN(1), "car_ehci_dbg_info must be aligned to 1!"); _ = ASSERT(. <= . + 80, "ecar_ehci_dbg_info overlaps the previous region!"); . = . + 80; _ecar_ehci_dbg_info = ABSOLUTE(.); _car_ehci_dbg_info_size = ABSOLUTE(_ecar_ehci_dbg_info - _car_ehci_dbg_info);
 . = ALIGN(8);
 _bss = .;
 *(.bss)
 *(.bss.*)
 *(.sbss)
 *(.sbss.*)
 . = ALIGN(8);
 _ebss = .;
 _bss_size = ABSOLUTE(_ebss - _bss);
 _car_unallocated_start = .;
 _car_region_end = . + 0x40000 - (. - _car_region_start)
     - 0x0;
}
. = _car_region_start;
.car.fspm_rc_heap . (NOLOAD) : {
. += 0;
}
. = _car_region_end;
.car.mrc_var . (NOLOAD) : {
 . += 0;
}
.car.fspt_reserved . (NOLOAD) : {
 . += 0x0;
}
_car_mtrr_end = .;
_car_mtrr_start = _car_region_start;
_car_mtrr_size = _car_mtrr_end - _car_mtrr_start;
_car_mtrr_sz_log2 = 1 << LOG2CEIL(_car_mtrr_size);
_car_mtrr_mask = ~(MAX(4096, _car_mtrr_sz_log2) - 1);
_xip_program_sz_log2 = 1 << LOG2CEIL(_ebootblock - _bootblock);
_xip_mtrr_mask = ~(MAX(4096, _xip_program_sz_log2) - 1);
_rom_mtrr_mask = ~((16 << 20) - 1);
_rom_mtrr_base = _rom_mtrr_mask;
. = 0xffffff00;
.illegal_globals . : {
 *(.data)
 *(.data.*)
}
_bogus = ASSERT((0x40000 == 0) || (SIZEOF(.car.data) <= 0x40000), "Cache as RAM area is too full");
_bogus3 = ASSERT(0x20400 > 0x0, "BSP stack size not configured");
