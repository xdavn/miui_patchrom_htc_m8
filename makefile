#
## Makefile for HTC One M8
#
#
## The original zip file, MUST be specified by each product
local-zip-file     := stockrom.zip

# The output zip file of MIUI rom, the default is porting_miui.zip if not specified
local-out-zip-file := MIUI_M8.zip

# All vendor apks needed
local-phone-apps := Nfc PrintSpooler PacProcessor CIRModule CertInstaller GoogleCamera KeyChain DMAgent \
	Stk SmartcardService TimeService UserDictionaryProvider Bluetooth BluetoothMidiService \

local-phone-priv-apps := Shell FusedLocation ProxyHandler ExternalStorageProvider TagGoogle \
	SharedStorageBackup InputDevices CellBroadcastReceiver \
	BackupRestoreConfirmation CarrierConfig GSD HtcServicePack QtiTetherService StatementService \
	HMS_Gallery

# All apks from MIUI
# local-miui-removed-apps := FM

local-density := XXHDPI
local-target-bit := 32

# The certificate for release version
# local-certificate-dir := security

include $(PORT_BUILD)/porting.mk

pre-zip-misc: local-pre-zip-misc


# To define any local-target
#updater := $(ZIP_DIR)/META-INF/com/google/android/updater-script
#pre_install_data_packages := $(TMP_DIR)/pre_install_apk_pkgname.txt
local-pre-zip-misc:
	@echo copy files
	cp -a -rf other/system/* $(ZIP_DIR)/system/

	@echo goodbye! miui prebuilt binaries!
	rm -rf $(ZIP_DIR)/system/bin/app_process32_vendor
	cp -rf stockrom/system/bin/app_process32 $(ZIP_DIR)/system/bin/app_process32
