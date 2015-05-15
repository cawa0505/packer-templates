#!/bin/env bash

# add eix and some portage management tool
chroot /mnt/gentoo /bin/bash <<'EOF'
emerge app-portage/eix app-portage/gentoolkit
EOF

