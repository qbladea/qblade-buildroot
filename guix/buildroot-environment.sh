#!/bin/sh

# 脚本的位置
POS=$(dirname $(realpath $0))

PROFILE_REG=${HOME}/.environment/buildroot

if [ -e ${PROFILE_REG} ]
then
    rm -v ${PROFILE_REG}
fi

TMUX_CONF=${HOME}/.tmux.conf
VIMRC=${HOME}/.vimrc
GIT_CONF=${HOME}/.gitconfig
# 可能需要更改
WORKING_DIR=${POS}/../

echo "进入后请执行startup.sh"

guix environment -C -N --no-cwd \
     -r ${PROFILE_REG} \
     --ad-hoc ncurses \
     -E^TERM$ \
     -E^LANG$ \
     -E^GUIX_LOCPATH$ \
     --ad-hoc tmux \
     --expose=${TMUX_CONF} \
     --ad-hoc wget curl nss-certs \
     --expose=/etc/ssl \
     --expose=${HOME}/.proxyrc \
     --ad-hoc gcc-toolchain \
     --ad-hoc git less\
     --expose=${GIT_CONF} \
     --ad-hoc vim \
     --expose=${VIMRC} \
     --ad-hoc man-db texinfo \
     --ad-hoc bash coreutils util-linux findutils\
     --ad-hoc gawk sed grep diffutils patch inetutils\
     --ad-hoc procps psmisc gzip zstd xz bzip2 less tar\
     --ad-hoc ncurses which rsync linux-libre-headers unzip\
     --ad-hoc libtool cpio perl python file bc make\
     --share=${WORKING_DIR}
