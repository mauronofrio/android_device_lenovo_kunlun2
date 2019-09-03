# android_device_xiaomi_kunlun2
For building TWRP for Lenovo Z6 Lite

TWRP device tree for Lenovo Z6 Lite

## Features

Works:

- ADB
- Decryption of /data
- Screen brightness settings
- Correct screenshot color
- MTP
- Flashing (opengapps, roms, images and so on)
- Backup/Restore (Needs more testing)
- USB OTG


TO-DO:

- Vibration support

## Compile

First checkout minimal twrp with omnirom tree:

```
repo init -u git://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-9.0
repo sync
```

Then add these projects to .repo/manifest.xml:

```xml
<project path="device/xiaomi/kunlun2" name="mauronofrio/android_device_lenovo_kunlun2" remote="github" revision="android-9.0" />
```

Finally execute these:

```
. build/envsetup.sh
lunch omni_kunlun2-eng
mka recoveryimage ALLOW_MISSING_DEPENDENCIES=true # Only if you use minimal twrp tree.
```

To test it:

```
fastboot flash recovery out/target/product/kunlun2/recovery.img
```

## Other Sources

Kernel Sources: using precompiled stock kernel

## Thanks
