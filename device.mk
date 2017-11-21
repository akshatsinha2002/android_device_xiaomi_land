#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Overlay
DEVICE_PACKAGE_OVERLAYS += \
    $(DEVICE_PATH)/overlay

# Include device-specific product fragments
include $(DEVICE_PATH)/product/*.mk

# Inherit proprietary files
$(call inherit-product, vendor/xiaomi/land/land-vendor.mk)

#QUAIL STAR
I_WANT_A_QUAIL_STAR=true

#OTA
PRODUCT_PROPERTY_OVERRIDES += \
persist.ota.romname=Poly-Os \
persist.ota.version=20171121 \
persist.ota.manifest=https://raw.githubusercontent.com/Poly-OS/android_extras_ota/master/land.xml

# USB
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
sys.usb.config=mtp,adb \
persist.sys.isUsbOtgEnabled=true \
persist.sys.usb.config=mtp,adb \
ro.adb.secure=0
