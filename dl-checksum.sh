#!/usr/bin/env sh
set -e
DIR=~/Downloads
MIRROR=http://downloads.alluxio.org/downloads/files

dl()
{
    local ver=$1
    local hadoop_ver=$2
    local url="${MIRROR}/${ver}/alluxio-${ver}-hadoop-${hadoop_ver}-bin.tar.gz.md5"
    printf "    # %s\n" $url
    printf "    hadoop-%s: md5:%s\n" $hadoop_ver $(curl -sSL $url | awk '{print $1}')
}

dl_ver() {
    ver=$1
    printf "  '%s':\n" $ver
    dl $ver 2.9
    dl $ver 2.8
    dl $ver 2.7
    dl $ver 2.6
    dl $ver 2.5
    dl $ver 2.4

}

dl_ver ${1:-1.8.2}
