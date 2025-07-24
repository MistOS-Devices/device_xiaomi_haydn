echo "Starting to clone stuffs needed to build for Haydn"

# Common device tree (chipset tree)
if [ ! -d device/xiaomi/sm8350-common ]; then
   git clone https://github.com/Haydn-Lab/device_xiaomi_sm8350-common -b 16 device/xiaomi/sm8350-common
fi

# Kernel
if [ ! -d kernel/xiaomi/sm8350 ]; then
   git clone --depth=1 https://github.com/Haydn-Lab/kernel_xiaomi_sm8350 --recursive -b FarFromStock kernel/xiaomi/sm8350
fi

# Main vendor tree
if [ ! -d vendor/xiaomi/haydn ]; then
   git clone --depth=1 https://github.com/Haydn-Lab/vendor_xiaomi_haydn -b 16 vendor/xiaomi/haydn
fi

# Common vendor tree
if [ ! -d vendor/xiaomi/sm8350-common ]; then
   git clone --depth=1 https://github.com/Haydn-Lab/vendor_xiaomi_sm8350-common -b 16 vendor/xiaomi/sm8350-common
fi

# Firmware setup
if [ ! -d vendor/xiaomi/haydn-firmware ]; then
   git clone --depth=1 https://gitlab.com/Hexdare/vendor_xiaomi_haydn-firmware.git -b fourteen vendor/xiaomi/haydn-firmware
fi

# Xiaomi Leica Camera
if [ ! -d vendor/xiaomi/haydn-miuicamera ]; then
   git clone --depth=1 https://gitlab.com/Hexdare/haydn-miuicamera -b fifteen-leica vendor/xiaomi/haydn-miuicamera
fi

# Dolby
if [ ! -d hardware/dolby ]; then
   git clone --depth=1 https://github.com/Haydn-Lab/hardware_dolby -b 15 hardware/dolby
fi

# BCR (Basic Call Recorder)
if [ ! -d vendor/bcr ]; then
   git clone --depth=1 https://github.com/Chaitanyakm/vendor_bcr -b main vendor/bcr
fi

# Xiaomi hardware tree
if [ ! -d hardware/xiaomi/* ]; then
   git clone --depth=1 https://github.com/Evolution-X-Devices/hardware_xiaomi.git -b bka hardware/xiaomi
fi

rm -rf hardware/xiaomi/dolby
rm -rf hardware/xiaomi/DSP*

echo "Delete vendorsetup.sh from device tree once this is done."
