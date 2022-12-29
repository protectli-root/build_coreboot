gdtptr_offset = gdtptr & 0xffff;
nullidt_offset = nullidt & 0xffff;
SECTIONS {
 . = BOOTBLOCK_TOP - PROGRAM_SZ;
 . = ALIGN(64);
 _bootblock = .;
 INCLUDE "bootblock/lib/program.ld"
 PROGRAM_SZ = SIZEOF(.text) + 512;
 . = MIN(_ECFW_PTR, MIN(_ID_SECTION, _FIT_POINTER)) - EARLYASM_SZ;
 . = 0 ? ALIGN(4096) : ALIGN(16);
 BOOTBLOCK_TOP = .;
 .init (.) : {
  *(.init._start);
  *(.init);
  *(.init.*);
 }
 EARLYASM_SZ = SIZEOF(.init) + (0 ? 4096 : 16);
 . = _ID_SECTION;
 .id (.): {
  KEEP(*(.id));
 }
 _ID_SECTION_END = SIZEOF(.fit_pointer) && SIZEOF(.id) > 0x28 ? 0xffffff80 : _X86_RESET_VECTOR;
 _ID_SECTION = _ID_SECTION_END - SIZEOF(.id);
 . = _ECFW_PTR;
 .ecfw_ptr (.): {
  ASSERT((SIZEOF(.ecfw_ptr) == 0), "Size of ecfw_ptr is incorrect");
  KEEP(*(.ecfw_ptr));
 }
 _ECFW_PTR = SIZEOF(.ecfw_ptr) ? 0 : _X86_RESET_VECTOR;
 . = _FIT_POINTER;
 .fit_pointer (.): {
  KEEP(*(.fit_pointer));
 }
 _FIT_POINTER = SIZEOF(.fit_pointer) ? 0xffffffc0 : _X86_RESET_VECTOR;
 . = 0xfffffff0;
 _X86_RESET_VECTOR = .;
 .reset . : {
  *(.reset);
  . = _X86_RESET_VECTOR_FILLING;
  BYTE(0);
 }
 . = 0xfffffffc;
 .header_pointer . : {
  KEEP(*(.header_pointer));
 }
 _X86_RESET_VECTOR_FILLING = 15 - SIZEOF(.header_pointer);
 _ebootblock = .;
}
_bogus1 = ASSERT(_bootblock & 0x80000000, "_bootblock too low, invalid ld script");
_bogus2 = ASSERT(_start16bit & 0x80000000, "_start16bit too low, invalid ld script");
_bogus3 = ASSERT(_start16bit >= 0xffff0000, "_start16bit too low. Please report.");
_bogus4 = ASSERT(_ebootblock - _bootblock <= 0x40000,
   "_bootblock too low, increase C_ENV_BOOTBLOCK_SIZE");
