#!/bin/bash


if [ ! -f 3rdparty/blobs/mainboard/protectli/vault_cml/me.bin ]; then
	echo "Platform blobs missing! You must obtain them first."
	exit 1
fi

version=$(cat .coreboot-version)

docker run --rm -it -v $PWD:/home/coreboot/coreboot \
	-v $HOME/.ssh:/home/coreboot/.ssh \
	-w /home/coreboot/coreboot coreboot/coreboot-sdk:0ad5fbd48d \
	/bin/bash -c "make distclean"

cp configs/config.protectli_vp46xx .config

echo "Building coreboot for Protectli $1"

docker run --rm -it -v $PWD:/home/coreboot/coreboot \
	-v $HOME/.ssh:/home/coreboot/.ssh \
	-w /home/coreboot/coreboot coreboot/coreboot-sdk:0ad5fbd48d \
	/bin/bash -c "make olddefconfig && make"

cp build/coreboot.rom protectli_vp4630_v$version.rom
if [ $? -eq 0 ]; then
	echo "Result binary placed in $PWD/protectli_vp4630_v$version.rom" 
	sha256sum protectli_vp4630_v$version.rom > protectli_vp4630_v$version.rom.sha256
else
	echo "Build failed!"
	exit 1
fi
