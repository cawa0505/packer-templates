#!/bin/env bash

# add minimal use flags 
chroot /mnt/gentoo /bin/bash <<'EOF'
emerge app-portage/eix
EOF

