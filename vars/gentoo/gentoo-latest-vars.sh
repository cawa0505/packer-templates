#!/bin/bash

build_arch="amd64"
uri="http://distfiles.gentoo.org/releases/$build_arch/autobuilds"

iso=`curl -s $uri/latest-install-$build_arch-minimal.txt | grep -v "^#"`
iso_file=$(echo $iso | cut -d" " -f1)
iso_sha512=$(wget -q $uri/$iso_file.DIGESTS -O - | grep ${iso_file##*/} | head -n 1 | cut -f 1 -d " ")

path="$(cd "$(dirname "$0")" && pwd)"

cat > "${path}/latest.json" << EOF
{
    "iso_url": "${uri}/${iso_file}",
    "iso_checksum": "${iso_sha512}",
    "iso_checksum_type": "sha512"
}
EOF

exit 0
