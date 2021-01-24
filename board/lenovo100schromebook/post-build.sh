#!/bin/sh

set -u
set -e

# Add nftables.rule
cat board/lenovo100schromebook/nftables.rule > ${TARGET_DIR}/etc/nftables.rule
chmod 0700 ${TARGET_DIR}/etc/nftables.rule

# 刪除不需要的文件
file=${TARGET_DIR}/etc/init.d/S50telnet
if [ -e ${file} ]; then
    rm -v ${file}
fi

dir=${TARGET_DIR}/usr/share/applications
if [ -e ${dir} ]; then
    rm -rv ${dir}
fi

dir=${TARGET_DIR}/usr/share/common-lisp
if [ -e ${dir} ]; then
    rm -rv ${dir}
fi

dir=${TARGET_DIR}/usr/share/ecryptfs-utils/ecryptfs-mount-private.desktop
if [ -e ${dir} ]; then
    rm -rv ${dir}
fi

dir=${TARGET_DIR}/usr/share/ecryptfs-utils/ecryptfs-setup-private.desktop
if [ -e ${dir} ]; then
    rm -rv ${dir}
fi

dir=${TARGET_DIR}/usr/share/gitweb/
if [ -e ${dir} ]; then
    rm -rv ${dir}
fi

dir=${TARGET_DIR}/usr/share/icons/
if [ -e ${dir} ]; then
    rm -rv ${dir}
fi

dir=${TARGET_DIR}/usr/share/perl5
if [ -e ${dir} ]; then
    rm -rv ${dir}
fi

dir=${TARGET_DIR}/usr/share/pixmaps
if [ -e ${dir} ]; then
    rm -rv ${dir}
fi
