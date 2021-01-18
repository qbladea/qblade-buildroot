################################################################################
#
# unifont
#
################################################################################

UNIFONT_VERSION = 13.0.05
UNIFONT_SITE = https://mirrors.tuna.tsinghua.edu.cn/pkgsrc/distfiles

define UNIFONT_BUILD_CMDS
	$(TARGET_CONFIGURE_OPTS) $(MAKE) -C $(@D)
endef

define UNIFONT_INSTALL_TARGET_CMDS
	$(TARGET_CONFIGURE_OPTS) $(MAKE) -C $(@D) install \
		PREFIX=$(TARGET_DIR)/usr/bin \
		TTFDEST=$(TARGET_DIR)/usr/share/fonts/truetype \
		PCFDEST=$(TARGET_DIR)/usr/share/fonts/misc \
		CONSOLEDEST=$(TARGET_DIR)/usr/share/consolefonts 
endef

$(eval $(generic-package))
