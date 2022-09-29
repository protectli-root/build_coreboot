#!/bin/bash

if [ ! -f 3rdpart/blobs/mainboard/protectli/vault_glk/ifwi.bin ] || [ ! -f 3rdpart/blobs/mainboard/protectli/vault_glk/glk_1005.bin ]; then
	echo "Proper blobs are not found"
	exit 1
fi 



if [ ! -f 3rdparty/fsp/GeminilakeFspBinPkg/Fsp.bsf ] || [ ! -f 3rdparty/fsp/GeminilakeFspBinPkg/Fsp.fd ]; then
	echo "Geminilake FSP package missing!"
	exit 1
fi

sleep 60

version=$(cat .coreboot-version)

docker run --rm -it -v $PWD:/home/coreboot/coreboot \
	-v $HOME/.ssh:/home/coreboot/.ssh \
	-w /home/coreboot/coreboot coreboot/coreboot-sdk:0ad5fbd48d \
	/bin/bash -c "make distclean"

cp configs/config.protectli_$1 .config

echo "Building coreboot for Protectli $1"

docker run --rm -it -v $PWD:/home/coreboot/coreboot \
	-v $HOME/.ssh:/home/coreboot/.ssh \
	-w /home/coreboot/coreboot coreboot/coreboot-sdk:0ad5fbd48d \
	/bin/bash -c "make olddefconfig && make"

cp build/coreboot.rom protectli_vault_glk_v$version.rom
if [ $? -eq 0 ]; then
	echo "Result binary placed in $PWD/protectli_vault_glk_v$version.rom" 
	sha256sum protectli_vault_glk_v$version.rom > protectli_vault_glk_v$version.rom.sha256
else
	echo "Build failed!"
	exit 1
fi
