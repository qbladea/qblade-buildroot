#!/bin/sh

set -u
set -e

# Add a console on tty1
if [ -e ${TARGET_DIR}/etc/inittab ]; then
    grep -qE '^tty1::' ${TARGET_DIR}/etc/inittab || \
	sed -i '/GENERIC_SERIAL/a\
tty1::respawn:/sbin/getty -L  tty1 0 vt100' ${TARGET_DIR}/etc/inittab
fi

# Add a console on tty2
if [ -e ${TARGET_DIR}/etc/inittab ]; then
    grep -qE '^tty2::' ${TARGET_DIR}/etc/inittab || \
	sed -i '/GENERIC_SERIAL/a\
tty1::respawn:/sbin/getty -L  tty2 0 vt100' ${TARGET_DIR}/etc/inittab
fi

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
