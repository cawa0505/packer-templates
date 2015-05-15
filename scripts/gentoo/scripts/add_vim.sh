#!/bin/env bash

# add minimal use flags 
chroot /mnt/gentoo /bin/bash <<'EOF'
echo "app-editors/vim minimal" > /etc/portage/package.use/vim
EOF

