#!/usr/bin/env sh
set -e
DIR=~/Downloads
MIRROR=http://downloads.alluxio.org/downloads/files

# https://downloads.alluxio.io/downloads/files/2.7.3/alluxio-2.7.3-bin.tar.gz

dl()
{
    local ver=$1
    local file="alluxio-${ver}-bin.tar.gz"
    local url="${MIRROR}/${ver}/${file}"
    local lfile="${DIR}/${file}"
    if [ ! -e $lfile ];
    then
        curl -sSLf -o $lfile $url
    fi
    printf "  # %s\n" $url
    printf "  '%s': sha256:%s\n" $ver $(sha256sum $lfile | awk '{print $1}')
}

dl ${1:-2.9.0}
