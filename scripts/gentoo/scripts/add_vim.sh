#!/bin/env bash

# add minimal use flags 
chroot /mnt/gentoo /bin/bash <<'EOF'
echo "app-editors/vim-core minimal" > /etc/portage/package.use/vim
echo "app-editors/vim minimal" >> /etc/portage/package.use/vim
emerge app-editors/vim-core app-editors/vim
eselect editor set vi
EOF

