
##############################################################
#
# LDD
#
##############################################################

LDD_VERSION = 96c5c9b1f10b2d8209a43bd1a8671fc732663ab2
LDD_SITE = git@github.com:cu-ecen-aeld/assignment-7-Suhas-Reddy-S.git
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES
LDD_MODULE_SUBDIRS = misc-modules scull

$(eval $(kernel-module))
$(eval $(generic-package))
