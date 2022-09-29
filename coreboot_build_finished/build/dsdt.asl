DefinitionBlock (
 "dsdt.aml",
 "DSDT",
 0x01,
 "COREv4",
 "COREBOOT",
 0x1
 )
{
Name (OSYS, 0)
Name (PICM, Zero)
Name (PWRS, One)
Method (_PIC, 1)
{
 PICM = Arg0
}
Scope(\) {
    OperationRegion(DBG, SystemIO, 0x0402, 0x01)
    Field(DBG, ByteAcc, NoLock, Preserve) {
        DBGB, 8,
    }
    Method(DBUG, 1) {
        ToHexString(Arg0, Local0)
        ToBuffer(Local0, Local0)
        Local1 = SizeOf(Local0) - 1
        Local2 = 0
        While (Local2 < Local1) {
            DBGB = DerefOf( Local0 [Local2])
            Local2++
        }
        DBGB = 0x0A
    }
}
 Scope(\_SB) {
  Device(PCI0) {
   Name(_HID, EisaId("PNP0A03"))
   Name(_UID, 1)
  }
 }
Scope(\_SB.PCI0) {
    Name(CRES, ResourceTemplate() {
        WordBusNumber(ResourceProducer, MinFixed, MaxFixed, PosDecode,
            0x0000,
            0x0000,
            0x00FF,
            0x0000,
            0x0100,
            ,, )
        IO(Decode16,
            0x0CF8,
            0x0CF8,
            0x01,
            0x08,
            )
        WordIO(ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
            0x0000,
            0x0000,
            0x0CF7,
            0x0000,
            0x0CF8,
            ,, , TypeStatic)
        WordIO(ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
            0x0000,
            0x0D00,
            0xFFFF,
            0x0000,
            0xF300,
            ,, , TypeStatic)
        DWordMemory(ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
            0x00000000,
            0x000A0000,
            0x000BFFFF,
            0x00000000,
            0x00020000,
            ,, , AddressRangeMemory, TypeStatic)
        DWordMemory(ResourceProducer, PosDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
            0x00000000,
            0xE0000000,
            0xFEBFFFFF,
            0x00000000,
            0x1EC00000,
            ,, PW32, AddressRangeMemory, TypeStatic)
    })
    Name(CR64, ResourceTemplate() {
        QWordMemory(ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
            0x00000000,
            0x8000000000,
            0xFFFFFFFFFF,
            0x00000000,
            0x8000000000,
            ,, PW64, AddressRangeMemory, TypeStatic)
    })
    Method(_CRS, 0) {
        Return (CRES)
    }
}
Scope(\_SB) {
    Device(HPET) {
        Name(_HID, EISAID("PNP0103"))
        Name(_UID, 0)
        OperationRegion(HPTM, SystemMemory, 0xFED00000, 0x400)
        Field(HPTM, DWordAcc, Lock, Preserve) {
            VEND, 32,
            PRD, 32,
        }
        Method(_STA, 0, NotSerialized) {
            Local0 = VEND
            Local1 = PRD
            Local0 >>= 16
            If ((Local0 == 0) || (Local0 == 0xffff)) {
                Return (0x0)
            }
            If ((Local1 == 0) || (Local1 > 100000000)) {
                Return (0x0)
            }
            Return (0x0F)
        }
        Name(_CRS, ResourceTemplate() {
            Memory32Fixed(ReadOnly,
                0xFED00000,
                0x00000400,
                )
        })
    }
}
 Scope(\_SB.PCI0) {
  Device(VGA) {
   Name(_ADR, 0x00020000)
   OperationRegion(PCIC, PCI_Config, Zero, 0x4)
   Field(PCIC, DWordAcc, NoLock, Preserve) {
    VEND, 32
   }
   Method(_S1D, 0, NotSerialized) {
    Return (0x00)
   }
   Method(_S2D, 0, NotSerialized) {
    Return (0x00)
   }
   Method(_S3D, 0, NotSerialized) {
    If (VEND == 0x1001b36) {
    Return (0x03)
    } Else {
    Return (0x00)
    }
   }
  }
 }
 Scope(\_SB.PCI0) {
  Device(PX13) {
   Name(_ADR, 0x00010003)
   OperationRegion(P13C, PCI_Config, 0x00, 0xff)
  }
 }
 Scope(\_SB.PCI0) {
  Device(ISA) {
   Name(_ADR, 0x00010000)
   OperationRegion(P40C, PCI_Config, 0x60, 0x04)
   Field(\_SB.PCI0.PX13.P13C, AnyAcc, NoLock, Preserve) {
    Offset(0x5f),
    , 7,
    LPEN, 1,
    Offset(0x67),
    , 3,
    CAEN, 1,
    , 3,
    CBEN, 1,
   }
   Name(FDEN, 1)
  }
 }
Scope(\_SB.PCI0.ISA) {
    Device(RTC) {
        Name(_HID, EisaId("PNP0B00"))
        Name(_CRS, ResourceTemplate() {
            IO(Decode16, 0x0070, 0x0070, 0x10, 0x02)
            IRQNoFlags() { 8 }
            IO(Decode16, 0x0072, 0x0072, 0x02, 0x06)
        })
    }
    Device(KBD) {
        Name(_HID, EisaId("PNP0303"))
        Method(_STA, 0, NotSerialized) {
            Return (0x0f)
        }
        Name(_CRS, ResourceTemplate() {
            IO(Decode16, 0x0060, 0x0060, 0x01, 0x01)
            IO(Decode16, 0x0064, 0x0064, 0x01, 0x01)
            IRQNoFlags() { 1 }
        })
    }
    Device(MOU) {
        Name(_HID, EisaId("PNP0F13"))
        Method(_STA, 0, NotSerialized) {
            Return (0x0f)
        }
        Name(_CRS, ResourceTemplate() {
            IRQNoFlags() { 12 }
        })
    }
    Device(FDC0) {
        Name(_HID, EisaId("PNP0700"))
        Method(_STA, 0, NotSerialized) {
            Local0 = FDEN
            If (Local0 == 0) {
                Return (0x00)
            } Else {
                Return (0x0F)
            }
        }
        Name(_CRS, ResourceTemplate() {
            IO(Decode16, 0x03F2, 0x03F2, 0x00, 0x04)
            IO(Decode16, 0x03F7, 0x03F7, 0x00, 0x01)
            IRQNoFlags() { 6 }
            DMA(Compatibility, NotBusMaster, Transfer8) { 2 }
        })
    }
    Device(LPT) {
        Name(_HID, EisaId("PNP0400"))
        Method(_STA, 0, NotSerialized) {
            Local0 = LPEN
            If (Local0 == 0) {
                Return (0x00)
            } Else {
                Return (0x0F)
            }
        }
        Name(_CRS, ResourceTemplate() {
            IO(Decode16, 0x0378, 0x0378, 0x08, 0x08)
            IRQNoFlags() { 7 }
        })
    }
    Device(COM1) {
        Name(_HID, EisaId("PNP0501"))
        Name(_UID, 0x01)
        Method(_STA, 0, NotSerialized) {
            Local0 = CAEN
            If (Local0 == 0) {
                Return (0x00)
            } Else {
                Return (0x0F)
            }
        }
        Name(_CRS, ResourceTemplate() {
            IO(Decode16, 0x03F8, 0x03F8, 0x00, 0x08)
            IRQNoFlags() { 4 }
        })
    }
    Device(COM2) {
        Name(_HID, EisaId("PNP0501"))
        Name(_UID, 0x02)
        Method(_STA, 0, NotSerialized) {
            Local0 = CBEN
            If (Local0 == 0) {
                Return (0x00)
            } Else {
                Return (0x0F)
            }
        }
        Name(_CRS, ResourceTemplate() {
            IO(Decode16, 0x02F8, 0x02F8, 0x00, 0x08)
            IRQNoFlags() { 3 }
        })
    }
}
 Scope(\_SB.PCI0) {
  OperationRegion(PCST, SystemIO, 0xae00, 0x08)
  Field(PCST, DWordAcc, NoLock, WriteAsZeros) {
   PCIU, 32,
   PCID, 32,
  }
  OperationRegion(SEJ, SystemIO, 0xae08, 0x04)
  Field(SEJ, DWordAcc, NoLock, WriteAsZeros) {
   B0EJ, 32,
  }
  Method(PCEJ, 1, NotSerialized) {
   B0EJ = 1 << Arg0
   Return (0x0)
  }
  External(\_SB.PCI0.PCNT, MethodObj)
  Method(PCNF, 0) {
   Local0 = 0
   While (Local0 < 31) {
    Local0++
    If (PCIU & (1 << Local0)) {
    PCNT(Local0, 1)
    }
    If (PCID & (1 << Local0)) {
    PCNT(Local0, 3)
    }
   }
  }
 }
 Scope(\_SB) {
  Scope(PCI0) {
   Name(_PRT, Package() {
    Package() { 0x0000ffff, 0, LNKD, 0 }, Package() { 0x0000ffff, 1, LNKA, 0 }, Package() { 0x0000ffff, 2, LNKB, 0 }, Package() { 0x0000ffff, 3, LNKC, 0 },
    Package() { 0x0001ffff, 0, LNKS, 0 }, Package() { 0x0001ffff, 1, LNKB, 0 }, Package() { 0x0001ffff, 2, LNKC, 0 }, Package() { 0x0001ffff, 3, LNKD, 0 },
    Package() { 0x0002ffff, 0, LNKB, 0 }, Package() { 0x0002ffff, 1, LNKC, 0 }, Package() { 0x0002ffff, 2, LNKD, 0 }, Package() { 0x0002ffff, 3, LNKA, 0 },
    Package() { 0x0003ffff, 0, LNKC, 0 }, Package() { 0x0003ffff, 1, LNKD, 0 }, Package() { 0x0003ffff, 2, LNKA, 0 }, Package() { 0x0003ffff, 3, LNKB, 0 },
    Package() { 0x0004ffff, 0, LNKD, 0 }, Package() { 0x0004ffff, 1, LNKA, 0 }, Package() { 0x0004ffff, 2, LNKB, 0 }, Package() { 0x0004ffff, 3, LNKC, 0 },
    Package() { 0x0005ffff, 0, LNKA, 0 }, Package() { 0x0005ffff, 1, LNKB, 0 }, Package() { 0x0005ffff, 2, LNKC, 0 }, Package() { 0x0005ffff, 3, LNKD, 0 },
    Package() { 0x0006ffff, 0, LNKB, 0 }, Package() { 0x0006ffff, 1, LNKC, 0 }, Package() { 0x0006ffff, 2, LNKD, 0 }, Package() { 0x0006ffff, 3, LNKA, 0 },
    Package() { 0x0007ffff, 0, LNKC, 0 }, Package() { 0x0007ffff, 1, LNKD, 0 }, Package() { 0x0007ffff, 2, LNKA, 0 }, Package() { 0x0007ffff, 3, LNKB, 0 },
    Package() { 0x0008ffff, 0, LNKD, 0 }, Package() { 0x0008ffff, 1, LNKA, 0 }, Package() { 0x0008ffff, 2, LNKB, 0 }, Package() { 0x0008ffff, 3, LNKC, 0 },
    Package() { 0x0009ffff, 0, LNKA, 0 }, Package() { 0x0009ffff, 1, LNKB, 0 }, Package() { 0x0009ffff, 2, LNKC, 0 }, Package() { 0x0009ffff, 3, LNKD, 0 },
    Package() { 0x000affff, 0, LNKB, 0 }, Package() { 0x000affff, 1, LNKC, 0 }, Package() { 0x000affff, 2, LNKD, 0 }, Package() { 0x000affff, 3, LNKA, 0 },
    Package() { 0x000bffff, 0, LNKC, 0 }, Package() { 0x000bffff, 1, LNKD, 0 }, Package() { 0x000bffff, 2, LNKA, 0 }, Package() { 0x000bffff, 3, LNKB, 0 },
    Package() { 0x000cffff, 0, LNKD, 0 }, Package() { 0x000cffff, 1, LNKA, 0 }, Package() { 0x000cffff, 2, LNKB, 0 }, Package() { 0x000cffff, 3, LNKC, 0 },
    Package() { 0x000dffff, 0, LNKA, 0 }, Package() { 0x000dffff, 1, LNKB, 0 }, Package() { 0x000dffff, 2, LNKC, 0 }, Package() { 0x000dffff, 3, LNKD, 0 },
    Package() { 0x000effff, 0, LNKB, 0 }, Package() { 0x000effff, 1, LNKC, 0 }, Package() { 0x000effff, 2, LNKD, 0 }, Package() { 0x000effff, 3, LNKA, 0 },
    Package() { 0x000fffff, 0, LNKC, 0 }, Package() { 0x000fffff, 1, LNKD, 0 }, Package() { 0x000fffff, 2, LNKA, 0 }, Package() { 0x000fffff, 3, LNKB, 0 },
    Package() { 0x0010ffff, 0, LNKD, 0 }, Package() { 0x0010ffff, 1, LNKA, 0 }, Package() { 0x0010ffff, 2, LNKB, 0 }, Package() { 0x0010ffff, 3, LNKC, 0 },
    Package() { 0x0011ffff, 0, LNKA, 0 }, Package() { 0x0011ffff, 1, LNKB, 0 }, Package() { 0x0011ffff, 2, LNKC, 0 }, Package() { 0x0011ffff, 3, LNKD, 0 },
    Package() { 0x0012ffff, 0, LNKB, 0 }, Package() { 0x0012ffff, 1, LNKC, 0 }, Package() { 0x0012ffff, 2, LNKD, 0 }, Package() { 0x0012ffff, 3, LNKA, 0 },
    Package() { 0x0013ffff, 0, LNKC, 0 }, Package() { 0x0013ffff, 1, LNKD, 0 }, Package() { 0x0013ffff, 2, LNKA, 0 }, Package() { 0x0013ffff, 3, LNKB, 0 },
    Package() { 0x0014ffff, 0, LNKD, 0 }, Package() { 0x0014ffff, 1, LNKA, 0 }, Package() { 0x0014ffff, 2, LNKB, 0 }, Package() { 0x0014ffff, 3, LNKC, 0 },
    Package() { 0x0015ffff, 0, LNKA, 0 }, Package() { 0x0015ffff, 1, LNKB, 0 }, Package() { 0x0015ffff, 2, LNKC, 0 }, Package() { 0x0015ffff, 3, LNKD, 0 },
    Package() { 0x0016ffff, 0, LNKB, 0 }, Package() { 0x0016ffff, 1, LNKC, 0 }, Package() { 0x0016ffff, 2, LNKD, 0 }, Package() { 0x0016ffff, 3, LNKA, 0 },
    Package() { 0x0017ffff, 0, LNKC, 0 }, Package() { 0x0017ffff, 1, LNKD, 0 }, Package() { 0x0017ffff, 2, LNKA, 0 }, Package() { 0x0017ffff, 3, LNKB, 0 },
    Package() { 0x0018ffff, 0, LNKD, 0 }, Package() { 0x0018ffff, 1, LNKA, 0 }, Package() { 0x0018ffff, 2, LNKB, 0 }, Package() { 0x0018ffff, 3, LNKC, 0 },
    Package() { 0x0019ffff, 0, LNKA, 0 }, Package() { 0x0019ffff, 1, LNKB, 0 }, Package() { 0x0019ffff, 2, LNKC, 0 }, Package() { 0x0019ffff, 3, LNKD, 0 },
    Package() { 0x001affff, 0, LNKB, 0 }, Package() { 0x001affff, 1, LNKC, 0 }, Package() { 0x001affff, 2, LNKD, 0 }, Package() { 0x001affff, 3, LNKA, 0 },
    Package() { 0x001bffff, 0, LNKC, 0 }, Package() { 0x001bffff, 1, LNKD, 0 }, Package() { 0x001bffff, 2, LNKA, 0 }, Package() { 0x001bffff, 3, LNKB, 0 },
    Package() { 0x001cffff, 0, LNKD, 0 }, Package() { 0x001cffff, 1, LNKA, 0 }, Package() { 0x001cffff, 2, LNKB, 0 }, Package() { 0x001cffff, 3, LNKC, 0 },
    Package() { 0x001dffff, 0, LNKA, 0 }, Package() { 0x001dffff, 1, LNKB, 0 }, Package() { 0x001dffff, 2, LNKC, 0 }, Package() { 0x001dffff, 3, LNKD, 0 },
    Package() { 0x001effff, 0, LNKB, 0 }, Package() { 0x001effff, 1, LNKC, 0 }, Package() { 0x001effff, 2, LNKD, 0 }, Package() { 0x001effff, 3, LNKA, 0 },
    Package() { 0x001fffff, 0, LNKC, 0 }, Package() { 0x001fffff, 1, LNKD, 0 }, Package() { 0x001fffff, 2, LNKA, 0 }, Package() { 0x001fffff, 3, LNKB, 0 },
   })
  }
  Field(PCI0.ISA.P40C, ByteAcc, NoLock, Preserve) {
   PRQ0, 8,
   PRQ1, 8,
   PRQ2, 8,
   PRQ3, 8
  }
  Method(IQST, 1, NotSerialized) {
   If (0x80 & Arg0) {
    Return (0x09)
   }
   Return (0x0B)
  }
  Method(IQCR, 1, Serialized) {
   Name(PRR0, ResourceTemplate() {
    Interrupt(, Level, ActiveHigh, Shared) { 0 }
   })
   CreateDWordField(PRR0, 0x05, PRRI)
   If (Arg0 < 0x80) {
    PRRI = Arg0
   }
   Return (PRR0)
  }
  Device(LNKA) { Name(_HID, EISAID("PNP0C0F")) Name(_UID, 0) Name(_PRS, ResourceTemplate() { Interrupt(, Level, ActiveHigh, Shared) { 5, 10, 11 } }) Method(_STA, 0, NotSerialized) { Return (IQST(PRQ0)) } Method(_DIS, 0, NotSerialized) { PRQ0 |= 0x80 } Method(_CRS, 0, NotSerialized) { Return (IQCR(PRQ0)) } Method(_SRS, 1, NotSerialized) { CreateDWordField(Arg0, 0x05, PRRI) PRQ0 = PRRI } }
  Device(LNKB) { Name(_HID, EISAID("PNP0C0F")) Name(_UID, 1) Name(_PRS, ResourceTemplate() { Interrupt(, Level, ActiveHigh, Shared) { 5, 10, 11 } }) Method(_STA, 0, NotSerialized) { Return (IQST(PRQ1)) } Method(_DIS, 0, NotSerialized) { PRQ1 |= 0x80 } Method(_CRS, 0, NotSerialized) { Return (IQCR(PRQ1)) } Method(_SRS, 1, NotSerialized) { CreateDWordField(Arg0, 0x05, PRRI) PRQ1 = PRRI } }
  Device(LNKC) { Name(_HID, EISAID("PNP0C0F")) Name(_UID, 2) Name(_PRS, ResourceTemplate() { Interrupt(, Level, ActiveHigh, Shared) { 5, 10, 11 } }) Method(_STA, 0, NotSerialized) { Return (IQST(PRQ2)) } Method(_DIS, 0, NotSerialized) { PRQ2 |= 0x80 } Method(_CRS, 0, NotSerialized) { Return (IQCR(PRQ2)) } Method(_SRS, 1, NotSerialized) { CreateDWordField(Arg0, 0x05, PRRI) PRQ2 = PRRI } }
  Device(LNKD) { Name(_HID, EISAID("PNP0C0F")) Name(_UID, 3) Name(_PRS, ResourceTemplate() { Interrupt(, Level, ActiveHigh, Shared) { 5, 10, 11 } }) Method(_STA, 0, NotSerialized) { Return (IQST(PRQ3)) } Method(_DIS, 0, NotSerialized) { PRQ3 |= 0x80 } Method(_CRS, 0, NotSerialized) { Return (IQCR(PRQ3)) } Method(_SRS, 1, NotSerialized) { CreateDWordField(Arg0, 0x05, PRRI) PRQ3 = PRRI } }
  Device(LNKS) {
   Name(_HID, EISAID("PNP0C0F"))
   Name(_UID, 4)
   Name(_PRS, ResourceTemplate() {
    Interrupt(, Level, ActiveHigh, Shared) { 9 }
   })
   Method(_STA, 0, NotSerialized) { Return (0x0b) }
   Method(_DIS, 0, NotSerialized) { }
   Method(_CRS, 0, NotSerialized) { Return (_PRS) }
   Method(_SRS, 1, NotSerialized) { }
  }
 }
 Scope(\_GPE) {
  Name(_HID, "ACPI0006")
  Method(_L00) {
  }
  Method(_E01) {
  }
  Method(_E02) {
  }
  Method(_L03) {
  }
  Method(_L04) {
  }
  Method(_L05) {
  }
  Method(_L06) {
  }
  Method(_L07) {
  }
  Method(_L08) {
  }
  Method(_L09) {
  }
  Method(_L0A) {
  }
  Method(_L0B) {
  }
  Method(_L0C) {
  }
  Method(_L0D) {
  }
  Method(_L0E) {
  }
  Method(_L0F) {
  }
 }
}
