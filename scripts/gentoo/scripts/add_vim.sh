#!/bin/env bash

# install vim and vim-core use minimal flags, and remove nano editor
chroot /mnt/gentoo /bin/bash <<'EOF'
echo "app-editors/vim-core minimal" > /etc/portage/package.use/vim
echo "app-editors/vim minimal" >> /etc/portage/package.use/vim
emerge app-editors/vim-core app-editors/vim
eselect editor set vi
emerge -c app-editors/nano
EOF

