#!/usr/bin/env bash

function buildVP46xxImage {

	if [ ! -f 3rdparty/blobs/mainboard/protectli/vault_cml/me.bin ]; then
		echo "Missing Proper Blob files"
		exit 1
	fi

	version='v1.1.0'

	docker run --rm -t -u $UID -v $PWD:/home/coreboot/coreboot \
		-v $HOME/.ssh:/home/coreboot/.ssh \
		-w /home/coreboot/coreboot coreboot/coreboot-sdk:2021-09-23_b0d87f753c \
		/bin/bash -c "make distclean"

	cp configs/config.protectli_cml_vp4670 .config

	echo "Building Dasharo for Protectli vp4670 $version"

	docker run --rm -t -u $UID -v $PWD:/home/coreboot/coreboot \
		-v $HOME/.ssh:/home/coreboot/.ssh \
		-w /home/coreboot/coreboot coreboot/coreboot-sdk:2021-09-23_b0d87f753c \
		/bin/bash -c "make olddefconfig && make -j$(nproc)"

	cp build/coreboot.rom protectli_vp4670_$version.rom
	if [ $? -eq 0 ]; then
		echo "Result binary placed in $PWD/protectli_vp4670_$version.rom" 
		sha256sum protectli_vp4670_$version.rom > protectli_vp4670_$version.rom.sha256
	else
		echo "Build failed!"
		exit 1
	fi
}


buildVP46xxImage "vp4670"
