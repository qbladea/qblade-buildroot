#!/bin/sh

set -u

# 脚本当前的位置
POS=$(dirname $(realpath $0))


# 伪造一个FHS环境
rm -rvf /bin
ln -sv ${GUIX_ENVIRONMENT}/bin /
ln -sv ${GUIX_ENVIRONMENT}/sbin /
mkdir -v /usr
ln -sv ${GUIX_ENVIRONMENT}/bin /usr/
ln -sv ${GUIX_ENVIRONMENT}/sbin /usr/
ln -sv ${GUIX_ENVIRONMENT}/include /usr/
ln -sv ${GUIX_ENVIRONMENT}/libexec /usr/
ln -sv ${GUIX_ENVIRONMENT}/share /usr/

# Guix 提供的gcc-toolchain的环境变量会破坏交叉编译
# 使用wrapper来包装编译器，并取消设定此变量来解决它
unset C_INCLUDE_PATH
unset CPLUS_INCLUDE_PATH
export PATH=${POS}/wrapper:/bin:/sbin:/usr/bin:/usr/sbin:${PATH}


export PS1="buildroot-builder \u@\h \w [env]$ "
exec /bin/bash
