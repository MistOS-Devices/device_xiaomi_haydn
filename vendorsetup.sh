echo 'Starting to clone stuffs needed to build for Haydn'

# Device common
echo 'Cloning common device tree'
git clone https://github.com/Asimplayz1/device-xiaomi-sm8350 -b 15 device/xiaomi/sm8350-common

# Kernel
echo 'Cloning kernel tree'
rm -rf kernel/xiaomi/sm8350
git clone https://github.com/1xtAsh/kernel-xiaomi-sm8350.git --recursive --depth=1 -b FarFromStock kernel/xiaomi/sm8350

# Vendor
echo 'Cloning vendor tree'
git clone https://github.com/Asimplayz1/vendor-xiaomi-haydn -b 15 vendor/xiaomi/haydn

# Vendor common
echo 'Cloning common vendor tree'
git clone https://github.com/Asimplayz1/vendor-xiaomi-sm8350 -b 15 vendor/xiaomi/sm8350-common

# Firmware
echo 'Cloning firmware'
git clone --depth=1 https://gitlab.com/Alucard_Storm/vendor_xiaomi_haydn-firmware.git -b fourteen vendor/xiaomi/haydn-firmware

# Camera
echo 'Cloning Leica camera'
git clone --depth=1 https://gitlab.com/Alucard_Storm/haydn-miuicamera.git -b fourteen-leica vendor/xiaomi/haydn-miuicamera

# Dolby
rm -rf hardware/xiaomi/dolby
git clone https://github.com/1xtAsh/hardware_dolby -b A15 hardware/dolby

# Bcr
rm -rf vendor/bcr
git clone https://github.com/Chaitanyakm/vendor_bcr -b main vendor/bcr

# Hardware
rm -rf hardware/xiaomi/megvii
rm -rf hardware/xiaomi
git clone https://github.com/LineageOS/android_hardware_xiaomi -b lineage-21 hardware/xiaomi

#Signing Build
rm -rf vendor/lineage-priv/keys 
git clone https://github.com/1xtAsh/vendor_lineage-priv_keys -b lineage-21 vendor/lineage-priv/keys

echo 'delete vendorsetup.sh from device tree once this is done'
