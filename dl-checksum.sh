#!/usr/bin/env sh
VER=1.8.1
DIR=~/Downloads
MIRROR=http://downloads.alluxio.org/downloads/files/$VER
FILE_PREFIX=alluxio-$VER

dl()
{
    HADOOP_VER=$1
    FILE=$FILE_PREFIX-hadoop-$HADOOP_VER-bin.tar.gz
    wget -O $DIR/$FILE $MIRROR/$FILE
}

dl 2.8
dl 2.7
dl 2.6
dl 2.5
dl 2.4
sha256sum $DIR/${FILE_PREFIX}*

