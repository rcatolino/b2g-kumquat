#
# Copyright (C) 2011 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit the proprietary counterpart
$(call inherit-product-if-exists, vendor/sony/kumquat/kumquat-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/sony/kumquat/overlay

# Inherit the montblanc-common definitions
$(call inherit-product, device/sony/montblanc-common/montblanc.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
		frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
		frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
		frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
		frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
		frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
		frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
		frameworks/base/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
		frameworks/base/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
		frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
		frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
		frameworks/base/data/etc/com.google.protobuf-2.3.0.xml:system/etc/permissions/com.google.protobuf-2.3.0.xml \
		frameworks/base/data/etc/com.sonyericsson.android.bootinfoif.xml:system/etc/permissions/com.sonyericsson.android.bootinfoif.xml \
		frameworks/base/data/etc/com.sonyericsson.android.cdfinfoaccessorif.xml:system/etc/permissions/com.sonyericsson.android.cdfinfoaccessorif.xml \
		frameworks/base/data/etc/com.sonyericsson.android.media.sols.xml:system/etc/permissions/com.sonyericsson.android.media.sols.xml \
		frameworks/base/data/etc/com.sonyericsson.android.semcrilextension.xml:system/etc/permissions/com.sonyericsson.android.semcrilextension.xml \
		frameworks/base/data/etc/com.sonyericsson.android.semcserviceif.xml:system/etc/permissions/com.sonyericsson.android.semcserviceif.xml \
		frameworks/base/data/etc/com.sonyericsson.android.snp.video.xml:system/etc/permissions/com.sonyericsson.android.snp.video.xml \
		frameworks/base/data/etc/com.sonyericsson.android.socialphonebook.xml:system/etc/permissions/com.sonyericsson.android.socialphonebook.xml \
		frameworks/base/data/etc/com.sonyericsson.appextensions.xml:system/etc/permissions/com.sonyericsson.appextensions.xml \
		frameworks/base/data/etc/com.sonyericsson.audioeffectif.xml:system/etc/permissions/com.sonyericsson.audioeffectif.xml \
		frameworks/base/data/etc/com.sonyericsson.autopoweroff.xml:system/etc/permissions/com.sonyericsson.autopoweroff.xml \
		frameworks/base/data/etc/com.sonyericsson.cameraextension.xml:system/etc/permissions/com.sonyericsson.cameraextension.xml \
		frameworks/base/data/etc/com.sonyericsson.colorextraction.xml:system/etc/permissions/com.sonyericsson.colorextraction.xml \
		frameworks/base/data/etc/com.sonyericsson.dlna.xml:system/etc/permissions/com.sonyericsson.dlna.xml \
		frameworks/base/data/etc/com.sonyericsson.eventstream.xml:system/etc/permissions/com.sonyericsson.eventstream.xml \
		frameworks/base/data/etc/com.sonyericsson.idd.xml:system/etc/permissions/com.sonyericsson.idd.xml \
		frameworks/base/data/etc/com.sonyericsson.illumination.xml:system/etc/permissions/com.sonyericsson.illumination.xml \
		frameworks/base/data/etc/com.sonyericsson.media.infinite.extension_1.xml:system/etc/permissions/com.sonyericsson.media.infinite.extension_1.xml \
		frameworks/base/data/etc/com.sonyericsson.metadatacleanup.xml:system/etc/permissions/com.sonyericsson.metadatacleanup.xml \
		frameworks/base/data/etc/com.sonyericsson.mimetype.xml:system/etc/permissions/com.sonyericsson.mimetype.xml \
		frameworks/base/data/etc/com.sonyericsson.system.xml:system/etc/permissions/com.sonyericsson.system.xml \
		frameworks/base/data/etc/com.stericsson.ril.oem.xml:system/etc/permissions/com.stericsson.ril.oem.xml \
		frameworks/base/data/etc/com.stericsson.thermal.xml:system/etc/permissions/com.stericsson.thermal.xml \
		frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
		frameworks/base/data/etc/com.sonyericsson.sysmon.xml:system/etc/permissions/com.sonyericsson.sysmon.xml \
		frameworks/base/data/etc/org.kxml2.wap.xml:system/etc/permissions/org.kxml2.wap.xml \
		frameworks/base/data/etc/org.simalliance.openmobileapi.xml:system/etc/permissions/org.simalliance.openmobileapi.xml \
		frameworks/base/data/etc/platform.xml:system/etc/permissions/platform.xml \
		frameworks/base/data/etc/semcrilhook.xml:system/etc/permissions/semcrilhook.xml \

# This device is hdpi.  However the platform doesn't
# currently contain all of the bitmaps at hdpi density so
# we do this little trick to fall back to the hdpi version
# if the hdpi doesn't exist.
PRODUCT_AAPT_CONFIG := normal mdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Configuration scripts
PRODUCT_COPY_FILES += \
   device/sony/montblanc-common/prebuilt/logo-480x854.rle:root/logo.rle

# Configuration scripts
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/config/dash.conf:system/etc/dash.conf \
   $(LOCAL_PATH)/prebuilt/hw_config.sh:system/etc/hw_config.sh

# USB function switching
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/config/init.st-ericsson.usb.rc:root/init.st-ericsson.usb.rc

PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/config/vold.fstab:system/etc/vold.fstab \
   $(LOCAL_PATH)/config/media_profiles.xml:system/etc/media_profiles.xml

# Recovery bootstrap (device-specific part)
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/recovery/bootrec-device:root/sbin/bootrec-device \
   $(LOCAL_PATH)/recovery/bootrec-device-fs:root/sbin/bootrec-device-fs \
   $(LOCAL_PATH)/recovery.fstab:root/recovery.fstab

# Key layouts and touchscreen
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/config/AB8500_Hs_Button.kl:system/usr/keylayout/AB8500_Hs_Button.kl \
   $(LOCAL_PATH)/config/simple_remote.kl:system/usr/keylayout/simple_remote.kl \
   $(LOCAL_PATH)/config/simple_remote_appkey.kl:system/usr/keylayout/simple_remote_appkey.kl \
   $(LOCAL_PATH)/config/cyttsp_key.kl:system/usr/keylayout/cyttsp_key.kl \
   $(LOCAL_PATH)/config/STMPE-keypad.kl:system/usr/keylayout/STMPE-keypad.kl \
   $(LOCAL_PATH)/config/tc3589x-keypad.kl:system/usr/keylayout/tc3589x-keypad.kl \
   $(LOCAL_PATH)/config/ux500-ske-keypad.kl:system/usr/keylayout/ux500-ske-keypad.kl.kl \
   $(LOCAL_PATH)/config/ux500-ske-keypad-qwertz.kl:system/usr/keylayout/ux500-ske-keypad-qwertz.kl \
   $(LOCAL_PATH)/config/cyttsp-spi.idc:system/usr/idc/cyttsp-spi.idc \
   $(LOCAL_PATH)/config/sensor00_f11_sensor0.idc:system/usr/idc/sensor00_f11_sensor0.idc \
   $(LOCAL_PATH)/config/synaptics_rmi4_i2c.idc:system/usr/idc/synaptics_rmi4_i2c.idc

# Misc configuration files
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/config/manuf_id.cfg:system/etc/AT/manuf_id.cfg \
   $(LOCAL_PATH)/config/model_id.cfg:system/etc/AT/model_id.cfg \
   $(LOCAL_PATH)/config/system_id.cfg:system/etc/AT/system_id.cfg \
   $(LOCAL_PATH)/config/cflashlib.cfg:system/etc/cflashlib.cfg \
   $(LOCAL_PATH)/config/flashled_param_config.cfg:system/etc/flashled_param_config.cfg

$(call inherit-product, frameworks/base/build/phone-hdpi-512-dalvik-heap.mk)

$(call inherit-product-if-exists, vendor/sony/kumquat/kumquat-vendor.mk)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=240
