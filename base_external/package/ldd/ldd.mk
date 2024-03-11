
##############################################################
#
# ldd
#
##############################################################

LDD_VERSION = e82b10828762996462f10f24ef39f250fd9bde52
LDD_SITE = git@github.com:cu-ecen-aeld/assignment-7-Suhas-Reddy-S.git
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES
LDD_SUBDIRS = misc-modules scull

define LDD_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/misc-modules/module_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/misc-modules/module_unload $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/scull/scull_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/scull/scull_unload $(TARGET_DIR)/usr/bin

endef

$(eval $(kernel-module))
$(eval $(generic-package))
