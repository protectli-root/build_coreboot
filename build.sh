#!/usr/bin/env bash

function buildVP46xxImage {

	if [ ! -f 3rdparty/blobs/mainboard/protectli/vault_cml/me.bin ]; then

		"Missing Proper Blob files"
		exit 1

	fi

	version=$(git describe)
	version=${version}

	docker run --rm -it -u $UID -v $PWD:/home/coreboot/coreboot \
		-v $HOME/.ssh:/home/coreboot/.ssh \
		-w /home/coreboot/coreboot coreboot/coreboot-sdk:2021-09-23_b0d87f753c \
		/bin/bash -c "make distclean"

	cp configs/config.protectli_cml_vp4630_vp4650 .config

	echo "Building Dasharo for Protectli $2 (version $version)"

	docker run --rm -it -u $UID -v $PWD:/home/coreboot/coreboot \
		-v $HOME/.ssh:/home/coreboot/.ssh \
		-w /home/coreboot/coreboot coreboot/coreboot-sdk:2021-09-23_b0d87f753c \
		/bin/bash -c "make olddefconfig && make -j$(nproc)"

	cp build/coreboot.rom protectli_vp4650_${version}.rom
	if [ $? -eq 0 ]; then
		echo "Result binary placed in $PWD/protectli_vp4650_${version}.rom" 
		sha256sum protectli_vp4650_${version}.rom > protectli_vp4650_${version}.rom.sha256
	else
		echo "Build failed!"
		exit 1
	fi
}

buildVP46xxImage
