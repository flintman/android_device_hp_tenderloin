# inherit from common tenderloin
-include device/hp/tenderloin-common/BoardConfigCommon.mk

ifdef RECOVERY_BUILD
TARGET_KERNEL_CONFIG := tenderloin_recovery_defconfig
else
TARGET_KERNEL_CONFIG := tenderloin_android_defconfig
endif