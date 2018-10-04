# TWRP for Ridibooks Paper Pro device
 - [Ridibooks Paper Pro](https://paper.ridibooks.com/Detail/400000828) is 7.8" eInk Reader by Ridibooks (South Korea; manufactured by [Netronix](http://www.netronixinc.com/)), its specification is similar to [Tolino Epos](https://mytolino.com/tolino-epos/7-8-inch-ebook-reader/) but with convenient hardware page buttons and sleek user experience.
 - Based on [GitHub:Ryugo-Z/Nook eInk reader devices](https://github.com/Ryogo-Z/nook_ntx_6sl_twrp)

### Current state
 - Can build and boot into TWRP recovery. Functionality was not tested.
 - Did not test OTA feasibility. Mostly OTA will not work.


## Installation/Test

### Test without installation
 - Enter fastboot mode
 - From PC, do `fastboot boot <path_to_recovery_image>`

### Installation
 - Enter fastboot mode
 - From PC, do `fastboot flash recovery <path_to_recovery_image>`

### Enter fastboot mode
- (If ADB was enabled) From PC, do `adb reboot fastboot`

   -- or --
   
- Power off device
- then press [Power] and [Front Upper Right] button simultaneously until the power LED turns on from `green` to `white`.

### Enter recovery mode
- (If ADB was enabled) From PC, do `adb reboot recovery`

   -- or --
   
 - Power off device
 - then press [Power] and [Front Upper Right] button simultaneously
 - release [Power] button right after power LED turns on but continually press other button until device enters recovery mode


## Build TWRP recovery image
* Follow [Establishing a Build Environment](https://source.android.com/setup/build/initializing) for AOSP to prepare build environment
* Create a directory and `cd` to it, which will contain TWRP and this repo and become `<twrp_repo>` from now on
* Sync TWRP source modded by OmniRom team
```bash
repo init --depth=1 -u git://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-5.1
repo sync -n -j 1 && repo sync -l -j 4
```
* Clone this repo to `<twrp_repo>/device/RIDIBOOKS/RBPP1`
```bash
mkdir -p <twrp_repo>/device/RIDIBOOKS/RBPP1; cd <twrp_repo>/device/RIDIBOOKS/RBPP1
git clone <this_repo> .
```
* Apply TWRP patches in `<twrp_repo>/device/RIDIBOOKS/RBPP1/patches` directory
```bash
cd <twrp_repo>/bootable/recovery
patch -p 1 -i <path_to_patch_files>/<patch_file>
```
* Execute below commands to start building
```bash
. build/envsetup.sh
lunch omni_RBPP1-userdebug
mka recoveryimage
```
* Baked recovery image will be in `<twrp_repo>/out/target/product/RBPP1/recovery.img`

### Enable A2 mode and [Monochrome theme by Ryugo-Z](https://github.com/Ryogo-Z/twrp_monochrome_portrait_hdpi_theme)
1. clone [monochrome theme repo](https://github.com/Ryogo-Z/twrp_monochrome_portrait_hdpi_theme) into `<twrp_repo>/device/NOOK/nook_ntx_6sl/theme`
1. uncomment `TW_IMX_EINK_MONOCHROME` in `BoardConfig.mk`
