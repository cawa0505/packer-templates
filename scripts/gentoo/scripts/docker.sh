#!/bin/env bash

chroot /mnt/gentoo /bin/bash <<'EOF'
emerge sys-kernel/gentoo-sources
emerge --autounmask-write app-emulation/docker
etc-update --automode -5
emerge app-emulation/docker
rc-update add docker default
usermod -aG docker vagrant
EOF
