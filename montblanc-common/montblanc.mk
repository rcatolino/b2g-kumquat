$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

$(call inherit-product, device/sony/montblanc-common/recovery/recovery.mk)

$(call inherit-product-if-exists, vendor/sony/montblanc-common/montblanc-vendor-blobs.mk)

DEVICE_PACKAGE_OVERLAYS += device/sony/montblanc-common/overlay

# Permissions
# Configs
PRODUCT_COPY_FILES += \
    device/sony/montblanc-common/config/egl.cfg:system/lib/egl/egl.cfg \
    device/sony/montblanc-common/config/asound.conf:system/etc/asound.conf \
    device/sony/montblanc-common/config/dbus.conf:system/etc/dbus.conf \
    device/sony/montblanc-common/config/sysmon.cfg:system/etc/sysmon.cfg \
    device/sony/montblanc-common/config/hostapd.conf:system/etc/wifi/hostapd.conf \
    device/sony/montblanc-common/config/01stesetup:system/etc/init.d/01stesetup \
    device/sony/montblanc-common/config/10dhcpcd:system/etc/init.d/10dhcpcd \
    device/sony/montblanc-common/config/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs

# Hostapd
PRODUCT_PACKAGES += \
    hostapd_cli \
    hostapd

# BT A2DP
PRODUCT_PACKAGES += \
    libasound_module_ctl_bluetooth \
    libasound_module_pcm_bluetooth

# light package
PRODUCT_PACKAGES += \
   lights.montblanc

# Misc
PRODUCT_PACKAGES += \
   com.android.future.usb.accessory

#Fmradio
#PRODUCT_PACKAGES += \
#   FmRadioReceiver

# We have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Custom init / uevent
PRODUCT_COPY_FILES += \
    device/sony/montblanc-common/config/init.rc:root/init.rc \
    device/sony/montblanc-common/config/init.cm.rc:root/init.cm.rc \
    device/sony/montblanc-common/config/init.st-ericsson.rc:root/init.st-ericsson.rc \
    device/sony/montblanc-common/config/ueventd.st-ericsson.rc:root/ueventd.st-ericsson.rc

# Recovery bootstrap script
PRODUCT_COPY_FILES += \
    device/sony/montblanc-common/recovery/bootrec:root/sbin/bootrec \
    device/sony/montblanc-common/recovery/usbid_init.sh:root/sbin/usbid_init.sh \
    device/sony/montblanc-common/recovery/postrecoveryboot.sh:root/sbin/postrecoveryboot.sh


# HW Configs
PRODUCT_COPY_FILES += \
    device/sony/montblanc-common/config/omxloaders:system/etc/omxloaders \
    device/sony/montblanc-common/config/ril_config:system/etc/ril_config \
    device/sony/montblanc-common/config/install_wlan:system/bin/install_wlan \
    device/sony/montblanc-common/config/ste_modem.sh:system/etc/ste_modem.sh

# GPS
PRODUCT_COPY_FILES += \
    device/sony/montblanc-common/config/gps.conf:system/etc/gps.conf\
    device/sony/montblanc-common/config/cacert.txt:system/etc/suplcert/cacert.txt

PRODUCT_PROPERTY_OVERRIDES += \
    sys.mem.max_hidden_apps=10

PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp \
    wifi.interface=wlan0



