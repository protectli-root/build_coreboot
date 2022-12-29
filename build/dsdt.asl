DefinitionBlock(
 "dsdt.aml",
 "DSDT",
 0x02,
 "COREv4",
 "COREBOOT",
 0x20110725
)
{
External (GNVS, OpRegionObj)
External (DNVS, OpRegionObj)
Name (OSYS, 0)
Name (PICM, Zero)
Name (PWRS, One)
Method (_PIC, 1)
{
 PICM = Arg0
}
Scope(\_SB) {
 Name(PCBA, 0xe0000000)
 Name(PCLN, 0x10000000)
 OperationRegion(PCFG, SystemMemory, PCBA, PCLN)
}
Scope (\_SB)
{
 Method (_SWS)
 {
  Return (\PM1I)
 }
}
Scope (\_GPE)
{
 Method (_SWS)
 {
  Return (\GPEI)
 }
}
External(\_SB.MPTS, MethodObj)
External(\_SB.MWAK, MethodObj)
External(\_SB.PCI0.EGPM, MethodObj)
External(\_SB.PCI0.RGPM, MethodObj)
OperationRegion (POST, SystemIO, 0x80, 1)
Field (POST, ByteAcc, Lock, Preserve)
{
 DBG0, 8
}
Method (_PTS, 1)
{
 DBG0 = 0x96
 If (CondRefOf (\_SB.MPTS))
 {
  \_SB.MPTS (Arg0)
 }
 If (CondRefOf (\_SB.PCI0.EGPM))
 {
  \_SB.PCI0.EGPM ()
 }
}
Method (_WAK, 1)
{
 DBG0 = 0x97
 If (CondRefOf (\_SB.MWAK))
 {
  \_SB.MWAK (Arg0)
 }
 If (CondRefOf (\_SB.PCI0.RGPM))
 {
  \_SB.PCI0.RGPM ()
 }
 Return (Package(){0,0})
}
Field (GNVS, ByteAcc, NoLock, Preserve)
{
 , 16,
 SMIF, 8,
 , 8,
 PPCM, 8,
 TLVL, 8,
 LIDS, 8,
 , 8,
 CBMC, 32,
 PM1I, 64,
 GPEI, 64,
 DPTE, 8,
 NHLA, 64,
 NHLL, 32,
 , 16,
 U2WE, 16,
 U3WE, 16,
 UIOR, 8,
 , 64,
}
External (\_SB.CNOT, MethodObj)
Method (PNOT)
{
 \_SB.CNOT (0x81)
}
Method (PPCN)
{
 \_SB.CNOT (0x80)
}
Method (TNOT)
{
 \_SB.CNOT (0x82)
}
 Device (\_SB.PCI0)
 {
Name (_HID, EisaId ("PNP0A08") )
Name (_CID, EisaId ("PNP0A03") )
Name (_SEG, Zero)
Name (_UID, Zero)
Device (MCHC)
{
 Name (_ADR, 0x00000000)
 OperationRegion (MCHP, PCI_Config, 0x00, 0x100)
 Field (MCHP, DWordAcc, NoLock, Preserve)
 {
  Offset(0x40),
  EPEN, 1,
  , 11,
  EPBR, 20,
  Offset(0x48),
  MHEN, 1,
  , 14,
  MHBR, 17,
  Offset(0x60),
  PXEN, 1,
  PXSZ, 2,
  , 23,
  PXBR, 6,
  Offset(0x68),
  DIEN, 1,
  , 11,
  DIBR, 20,
  Offset (0xa0),
  TOM, 64,
  TUUD, 64,
  Offset (0xbc),
  TLUD, 32,
 }
}
External (A4GS, IntObj)
External (A4GB, IntObj)
Method (_CRS, 0, Serialized)
{
 Name (MCRS, ResourceTemplate ()
 {
  WordBusNumber (ResourceProducer, MinFixed, MaxFixed, PosDecode,
    0x0000, 0x0000, 0x00ff, 0x0000, 0x0100)
  DWordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode,
    EntireRange,
    0x0000, 0x0000, 0x0cf7, 0x0000, 0x0cf8)
  Io (Decode16, 0x0cf8, 0x0cf8, 0x0001, 0x0008)
  DWordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode,
    EntireRange,
    0x0000, 0x0d00, 0xffff, 0x0000, 0xf300)
  DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed,
    Cacheable, ReadWrite,
    0x00000000, 0x000a0000, 0x000bffff, 0x00000000,
    0x00020000)
  DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed,
    Cacheable, ReadWrite,
    0x00000000, 0x000c0000, 0x000c3fff, 0x00000000,
    0x00004000)
  DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed,
    Cacheable, ReadWrite,
    0x00000000, 0x000c4000, 0x000c7fff, 0x00000000,
    0x00004000)
  DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed,
    Cacheable, ReadWrite,
    0x00000000, 0x000c8000, 0x000cbfff, 0x00000000,
    0x00004000)
  DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed,
    Cacheable, ReadWrite,
    0x00000000, 0x000cc000, 0x000cffff, 0x00000000,
    0x00004000)
  DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed,
    Cacheable, ReadWrite,
    0x00000000, 0x000d0000, 0x000d3fff, 0x00000000,
    0x00004000)
  DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed,
    Cacheable, ReadWrite,
    0x00000000, 0x000d4000, 0x000d7fff, 0x00000000,
    0x00004000)
  DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed,
    Cacheable, ReadWrite,
    0x00000000, 0x000d8000, 0x000dbfff, 0x00000000,
    0x00004000)
  DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed,
    Cacheable, ReadWrite,
    0x00000000, 0x000dc000, 0x000dffff, 0x00000000,
    0x00004000)
  DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed,
    Cacheable, ReadWrite,
    0x00000000, 0x000e0000, 0x000e3fff, 0x00000000,
    0x00004000)
  DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed,
    Cacheable, ReadWrite,
    0x00000000, 0x000e4000, 0x000e7fff, 0x00000000,
    0x00004000)
  DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed,
    Cacheable, ReadWrite,
    0x00000000, 0x000e8000, 0x000ebfff, 0x00000000,
    0x00004000)
  DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed,
    Cacheable, ReadWrite,
    0x00000000, 0x000ec000, 0x000effff, 0x00000000,
    0x00004000)
  DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed,
    Cacheable, ReadWrite,
    0x00000000, 0x000f0000, 0x000fffff, 0x00000000,
    0x00010000)
  DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed,
    NonCacheable, ReadWrite,
    0x00000000, 0x00000000, 0xdfffffff, 0x00000000,
    0xE0000000,,, PM01)
  QWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed,
    NonCacheable, ReadWrite,
    0x00000000, 0x10000, 0x1ffff, 0x00000000,
    0x10000,,, PM02)
  DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed,
    Cacheable, ReadWrite,
    0x00000000, 0xfc800000, 0xfe7fffff,
    0x00000000, 0x02000000)
  DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed,
    Cacheable, ReadWrite,
    0x00000000, 0xfed40000, 0xfed47fff, 0x00000000,
    0x00008000)
 })
 CreateDwordField (MCRS, PM01._MIN, PMIN)
 CreateDwordField (MCRS, PM01._MAX, PMAX)
 CreateDwordField (MCRS, PM01._LEN, PLEN)
 PMIN = \_SB.PCI0.MCHC.TLUD & (0xfff << 20)
 PLEN = PMAX - PMIN + 1
 If (A4GS == 0) {
  CreateQwordField (MCRS, PM02._LEN, MSEN)
  MSEN = 0
 } Else {
  CreateQwordField (MCRS, PM02._MIN, MMIN)
  CreateQwordField (MCRS, PM02._MAX, MMAX)
  CreateQwordField (MCRS, PM02._LEN, MLEN)
  MLEN = A4GS
  MMIN = A4GB
  MMAX = MMIN + MLEN - 1
 }
 Return (MCRS)
}
Method (GMHB, 0, Serialized)
{
 Local0 = \_SB.PCI0.MCHC.MHBR << 15
 Return (Local0)
}
Method (GEPB, 0, Serialized)
{
 Local0 = \_SB.PCI0.MCHC.EPBR << 12
 Return (Local0)
}
Method (GPCB, 0, Serialized)
{
 Local0 = \_SB.PCI0.MCHC.PXBR << 26
 Return (Local0)
}
Method (GPCL, 0, Serialized)
{
 Local0 = 0x10000000 >> \_SB.PCI0.MCHC.PXSZ
 Return (Local0)
}
Method (GDMB, 0, Serialized)
{
 Local0 = \_SB.PCI0.MCHC.DIBR << 12
 Return (Local0)
}
Device (PDRC)
{
 Name (_HID, EISAID ("PNP0C02"))
 Name (_UID, 1)
 Method (_CRS, 0, Serialized)
 {
  Name (BUF0, ResourceTemplate ()
  {
   Memory32Fixed (ReadWrite, 0, 0x8000, MCHB)
   Memory32Fixed (ReadWrite, 0, 0x1000, DMIB)
   Memory32Fixed (ReadWrite, 0, 0x1000, EGPB)
   Memory32Fixed (ReadWrite, 0, 0, PCIX)
   Memory32Fixed (ReadOnly, 0xFED90000, 0x00004000)
   Memory32Fixed (ReadOnly, 0, 0x01000000, FIOH)
   Memory32Fixed (ReadOnly, 0xFEE00000, 0x100000)
   Memory32Fixed (ReadWrite, 0xfed00000, 0x400)
  })
  CreateDwordField (BUF0, MCHB._BAS, MBR0)
  MBR0 = \_SB.PCI0.GMHB ()
  CreateDwordField (BUF0, DMIB._BAS, DBR0)
  DBR0 = \_SB.PCI0.GDMB ()
  CreateDwordField (BUF0, EGPB._BAS, EBR0)
  EBR0 = \_SB.PCI0.GEPB ()
  CreateDwordField (BUF0, PCIX._BAS, XBR0)
  XBR0 = \_SB.PCI0.GPCB ()
  CreateDwordField (BUF0, PCIX._LEN, XSZ0)
  XSZ0 = \_SB.PCI0.GPCL ()
  CreateDwordField (BUF0, FIOH._BAS, FBR0)
  FBR0 = 0x100000000 - 0x01000000
  Return (BUF0)
 }
}
Device (GFX0)
{
 Name (_ADR, 0x00020000)
}
Method (PCRB, 1, NotSerialized)
{
 Return (0xfd000000 + (Arg0 << 16))
}
Method (PCRR, 2, Serialized)
{
 OperationRegion (PCRD, SystemMemory, PCRB (Arg0) + Arg1, 4)
 Field (PCRD, DWordAcc, NoLock, Preserve)
 {
  DATA, 32
 }
 Return (DATA)
}
Method (PCRA, 3, Serialized)
{
 OperationRegion (PCRD, SystemMemory, PCRB (Arg0) + Arg1, 4)
 Field (PCRD, DWordAcc, NoLock, Preserve)
 {
  DATA, 32
 }
 DATA &= Arg2
 PCRR (Arg0, Arg1)
}
Method (PCRO, 3, Serialized)
{
 OperationRegion (PCRD, SystemMemory, PCRB (Arg0) + Arg1, 4)
 Field (PCRD, DWordAcc, NoLock, Preserve)
 {
  DATA, 32
 }
 DATA |= Arg2
 PCRR (Arg0, Arg1)
}
Scope (\_SB.PCI0) {
 Method(SCSC, 1, Serialized)
 {
  ^PCRA (Arg0, 0x1C20, 0x0)
  ^PCRA (Arg0, 0x4820, 0x0)
 }
 Device(PEMC) {
  Name(_ADR, 0x001A0000)
  Name (_DDN, "eMMC Controller")
  Name (TEMP, 0)
  Name (DSUU, ToUUID("f6c13ea5-65cd-461f-ab7a-29f7e8d5bd61"))
  OperationRegion(SCSR, PCI_Config, 0x00, 0x100)
  Field(SCSR, WordAcc, NoLock, Preserve) {
   VDID, 32,
   Offset (0x84),
   PMCR, 16,
   Offset (0xA2),
   , 2,
   PGEN, 1,
  }
  Method(_INI) {
   ^^SCSC (0x52)
  }
  Method(_PS0, 0, Serialized) {
   Stall (50)
   Store(0, PGEN)
   ^^SCSC (0x52)
   And (PMCR, 0xFFFC, PMCR)
   Store (PMCR, ^TEMP)
  }
  Method(_PS3, 0, Serialized) {
   Store(1, PGEN)
   Or (PMCR, 0x0003, PMCR)
   Store (PMCR, ^TEMP)
  }
  Device (CARD)
  {
   Name (_ADR, 0x00000008)
   Method (_RMV, 0, NotSerialized)
   {
    Return (0)
   }
  }
  Method (_DSM, 4)
  {
   If (Arg0 == ^DSUU) {
    If (Arg1 >= 0) {
     If (Arg2 == 0) {
      If (VDID == 0x02c48086) {
       Return(Buffer() {0x0, 0x02})
      }
     }
     If (Arg2 == 9) {
      Return(Buffer() {0x4})
     }
    }
   }
   Return(Buffer() { 0x0 })
  }
 }
 Device (SDXC)
 {
  Name (_ADR, 0x00140005)
  Name (_DDN, "SD Controller")
  Name (TEMP, 0)
  Name (DSUU, ToUUID("f6c13ea5-65cd-461f-ab7a-29f7e8d5bd61"))
  OperationRegion (SDPC, PCI_Config, 0x00, 0x100)
  Field (SDPC, WordAcc, NoLock, Preserve)
  {
   Offset (0x84),
   PMCR, 16,
   Offset (0xA2),
   , 2,
   PGEN, 1,
  }
  Method (_DSM, 4)
  {
   If (Arg0 == ^DSUU) {
    If (Arg1 >= 0) {
     If (Arg2 == 0) {
      Return (Buffer () { 0x19 })
     }
     If (Arg2 == 3) {
      Sleep (100)
      Return(Buffer () { 0x00 })
     }
     If (Arg2 == 4) {
      Sleep (100)
      Return(Buffer () { 0x00 })
     }
    }
   }
   Return(Buffer() { 0x0 })
  }
  Method(_INI)
  {
   ^^SCSC (0x53)
  }
  Method (_PS0, 0, Serialized)
  {
   Store (0, PGEN)
   ^^SCSC (0x53)
   And (PMCR, 0xFFFC, PMCR)
   Store (PMCR, ^TEMP)
  }
  Method (_PS3, 0, Serialized)
  {
   Store (1, PGEN)
   Or (PMCR, 0x0003, PMCR)
   Store (PMCR, ^TEMP)
  }
  Device (CARD)
  {
   Name (_ADR, 0x00000008)
   Method (_RMV, 0, NotSerialized)
   {
    Return (1)
   }
  }
 }
}
Method (GRXS, 1, Serialized)
{
 OperationRegion (PREG, SystemMemory, GADD (Arg0), 4)
 Field (PREG, AnyAcc, NoLock, Preserve)
 {
  , 1,
  RXST, 1,
 }
 Return (RXST)
}
Method (GTXS, 1, Serialized)
{
 OperationRegion (PREG, SystemMemory, GADD (Arg0), 4)
 Field (PREG, AnyAcc, NoLock, Preserve)
 {
  TXST, 1,
 }
 Return (TXST)
}
Method (STXS, 1, Serialized)
{
 OperationRegion (PREG, SystemMemory, GADD (Arg0), 4)
 Field (PREG, AnyAcc, NoLock, Preserve)
 {
  TXST, 1,
 }
 TXST = 1
}
Method (CTXS, 1, Serialized)
{
 OperationRegion (PREG, SystemMemory, GADD (Arg0), 4)
 Field (PREG, AnyAcc, NoLock, Preserve)
 {
  TXST, 1,
 }
 TXST = 0
}
Method (GPMO, 2, Serialized)
{
 OperationRegion (PREG, SystemMemory, GADD (Arg0), 4)
 Field (PREG, AnyAcc, NoLock, Preserve)
 {
  , 10,
  MODE, 3,
 }
 MODE = Arg1
}
Method (GTXE, 2, Serialized)
{
 OperationRegion (PREG, SystemMemory, GADD (Arg0), 4)
 Field (PREG, AnyAcc, NoLock, Preserve)
 {
  , 8,
  TXDI, 1,
 }
 TXDI = !Arg1
}
Method (GRXE, 2, Serialized)
{
 OperationRegion (PREG, SystemMemory, GADD (Arg0), 4)
 Field (PREG, AnyAcc, NoLock, Preserve)
 {
  , 9,
  RXDI, 1,
 }
 RXDI = !Arg1
}
Method (GSCI, 2, Serialized)
{
 OperationRegion (PREG, SystemMemory, GADD (Arg0), 4)
 Field (PREG, AnyAcc, NoLock, Preserve)
 {
  , 19,
  SCIR, 1,
 }
 SCIR = Arg1
}
Device (GPIO)
{
 Name (_HID, "INT34BB")
 Name (_UID, 0)
 Name (_DDN, "GPIO Controller")
 Name (RBUF, ResourceTemplate()
 {
  Memory32Fixed (ReadWrite, 0, 0, COM0)
  Memory32Fixed (ReadWrite, 0, 0, COM1)
  Memory32Fixed (ReadWrite, 0, 0, COM4)
  Interrupt (ResourceConsumer, Level, ActiveLow, Shared,,, GIRQ)
   { 14 }
 })
 Method (_CRS, 0, NotSerialized)
 {
  CreateDWordField (^RBUF, ^COM0._BAS, BAS0)
  CreateDWordField (^RBUF, ^COM0._LEN, LEN0)
  Store (^^PCRB (0x6e), BAS0)
  Store (0x10000, LEN0)
  CreateDWordField (^RBUF, ^COM1._BAS, BAS1)
  CreateDWordField (^RBUF, ^COM1._LEN, LEN1)
  Store (^^PCRB (0x6d), BAS1)
  Store (0x10000, LEN1)
  CreateDWordField (^RBUF, ^COM4._BAS, BAS4)
  CreateDWordField (^RBUF, ^COM4._LEN, LEN4)
  Store (^^PCRB (0x6a), BAS4)
  Store (0x10000, LEN4)
  Return (RBUF)
 }
 Method (_STA, 0, NotSerialized)
 {
  Return (0xF)
 }
}
Method (GADD, 1, NotSerialized)
{
 If (Arg0 >= 0 && Arg0 <= 67)
 {
  Store (0x6e, Local0)
  Local1 = Arg0 - 0
 }
 If (Arg0 >= 68 && Arg0 <= 180)
 {
  Store (0x6d, Local0)
  Local1 = Arg0 - 68
 }
 If (Arg0 >= 244 && Arg0 <= 259)
 {
  Store (0x6c, Local0)
  Local1 = Arg0 - 244
 }
 If (Arg0 >= 260 && Arg0 <= 278)
 {
  Store (0x6b, Local0)
  Local1 = Arg0 - 260
 }
 If (Arg0 >= 181 && Arg0 <= 243)
 {
  Store (0x6a, Local0)
  Local1 = Arg0 - 181
 }
 Store (PCRB (Local0), Local2)
 Local2 += 0x600
 Return (Local2 + Local1 * 16)
}
Method (GPID, 1, Serialized)
{
 Switch (ToInteger (Arg0))
 {
  Case (0) {
   Store (0x6e, Local0)
  }
  Case (1) {
   Store (0x6d, Local0)
  }
  Case (2) {
   Store (0x6c, Local0)
  }
  Case (3) {
   Store (0x6b, Local0)
  }
  Case (4) {
   Store (0x6a, Local0)
  }
  Default {
   Return (0)
  }
 }
 Return (Local0)
}
Method (CGPM, 2, Serialized)
{
 Store (GPID (Arg0), Local0)
 If (Local0 != 0) {
  PCRA (Local0, 0x10, Not (((1 << 5) | (1 << 4) | (1 << 3) | (1 << 2) | (1 << 1) | (1 << 0))))
  PCRO (Local0, 0x10, And (Arg1, ((1 << 5) | (1 << 4) | (1 << 3) | (1 << 2) | (1 << 1) | (1 << 0))))
 }
}
Name(GPMB, Package(5) {0, 0, 0, 0, 0})
Method (SGPM, 0, Serialized)
{
 For (Local0 = 0, Local0 < 5, Local0++)
 {
  Local1 = GPID (Local0)
  GPMB[Local0] = PCRR (Local1, 0x10)
 }
}
Method (RGPM, 0, Serialized)
{
 For (Local0 = 0, Local0 < 5, Local0++)
 {
  CGPM (Local0, DerefOf(GPMB[Local0]))
 }
}
Method (EGPM, 0, Serialized)
{
 SGPM ()
 For (Local0 = 0, Local0 < 5, Local0++)
 {
  CGPM (Local0, ((1 << 5) | (1 << 4) | (1 << 3) | (1 << 2) | (1 << 1) | (1 << 0)))
 }
}
Device (LPCB)
{
 Name (_ADR, 0x001f0000)
 Name (_DDN, "LPC Bus Device")
 Device (DMAC)
 {
  Name (_HID, EISAID("PNP0200"))
  Name (_CRS, ResourceTemplate()
  {
   IO (Decode16, 0x00, 0x00, 0x01, 0x20)
   IO (Decode16, 0x81, 0x81, 0x01, 0x11)
   IO (Decode16, 0x93, 0x93, 0x01, 0x0d)
   IO (Decode16, 0xc0, 0xc0, 0x01, 0x20)
   DMA (Compatibility, NotBusMaster, Transfer8_16) { 4 }
  })
 }
 Device (FWH)
 {
  Name (_HID, EISAID ("INT0800"))
  Name (_DDN, "Firmware Hub")
  Name (_CRS, ResourceTemplate ()
  {
   Memory32Fixed (ReadOnly, 0xff000000, 0x01000000)
  })
 }
 Device (HPET)
 {
  Name (_HID, EISAID ("PNP0103"))
  Name (_CID, 0x010CD041)
  Name (_DDN, "High Precision Event Timer")
  Name (_CRS, ResourceTemplate ()
  {
   Memory32Fixed (ReadWrite, 0xfed00000, 0x400)
  })
  Method (_STA, 0)
  {
   Return (0xF)
  }
 }
 Device(MATH)
 {
  Name (_HID, EISAID("PNP0C04"))
  Name (_CRS, ResourceTemplate()
  {
   IO (Decode16, 0xf0, 0xf0, 0x01, 0x01)
   IRQNoFlags() { 13 }
  })
 }
 Device (PIC)
 {
  Name (_HID, EISAID ("PNP0000"))
  Name (_DDN, "8259 Interrupt Controller")
  Name (_CRS, ResourceTemplate()
  {
   IO (Decode16, 0x20, 0x20, 0x01, 0x02)
   IO (Decode16, 0x24, 0x24, 0x01, 0x02)
   IO (Decode16, 0x28, 0x28, 0x01, 0x02)
   IO (Decode16, 0x2c, 0x2c, 0x01, 0x02)
   IO (Decode16, 0x30, 0x30, 0x01, 0x02)
   IO (Decode16, 0x34, 0x34, 0x01, 0x02)
   IO (Decode16, 0x38, 0x38, 0x01, 0x02)
   IO (Decode16, 0x3c, 0x3c, 0x01, 0x02)
   IO (Decode16, 0xa0, 0xa0, 0x01, 0x02)
   IO (Decode16, 0xa4, 0xa4, 0x01, 0x02)
   IO (Decode16, 0xa8, 0xa8, 0x01, 0x02)
   IO (Decode16, 0xac, 0xac, 0x01, 0x02)
   IO (Decode16, 0xb0, 0xb0, 0x01, 0x02)
   IO (Decode16, 0xb4, 0xb4, 0x01, 0x02)
   IO (Decode16, 0xb8, 0xb8, 0x01, 0x02)
   IO (Decode16, 0xbc, 0xbc, 0x01, 0x02)
   IO (Decode16, 0x4d0, 0x4d0, 0x01, 0x02)
   IRQNoFlags () { 2 }
  })
 }
 Device (LDRC)
 {
  Name (_HID, EISAID ("PNP0C02"))
  Name (_UID, 2)
  Name (_DDN, "Legacy Device Resources")
  Name (_CRS, ResourceTemplate ()
  {
   IO (Decode16, 0x2e, 0x2e, 0x1, 0x02)
   IO (Decode16, 0x4e, 0x4e, 0x1, 0x02)
   IO (Decode16, 0x61, 0x61, 0x1, 0x01)
   IO (Decode16, 0x63, 0x63, 0x1, 0x01)
   IO (Decode16, 0x65, 0x65, 0x1, 0x01)
   IO (Decode16, 0x67, 0x67, 0x1, 0x01)
   IO (Decode16, 0x80, 0x80, 0x1, 0x01)
   IO (Decode16, 0x92, 0x92, 0x1, 0x01)
   IO (Decode16, 0xb2, 0xb2, 0x1, 0x02)
   IO (Decode16, 0x1800, 0x1800,
       0x1, 0xff)
  })
 }
 Device (RTC)
 {
  Name (_HID, EISAID ("PNP0B00"))
  Name (_DDN, "Real Time Clock")
  Name (_CRS, ResourceTemplate ()
  {
   IO (Decode16, 0x70, 0x70, 1, 8)
  })
 }
 Device (TIMR)
 {
  Name (_HID, EISAID ("PNP0100"))
  Name (_DDN, "8254 Timer")
  Name (_CRS, ResourceTemplate ()
  {
   IO (Decode16, 0x40, 0x40, 0x01, 0x04)
   IO (Decode16, 0x50, 0x50, 0x10, 0x04)
   IRQNoFlags () {0}
  })
 }
}
Device (HDAS)
{
 Name (_ADR, 0x001f0003)
 Name (_DDN, "Audio Controller")
 Name (UUID, ToUUID ("A69F886E-6CEB-4594-A41F-7B5DCE24C553"))
 Name (_S0W, 3)
 Name (NBUF, ResourceTemplate () {
  QWordMemory (ResourceConsumer, PosDecode, MinFixed,
        MaxFixed, NonCacheable, ReadOnly,
        0, 0, 0, 0, 1,,, NHLT, AddressRangeACPI)
 })
 Method (_DSM, 4)
 {
  If (Arg0 == ^UUID) {
   If (Arg2 == 0) {
    If (Arg1 == 1 && NHLA != 0 && NHLL != 0) {
     Return (Buffer (One) { 0x03 })
    } Else {
     Return (Buffer (One) { 0x01 })
    }
   }
   If (Arg2 == 1) {
    CreateQWordField (NBUF, ^NHLT._MIN, NBAS)
    CreateQWordField (NBUF, ^NHLT._MAX, NMAS)
    CreateQWordField (NBUF, ^NHLT._LEN, NLEN)
    Store (NHLA, NBAS)
    Store (NHLA, NMAS)
    Store (NHLL, NLEN)
    Return (NBUF)
   }
  }
  Return (Buffer (One) { 0x00 })
 }
}
Method (IRQM, 1, Serialized) {
 Name (IQAA, Package () {
  Package () { 0x0000ffff, 0, 0, 16 },
  Package () { 0x0000ffff, 1, 0, 17 },
  Package () { 0x0000ffff, 2, 0, 18 },
  Package () { 0x0000ffff, 3, 0, 19 } })
 Name (IQAP, Package () {
  Package () { 0x0000ffff, 0, 0, 11 },
  Package () { 0x0000ffff, 1, 0, 10 },
  Package () { 0x0000ffff, 2, 0, 11 },
  Package () { 0x0000ffff, 3, 0, 11 } })
 Name (IQBA, Package () {
  Package () { 0x0000ffff, 0, 0, 17 },
  Package () { 0x0000ffff, 1, 0, 18 },
  Package () { 0x0000ffff, 2, 0, 19 },
  Package () { 0x0000ffff, 3, 0, 16 } })
 Name (IQBP, Package () {
  Package () { 0x0000ffff, 0, 0, 10 },
  Package () { 0x0000ffff, 1, 0, 11 },
  Package () { 0x0000ffff, 2, 0, 11 },
  Package () { 0x0000ffff, 3, 0, 11 } })
 Name (IQCA, Package () {
  Package () { 0x0000ffff, 0, 0, 18 },
  Package () { 0x0000ffff, 1, 0, 19 },
  Package () { 0x0000ffff, 2, 0, 16 },
  Package () { 0x0000ffff, 3, 0, 17 } })
 Name (IQCP, Package () {
  Package () { 0x0000ffff, 0, 0, 11 },
  Package () { 0x0000ffff, 1, 0, 11 },
  Package () { 0x0000ffff, 2, 0, 11 },
  Package () { 0x0000ffff, 3, 0, 10 } })
 Name (IQDA, Package () {
  Package () { 0x0000ffff, 0, 0, 19 },
  Package () { 0x0000ffff, 1, 0, 16 },
  Package () { 0x0000ffff, 2, 0, 17 },
  Package () { 0x0000ffff, 3, 0, 18 } })
 Name (IQDP, Package () {
  Package () { 0x0000ffff, 0, 0, 11 },
  Package () { 0x0000ffff, 1, 0, 11 },
  Package () { 0x0000ffff, 2, 0, 10 },
  Package () { 0x0000ffff, 3, 0, 11 } })
 Switch (ToInteger (Arg0))
 {
  Case (Package () { 1, 5, 9, 13
  }) {
   If (PICM) {
    Return (IQAA)
   } Else {
    Return (IQAP)
   }
  }
  Case (Package () { 2, 6, 10, 14
  }) {
   If (PICM) {
    Return (IQBA)
   } Else {
    Return (IQBP)
   }
  }
  Case (Package () { 3, 7, 11, 15
  }) {
   If (PICM) {
    Return (IQCA)
   } Else {
    Return (IQCP)
   }
  }
  Case (Package () { 4, 8, 12, 16
  }) {
   If (PICM) {
    Return (IQDA)
   } Else {
    Return (IQDP)
   }
  }
  Default {
   If (PICM) {
    Return (IQDA)
   } Else {
    Return (IQDP)
   }
  }
 }
}
Device (RP01)
{
 Name (_ADR, 0x001C0000)
 OperationRegion (RPCS, PCI_Config, 0x4c, 4)
 Field (RPCS, AnyAcc, NoLock, Preserve)
 {
  , 24,
  RPPN, 8,
 }
 Method (_PRT)
 {
  Return (IRQM (RPPN))
 }
}
Device (RP02)
{
 Name (_ADR, 0x001C0001)
 OperationRegion (RPCS, PCI_Config, 0x4c, 4)
 Field (RPCS, AnyAcc, NoLock, Preserve)
 {
  , 24,
  RPPN, 8,
 }
 Method (_PRT)
 {
  Return (IRQM (RPPN))
 }
}
Device (RP03)
{
 Name (_ADR, 0x001C0002)
 OperationRegion (RPCS, PCI_Config, 0x4c, 4)
 Field (RPCS, AnyAcc, NoLock, Preserve)
 {
  , 24,
  RPPN, 8,
 }
 Method (_PRT)
 {
  Return (IRQM (RPPN))
 }
}
Device (RP04)
{
 Name (_ADR, 0x001C0003)
 OperationRegion (RPCS, PCI_Config, 0x4c, 4)
 Field (RPCS, AnyAcc, NoLock, Preserve)
 {
  , 24,
  RPPN, 8,
 }
 Method (_PRT)
 {
  Return (IRQM (RPPN))
 }
}
Device (RP05)
{
 Name (_ADR, 0x001C0004)
 OperationRegion (RPCS, PCI_Config, 0x4c, 4)
 Field (RPCS, AnyAcc, NoLock, Preserve)
 {
  , 24,
  RPPN, 8,
 }
 Method (_PRT)
 {
  Return (IRQM (RPPN))
 }
}
Device (RP06)
{
 Name (_ADR, 0x001C0005)
 OperationRegion (RPCS, PCI_Config, 0x4c, 4)
 Field (RPCS, AnyAcc, NoLock, Preserve)
 {
  , 24,
  RPPN, 8,
 }
 Method (_PRT)
 {
  Return (IRQM (RPPN))
 }
}
Device (RP07)
{
 Name (_ADR, 0x001C0006)
 OperationRegion (RPCS, PCI_Config, 0x4c, 4)
 Field (RPCS, AnyAcc, NoLock, Preserve)
 {
  , 24,
  RPPN, 8,
 }
 Method (_PRT)
 {
  Return (IRQM (RPPN))
 }
}
Device (RP08)
{
 Name (_ADR, 0x001C0007)
 OperationRegion (RPCS, PCI_Config, 0x4c, 4)
 Field (RPCS, AnyAcc, NoLock, Preserve)
 {
  , 24,
  RPPN, 8,
 }
 Method (_PRT)
 {
  Return (IRQM (RPPN))
 }
}
Device (RP09)
{
 Name (_ADR, 0x001D0000)
 OperationRegion (RPCS, PCI_Config, 0x4c, 4)
 Field (RPCS, AnyAcc, NoLock, Preserve)
 {
  , 24,
  RPPN, 8,
 }
 Method (_PRT)
 {
  Return (IRQM (RPPN))
 }
}
Device (RP10)
{
 Name (_ADR, 0x001D0001)
 OperationRegion (RPCS, PCI_Config, 0x4c, 4)
 Field (RPCS, AnyAcc, NoLock, Preserve)
 {
  , 24,
  RPPN, 8,
 }
 Method (_PRT)
 {
  Return (IRQM (RPPN))
 }
}
Device (RP11)
{
 Name (_ADR, 0x001D0002)
 OperationRegion (RPCS, PCI_Config, 0x4c, 4)
 Field (RPCS, AnyAcc, NoLock, Preserve)
 {
  , 24,
  RPPN, 8,
 }
 Method (_PRT)
 {
  Return (IRQM (RPPN))
 }
}
Device (RP12)
{
 Name (_ADR, 0x001D0003)
 OperationRegion (RPCS, PCI_Config, 0x4c, 4)
 Field (RPCS, AnyAcc, NoLock, Preserve)
 {
  , 24,
  RPPN, 8,
 }
 Method (_PRT)
 {
  Return (IRQM (RPPN))
 }
}
Device (RP13)
{
 Name (_ADR, 0x001D0004)
 OperationRegion (RPCS, PCI_Config, 0x4c, 4)
 Field (RPCS, AnyAcc, NoLock, Preserve)
 {
  , 24,
  RPPN, 8,
 }
 Method (_PRT)
 {
  Return (IRQM (RPPN))
 }
}
Device (RP14)
{
 Name (_ADR, 0x001D0005)
 OperationRegion (RPCS, PCI_Config, 0x4c, 4)
 Field (RPCS, AnyAcc, NoLock, Preserve)
 {
  , 24,
  RPPN, 8,
 }
 Method (_PRT)
 {
  Return (IRQM (RPPN))
 }
}
Device (RP15)
{
 Name (_ADR, 0x001D0006)
 OperationRegion (RPCS, PCI_Config, 0x4c, 4)
 Field (RPCS, AnyAcc, NoLock, Preserve)
 {
  , 24,
  RPPN, 8,
 }
 Method (_PRT)
 {
  Return (IRQM (RPPN))
 }
}
Device (RP16)
{
 Name (_ADR, 0x001D0007)
 OperationRegion (RPCS, PCI_Config, 0x4c, 4)
 Field (RPCS, AnyAcc, NoLock, Preserve)
 {
  , 24,
  RPPN, 8,
 }
 Method (_PRT)
 {
  Return (IRQM (RPPN))
 }
}
Device (I2C0)
{
 Name (_ADR, 0x00150000)
 Name (_DDN, "Serial IO I2C Controller 0")
}
Device (I2C1)
{
 Name (_ADR, 0x00150001)
 Name (_DDN, "Serial IO I2C Controller 1")
}
Device (I2C2)
{
 Name (_ADR, 0x00150002)
 Name (_DDN, "Serial IO I2C Controller 2")
}
Device (I2C3)
{
 Name (_ADR, 0x00150003)
 Name (_DDN, "Serial IO I2C Controller 3")
}
Device (I2C4)
{
 Name (_ADR, 0x00190000)
 Name (_DDN, "Serial IO I2C Controller 4")
}
Device (I2C5)
{
 Name (_ADR, 0x00190001)
 Name (_DDN, "Serial IO I2C Controller 5")
}
Device (SPI0)
{
 Name (_ADR, 0x001e0002)
 Name (_DDN, "Serial IO SPI Controller 0")
}
Device (SPI1)
{
 Name (_ADR, 0x001e0003)
 Name (_DDN, "Serial IO SPI Controller 1")
}
Device (SPI2)
{
 Name (_ADR, 0x00120006)
 Name (_DDN, "Serial IO SPI Controller 2")
}
Device (UAR0)
{
 Name (_ADR, 0x001e0000)
 Name (_DDN, "Serial IO UART Controller 0")
}
Device (UAR1)
{
 Name (_ADR, 0x001e0001)
 Name (_DDN, "Serial IO UART Controller 1")
}
Device (UAR2)
{
 Name (_ADR, 0x00190002)
 Name (_DDN, "Serial IO UART Controller 2")
}
Device (SBUS)
{
 Name (_ADR, 0x001f0004)
}
Device (ISHB)
{
 Name (_ADR, (0x13 << 16 | 0x0000))
 Name (_DDN, "Integrated Sensor Hub Controller")
}
Method (UPWE, 3, Serialized)
{
 Local0 = Arg1 + ((Arg0 - 1) * 0x10)
 OperationRegion (PSCR, SystemMemory, ShiftLeft (Arg2, 16) + Local0, 0x10)
 Field (PSCR, DWordAcc, NoLock, Preserve)
 {
  PSCT, 32,
 }
 Local0 = PSCT
 Local0 = Local0 & ~0x80FE0012
 Local0 = Local0 | 0x6000000
 PSCT = Local0
}
Method (UWES, 3, Serialized)
{
 Local0 = Arg0
 While (One) {
  FindSetRightBit (Local0, Local1)
  If (Local1 == Zero) {
   Break
  }
  UPWE (Local1, Arg1, Arg2)
  Local0 = Local0 & (Local0 - 1)
 }
}
Device (XHCI)
{
 Name (_ADR, 0x00140000)
 Name (_PRW, Package () { 109, 4 })
 Method (_DSW, 3)
 {
  UWES ((\U2WE & 0xFFF), 0x480, XMEM)
  UWES ((\U3WE & 0x3F ), 0x540, XMEM)
 }
 Name (_S3D, 3)
 Name (_S0W, 3)
 Name (_S3W, 3)
 Name (_S4D, 3)
 Name (_S4W, 3)
 OperationRegion (XPRT, PCI_Config, 0x00, 0x100)
 Field (XPRT, AnyAcc, NoLock, Preserve)
 {
  Offset (0x10),
  , 16,
  XMEM, 16,
 }
 Method (_PS0, 0, Serialized)
 {
 }
 Method (_PS3, 0, Serialized)
 {
 }
 Device (RHUB)
 {
  Name (_ADR, Zero)
  Device (HS01) { Name (_ADR, 1) }
  Device (HS02) { Name (_ADR, 2) }
  Device (HS03) { Name (_ADR, 3) }
  Device (HS04) { Name (_ADR, 4) }
  Device (HS05) { Name (_ADR, 5) }
  Device (HS06) { Name (_ADR, 6) }
  Device (HS07) { Name (_ADR, 7) }
  Device (HS08) { Name (_ADR, 8) }
  Device (HS09) { Name (_ADR, 9) }
  Device (HS10) { Name (_ADR, 10) }
  Device (HS11) { Name (_ADR, 11) }
  Device (HS12) { Name (_ADR, 12) }
  Device (USR1) { Name (_ADR, 11) }
  Device (USR2) { Name (_ADR, 12) }
  Device (SS01) { Name (_ADR, 13) }
  Device (SS02) { Name (_ADR, 14) }
  Device (SS03) { Name (_ADR, 15) }
  Device (SS04) { Name (_ADR, 16) }
  Device (SS05) { Name (_ADR, 17) }
  Device (SS06) { Name (_ADR, 18) }
 }
}
Scope (\_SB.PCI0) {
 Method (_OSC, 4) {
  If (Arg0 == ToUUID ("33DB4D5B-1FF7-401C-9657-7441C03DD766")) {
   Return (Arg3)
  } Else {
   CreateDWordField (Arg3, 0, CDW1)
   CDW1 |= 4
   Return (Arg3)
  }
 }
}
Device (GLAN)
{
 Name (_ADR, 0x001f0006)
 Name (_S0W, 3)
 Name (_PRW, Package() {109, 4})
 Method (_DSW, 3) {}
}
 }
Name(\_S0, Package(){0x0,0x0,0x0,0x0})
Name(\_S3, Package(){0x5,0x0,0x0,0x0})
Name(\_S4, Package(){0x6,0x0,0x0,0x0})
Name(\_S5, Package(){0x7,0x0,0x0,0x0})
}
