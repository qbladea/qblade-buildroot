################################################################################
#
# kmscon
#
################################################################################

KMSCON_VERSION = 01dd0a231e2125a40ceba5f59fd945ff29bf2cdc
KMSCON_SITE = $(call github,Aetf,kmscon,$(KMSCON_VERSION))
KMSCON_AUTORECONF = YES
KMSCON_DEPENDENCIES += host-automake host-autoconf host-libtool libxkbcommon libtsm udev libdrm 

$(eval $(autotools-package))
