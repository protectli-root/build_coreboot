# goswid

This project is very similiar and intended to be compatible with [python-uswid](https://github.com/hughsie/python-uswid).

It's basically a tool to convert SWID (Software Identification Tags) and CoSWID (Consise Software Identification Tags) between different formats.

It's currently capable of converting SWID/CoSWID between JSON, XML, CBOR and uSWID+CBOR

If embedded into a coreboot build, one can use this tool to extract all SBOM Information out of an compiled coreboot image and save it in a format of choice. For example:
```sh
go run ./cmd/goswid convert -o sbom.json coreboot.rom
```

for more Information, see: [python-uswid](https://github.com/hughsie/python-uswid)
