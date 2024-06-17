echo 'Starting to clone stuffs needed to build for Haydn'

# Device common
echo 'Cloning common device tree'
git clone --depth=1 https://github.com/1xtAsh/device-xiaomi-sm8350 -b lineage-21 device/xiaomi/sm8350-common

# Kernel
echo 'Cloning kernel tree'
git clone https://github.com/1xtAsh/kernel-xiaomi-sm8350.git --recursive --depth=1 -b FarFromStock kernel/xiaomi/sm8350

# Vendor
echo 'Cloning vendor tree'
git clone --depth=1 https://github.com/1xtAsh/vendor-xiaomi-haydn -b lineage-21 vendor/xiaomi/haydn

# Vendor common
echo 'Cloning common vendor tree'
git clone --depth=1 https://github.com/1xtAsh/vendor-xiaomi-sm8350 -b lineage-21 vendor/xiaomi/sm8350-common

# Priv-keys
echo 'Cloning private keys'
git clone https://github.com/Los-Ext/vendor_lineage-priv_keys -b lineage-21.0 vendor/lineage-priv/keys

# Xiaomi
echo 'Cloning hardware xiaomi'
rm -rf hardware/xiaomi && git clone --depth=1 https://github.com/LineageOS/android_hardware_xiaomi -b lineage-21 hardware/xiaomi

# Firmware
echo 'Cloning firmware'
git clone --depth=1 https://gitlab.com/1xtAsh/vendor_xiaomi_haydn-firmware.git -b fourteen vendor/xiaomi/haydn-firmware

# Camera
echo 'Cloning Leica camera'
git clone --depth=1 https://gitlab.com/Alucard_Storm/haydn-miuicamera.git -b fourteen-leica vendor/xiaomi/haydn-miuicamera
rm -rf hardware/xiaomi/megvii

# Leica patch
echo 'Adding Leica camera patch'
cd frameworks/base
wget https://raw.githubusercontent.com/xiaomi-haydn-devs/Patch-Haydn/14/Leicamera/0001-Add-backwards-compatible-CaptureResultExtras-constructor.patch
patch -p1 <0001-Add-backwards-compatible-CaptureResultExtras-constructor.patch
cd ../..

echo 'delete vendorsetup.sh from device tree once this is done'
