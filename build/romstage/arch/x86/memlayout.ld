PHDRS
{
 to_load PT_LOAD;
}
ENTRY(_start)
SECTIONS
{
 _ = ASSERT(. <= 0x2000000, "romstage overlaps the previous region!"); . = 0x2000000; _romstage = ABSOLUTE(.); _eromstage = ABSOLUTE(_romstage + 1M); _romstage_size = ABSOLUTE(_eromstage - _romstage); _ = ASSERT(_eprogram - _program <= 1M, "Romstage exceeded its allotted size! (1M)"); INCLUDE "romstage/lib/program.ld"
 INCLUDE "romstage/arch/x86/car.ld"
}
