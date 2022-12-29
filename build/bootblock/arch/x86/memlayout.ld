PHDRS
{
 to_load PT_LOAD;
}
ENTRY(_start)
SECTIONS
{
 INCLUDE "bootblock/arch/x86/car.ld"
}
 INCLUDE "bootblock/arch/x86/bootblock.ld"
