#!/bin/bash

cp $SCRIPTS/scripts/kernel-support-docker.config /mnt/gentoo/tmp/kernel.config

chroot /mnt/gentoo /bin/bash <<'EOF'
emerge sys-kernel/gentoo-sources
emerge sys-kernel/genkernel
cd /usr/src/linux
mv /tmp/kernel.config .config
genkernel --install --symlink --oldconfig all
EOF
