
##############################################################
#
# AESDCHAR
#
##############################################################

AESDCHAR_VERSION = 1e0e3f76f566b39784bd851cebbb52e11216e4d8
AESDCHAR_SITE = git@github.com:cu-ecen-aeld/assignments-3-and-later-Suhas-Reddy-S.git
AESDCHAR_SITE_METHOD = git
AESDCHAR_GIT_SUBMODULES = YES
AESDCHAR_MODULE_SUBDIRS = aesd-char-driver

define AESDCHAR_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_load $(TARGET_DIR)/bin
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_unload $(TARGET_DIR)/bin
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar-start-stop.sh $(TARGET_DIR)/etc/init.d/S97aesdchar
endef

$(eval $(kernel-module))
$(eval $(generic-package))
