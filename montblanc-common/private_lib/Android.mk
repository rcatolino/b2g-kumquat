LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_SIMULATOR),true)
  $(error This makefile must not be included when building the simulator)
endif

WPA_SUPPL_DIR = external/wpa_supplicant_8/wpa_supplicant

include $(WPA_SUPPL_DIR)/.config

ifneq ($(BOARD_WPA_SUPPLICANT_DRIVER),)
  CONFIG_DRIVER_$(BOARD_WPA_SUPPLICANT_DRIVER) := y
endif

L_CFLAGS = -DCONFIG_DRIVER_CUSTOM -DWPA_SUPPLICANT_$(WPA_SUPPLICANT_VERSION)
L_SRC :=

ifdef CONFIG_NO_STDOUT_DEBUG
L_CFLAGS += -DCONFIG_NO_STDOUT_DEBUG
endif

ifdef CONFIG_DEBUG_FILE
L_CFLAGS += -DCONFIG_DEBUG_FILE
endif

ifdef CONFIG_ANDROID_LOG
L_CFLAGS += -DCONFIG_ANDROID_LOG
endif

ifdef CONFIG_IEEE8021X_EAPOL
L_CFLAGS += -DIEEE8021X_EAPOL
endif

ifdef CONFIG_WPS
L_CFLAGS += -DCONFIG_WPS
endif

ifdef CONFIG_DRIVER_NL80211
L_SRC += driver_nl80211.c
endif

INCLUDES = $(WPA_SUPPL_DIR) \
    $(WPA_SUPPL_DIR)/src \
    $(WPA_SUPPL_DIR)/src/utils \
    $(WPA_SUPPL_DIR)/src/common \
    $(WPA_SUPPL_DIR)/src/drivers \
    $(WPA_SUPPL_DIR)/src/l2_packet \
    $(WPA_SUPPL_DIR)/src/wps \
		$(WPA_SUPPL_DIR)/src/eap_server \
    external/libnl-headers

include $(CLEAR_VARS)
LOCAL_MODULE := private_lib_nl80211_cmd
LOCAL_MODULE_TAGS := eng
LOCAL_SHARED_LIBRARIES := libc libcutils libnl
LOCAL_CFLAGS := $(L_CFLAGS)
LOCAL_SRC_FILES := $(L_SRC)
LOCAL_C_INCLUDES := $(INCLUDES)
include $(BUILD_STATIC_LIBRARY)
