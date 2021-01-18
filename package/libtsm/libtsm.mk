################################################################################
#
# libtsm
#
################################################################################

LIBTSM_VERSION = f70e37982f382b03c6939dac3d5f814450bda253
LIBTSM_SITE = $(call github,Aetf,libtsm,$(LIBTSM_VERSION))
LIBTSM_INSTALL_STAGING = YES
LIBTSM_SUPPORTS_IN_SOURCE_BUILD = NO



$(eval $(cmake-package))
