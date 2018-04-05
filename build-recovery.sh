#!/bin/bash
echo -e "\033[01;32mGo to the command execution directory\033[0m "
cd ..
cd ..
cd ..
echo -e "\033[01;32mmake clean\033[0m"
make clean
echo -e "\033[01;32msource build/envsetup.sh[0m"
source build/envsetup.sh
echo -e "\033[01;32mlunch omni_NX608J-eng[0m"
lunch omni_NX608J-eng
echo -e "\033[01;32mmka recovery.img[0m"
mka recoveryimage -j8
echo -e "\033[01;32mrecovery_signer recovery.img...\033[0m"
java -jar device/nubia/NX608J/bootsignature/BootSignature.jar /recovery out/target/product/NX608J/recovery.img device/nubia/NX608J/bootsignature/verity.pk8 device/nubia/NX608J/bootsignature/verity.x509.der out/target/product/NX608J/recovery.img

