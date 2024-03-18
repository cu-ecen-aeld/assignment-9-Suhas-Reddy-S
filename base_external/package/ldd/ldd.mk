
##############################################################
#
# LDD
#
##############################################################

LDD_VERSION = e1f008b14a95c896eaaa47d17eb0f15e1f7d79e5
LDD_SITE = git@github.com:cu-ecen-aeld/assignment-7-Suhas-Reddy-S.git
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES
LDD_MODULE_SUBDIRS = misc-modules scull

$(eval $(kernel-module))
$(eval $(generic-package))
