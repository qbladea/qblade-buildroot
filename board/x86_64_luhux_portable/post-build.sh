#!/bin/sh

set -u
set -e

# 刪除不需要的文件
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
