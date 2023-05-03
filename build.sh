#!/bin/bash


function buildVP2420Image {

		if [ ! -f 3rdparty/blobs/mainboard/protectli/vault_ehl/me.bin ]; then

		"Missing Proper Blob files"
		exit 1

	fi

	version='v1.1.0'

	docker run --rm -t -u $UID -v $PWD:/home/coreboot/coreboot \
		-v $HOME/.ssh:/home/coreboot/.ssh \
		-w /home/coreboot/coreboot coreboot/coreboot-sdk:2021-09-23_b0d87f753c \
		/bin/bash -c "make distclean"

	cp configs/config.protectli_vp2420 .config

	echo "Building coreboot for Protectli vp2420"

	docker run --rm -t -u $UID -v $PWD:/home/coreboot/coreboot \
		-v $HOME/.ssh:/home/coreboot/.ssh \
		-w /home/coreboot/coreboot coreboot/coreboot-sdk:2021-09-23_b0d87f753c \
		/bin/bash -c "make olddefconfig && make"

	cp build/coreboot.rom protectli_vp2420_$version.rom
	if [ $? -eq 0 ]; then
		echo "Result binary placed in $PWD/protectli_vp2420_$version.rom" 
		sha256sum protectli_vp2420_$version.rom > protectli_vp2420_$version.rom.sha256
	else
		echo "Build failed!"
		exit 1
	fi
}



buildVP2420Image "vp2420"

