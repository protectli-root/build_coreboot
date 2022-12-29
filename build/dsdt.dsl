/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20210331 (64-bit version)
 * Copyright (c) 2000 - 2021 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of build/dsdt.aml, Tue Dec 27 23:09:43 2022
 *
 * Original Table Header:
 *     Signature        "DSDT"
 *     Length           0x00001E0F (7695)
 *     Revision         0x02
 *     Checksum         0x39
 *     OEM ID           "COREv4"
 *     OEM Table ID     "COREBOOT"
 *     OEM Revision     0x20110725 (537986853)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20210331 (539034417)
 */
DefinitionBlock ("", "DSDT", 2, "COREv4", "COREBOOT", 0x20110725)
{
    External (_SB_.CNOT, MethodObj)    // 1 Arguments
    External (_SB_.MPTS, MethodObj)    // 1 Arguments
    External (_SB_.MWAK, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.A4GB, IntObj)
    External (_SB_.PCI0.A4GS, IntObj)
    External (_SB_.PCI0.EGPM, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RGPM, MethodObj)    // 0 Arguments
    External (A4GB, IntObj)
    External (A4GS, IntObj)
    External (DNVS, OpRegionObj)
    External (GNVS, OpRegionObj)

    Name (OSYS, Zero)
    Name (PICM, Zero)
    Name (PWRS, One)
    Method (_PIC, 1, NotSerialized)  // _PIC: Interrupt Model
    {
        PICM = Arg0
    }

    Scope (_SB)
    {
        Name (PCBA, 0xE0000000)
        Name (PCLN, 0x10000000)
        OperationRegion (PCFG, SystemMemory, PCBA, PCLN)
    }

    Scope (_SB)
    {
        Method (_SWS, 0, NotSerialized)  // _SWS: System Wake Source
        {
            Return (PM1I) /* \PM1I */
        }
    }

    Scope (_GPE)
    {
        Method (_SWS, 0, NotSerialized)  // _SWS: System Wake Source
        {
            Return (GPEI) /* \GPEI */
        }
    }

    OperationRegion (POST, SystemIO, 0x80, One)
    Field (POST, ByteAcc, Lock, Preserve)
    {
        DBG0,   8
    }

    Method (_PTS, 1, NotSerialized)  // _PTS: Prepare To Sleep
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

    Method (_WAK, 1, NotSerialized)  // _WAK: Wake
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

        Return (Package (0x02)
        {
            Zero, 
            Zero
        })
    }

    Field (GNVS, ByteAcc, NoLock, Preserve)
    {
        Offset (0x02), 
        SMIF,   8, 
        Offset (0x04), 
        PPCM,   8, 
        TLVL,   8, 
        LIDS,   8, 
        Offset (0x08), 
        CBMC,   32, 
        PM1I,   64, 
        GPEI,   64, 
        DPTE,   8, 
        NHLA,   64, 
        NHLL,   32, 
        Offset (0x2B), 
        U2WE,   16, 
        U3WE,   16, 
        UIOR,   8, 
        Offset (0x38)
    }

    Method (PNOT, 0, NotSerialized)
    {
        \_SB.CNOT (0x81)
    }

    Method (PPCN, 0, NotSerialized)
    {
        \_SB.CNOT (0x80)
    }

    Method (TNOT, 0, NotSerialized)
    {
        \_SB.CNOT (0x82)
    }

    Device (_SB.PCI0)
    {
        Name (_HID, EisaId ("PNP0A08") /* PCI Express Bus */)  // _HID: Hardware ID
        Name (_CID, EisaId ("PNP0A03") /* PCI Bus */)  // _CID: Compatible ID
        Name (_SEG, Zero)  // _SEG: PCI Segment
        Name (_UID, Zero)  // _UID: Unique ID
        Device (MCHC)
        {
            Name (_ADR, Zero)  // _ADR: Address
            OperationRegion (MCHP, PCI_Config, Zero, 0x0100)
            Field (MCHP, DWordAcc, NoLock, Preserve)
            {
                Offset (0x40), 
                EPEN,   1, 
                    ,   11, 
                EPBR,   20, 
                Offset (0x48), 
                MHEN,   1, 
                    ,   14, 
                MHBR,   17, 
                Offset (0x60), 
                PXEN,   1, 
                PXSZ,   2, 
                    ,   23, 
                PXBR,   6, 
                Offset (0x68), 
                DIEN,   1, 
                    ,   11, 
                DIBR,   20, 
                Offset (0xA0), 
                TOM,    64, 
                TUUD,   64, 
                Offset (0xBC), 
                TLUD,   32
            }
        }

        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
        {
            Name (MCRS, ResourceTemplate ()
            {
                WordBusNumber (ResourceProducer, MinFixed, MaxFixed, PosDecode,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x00FF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0100,             // Length
                    ,, )
                DWordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x00000000,         // Granularity
                    0x00000000,         // Range Minimum
                    0x00000CF7,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00000CF8,         // Length
                    ,, , TypeStatic, DenseTranslation)
                IO (Decode16,
                    0x0CF8,             // Range Minimum
                    0x0CF8,             // Range Maximum
                    0x01,               // Alignment
                    0x08,               // Length
                    )
                DWordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x00000000,         // Granularity
                    0x00000D00,         // Range Minimum
                    0x0000FFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x0000F300,         // Length
                    ,, , TypeStatic, DenseTranslation)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000A0000,         // Range Minimum
                    0x000BFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00020000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C0000,         // Range Minimum
                    0x000C3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C4000,         // Range Minimum
                    0x000C7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C8000,         // Range Minimum
                    0x000CBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000CC000,         // Range Minimum
                    0x000CFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D0000,         // Range Minimum
                    0x000D3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D4000,         // Range Minimum
                    0x000D7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D8000,         // Range Minimum
                    0x000DBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000DC000,         // Range Minimum
                    0x000DFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E0000,         // Range Minimum
                    0x000E3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E4000,         // Range Minimum
                    0x000E7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E8000,         // Range Minimum
                    0x000EBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000EC000,         // Range Minimum
                    0x000EFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000F0000,         // Range Minimum
                    0x000FFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00010000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x00000000,         // Range Minimum
                    0xDFFFFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0xE0000000,         // Length
                    ,, _Y00, AddressRangeMemory, TypeStatic)
                QWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x0000000000000000, // Granularity
                    0x0000000000010000, // Range Minimum
                    0x000000000001FFFF, // Range Maximum
                    0x0000000000000000, // Translation Offset
                    0x0000000000010000, // Length
                    ,, _Y01, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0xFC800000,         // Range Minimum
                    0xFE7FFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x02000000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0xFED40000,         // Range Minimum
                    0xFED47FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00008000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
            })
            CreateDWordField (MCRS, \_SB.PCI0._CRS._Y00._MIN, PMIN)  // _MIN: Minimum Base Address
            CreateDWordField (MCRS, \_SB.PCI0._CRS._Y00._MAX, PMAX)  // _MAX: Maximum Base Address
            CreateDWordField (MCRS, \_SB.PCI0._CRS._Y00._LEN, PLEN)  // _LEN: Length
            PMIN = (^MCHC.TLUD & 0xFFF00000)
            PLEN = ((PMAX - PMIN) + One)
            If ((A4GS == Zero))
            {
                CreateQWordField (MCRS, \_SB.PCI0._CRS._Y01._LEN, MSEN)  // _LEN: Length
                MSEN = Zero
            }
            Else
            {
                CreateQWordField (MCRS, \_SB.PCI0._CRS._Y01._MIN, MMIN)  // _MIN: Minimum Base Address
                CreateQWordField (MCRS, \_SB.PCI0._CRS._Y01._MAX, MMAX)  // _MAX: Maximum Base Address
                CreateQWordField (MCRS, \_SB.PCI0._CRS._Y01._LEN, MLEN)  // _LEN: Length
                MLEN = A4GS /* External reference */
                MMIN = A4GB /* External reference */
                MMAX = ((MMIN + MLEN) - One)
            }

            Return (MCRS) /* \_SB_.PCI0._CRS.MCRS */
        }

        Method (GMHB, 0, Serialized)
        {
            Local0 = (^MCHC.MHBR << 0x0F)
            Return (Local0)
        }

        Method (GEPB, 0, Serialized)
        {
            Local0 = (^MCHC.EPBR << 0x0C)
            Return (Local0)
        }

        Method (GPCB, 0, Serialized)
        {
            Local0 = (^MCHC.PXBR << 0x1A)
            Return (Local0)
        }

        Method (GPCL, 0, Serialized)
        {
            Local0 = (0x10000000 >> ^MCHC.PXSZ) /* \_SB_.PCI0.MCHC.PXSZ */
            Return (Local0)
        }

        Method (GDMB, 0, Serialized)
        {
            Local0 = (^MCHC.DIBR << 0x0C)
            Return (Local0)
        }

        Device (PDRC)
        {
            Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (BUF0, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x00000000,         // Address Base
                        0x00008000,         // Address Length
                        _Y02)
                    Memory32Fixed (ReadWrite,
                        0x00000000,         // Address Base
                        0x00001000,         // Address Length
                        _Y03)
                    Memory32Fixed (ReadWrite,
                        0x00000000,         // Address Base
                        0x00001000,         // Address Length
                        _Y04)
                    Memory32Fixed (ReadWrite,
                        0x00000000,         // Address Base
                        0x00000000,         // Address Length
                        _Y05)
                    Memory32Fixed (ReadOnly,
                        0xFED90000,         // Address Base
                        0x00004000,         // Address Length
                        )
                    Memory32Fixed (ReadOnly,
                        0x00000000,         // Address Base
                        0x01000000,         // Address Length
                        _Y06)
                    Memory32Fixed (ReadOnly,
                        0xFEE00000,         // Address Base
                        0x00100000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0xFED00000,         // Address Base
                        0x00000400,         // Address Length
                        )
                })
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._CRS._Y02._BAS, MBR0)  // _BAS: Base Address
                MBR0 = GMHB ()
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._CRS._Y03._BAS, DBR0)  // _BAS: Base Address
                DBR0 = GDMB ()
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._CRS._Y04._BAS, EBR0)  // _BAS: Base Address
                EBR0 = GEPB ()
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._CRS._Y05._BAS, XBR0)  // _BAS: Base Address
                XBR0 = GPCB ()
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._CRS._Y05._LEN, XSZ0)  // _LEN: Length
                XSZ0 = GPCL ()
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._CRS._Y06._BAS, FBR0)  // _BAS: Base Address
                FBR0 = 0xFF000000
                Return (BUF0) /* \_SB_.PCI0.PDRC._CRS.BUF0 */
            }
        }

        Device (GFX0)
        {
            Name (_ADR, 0x00020000)  // _ADR: Address
        }

        Method (PCRB, 1, NotSerialized)
        {
            Return ((0xFD000000 + (Arg0 << 0x10)))
        }

        Method (PCRR, 2, Serialized)
        {
            OperationRegion (PCRD, SystemMemory, (PCRB (Arg0) + Arg1), 0x04)
            Field (PCRD, DWordAcc, NoLock, Preserve)
            {
                DATA,   32
            }

            Return (DATA) /* \_SB_.PCI0.PCRR.DATA */
        }

        Method (PCRA, 3, Serialized)
        {
            OperationRegion (PCRD, SystemMemory, (PCRB (Arg0) + Arg1), 0x04)
            Field (PCRD, DWordAcc, NoLock, Preserve)
            {
                DATA,   32
            }

            DATA &= Arg2
            PCRR (Arg0, Arg1)
        }

        Method (PCRO, 3, Serialized)
        {
            OperationRegion (PCRD, SystemMemory, (PCRB (Arg0) + Arg1), 0x04)
            Field (PCRD, DWordAcc, NoLock, Preserve)
            {
                DATA,   32
            }

            DATA |= Arg2
            PCRR (Arg0, Arg1)
        }

        Scope (\_SB.PCI0)
        {
            Method (SCSC, 1, Serialized)
            {
                PCRA (Arg0, 0x1C20, Zero)
                PCRA (Arg0, 0x4820, Zero)
            }

            Device (PEMC)
            {
                Name (_ADR, 0x001A0000)  // _ADR: Address
                Name (_DDN, "eMMC Controller")  // _DDN: DOS Device Name
                Name (TEMP, Zero)
                Name (DSUU, ToUUID ("f6c13ea5-65cd-461f-ab7a-29f7e8d5bd61") /* Unknown UUID */)
                OperationRegion (SCSR, PCI_Config, Zero, 0x0100)
                Field (SCSR, WordAcc, NoLock, Preserve)
                {
                    VDID,   32, 
                    Offset (0x84), 
                    PMCR,   16, 
                    Offset (0xA2), 
                        ,   2, 
                    PGEN,   1
                }

                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    SCSC (0x52)
                }

                Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                {
                    Stall (0x32)
                    PGEN = Zero
                    SCSC (0x52)
                    PMCR &= 0xFFFC
                    TEMP = PMCR /* \_SB_.PCI0.PEMC.PMCR */
                }

                Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                {
                    PGEN = One
                    PMCR |= 0x03
                    TEMP = PMCR /* \_SB_.PCI0.PEMC.PMCR */
                }

                Device (CARD)
                {
                    Name (_ADR, 0x08)  // _ADR: Address
                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (Zero)
                    }
                }

                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == DSUU))
                    {
                        If ((Arg1 >= Zero))
                        {
                            If ((Arg2 == Zero))
                            {
                                If ((VDID == 0x02C48086))
                                {
                                    Return (Buffer (0x02)
                                    {
                                         0x00, 0x02                                       // ..
                                    })
                                }
                            }

                            If ((Arg2 == 0x09))
                            {
                                Return (Buffer (One)
                                {
                                     0x04                                             // .
                                })
                            }
                        }
                    }

                    Return (Buffer (One)
                    {
                         0x00                                             // .
                    })
                }
            }

            Device (SDXC)
            {
                Name (_ADR, 0x00140005)  // _ADR: Address
                Name (_DDN, "SD Controller")  // _DDN: DOS Device Name
                Name (TEMP, Zero)
                Name (DSUU, ToUUID ("f6c13ea5-65cd-461f-ab7a-29f7e8d5bd61") /* Unknown UUID */)
                OperationRegion (SDPC, PCI_Config, Zero, 0x0100)
                Field (SDPC, WordAcc, NoLock, Preserve)
                {
                    Offset (0x84), 
                    PMCR,   16, 
                    Offset (0xA2), 
                        ,   2, 
                    PGEN,   1
                }

                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == DSUU))
                    {
                        If ((Arg1 >= Zero))
                        {
                            If ((Arg2 == Zero))
                            {
                                Return (Buffer (One)
                                {
                                     0x19                                             // .
                                })
                            }

                            If ((Arg2 == 0x03))
                            {
                                Sleep (0x64)
                                Return (Buffer (One)
                                {
                                     0x00                                             // .
                                })
                            }

                            If ((Arg2 == 0x04))
                            {
                                Sleep (0x64)
                                Return (Buffer (One)
                                {
                                     0x00                                             // .
                                })
                            }
                        }
                    }

                    Return (Buffer (One)
                    {
                         0x00                                             // .
                    })
                }

                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    SCSC (0x53)
                }

                Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                {
                    PGEN = Zero
                    SCSC (0x53)
                    PMCR &= 0xFFFC
                    TEMP = PMCR /* \_SB_.PCI0.SDXC.PMCR */
                }

                Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                {
                    PGEN = One
                    PMCR |= 0x03
                    TEMP = PMCR /* \_SB_.PCI0.SDXC.PMCR */
                }

                Device (CARD)
                {
                    Name (_ADR, 0x08)  // _ADR: Address
                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (One)
                    }
                }
            }
        }

        Method (GRXS, 1, Serialized)
        {
            OperationRegion (PREG, SystemMemory, GADD (Arg0), 0x04)
            Field (PREG, AnyAcc, NoLock, Preserve)
            {
                    ,   1, 
                RXST,   1
            }

            Return (RXST) /* \_SB_.PCI0.GRXS.RXST */
        }

        Method (GTXS, 1, Serialized)
        {
            OperationRegion (PREG, SystemMemory, GADD (Arg0), 0x04)
            Field (PREG, AnyAcc, NoLock, Preserve)
            {
                TXST,   1
            }

            Return (TXST) /* \_SB_.PCI0.GTXS.TXST */
        }

        Method (STXS, 1, Serialized)
        {
            OperationRegion (PREG, SystemMemory, GADD (Arg0), 0x04)
            Field (PREG, AnyAcc, NoLock, Preserve)
            {
                TXST,   1
            }

            TXST = One
        }

        Method (CTXS, 1, Serialized)
        {
            OperationRegion (PREG, SystemMemory, GADD (Arg0), 0x04)
            Field (PREG, AnyAcc, NoLock, Preserve)
            {
                TXST,   1
            }

            TXST = Zero
        }

        Method (GPMO, 2, Serialized)
        {
            OperationRegion (PREG, SystemMemory, GADD (Arg0), 0x04)
            Field (PREG, AnyAcc, NoLock, Preserve)
            {
                    ,   10, 
                MODE,   3
            }

            MODE = Arg1
        }

        Method (GTXE, 2, Serialized)
        {
            OperationRegion (PREG, SystemMemory, GADD (Arg0), 0x04)
            Field (PREG, AnyAcc, NoLock, Preserve)
            {
                Offset (0x01), 
                TXDI,   1
            }

            TXDI = !Arg1
        }

        Method (GRXE, 2, Serialized)
        {
            OperationRegion (PREG, SystemMemory, GADD (Arg0), 0x04)
            Field (PREG, AnyAcc, NoLock, Preserve)
            {
                    ,   9, 
                RXDI,   1
            }

            RXDI = !Arg1
        }

        Method (GSCI, 2, Serialized)
        {
            OperationRegion (PREG, SystemMemory, GADD (Arg0), 0x04)
            Field (PREG, AnyAcc, NoLock, Preserve)
            {
                    ,   19, 
                SCIR,   1
            }

            SCIR = Arg1
        }

        Device (GPIO)
        {
            Name (_HID, "INT34BB")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_DDN, "GPIO Controller")  // _DDN: DOS Device Name
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00000000,         // Address Length
                    _Y07)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00000000,         // Address Length
                    _Y08)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00000000,         // Address Length
                    _Y09)
                Interrupt (ResourceConsumer, Level, ActiveLow, Shared, ,, )
                {
                    0x0000000E,
                }
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.PCI0.GPIO._Y07._BAS, BAS0)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.PCI0.GPIO._Y07._LEN, LEN0)  // _LEN: Length
                BAS0 = PCRB (0x6E)
                LEN0 = 0x00010000
                CreateDWordField (RBUF, \_SB.PCI0.GPIO._Y08._BAS, BAS1)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.PCI0.GPIO._Y08._LEN, LEN1)  // _LEN: Length
                BAS1 = PCRB (0x6D)
                LEN1 = 0x00010000
                CreateDWordField (RBUF, \_SB.PCI0.GPIO._Y09._BAS, BAS4)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.PCI0.GPIO._Y09._LEN, LEN4)  // _LEN: Length
                BAS4 = PCRB (0x6A)
                LEN4 = 0x00010000
                Return (RBUF) /* \_SB_.PCI0.GPIO.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }
        }

        Method (GADD, 1, NotSerialized)
        {
            If (((Arg0 >= Zero) && (Arg0 <= 0x43)))
            {
                Local0 = 0x6E
                Local1 = (Arg0 - Zero)
            }

            If (((Arg0 >= 0x44) && (Arg0 <= 0xB4)))
            {
                Local0 = 0x6D
                Local1 = (Arg0 - 0x44)
            }

            If (((Arg0 >= 0xF4) && (Arg0 <= 0x0103)))
            {
                Local0 = 0x6C
                Local1 = (Arg0 - 0xF4)
            }

            If (((Arg0 >= 0x0104) && (Arg0 <= 0x0116)))
            {
                Local0 = 0x6B
                Local1 = (Arg0 - 0x0104)
            }

            If (((Arg0 >= 0xB5) && (Arg0 <= 0xF3)))
            {
                Local0 = 0x6A
                Local1 = (Arg0 - 0xB5)
            }

            Local2 = PCRB (Local0)
            Local2 += 0x0600
            Return ((Local2 + (Local1 * 0x10)))
        }

        Method (GPID, 1, Serialized)
        {
            Switch (ToInteger (Arg0))
            {
                Case (Zero)
                {
                    Local0 = 0x6E
                }
                Case (One)
                {
                    Local0 = 0x6D
                }
                Case (0x02)
                {
                    Local0 = 0x6C
                }
                Case (0x03)
                {
                    Local0 = 0x6B
                }
                Case (0x04)
                {
                    Local0 = 0x6A
                }
                Default
                {
                    Return (Zero)
                }

            }

            Return (Local0)
        }

        Method (CGPM, 2, Serialized)
        {
            Local0 = GPID (Arg0)
            If ((Local0 != Zero))
            {
                PCRA (Local0, 0x10, 0xFFFFFFFFFFFFFFC0)
                PCRO (Local0, 0x10, (Arg1 & 0x3F))
            }
        }

        Name (GPMB, Package (0x05)
        {
            Zero, 
            Zero, 
            Zero, 
            Zero, 
            Zero
        })
        Method (SGPM, 0, Serialized)
        {
            Local0 = Zero
            While ((Local0 < 0x05))
            {
                Local1 = GPID (Local0)
                GPMB [Local0] = PCRR (Local1, 0x10)
                Local0++
            }
        }

        Method (RGPM, 0, Serialized)
        {
            Local0 = Zero
            While ((Local0 < 0x05))
            {
                CGPM (Local0, DerefOf (GPMB [Local0]))
                Local0++
            }
        }

        Method (EGPM, 0, Serialized)
        {
            SGPM ()
            Local0 = Zero
            While ((Local0 < 0x05))
            {
                CGPM (Local0, 0x3F)
                Local0++
            }
        }

        Device (LPCB)
        {
            Name (_ADR, 0x001F0000)  // _ADR: Address
            Name (_DDN, "LPC Bus Device")  // _DDN: DOS Device Name
            Device (DMAC)
            {
                Name (_HID, EisaId ("PNP0200") /* PC-class DMA Controller */)  // _HID: Hardware ID
                Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                {
                    IO (Decode16,
                        0x0000,             // Range Minimum
                        0x0000,             // Range Maximum
                        0x01,               // Alignment
                        0x20,               // Length
                        )
                    IO (Decode16,
                        0x0081,             // Range Minimum
                        0x0081,             // Range Maximum
                        0x01,               // Alignment
                        0x11,               // Length
                        )
                    IO (Decode16,
                        0x0093,             // Range Minimum
                        0x0093,             // Range Maximum
                        0x01,               // Alignment
                        0x0D,               // Length
                        )
                    IO (Decode16,
                        0x00C0,             // Range Minimum
                        0x00C0,             // Range Maximum
                        0x01,               // Alignment
                        0x20,               // Length
                        )
                    DMA (Compatibility, NotBusMaster, Transfer8_16, )
                        {4}
                })
            }

            Device (FWH)
            {
                Name (_HID, EisaId ("INT0800") /* Intel 82802 Firmware Hub Device */)  // _HID: Hardware ID
                Name (_DDN, "Firmware Hub")  // _DDN: DOS Device Name
                Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                {
                    Memory32Fixed (ReadOnly,
                        0xFF000000,         // Address Base
                        0x01000000,         // Address Length
                        )
                })
            }

            Device (HPET)
            {
                Name (_HID, EisaId ("PNP0103") /* HPET System Timer */)  // _HID: Hardware ID
                Name (_CID, EisaId ("PNP0C01") /* System Board */)  // _CID: Compatible ID
                Name (_DDN, "High Precision Event Timer")  // _DDN: DOS Device Name
                Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                {
                    Memory32Fixed (ReadWrite,
                        0xFED00000,         // Address Base
                        0x00000400,         // Address Length
                        )
                })
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }
            }

            Device (MATH)
            {
                Name (_HID, EisaId ("PNP0C04") /* x87-compatible Floating Point Processing Unit */)  // _HID: Hardware ID
                Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                {
                    IO (Decode16,
                        0x00F0,             // Range Minimum
                        0x00F0,             // Range Maximum
                        0x01,               // Alignment
                        0x01,               // Length
                        )
                    IRQNoFlags ()
                        {13}
                })
            }

            Device (PIC)
            {
                Name (_HID, EisaId ("PNP0000") /* 8259-compatible Programmable Interrupt Controller */)  // _HID: Hardware ID
                Name (_DDN, "8259 Interrupt Controller")  // _DDN: DOS Device Name
                Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                {
                    IO (Decode16,
                        0x0020,             // Range Minimum
                        0x0020,             // Range Maximum
                        0x01,               // Alignment
                        0x02,               // Length
                        )
                    IO (Decode16,
                        0x0024,             // Range Minimum
                        0x0024,             // Range Maximum
                        0x01,               // Alignment
                        0x02,               // Length
                        )
                    IO (Decode16,
                        0x0028,             // Range Minimum
                        0x0028,             // Range Maximum
                        0x01,               // Alignment
                        0x02,               // Length
                        )
                    IO (Decode16,
                        0x002C,             // Range Minimum
                        0x002C,             // Range Maximum
                        0x01,               // Alignment
                        0x02,               // Length
                        )
                    IO (Decode16,
                        0x0030,             // Range Minimum
                        0x0030,             // Range Maximum
                        0x01,               // Alignment
                        0x02,               // Length
                        )
                    IO (Decode16,
                        0x0034,             // Range Minimum
                        0x0034,             // Range Maximum
                        0x01,               // Alignment
                        0x02,               // Length
                        )
                    IO (Decode16,
                        0x0038,             // Range Minimum
                        0x0038,             // Range Maximum
                        0x01,               // Alignment
                        0x02,               // Length
                        )
                    IO (Decode16,
                        0x003C,             // Range Minimum
                        0x003C,             // Range Maximum
                        0x01,               // Alignment
                        0x02,               // Length
                        )
                    IO (Decode16,
                        0x00A0,             // Range Minimum
                        0x00A0,             // Range Maximum
                        0x01,               // Alignment
                        0x02,               // Length
                        )
                    IO (Decode16,
                        0x00A4,             // Range Minimum
                        0x00A4,             // Range Maximum
                        0x01,               // Alignment
                        0x02,               // Length
                        )
                    IO (Decode16,
                        0x00A8,             // Range Minimum
                        0x00A8,             // Range Maximum
                        0x01,               // Alignment
                        0x02,               // Length
                        )
                    IO (Decode16,
                        0x00AC,             // Range Minimum
                        0x00AC,             // Range Maximum
                        0x01,               // Alignment
                        0x02,               // Length
                        )
                    IO (Decode16,
                        0x00B0,             // Range Minimum
                        0x00B0,             // Range Maximum
                        0x01,               // Alignment
                        0x02,               // Length
                        )
                    IO (Decode16,
                        0x00B4,             // Range Minimum
                        0x00B4,             // Range Maximum
                        0x01,               // Alignment
                        0x02,               // Length
                        )
                    IO (Decode16,
                        0x00B8,             // Range Minimum
                        0x00B8,             // Range Maximum
                        0x01,               // Alignment
                        0x02,               // Length
                        )
                    IO (Decode16,
                        0x00BC,             // Range Minimum
                        0x00BC,             // Range Maximum
                        0x01,               // Alignment
                        0x02,               // Length
                        )
                    IO (Decode16,
                        0x04D0,             // Range Minimum
                        0x04D0,             // Range Maximum
                        0x01,               // Alignment
                        0x02,               // Length
                        )
                    IRQNoFlags ()
                        {2}
                })
            }

            Device (LDRC)
            {
                Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                Name (_UID, 0x02)  // _UID: Unique ID
                Name (_DDN, "Legacy Device Resources")  // _DDN: DOS Device Name
                Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                {
                    IO (Decode16,
                        0x002E,             // Range Minimum
                        0x002E,             // Range Maximum
                        0x01,               // Alignment
                        0x02,               // Length
                        )
                    IO (Decode16,
                        0x004E,             // Range Minimum
                        0x004E,             // Range Maximum
                        0x01,               // Alignment
                        0x02,               // Length
                        )
                    IO (Decode16,
                        0x0061,             // Range Minimum
                        0x0061,             // Range Maximum
                        0x01,               // Alignment
                        0x01,               // Length
                        )
                    IO (Decode16,
                        0x0063,             // Range Minimum
                        0x0063,             // Range Maximum
                        0x01,               // Alignment
                        0x01,               // Length
                        )
                    IO (Decode16,
                        0x0065,             // Range Minimum
                        0x0065,             // Range Maximum
                        0x01,               // Alignment
                        0x01,               // Length
                        )
                    IO (Decode16,
                        0x0067,             // Range Minimum
                        0x0067,             // Range Maximum
                        0x01,               // Alignment
                        0x01,               // Length
                        )
                    IO (Decode16,
                        0x0080,             // Range Minimum
                        0x0080,             // Range Maximum
                        0x01,               // Alignment
                        0x01,               // Length
                        )
                    IO (Decode16,
                        0x0092,             // Range Minimum
                        0x0092,             // Range Maximum
                        0x01,               // Alignment
                        0x01,               // Length
                        )
                    IO (Decode16,
                        0x00B2,             // Range Minimum
                        0x00B2,             // Range Maximum
                        0x01,               // Alignment
                        0x02,               // Length
                        )
                    IO (Decode16,
                        0x1800,             // Range Minimum
                        0x1800,             // Range Maximum
                        0x01,               // Alignment
                        0xFF,               // Length
                        )
                })
            }

            Device (RTC)
            {
                Name (_HID, EisaId ("PNP0B00") /* AT Real-Time Clock */)  // _HID: Hardware ID
                Name (_DDN, "Real Time Clock")  // _DDN: DOS Device Name
                Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                {
                    IO (Decode16,
                        0x0070,             // Range Minimum
                        0x0070,             // Range Maximum
                        0x01,               // Alignment
                        0x08,               // Length
                        )
                })
            }

            Device (TIMR)
            {
                Name (_HID, EisaId ("PNP0100") /* PC-class System Timer */)  // _HID: Hardware ID
                Name (_DDN, "8254 Timer")  // _DDN: DOS Device Name
                Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                {
                    IO (Decode16,
                        0x0040,             // Range Minimum
                        0x0040,             // Range Maximum
                        0x01,               // Alignment
                        0x04,               // Length
                        )
                    IO (Decode16,
                        0x0050,             // Range Minimum
                        0x0050,             // Range Maximum
                        0x10,               // Alignment
                        0x04,               // Length
                        )
                    IRQNoFlags ()
                        {0}
                })
            }
        }

        Device (HDAS)
        {
            Name (_ADR, 0x001F0003)  // _ADR: Address
            Name (_DDN, "Audio Controller")  // _DDN: DOS Device Name
            Name (UUID, ToUUID ("a69f886e-6ceb-4594-a41f-7b5dce24c553") /* Unknown UUID */)
            Name (_S0W, 0x03)  // _S0W: S0 Device Wake State
            Name (NBUF, ResourceTemplate ()
            {
                QWordMemory (ResourceConsumer, PosDecode, MinFixed, MaxFixed, NonCacheable, ReadOnly,
                    0x0000000000000000, // Granularity
                    0x0000000000000000, // Range Minimum
                    0x0000000000000000, // Range Maximum
                    0x0000000000000000, // Translation Offset
                    0x0000000000000001, // Length
                    ,, _Y0A, AddressRangeACPI, TypeStatic)
            })
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == UUID))
                {
                    If ((Arg2 == Zero))
                    {
                        If ((((Arg1 == One) && (NHLA != Zero)) && (
                            NHLL != Zero)))
                        {
                            Return (Buffer (One)
                            {
                                 0x03                                             // .
                            })
                        }
                        Else
                        {
                            Return (Buffer (One)
                            {
                                 0x01                                             // .
                            })
                        }
                    }

                    If ((Arg2 == One))
                    {
                        CreateQWordField (NBUF, \_SB.PCI0.HDAS._Y0A._MIN, NBAS)  // _MIN: Minimum Base Address
                        CreateQWordField (NBUF, \_SB.PCI0.HDAS._Y0A._MAX, NMAS)  // _MAX: Maximum Base Address
                        CreateQWordField (NBUF, \_SB.PCI0.HDAS._Y0A._LEN, NLEN)  // _LEN: Length
                        NBAS = NHLA /* \NHLA */
                        NMAS = NHLA /* \NHLA */
                        NLEN = NHLL /* \NHLL */
                        Return (NBUF) /* \_SB_.PCI0.HDAS.NBUF */
                    }
                }

                Return (Buffer (One)
                {
                     0x00                                             // .
                })
            }
        }

        Method (IRQM, 1, Serialized)
        {
            Name (IQAA, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF, 
                    Zero, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    One, 
                    Zero, 
                    0x11
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x02, 
                    Zero, 
                    0x12
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x03, 
                    Zero, 
                    0x13
                }
            })
            Name (IQAP, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF, 
                    Zero, 
                    Zero, 
                    0x0B
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    One, 
                    Zero, 
                    0x0A
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x02, 
                    Zero, 
                    0x0B
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x03, 
                    Zero, 
                    0x0B
                }
            })
            Name (IQBA, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF, 
                    Zero, 
                    Zero, 
                    0x11
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    One, 
                    Zero, 
                    0x12
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x02, 
                    Zero, 
                    0x13
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x03, 
                    Zero, 
                    0x10
                }
            })
            Name (IQBP, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF, 
                    Zero, 
                    Zero, 
                    0x0A
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    One, 
                    Zero, 
                    0x0B
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x02, 
                    Zero, 
                    0x0B
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x03, 
                    Zero, 
                    0x0B
                }
            })
            Name (IQCA, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF, 
                    Zero, 
                    Zero, 
                    0x12
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    One, 
                    Zero, 
                    0x13
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x02, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x03, 
                    Zero, 
                    0x11
                }
            })
            Name (IQCP, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF, 
                    Zero, 
                    Zero, 
                    0x0B
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    One, 
                    Zero, 
                    0x0B
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x02, 
                    Zero, 
                    0x0B
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x03, 
                    Zero, 
                    0x0A
                }
            })
            Name (IQDA, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF, 
                    Zero, 
                    Zero, 
                    0x13
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    One, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x02, 
                    Zero, 
                    0x11
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x03, 
                    Zero, 
                    0x12
                }
            })
            Name (IQDP, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF, 
                    Zero, 
                    Zero, 
                    0x0B
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    One, 
                    Zero, 
                    0x0B
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x02, 
                    Zero, 
                    0x0A
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x03, 
                    Zero, 
                    0x0B
                }
            })
            Switch (ToInteger (Arg0))
            {
                Case (Package (0x04)
                    {
                        One, 
                        0x05, 
                        0x09, 
                        0x0D
                    }

)
                {
                    If (PICM)
                    {
                        Return (IQAA) /* \_SB_.PCI0.IRQM.IQAA */
                    }
                    Else
                    {
                        Return (IQAP) /* \_SB_.PCI0.IRQM.IQAP */
                    }
                }
                Case (Package (0x04)
                    {
                        0x02, 
                        0x06, 
                        0x0A, 
                        0x0E
                    }

)
                {
                    If (PICM)
                    {
                        Return (IQBA) /* \_SB_.PCI0.IRQM.IQBA */
                    }
                    Else
                    {
                        Return (IQBP) /* \_SB_.PCI0.IRQM.IQBP */
                    }
                }
                Case (Package (0x04)
                    {
                        0x03, 
                        0x07, 
                        0x0B, 
                        0x0F
                    }

)
                {
                    If (PICM)
                    {
                        Return (IQCA) /* \_SB_.PCI0.IRQM.IQCA */
                    }
                    Else
                    {
                        Return (IQCP) /* \_SB_.PCI0.IRQM.IQCP */
                    }
                }
                Case (Package (0x04)
                    {
                        0x04, 
                        0x08, 
                        0x0C, 
                        0x10
                    }

)
                {
                    If (PICM)
                    {
                        Return (IQDA) /* \_SB_.PCI0.IRQM.IQDA */
                    }
                    Else
                    {
                        Return (IQDP) /* \_SB_.PCI0.IRQM.IQDP */
                    }
                }
                Default
                {
                    If (PICM)
                    {
                        Return (IQDA) /* \_SB_.PCI0.IRQM.IQDA */
                    }
                    Else
                    {
                        Return (IQDP) /* \_SB_.PCI0.IRQM.IQDP */
                    }
                }

            }
        }

        Device (RP01)
        {
            Name (_ADR, 0x001C0000)  // _ADR: Address
            OperationRegion (RPCS, PCI_Config, 0x4C, 0x04)
            Field (RPCS, AnyAcc, NoLock, Preserve)
            {
                Offset (0x03), 
                RPPN,   8
            }

            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                Return (IRQM (RPPN))
            }
        }

        Device (RP02)
        {
            Name (_ADR, 0x001C0001)  // _ADR: Address
            OperationRegion (RPCS, PCI_Config, 0x4C, 0x04)
            Field (RPCS, AnyAcc, NoLock, Preserve)
            {
                Offset (0x03), 
                RPPN,   8
            }

            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                Return (IRQM (RPPN))
            }
        }

        Device (RP03)
        {
            Name (_ADR, 0x001C0002)  // _ADR: Address
            OperationRegion (RPCS, PCI_Config, 0x4C, 0x04)
            Field (RPCS, AnyAcc, NoLock, Preserve)
            {
                Offset (0x03), 
                RPPN,   8
            }

            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                Return (IRQM (RPPN))
            }
        }

        Device (RP04)
        {
            Name (_ADR, 0x001C0003)  // _ADR: Address
            OperationRegion (RPCS, PCI_Config, 0x4C, 0x04)
            Field (RPCS, AnyAcc, NoLock, Preserve)
            {
                Offset (0x03), 
                RPPN,   8
            }

            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                Return (IRQM (RPPN))
            }
        }

        Device (RP05)
        {
            Name (_ADR, 0x001C0004)  // _ADR: Address
            OperationRegion (RPCS, PCI_Config, 0x4C, 0x04)
            Field (RPCS, AnyAcc, NoLock, Preserve)
            {
                Offset (0x03), 
                RPPN,   8
            }

            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                Return (IRQM (RPPN))
            }
        }

        Device (RP06)
        {
            Name (_ADR, 0x001C0005)  // _ADR: Address
            OperationRegion (RPCS, PCI_Config, 0x4C, 0x04)
            Field (RPCS, AnyAcc, NoLock, Preserve)
            {
                Offset (0x03), 
                RPPN,   8
            }

            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                Return (IRQM (RPPN))
            }
        }

        Device (RP07)
        {
            Name (_ADR, 0x001C0006)  // _ADR: Address
            OperationRegion (RPCS, PCI_Config, 0x4C, 0x04)
            Field (RPCS, AnyAcc, NoLock, Preserve)
            {
                Offset (0x03), 
                RPPN,   8
            }

            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                Return (IRQM (RPPN))
            }
        }

        Device (RP08)
        {
            Name (_ADR, 0x001C0007)  // _ADR: Address
            OperationRegion (RPCS, PCI_Config, 0x4C, 0x04)
            Field (RPCS, AnyAcc, NoLock, Preserve)
            {
                Offset (0x03), 
                RPPN,   8
            }

            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                Return (IRQM (RPPN))
            }
        }

        Device (RP09)
        {
            Name (_ADR, 0x001D0000)  // _ADR: Address
            OperationRegion (RPCS, PCI_Config, 0x4C, 0x04)
            Field (RPCS, AnyAcc, NoLock, Preserve)
            {
                Offset (0x03), 
                RPPN,   8
            }

            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                Return (IRQM (RPPN))
            }
        }

        Device (RP10)
        {
            Name (_ADR, 0x001D0001)  // _ADR: Address
            OperationRegion (RPCS, PCI_Config, 0x4C, 0x04)
            Field (RPCS, AnyAcc, NoLock, Preserve)
            {
                Offset (0x03), 
                RPPN,   8
            }

            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                Return (IRQM (RPPN))
            }
        }

        Device (RP11)
        {
            Name (_ADR, 0x001D0002)  // _ADR: Address
            OperationRegion (RPCS, PCI_Config, 0x4C, 0x04)
            Field (RPCS, AnyAcc, NoLock, Preserve)
            {
                Offset (0x03), 
                RPPN,   8
            }

            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                Return (IRQM (RPPN))
            }
        }

        Device (RP12)
        {
            Name (_ADR, 0x001D0003)  // _ADR: Address
            OperationRegion (RPCS, PCI_Config, 0x4C, 0x04)
            Field (RPCS, AnyAcc, NoLock, Preserve)
            {
                Offset (0x03), 
                RPPN,   8
            }

            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                Return (IRQM (RPPN))
            }
        }

        Device (RP13)
        {
            Name (_ADR, 0x001D0004)  // _ADR: Address
            OperationRegion (RPCS, PCI_Config, 0x4C, 0x04)
            Field (RPCS, AnyAcc, NoLock, Preserve)
            {
                Offset (0x03), 
                RPPN,   8
            }

            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                Return (IRQM (RPPN))
            }
        }

        Device (RP14)
        {
            Name (_ADR, 0x001D0005)  // _ADR: Address
            OperationRegion (RPCS, PCI_Config, 0x4C, 0x04)
            Field (RPCS, AnyAcc, NoLock, Preserve)
            {
                Offset (0x03), 
                RPPN,   8
            }

            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                Return (IRQM (RPPN))
            }
        }

        Device (RP15)
        {
            Name (_ADR, 0x001D0006)  // _ADR: Address
            OperationRegion (RPCS, PCI_Config, 0x4C, 0x04)
            Field (RPCS, AnyAcc, NoLock, Preserve)
            {
                Offset (0x03), 
                RPPN,   8
            }

            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                Return (IRQM (RPPN))
            }
        }

        Device (RP16)
        {
            Name (_ADR, 0x001D0007)  // _ADR: Address
            OperationRegion (RPCS, PCI_Config, 0x4C, 0x04)
            Field (RPCS, AnyAcc, NoLock, Preserve)
            {
                Offset (0x03), 
                RPPN,   8
            }

            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                Return (IRQM (RPPN))
            }
        }

        Device (I2C0)
        {
            Name (_ADR, 0x00150000)  // _ADR: Address
            Name (_DDN, "Serial IO I2C Controller 0")  // _DDN: DOS Device Name
        }

        Device (I2C1)
        {
            Name (_ADR, 0x00150001)  // _ADR: Address
            Name (_DDN, "Serial IO I2C Controller 1")  // _DDN: DOS Device Name
        }

        Device (I2C2)
        {
            Name (_ADR, 0x00150002)  // _ADR: Address
            Name (_DDN, "Serial IO I2C Controller 2")  // _DDN: DOS Device Name
        }

        Device (I2C3)
        {
            Name (_ADR, 0x00150003)  // _ADR: Address
            Name (_DDN, "Serial IO I2C Controller 3")  // _DDN: DOS Device Name
        }

        Device (I2C4)
        {
            Name (_ADR, 0x00190000)  // _ADR: Address
            Name (_DDN, "Serial IO I2C Controller 4")  // _DDN: DOS Device Name
        }

        Device (I2C5)
        {
            Name (_ADR, 0x00190001)  // _ADR: Address
            Name (_DDN, "Serial IO I2C Controller 5")  // _DDN: DOS Device Name
        }

        Device (SPI0)
        {
            Name (_ADR, 0x001E0002)  // _ADR: Address
            Name (_DDN, "Serial IO SPI Controller 0")  // _DDN: DOS Device Name
        }

        Device (SPI1)
        {
            Name (_ADR, 0x001E0003)  // _ADR: Address
            Name (_DDN, "Serial IO SPI Controller 1")  // _DDN: DOS Device Name
        }

        Device (SPI2)
        {
            Name (_ADR, 0x00120006)  // _ADR: Address
            Name (_DDN, "Serial IO SPI Controller 2")  // _DDN: DOS Device Name
        }

        Device (UAR0)
        {
            Name (_ADR, 0x001E0000)  // _ADR: Address
            Name (_DDN, "Serial IO UART Controller 0")  // _DDN: DOS Device Name
        }

        Device (UAR1)
        {
            Name (_ADR, 0x001E0001)  // _ADR: Address
            Name (_DDN, "Serial IO UART Controller 1")  // _DDN: DOS Device Name
        }

        Device (UAR2)
        {
            Name (_ADR, 0x00190002)  // _ADR: Address
            Name (_DDN, "Serial IO UART Controller 2")  // _DDN: DOS Device Name
        }

        Device (SBUS)
        {
            Name (_ADR, 0x001F0004)  // _ADR: Address
        }

        Device (ISHB)
        {
            Name (_ADR, 0x00130000)  // _ADR: Address
            Name (_DDN, "Integrated Sensor Hub Controller")  // _DDN: DOS Device Name
        }

        Method (UPWE, 3, Serialized)
        {
            Local0 = (Arg1 + ((Arg0 - One) * 0x10))
            OperationRegion (PSCR, SystemMemory, ((Arg2 << 0x10) + Local0), 0x10)
            Field (PSCR, DWordAcc, NoLock, Preserve)
            {
                PSCT,   32
            }

            Local0 = PSCT /* \_SB_.PCI0.UPWE.PSCT */
            Local0 &= 0xFFFFFFFF7F01FFED
            Local0 |= 0x06000000
            PSCT = Local0
        }

        Method (UWES, 3, Serialized)
        {
            Local0 = Arg0
            While (One)
            {
                FindSetRightBit (Local0, Local1)
                If ((Local1 == Zero))
                {
                    Break
                }

                UPWE (Local1, Arg1, Arg2)
                Local0 &= (Local0 - One)
            }
        }

        Device (XHCI)
        {
            Name (_ADR, 0x00140000)  // _ADR: Address
            Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
            {
                0x6D, 
                0x04
            })
            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
                UWES ((U2WE & 0x0FFF), 0x0480, XMEM)
                UWES ((U3WE & 0x3F), 0x0540, XMEM)
            }

            Name (_S3D, 0x03)  // _S3D: S3 Device State
            Name (_S0W, 0x03)  // _S0W: S0 Device Wake State
            Name (_S3W, 0x03)  // _S3W: S3 Device Wake State
            Name (_S4D, 0x03)  // _S4D: S4 Device State
            Name (_S4W, 0x03)  // _S4W: S4 Device Wake State
            OperationRegion (XPRT, PCI_Config, Zero, 0x0100)
            Field (XPRT, AnyAcc, NoLock, Preserve)
            {
                Offset (0x10), 
                Offset (0x12), 
                XMEM,   16
            }

            Method (_PS0, 0, Serialized)  // _PS0: Power State 0
            {
            }

            Method (_PS3, 0, Serialized)  // _PS3: Power State 3
            {
            }

            Device (RHUB)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Device (HS01)
                {
                    Name (_ADR, One)  // _ADR: Address
                }

                Device (HS02)
                {
                    Name (_ADR, 0x02)  // _ADR: Address
                }

                Device (HS03)
                {
                    Name (_ADR, 0x03)  // _ADR: Address
                }

                Device (HS04)
                {
                    Name (_ADR, 0x04)  // _ADR: Address
                }

                Device (HS05)
                {
                    Name (_ADR, 0x05)  // _ADR: Address
                }

                Device (HS06)
                {
                    Name (_ADR, 0x06)  // _ADR: Address
                }

                Device (HS07)
                {
                    Name (_ADR, 0x07)  // _ADR: Address
                }

                Device (HS08)
                {
                    Name (_ADR, 0x08)  // _ADR: Address
                }

                Device (HS09)
                {
                    Name (_ADR, 0x09)  // _ADR: Address
                }

                Device (HS10)
                {
                    Name (_ADR, 0x0A)  // _ADR: Address
                }

                Device (HS11)
                {
                    Name (_ADR, 0x0B)  // _ADR: Address
                }

                Device (HS12)
                {
                    Name (_ADR, 0x0C)  // _ADR: Address
                }

                Device (USR1)
                {
                    Name (_ADR, 0x0B)  // _ADR: Address
                }

                Device (USR2)
                {
                    Name (_ADR, 0x0C)  // _ADR: Address
                }

                Device (SS01)
                {
                    Name (_ADR, 0x0D)  // _ADR: Address
                }

                Device (SS02)
                {
                    Name (_ADR, 0x0E)  // _ADR: Address
                }

                Device (SS03)
                {
                    Name (_ADR, 0x0F)  // _ADR: Address
                }

                Device (SS04)
                {
                    Name (_ADR, 0x10)  // _ADR: Address
                }

                Device (SS05)
                {
                    Name (_ADR, 0x11)  // _ADR: Address
                }

                Device (SS06)
                {
                    Name (_ADR, 0x12)  // _ADR: Address
                }
            }
        }

        Scope (\_SB.PCI0)
        {
            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                If ((Arg0 == ToUUID ("33db4d5b-1ff7-401c-9657-7441c03dd766") /* PCI Host Bridge Device */))
                {
                    Return (Arg3)
                }
                Else
                {
                    CreateDWordField (Arg3, Zero, CDW1)
                    CDW1 |= 0x04
                    Return (Arg3)
                }
            }
        }

        Device (GLAN)
        {
            Name (_ADR, 0x001F0006)  // _ADR: Address
            Name (_S0W, 0x03)  // _S0W: S0 Device Wake State
            Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
            {
                0x6D, 
                0x04
            })
            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
            }
        }
    }

    Name (_S0, Package (0x04)  // _S0_: S0 System State
    {
        Zero, 
        Zero, 
        Zero, 
        Zero
    })
    Name (_S3, Package (0x04)  // _S3_: S3 System State
    {
        0x05, 
        Zero, 
        Zero, 
        Zero
    })
    Name (_S4, Package (0x04)  // _S4_: S4 System State
    {
        0x06, 
        Zero, 
        Zero, 
        Zero
    })
    Name (_S5, Package (0x04)  // _S5_: S5 System State
    {
        0x07, 
        Zero, 
        Zero, 
        Zero
    })
}

