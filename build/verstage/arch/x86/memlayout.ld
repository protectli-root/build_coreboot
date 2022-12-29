PHDRS
{
 to_load PT_LOAD;
}
ENTRY(_start)
SECTIONS
{
 _ = ASSERT(. <= 0x2000000, "verstage overlaps the previous region!"); . = 0x2000000; _verstage = ABSOLUTE(.); _everstage = ABSOLUTE(_verstage + 1M); _verstage_size = ABSOLUTE(_everstage - _verstage); _ = ASSERT(_eprogram - _program <= 1M, "Verstage exceeded its allotted size! (1M)"); INCLUDE "verstage/lib/program.ld"
 INCLUDE "verstage/arch/x86/car.ld"
}
