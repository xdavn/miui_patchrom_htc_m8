.class public Lcom/android/server/usb/UsbDeviceManager;
.super Ljava/lang/Object;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbDeviceManager$UsbHandler;,
        Lcom/android/server/usb/UsbDeviceManager$AdbSettingsObserver;
    }
.end annotation


# static fields
.field private static final ACCESSORY_REQUEST_TIMEOUT:I = 0x2710

.field private static final ACCESSORY_START_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/misc/usb_accessory"

.field private static final AUDIO_MODE_NONE:I = 0x0

.field private static final AUDIO_MODE_SOURCE:I = 0x1

.field private static final AUDIO_SOURCE_PCM_PATH:Ljava/lang/String; = "/sys/class/android_usb/android0/f_audio_source/pcm"

.field private static final BOOT_MODE_PROPERTY:Ljava/lang/String; = "ro.bootmode"

.field private static final DEBUG:Z = true

.field private static final FUNCTIONS_PATH:Ljava/lang/String; = "/sys/class/android_usb/android0/functions"

.field private static final HAL_PIXEL_FORMAT_BGRA_8888:I = 0x5

.field private static final HAL_PIXEL_FORMAT_RGBA_5551:I = 0x6

.field private static final HAL_PIXEL_FORMAT_RGB_565:I = 0x4

.field private static final HAL_PIXEL_FORMAT_RGB_888:I = 0x3

.field private static final HSML_12_PIXEL_FORMAT_ARGB888:I = 0x0

.field private static final HSML_12_PIXEL_FORMAT_MAX:I = 0x5

.field private static final HSML_12_PIXEL_FORMAT_RGB555:I = 0x3

.field private static final HSML_12_PIXEL_FORMAT_RGB565:I = 0x2

.field private static final HSML_12_PIXEL_FORMAT_RGB888:I = 0x1

.field private static final HSML_PIXEL_FORMAT_ARGB888:I = 0x0

.field private static final HSML_PIXEL_FORMAT_MAX:I = 0x4

.field private static final HSML_PIXEL_FORMAT_RGB555:I = 0x2

.field private static final HSML_PIXEL_FORMAT_RGB565:I = 0x1

.field private static final HSM_DETECT_VAL_INIT:Ljava/lang/String; = "0"

.field private static final HTCMODE_CAP_PATH:Ljava/lang/String; = "/sys/devices/virtual/android_usb/android0/f_projector2/client_cap"

.field private static final HTCMODE_COLOR_FORMAT_PATH:Ljava/lang/String; = "/sys/devices/virtual/android_usb/android0/f_projector2/client_pixel_format"

.field private static final HTCMODE_EVENT_MAXFPS:I = 0xbbf

.field private static final HTCMODE_EVENT_STATE:I = 0xbbe

.field private static final HTCMODE_HEIGHT_PATH:Ljava/lang/String; = "/sys/devices/virtual/android_usb/android0/f_projector2/client_height"

.field private static final HTCMODE_HSML_VER_PATH:Ljava/lang/String; = "/sys/class/android_usb/android0/f_projector2/client_ver"

.field private static final HTCMODE_MAXFPS_PATH:Ljava/lang/String; = "/sys/devices/virtual/android_usb/android0/f_projector2/client_maxfps"

.field private static final HTCMODE_PATH:Ljava/lang/String; = "/sys/devices/platform/android_usb/usb_denied"

.field private static final HTCMODE_STATE_CONNECTED:I = 0x1

.field private static final HTCMODE_STATE_DISCONNECTED:I = 0x2

.field private static final HTCMODE_STATE_PROJECTING:I = 0x3

.field private static final HTCMODE_STATE_V1_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/htcmode"

.field private static final HTCMODE_STATE_V2_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/mirror_link"

.field private static final HTCMODE_V2_STATE_PATH:Ljava/lang/String; = "/sys/class/switch/mirror_link/state"

.field private static final HTCMODE_WIDTH_PATH:Ljava/lang/String; = "/sys/devices/virtual/android_usb/android0/f_projector2/client_width"

.field private static final MIDI_ALSA_PATH:Ljava/lang/String; = "/sys/class/android_usb/android0/f_midi/alsa"

.field private static final MSG_BOOT_COMPLETED:I = 0x4

.field private static final MSG_ENABLE_ADB:I = 0x1

.field private static final MSG_SET_CURRENT_FUNCTIONS:I = 0x2

.field private static final MSG_SET_CURRENT_FUNCTION_EXT:I = 0x6a

.field private static final MSG_SET_FUNCTION_SWITCH:I = 0x6d

.field private static final MSG_SET_TOOL_FUNCTIONS:I = 0x6e

.field private static final MSG_SET_USB_DATA_UNLOCKED:I = 0x6

.field private static final MSG_SYSTEM_READY:I = 0x3

.field private static final MSG_UPDATE_CONNECT2PC:I = 0x69

.field private static final MSG_UPDATE_HTCMODE:I = 0x67

.field private static final MSG_UPDATE_HTC_BASE:I = 0x64

.field private static final MSG_UPDATE_PROJECTOR1:I = 0x6b

.field private static final MSG_UPDATE_PROJECTOR2:I = 0x68

.field private static final MSG_UPDATE_STATE:I = 0x0

.field private static final MSG_UPDATE_USER_RESTRICTIONS:I = 0x7

.field private static final MSG_USER_SWITCHED:I = 0x5

.field private static final RNDIS_ETH_ADDR_PATH:Ljava/lang/String; = "/sys/class/android_usb/android0/f_rndis/ethaddr"

.field private static final STATE_PATH:Ljava/lang/String; = "/sys/class/android_usb/android0/state"

.field private static final TAG:Ljava/lang/String; = "UsbDeviceManager"

.field private static final UIS_PROP_HOST_INTF:Ljava/lang/String; = "net.usb0.isharing.host"

.field private static final UIS_PROP_HOST_INTF2:Ljava/lang/String; = "net.usb0.isharing.host2"

.field private static final UIS_PROP_HSM_DETECT:Ljava/lang/String; = "persist.sys.usb.hsm_detect"

.field private static final UPDATE_DELAY:I = 0x3e8

.field private static final USB_ATTR_OFF_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/function_switch_off"

.field private static final USB_ATTR_ON_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/function_switch_on"

.field private static final USB_CONFIG_PROPERTY:Ljava/lang/String; = "sys.usb.config"

.field private static final USB_CONNECT2PC_PATH:Ljava/lang/String; = "/sys/class/switch/usb_connect2pc/state"

.field private static final USB_CONN_PC_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/usb_connect2pc"

.field private static final USB_HSML_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/prj2_status"

.field private static final USB_PERSISTENT_CONFIG_PROPERTY:Ljava/lang/String; = "persist.sys.usb.config"

.field private static final USB_SCSI_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/scsi_cmd"

.field private static final USB_STATE_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/android_usb/android0"

.field private static final USB_STATE_PROPERTY:Ljava/lang/String; = "sys.usb.state"

.field private static final cACM_CFG_MAC_ON:I = 0x3

.field private static final cACM_CFG_NONE:I = 0x0

.field private static final cszHSM_NEW_PID_SUPPORT:Ljava/lang/String; = "/sys/module/g_android/parameters/hsm_newpid"

.field private static miAcmEnabledCfg:I


# instance fields
.field private mAccessoryModeRequestTime:J

.field private mAccessoryStrings:[Ljava/lang/String;

.field private mAdbEnabled:Z

.field private mAudioSourceEnabled:Z

.field private mBootCompleted:Z

.field private mChargeOnEnabled:Z

.field private mConnect2Pc:I

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentSettings:Lcom/android/server/usb/UsbSettingsManager;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

.field private mDiagEnabled:Z

.field private mDiagMdmEnabled:Z

.field private mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

.field private final mHasUsbAccessory:Z

.field private mHsmAcmEnabled:Z

.field private mHtc_Mode:I

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mLock:Ljava/lang/Object;

.field private mMassStorageNotification:I

.field private mMidiCard:I

.field private mMidiDevice:I

.field private mMidiEnabled:Z

.field private mModemEnabled:Z

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mOemModeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mPre_cdrom:Z

.field private mProjector1StateIsPlug:Z

.field private mProjector2State:I

.field private mSerialEnabled:Z

.field private mStockUI:Z

.field private mSwitchFunction:Z

.field private mToolAdbEnabled:Z

.field private mToolSwitch:Z

.field private final mUEventObserver:Landroid/os/UEventObserver;

.field private final mUsbAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

.field private mUsbnetService:Lcom/htc/net/usbnet/IUsbnetController;

.field mUsbnetService2:Lcom/android/server/UsbnetService;

.field private mUseUsbNotification:Z

.field private szSwitchFunctions:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x3

    sput v0, Lcom/android/server/usb/UsbDeviceManager;->miAcmEnabledCfg:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/usb/UsbAlsaManager;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "alsaManager"    # Lcom/android/server/usb/UsbAlsaManager;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/server/usb/UsbDeviceManager;->mAccessoryModeRequestTime:J

    .line 231
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/usb/UsbDeviceManager;->mConnect2Pc:I

    .line 232
    iput v6, p0, Lcom/android/server/usb/UsbDeviceManager;->mHtc_Mode:I

    .line 235
    iput-boolean v6, p0, Lcom/android/server/usb/UsbDeviceManager;->mSwitchFunction:Z

    .line 240
    iput-object v7, p0, Lcom/android/server/usb/UsbDeviceManager;->mUsbnetService:Lcom/htc/net/usbnet/IUsbnetController;

    .line 241
    iput-object v7, p0, Lcom/android/server/usb/UsbDeviceManager;->mUsbnetService2:Lcom/android/server/UsbnetService;

    .line 243
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/usb/UsbDeviceManager;->mLock:Ljava/lang/Object;

    .line 255
    iput-boolean v6, p0, Lcom/android/server/usb/UsbDeviceManager;->mHsmAcmEnabled:Z

    .line 256
    iput-boolean v6, p0, Lcom/android/server/usb/UsbDeviceManager;->mDiagEnabled:Z

    .line 257
    iput-boolean v6, p0, Lcom/android/server/usb/UsbDeviceManager;->mDiagMdmEnabled:Z

    .line 258
    iput-boolean v6, p0, Lcom/android/server/usb/UsbDeviceManager;->mModemEnabled:Z

    .line 259
    iput-boolean v6, p0, Lcom/android/server/usb/UsbDeviceManager;->mSerialEnabled:Z

    .line 260
    iput v6, p0, Lcom/android/server/usb/UsbDeviceManager;->mMassStorageNotification:I

    .line 261
    iput-boolean v6, p0, Lcom/android/server/usb/UsbDeviceManager;->mPre_cdrom:Z

    .line 262
    iput-boolean v6, p0, Lcom/android/server/usb/UsbDeviceManager;->mStockUI:Z

    .line 263
    iput-boolean v6, p0, Lcom/android/server/usb/UsbDeviceManager;->mChargeOnEnabled:Z

    .line 264
    iput-boolean v6, p0, Lcom/android/server/usb/UsbDeviceManager;->mToolSwitch:Z

    .line 265
    iput-boolean v6, p0, Lcom/android/server/usb/UsbDeviceManager;->mToolAdbEnabled:Z

    .line 289
    new-instance v3, Lcom/android/server/usb/UsbDeviceManager$1;

    invoke-direct {v3, p0}, Lcom/android/server/usb/UsbDeviceManager$1;-><init>(Lcom/android/server/usb/UsbDeviceManager;)V

    iput-object v3, p0, Lcom/android/server/usb/UsbDeviceManager;->mUEventObserver:Landroid/os/UEventObserver;

    .line 1854
    new-instance v3, Lcom/android/server/usb/UsbDeviceManager$2;

    invoke-direct {v3, p0}, Lcom/android/server/usb/UsbDeviceManager$2;-><init>(Lcom/android/server/usb/UsbDeviceManager;)V

    iput-object v3, p0, Lcom/android/server/usb/UsbDeviceManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 374
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    .line 375
    iput-object p2, p0, Lcom/android/server/usb/UsbDeviceManager;->mUsbAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    .line 376
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/usb/UsbDeviceManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 377
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 378
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string v3, "android.hardware.usb.accessory"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager;->mHasUsbAccessory:Z

    .line 379
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->initRndisAddress()V

    .line 381
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->readOemUsbOverrideConfig()V

    .line 383
    new-instance v3, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;-><init>(Lcom/android/server/usb/UsbDeviceManager;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    .line 384
    const-string v3, "UsbDeviceManager"

    const-string v4, "[USBNET][UsbDeviceManager] mHandler = new UsbHandler done"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->nativeIsStartRequested()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 387
    const-string v3, "UsbDeviceManager"

    const-string v4, "accessory attached at boot"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->startAccessoryMode()V

    .line 391
    :cond_0
    const-string v3, "ro.adb.secure"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 392
    .local v2, "secureAdbEnabled":Z
    const-string v3, "1"

    const-string v4, "vold.decrypt"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 393
    .local v0, "dataEncrypted":Z
    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    .line 394
    new-instance v3, Lcom/android/server/usb/UsbDebuggingManager;

    invoke-direct {v3, p1}, Lcom/android/server/usb/UsbDebuggingManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    .line 397
    :cond_1
    const-string v3, "UsbDeviceManager"

    const-string v4, "Usbnet Service"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    new-instance v3, Lcom/android/server/UsbnetService;

    invoke-direct {v3, p1}, Lcom/android/server/UsbnetService;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/usb/UsbDeviceManager;->mUsbnetService2:Lcom/android/server/UsbnetService;

    .line 399
    const-string v3, "usbnet"

    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager;->mUsbnetService2:Lcom/android/server/UsbnetService;

    invoke-static {v3, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 400
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/usb/UsbDeviceManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/server/usb/UsbDeviceManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/usb/UsbDeviceManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mDiagEnabled:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/usb/UsbDeviceManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mDiagEnabled:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/usb/UsbDeviceManager;)Landroid/os/UEventObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mUEventObserver:Landroid/os/UEventObserver;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/usb/UsbDeviceManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mBootCompleted:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/usb/UsbDeviceManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mBootCompleted:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDebuggingManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/usb/UsbDeviceManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDeviceManager;->applyOemOverrideFunction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/usb/UsbDeviceManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mToolAdbEnabled:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-static {p0, p1}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/usb/UsbDeviceManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->startAccessoryMode()V

    return-void
.end method

.method static synthetic access$2000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-static {p0, p1}, Lcom/android/server/usb/UsbDeviceManager;->addFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-static {p0, p1}, Lcom/android/server/usb/UsbDeviceManager;->removeFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/usb/UsbDeviceManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mModemEnabled:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/usb/UsbDeviceManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mDiagMdmEnabled:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/usb/UsbDeviceManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 80
    iget v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mMassStorageNotification:I

    return v0
.end method

.method static synthetic access$2402(Lcom/android/server/usb/UsbDeviceManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;
    .param p1, "x1"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mMassStorageNotification:I

    return p1
.end method

.method static synthetic access$2500(Lcom/android/server/usb/UsbDeviceManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mPre_cdrom:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/android/server/usb/UsbDeviceManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mPre_cdrom:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/server/usb/UsbDeviceManager;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mAccessoryModeRequestTime:J

    return-wide v0
.end method

.method static synthetic access$2700(Lcom/android/server/usb/UsbDeviceManager;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mAccessoryStrings:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/server/usb/UsbDeviceManager;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mAccessoryStrings:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbSettingsManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->getCurrentSettings()Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/usb/UsbDeviceManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mAudioSourceEnabled:Z

    return v0
.end method

.method static synthetic access$2902(Lcom/android/server/usb/UsbDeviceManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mAudioSourceEnabled:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/usb/UsbDeviceManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 80
    iget v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mConnect2Pc:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbAlsaManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mUsbAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/usb/UsbDeviceManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;
    .param p1, "x1"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mConnect2Pc:I

    return p1
.end method

.method static synthetic access$3100(Lcom/android/server/usb/UsbDeviceManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mStockUI:Z

    return v0
.end method

.method static synthetic access$3102(Lcom/android/server/usb/UsbDeviceManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mStockUI:Z

    return p1
.end method

.method static synthetic access$3200()I
    .locals 1

    .prologue
    .line 80
    sget v0, Lcom/android/server/usb/UsbDeviceManager;->miAcmEnabledCfg:I

    return v0
.end method

.method static synthetic access$3202(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 80
    sput p0, Lcom/android/server/usb/UsbDeviceManager;->miAcmEnabledCfg:I

    return p0
.end method

.method static synthetic access$3300(Lcom/android/server/usb/UsbDeviceManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mMidiEnabled:Z

    return v0
.end method

.method static synthetic access$3302(Lcom/android/server/usb/UsbDeviceManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mMidiEnabled:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/android/server/usb/UsbDeviceManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 80
    iget v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mMidiCard:I

    return v0
.end method

.method static synthetic access$3402(Lcom/android/server/usb/UsbDeviceManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;
    .param p1, "x1"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mMidiCard:I

    return p1
.end method

.method static synthetic access$3500(Lcom/android/server/usb/UsbDeviceManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 80
    iget v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mMidiDevice:I

    return v0
.end method

.method static synthetic access$3502(Lcom/android/server/usb/UsbDeviceManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;
    .param p1, "x1"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mMidiDevice:I

    return p1
.end method

.method static synthetic access$3600(Lcom/android/server/usb/UsbDeviceManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mChargeOnEnabled:Z

    return v0
.end method

.method static synthetic access$3700(Lcom/android/server/usb/UsbDeviceManager;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;
    .param p1, "x1"    # I

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDeviceManager;->updateFlingerOptions(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Lcom/android/server/usb/UsbDeviceManager;)Lcom/htc/net/usbnet/IUsbnetController;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mUsbnetService:Lcom/htc/net/usbnet/IUsbnetController;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/NotificationManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/usb/UsbDeviceManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mUseUsbNotification:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/usb/UsbDeviceManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 80
    iget v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHtc_Mode:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/usb/UsbDeviceManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;
    .param p1, "x1"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mHtc_Mode:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/usb/UsbDeviceManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 80
    iget v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mProjector2State:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/usb/UsbDeviceManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;
    .param p1, "x1"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mProjector2State:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/usb/UsbDeviceManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mProjector1StateIsPlug:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/usb/UsbDeviceManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mProjector1StateIsPlug:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/usb/UsbDeviceManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mSwitchFunction:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/usb/UsbDeviceManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mSwitchFunction:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/usb/UsbDeviceManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->szSwitchFunctions:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/server/usb/UsbDeviceManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager;->szSwitchFunctions:Ljava/lang/String;

    return-object p1
.end method

.method private static addFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "functions"    # Ljava/lang/String;
    .param p1, "function"    # Ljava/lang/String;

    .prologue
    .line 507
    const-string v0, "none"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    .end local p1    # "function":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 510
    .restart local p1    # "function":Ljava/lang/String;
    :cond_0
    invoke-static {p0, p1}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 511
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 514
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2
    move-object p1, p0

    .line 516
    goto :goto_0
.end method

.method private applyOemOverrideFunction(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "usbFunctions"    # Ljava/lang/String;

    .prologue
    .line 1759
    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager;->mOemModeMap:Ljava/util/Map;

    if-nez v4, :cond_1

    .line 1773
    .end local p1    # "usbFunctions":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 1761
    .restart local p1    # "usbFunctions":Ljava/lang/String;
    :cond_1
    const-string v4, "ro.bootmode"

    const-string v5, "unknown"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1763
    .local v0, "bootMode":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager;->mOemModeMap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1764
    .local v2, "overrides":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz v2, :cond_0

    .line 1765
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 1766
    .local v3, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1767
    const-string v5, "UsbDeviceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OEM USB override: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " ==> "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1768
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    move-object p1, v4

    goto :goto_0
.end method

.method private static containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "functions"    # Ljava/lang/String;
    .param p1, "function"    # Ljava/lang/String;

    .prologue
    .line 543
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 544
    :goto_0
    return v0

    :cond_0
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private getCurrentSettings()Lcom/android/server/usb/UsbSettingsManager;
    .locals 2

    .prologue
    .line 403
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 404
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mCurrentSettings:Lcom/android/server/usb/UsbSettingsManager;

    monitor-exit v1

    return-object v0

    .line 405
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private htcmode_get_attribute(Ljava/lang/String;)I
    .locals 4
    .param p1, "szAttrFileName"    # Ljava/lang/String;

    .prologue
    .line 1876
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1881
    :goto_0
    return v1

    .line 1877
    :catch_0
    move-exception v0

    .line 1878
    .local v0, "sEx":Ljava/io/IOException;
    const-string v1, "UsbDeviceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1881
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private static initRndisAddress()V
    .locals 16

    .prologue
    const/4 v15, 0x4

    const/4 v14, 0x3

    const/4 v13, 0x1

    const/4 v12, 0x2

    const/4 v11, 0x0

    .line 486
    const/4 v0, 0x6

    .line 487
    .local v0, "ETH_ALEN":I
    const/4 v7, 0x6

    new-array v2, v7, [I

    .line 489
    .local v2, "address":[I
    aput v12, v2, v11

    .line 491
    const-string v7, "ro.serialno"

    const-string v8, "1234567890ABCDEF"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 492
    .local v5, "serial":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    .line 494
    .local v6, "serialLength":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v6, :cond_0

    .line 495
    rem-int/lit8 v7, v4, 0x5

    add-int/lit8 v7, v7, 0x1

    aget v8, v2, v7

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    xor-int/2addr v8, v9

    aput v8, v2, v7

    .line 494
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 497
    :cond_0
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "%02X:%02X:%02X:%02X:%02X:%02X"

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    aget v10, v2, v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    aget v10, v2, v13

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v13

    aget v10, v2, v12

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    aget v10, v2, v14

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v14

    aget v10, v2, v15

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v15

    const/4 v10, 0x5

    const/4 v11, 0x5

    aget v11, v2, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 500
    .local v1, "addrString":Ljava/lang/String;
    :try_start_0
    const-string v7, "/sys/class/android_usb/android0/f_rndis/ethaddr"

    invoke-static {v7, v1}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    :goto_1
    return-void

    .line 501
    :catch_0
    move-exception v3

    .line 502
    .local v3, "e":Ljava/io/IOException;
    const-string v7, "UsbDeviceManager"

    const-string v8, "failed to write to /sys/class/android_usb/android0/f_rndis/ethaddr"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private native nativeGetAccessoryStrings()[Ljava/lang/String;
.end method

.method private native nativeGetAudioMode()I
.end method

.method private native nativeIsStartRequested()Z
.end method

.method private native nativeOpenAccessory()Landroid/os/ParcelFileDescriptor;
.end method

.method private readOemUsbOverrideConfig()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 1737
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x107002e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 1740
    .local v2, "configList":[Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 1741
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_3

    aget-object v1, v0, v3

    .line 1742
    .local v1, "config":Ljava/lang/String;
    const-string v7, ":"

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1743
    .local v4, "items":[Ljava/lang/String;
    array-length v7, v4

    const/4 v8, 0x3

    if-ne v7, v8, :cond_2

    .line 1744
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager;->mOemModeMap:Ljava/util/Map;

    if-nez v7, :cond_0

    .line 1745
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/android/server/usb/UsbDeviceManager;->mOemModeMap:Ljava/util/Map;

    .line 1747
    :cond_0
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager;->mOemModeMap:Ljava/util/Map;

    aget-object v8, v4, v10

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1748
    .local v6, "overrideList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-nez v6, :cond_1

    .line 1749
    new-instance v6, Ljava/util/LinkedList;

    .end local v6    # "overrideList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 1750
    .restart local v6    # "overrideList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager;->mOemModeMap:Ljava/util/Map;

    aget-object v8, v4, v10

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1752
    :cond_1
    new-instance v7, Landroid/util/Pair;

    const/4 v8, 0x1

    aget-object v8, v4, v8

    const/4 v9, 0x2

    aget-object v9, v4, v9

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1741
    .end local v6    # "overrideList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1756
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "config":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "items":[Ljava/lang/String;
    .end local v5    # "len$":I
    :cond_3
    return-void
.end method

.method private static removeFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "functions"    # Ljava/lang/String;
    .param p1, "function"    # Ljava/lang/String;

    .prologue
    .line 520
    const-string v4, ","

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 521
    .local v3, "split":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 522
    aget-object v4, v3, v1

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 523
    const/4 v4, 0x0

    aput-object v4, v3, v1

    .line 521
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 526
    :cond_1
    array-length v4, v3

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    const/4 v4, 0x0

    aget-object v4, v3, v4

    if-nez v4, :cond_2

    .line 527
    const-string v4, "none"

    .line 539
    :goto_1
    return-object v4

    .line 529
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 530
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    :goto_2
    array-length v4, v3

    if-ge v1, v4, :cond_5

    .line 531
    aget-object v2, v3, v1

    .line 532
    .local v2, "s":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 533
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 534
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 539
    .end local v2    # "s":Ljava/lang/String;
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method private startAccessoryMode()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 458
    iget-boolean v5, p0, Lcom/android/server/usb/UsbDeviceManager;->mHasUsbAccessory:Z

    if-nez v5, :cond_1

    .line 481
    :cond_0
    :goto_0
    return-void

    .line 460
    :cond_1
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->nativeGetAccessoryStrings()[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/usb/UsbDeviceManager;->mAccessoryStrings:[Ljava/lang/String;

    .line 461
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->nativeGetAudioMode()I

    move-result v5

    if-ne v5, v3, :cond_3

    move v1, v3

    .line 463
    .local v1, "enableAudio":Z
    :goto_1
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager;->mAccessoryStrings:[Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager;->mAccessoryStrings:[Ljava/lang/String;

    aget-object v5, v5, v4

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager;->mAccessoryStrings:[Ljava/lang/String;

    aget-object v5, v5, v3

    if-eqz v5, :cond_4

    move v0, v3

    .line 466
    .local v0, "enableAccessory":Z
    :goto_2
    const/4 v2, 0x0

    .line 468
    .local v2, "functions":Ljava/lang/String;
    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    .line 469
    const-string v2, "accessory,audio_source"

    .line 477
    :cond_2
    :goto_3
    if-eqz v2, :cond_0

    .line 478
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/usb/UsbDeviceManager;->mAccessoryModeRequestTime:J

    .line 479
    invoke-virtual {p0, v2}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "enableAccessory":Z
    .end local v1    # "enableAudio":Z
    .end local v2    # "functions":Ljava/lang/String;
    :cond_3
    move v1, v4

    .line 461
    goto :goto_1

    .restart local v1    # "enableAudio":Z
    :cond_4
    move v0, v4

    .line 463
    goto :goto_2

    .line 471
    .restart local v0    # "enableAccessory":Z
    .restart local v2    # "functions":Ljava/lang/String;
    :cond_5
    if-eqz v0, :cond_6

    .line 472
    const-string v2, "accessory"

    goto :goto_3

    .line 473
    :cond_6
    if-eqz v1, :cond_2

    .line 474
    const-string v2, "audio_source"

    goto :goto_3
.end method

.method private updateFlingerOptions(I)I
    .locals 13
    .param p1, "state"    # I

    .prologue
    .line 1887
    :try_start_0
    const-string v10, "SurfaceFlinger"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1888
    .local v2, "flinger":Landroid/os/IBinder;
    if-eqz v2, :cond_0

    .line 1889
    const-string v8, "android.ui.ISurfaceComposer"

    .line 1890
    .local v8, "szDescriptor":Ljava/lang/String;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1892
    .local v1, "data":Landroid/os/Parcel;
    const-string v10, "android.ui.ISurfaceComposer"

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1893
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1895
    const/4 v5, 0x0

    .line 1898
    .local v5, "iHSML_Version12":I
    :try_start_1
    new-instance v10, Ljava/io/File;

    const-string v11, "/sys/class/android_usb/android0/f_projector2/client_ver"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    .line 1904
    :goto_0
    :try_start_2
    const-string v10, "UsbDeviceManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[HSML] updateFlingerOptions: iHSML_Version12="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1906
    const-string v10, "/sys/devices/virtual/android_usb/android0/f_projector2/client_width"

    invoke-direct {p0, v10}, Lcom/android/server/usb/UsbDeviceManager;->htcmode_get_attribute(Ljava/lang/String;)I

    move-result v9

    .line 1907
    .local v9, "width":I
    if-gez v9, :cond_1

    .line 1971
    .end local v1    # "data":Landroid/os/Parcel;
    .end local v2    # "flinger":Landroid/os/IBinder;
    .end local v5    # "iHSML_Version12":I
    .end local v8    # "szDescriptor":Ljava/lang/String;
    .end local v9    # "width":I
    :goto_1
    return v9

    .line 1899
    .restart local v1    # "data":Landroid/os/Parcel;
    .restart local v2    # "flinger":Landroid/os/IBinder;
    .restart local v5    # "iHSML_Version12":I
    .restart local v8    # "szDescriptor":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 1900
    .local v7, "sEx":Ljava/io/FileNotFoundException;
    const-string v10, "UsbDeviceManager"

    const-string v11, "[HSML] This kernel does not have HSML Ver1.2 support"

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1965
    .end local v1    # "data":Landroid/os/Parcel;
    .end local v2    # "flinger":Landroid/os/IBinder;
    .end local v5    # "iHSML_Version12":I
    .end local v7    # "sEx":Ljava/io/FileNotFoundException;
    .end local v8    # "szDescriptor":Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 1967
    .local v7, "sEx":Landroid/os/RemoteException;
    const-string v10, "UsbDeviceManager"

    const-string v11, "[HSML] RemoteException"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1971
    .end local v7    # "sEx":Landroid/os/RemoteException;
    :cond_0
    :goto_2
    const/4 v9, 0x0

    goto :goto_1

    .line 1901
    .restart local v1    # "data":Landroid/os/Parcel;
    .restart local v2    # "flinger":Landroid/os/IBinder;
    .restart local v5    # "iHSML_Version12":I
    .restart local v8    # "szDescriptor":Ljava/lang/String;
    :catch_2
    move-exception v7

    .line 1902
    .local v7, "sEx":Ljava/lang/Exception;
    :try_start_3
    const-string v10, "UsbDeviceManager"

    const-string v11, "[HSML] HTCMODE_HSML_VER_PATH: "

    invoke-static {v10, v11, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1909
    .end local v7    # "sEx":Ljava/lang/Exception;
    .restart local v9    # "width":I
    :cond_1
    const-string v10, "/sys/devices/virtual/android_usb/android0/f_projector2/client_height"

    invoke-direct {p0, v10}, Lcom/android/server/usb/UsbDeviceManager;->htcmode_get_attribute(Ljava/lang/String;)I

    move-result v3

    .line 1910
    .local v3, "height":I
    if-gez v3, :cond_2

    move v9, v3

    .line 1911
    goto :goto_1

    .line 1912
    :cond_2
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1913
    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1914
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 1915
    const-string v10, "/sys/devices/virtual/android_usb/android0/f_projector2/client_pixel_format"

    invoke-direct {p0, v10}, Lcom/android/server/usb/UsbDeviceManager;->htcmode_get_attribute(Ljava/lang/String;)I

    move-result v0

    .line 1916
    .local v0, "colorFormat":I
    if-gez v0, :cond_3

    move v9, v0

    .line 1917
    goto :goto_1

    .line 1919
    :cond_3
    const-string v10, "/sys/devices/virtual/android_usb/android0/f_projector2/client_cap"

    invoke-direct {p0, v10}, Lcom/android/server/usb/UsbDeviceManager;->htcmode_get_attribute(Ljava/lang/String;)I

    move-result v4

    .line 1920
    .local v4, "iCapEndian":I
    if-gez v4, :cond_4

    .line 1921
    const/4 v4, 0x0

    .line 1923
    :cond_4
    if-nez v5, :cond_5

    .line 1926
    const/4 v10, 0x1

    if-lt v0, v10, :cond_5

    const/4 v10, 0x4

    if-gt v0, v10, :cond_5

    .line 1928
    add-int/lit8 v0, v0, 0x1

    .line 1931
    :cond_5
    if-lez v5, :cond_6

    if-lez v4, :cond_6

    .line 1932
    const/16 v4, 0x200

    .line 1934
    :cond_6
    packed-switch v0, :pswitch_data_0

    .line 1953
    const-string v10, "UsbDeviceManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[HSML] Unsupport pixel format: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1957
    :goto_3
    const-string v10, "/sys/devices/virtual/android_usb/android0/f_projector2/client_maxfps"

    invoke-direct {p0, v10}, Lcom/android/server/usb/UsbDeviceManager;->htcmode_get_attribute(Ljava/lang/String;)I

    move-result v6

    .line 1958
    .local v6, "maxfps":I
    if-gez v6, :cond_7

    move v9, v6

    .line 1959
    goto :goto_1

    .line 1936
    .end local v6    # "maxfps":I
    :pswitch_0
    or-int/lit8 v10, v4, 0x5

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 1940
    :pswitch_1
    or-int/lit8 v10, v4, 0x4

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 1944
    :pswitch_2
    or-int/lit8 v10, v4, 0x6

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 1949
    :pswitch_3
    or-int/lit8 v10, v4, 0x3

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 1960
    .restart local v6    # "maxfps":I
    :cond_7
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1961
    const/16 v10, 0xbbe

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface {v2, v10, v1, v11, v12}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1962
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    .line 1934
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public allowUsbDebugging(ZLjava/lang/String;)V
    .locals 1
    .param p1, "alwaysAllow"    # Z
    .param p2, "publicKey"    # Ljava/lang/String;

    .prologue
    .line 1777
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    if-eqz v0, :cond_0

    .line 1778
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbDebuggingManager;->allowUsbDebugging(ZLjava/lang/String;)V

    .line 1780
    :cond_0
    return-void
.end method

.method public bCheckSuppFunc(Ljava/lang/String;)Z
    .locals 4
    .param p1, "functions"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1605
    const-string v1, "UsbDeviceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[USBNET] bCheckSuppFunc: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    if-nez p1, :cond_1

    .line 1615
    :cond_0
    :goto_0
    return v0

    .line 1610
    :cond_1
    const-string v1, "ipt_enable"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ipt_disable"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ipt_connected"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1613
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bootCompleted()V
    .locals 2

    .prologue
    .line 442
    const-string v0, "UsbDeviceManager"

    const-string v1, "boot completed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendEmptyMessage(I)Z

    .line 444
    return-void
.end method

.method public clearUsbDebuggingKeys()V
    .locals 2

    .prologue
    .line 1837
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    if-eqz v0, :cond_0

    .line 1838
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDebuggingManager;->clearUsbDebuggingKeys()V

    .line 1843
    return-void

    .line 1840
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot clear Usb Debugging keys, UsbDebuggingManager not enabled"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public convertOemFunctions(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "functions"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1652
    move-object v1, p1

    .line 1653
    .local v1, "oldFunctions":Ljava/lang/String;
    iput-boolean v5, p0, Lcom/android/server/usb/UsbDeviceManager;->mToolSwitch:Z

    .line 1654
    if-nez p1, :cond_0

    move-object v0, p1

    .line 1703
    .end local p1    # "functions":Ljava/lang/String;
    .local v0, "functions":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1658
    .end local v0    # "functions":Ljava/lang/String;
    .restart local p1    # "functions":Ljava/lang/String;
    :cond_0
    iput v5, p0, Lcom/android/server/usb/UsbDeviceManager;->mMassStorageNotification:I

    .line 1659
    const-string v2, "cdrom"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1660
    const-string v2, "UsbDeviceManager"

    const-string v3, "[USB][convertOemFunctions] cdrom is enabled"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    const-string p1, "mass_storage"

    .line 1662
    iput v4, p0, Lcom/android/server/usb/UsbDeviceManager;->mMassStorageNotification:I

    .line 1666
    :cond_1
    const-string v2, "diskmode"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1667
    const-string v2, "UsbDeviceManager"

    const-string v3, "[USB][convertOemFunctions] diskmode is enabled"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    const-string p1, "mass_storage"

    .line 1669
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/server/usb/UsbDeviceManager;->mMassStorageNotification:I

    .line 1675
    :cond_2
    const-string v2, "hsm-acm"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1676
    const-string v2, "UsbDeviceManager"

    const-string v3, "[USB][convertOemFunctions] HSM is enabled"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    const-string p1, "mtp,acm"

    .line 1682
    :cond_3
    const-string v2, "tool_diag_on"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1683
    const-string v2, "UsbDeviceManager"

    const-string v3, "[USB][convertOemFunctions] will Enable Diag by Tool"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    iput-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager;->mToolSwitch:Z

    .line 1685
    iput-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager;->mDiagEnabled:Z

    .line 1686
    iput-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager;->mToolAdbEnabled:Z

    .line 1687
    const-string p1, "mass_storage,adb,diag"

    .line 1699
    :cond_4
    :goto_1
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1700
    const-string v2, "UsbDeviceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[USB][convertOemFunctions] oem convert: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object v0, p1

    .line 1703
    .end local p1    # "functions":Ljava/lang/String;
    .restart local v0    # "functions":Ljava/lang/String;
    goto :goto_0

    .line 1688
    .end local v0    # "functions":Ljava/lang/String;
    .restart local p1    # "functions":Ljava/lang/String;
    :cond_6
    const-string v2, "tool_diag_off"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1689
    const-string v2, "UsbDeviceManager"

    const-string v3, "[USB][convertOemFunctions] will Disable Diag by Tool"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    iput-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager;->mToolSwitch:Z

    .line 1691
    iput-boolean v5, p0, Lcom/android/server/usb/UsbDeviceManager;->mDiagEnabled:Z

    .line 1692
    iput-boolean v5, p0, Lcom/android/server/usb/UsbDeviceManager;->mToolAdbEnabled:Z

    .line 1693
    iget-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z

    if-eqz v2, :cond_7

    .line 1694
    const-string p1, "charged,adb"

    goto :goto_1

    .line 1696
    :cond_7
    const-string p1, "charged"

    goto :goto_1
.end method

.method public denyUsbDebugging()V
    .locals 1

    .prologue
    .line 1783
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    if-eqz v0, :cond_0

    .line 1784
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDebuggingManager;->denyUsbDebugging()V

    .line 1786
    :cond_0
    return-void
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 1
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 1846
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    if-eqz v0, :cond_0

    .line 1847
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1849
    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    if-eqz v0, :cond_1

    .line 1850
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbDebuggingManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1852
    :cond_1
    return-void
.end method

.method public getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;
    .locals 1

    .prologue
    .line 1585
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;

    move-result-object v0

    return-object v0
.end method

.method public getUsbDriveStatus()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1822
    const-string v2, "UsbDeviceManager"

    const-string v3, "[USBNET] getUsbDriveStatus"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1823
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager;->mUsbnetService:Lcom/htc/net/usbnet/IUsbnetController;

    if-nez v2, :cond_0

    .line 1824
    const-string v2, "UsbDeviceManager"

    const-string v3, "Unable to connect to usbnet service!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1832
    :goto_0
    return v1

    .line 1829
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager;->mUsbnetService:Lcom/htc/net/usbnet/IUsbnetController;

    invoke-interface {v2}, Lcom/htc/net/usbnet/IUsbnetController;->getUsbDriveStatus()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1830
    :catch_0
    move-exception v0

    .line 1831
    .local v0, "sEx":Landroid/os/RemoteException;
    const-string v2, "UsbDeviceManager"

    const-string v3, "[USBNET] Unable to connect to usbnet service!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getUsbStatus()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1801
    const-string v2, "UsbDeviceManager"

    const-string v3, "[USBNET] getUsbStatus"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1802
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager;->mUsbnetService:Lcom/htc/net/usbnet/IUsbnetController;

    if-nez v2, :cond_0

    .line 1803
    const-string v2, "UsbDeviceManager"

    const-string v3, "Unable to connect to usbnet service!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    :goto_0
    return v1

    .line 1808
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager;->mUsbnetService:Lcom/htc/net/usbnet/IUsbnetController;

    invoke-interface {v2}, Lcom/htc/net/usbnet/IUsbnetController;->getUsbStatus()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1809
    :catch_0
    move-exception v0

    .line 1810
    .local v0, "sEx":Landroid/os/RemoteException;
    const-string v2, "UsbDeviceManager"

    const-string v3, "[USBNET] Unable to connect to usbnet service!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isFunctionEnabled(Ljava/lang/String;)Z
    .locals 6
    .param p1, "function"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1619
    const/4 v0, -0x1

    .line 1621
    .local v0, "iParam":I
    const-string v3, "UsbDeviceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[USBNET] isFunctionEnabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    if-nez p1, :cond_1

    .line 1647
    :cond_0
    :goto_0
    return v2

    .line 1626
    :cond_1
    const-string v3, "ipt_enable"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1627
    const/4 v0, 0x1

    .line 1633
    :cond_2
    :goto_1
    if-ltz v0, :cond_3

    .line 1635
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager;->mUsbnetService:Lcom/htc/net/usbnet/IUsbnetController;

    if-nez v3, :cond_6

    .line 1636
    const-string v2, "UsbDeviceManager"

    const-string v3, "Unable to connect to usbnet service!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    :cond_3
    :goto_2
    const-string v2, "sys.usb.config"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 1628
    :cond_4
    const-string v3, "ipt_disable"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1629
    const/4 v0, 0x0

    goto :goto_1

    .line 1630
    :cond_5
    const-string v3, "ipt_connected"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1631
    const/4 v0, 0x2

    goto :goto_1

    .line 1640
    :cond_6
    :try_start_0
    const-string v3, "UsbDeviceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[USBNET] mUsbnetService.UsbMiscControl_IPT: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1641
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager;->mUsbnetService:Lcom/htc/net/usbnet/IUsbnetController;

    invoke-interface {v3, v0}, Lcom/htc/net/usbnet/IUsbnetController;->UsbMiscControl_IPT(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ltz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 1642
    :catch_0
    move-exception v1

    .line 1643
    .local v1, "sEx":Landroid/os/RemoteException;
    const-string v2, "UsbDeviceManager"

    const-string v3, "[USBNET] Unable to connect to usbnet service!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public openAccessory(Landroid/hardware/usb/UsbAccessory;)Landroid/os/ParcelFileDescriptor;
    .locals 4
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;

    .prologue
    .line 1590
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-virtual {v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;

    move-result-object v0

    .line 1591
    .local v0, "currentAccessory":Landroid/hardware/usb/UsbAccessory;
    if-nez v0, :cond_0

    .line 1592
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "no accessory attached"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1594
    :cond_0
    invoke-virtual {v0, p1}, Landroid/hardware/usb/UsbAccessory;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1595
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not match current accessory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1598
    .local v1, "error":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1600
    .end local v1    # "error":Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->getCurrentSettings()Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/usb/UsbSettingsManager;->checkPermission(Landroid/hardware/usb/UsbAccessory;)V

    .line 1601
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->nativeOpenAccessory()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    return-object v2
.end method

.method public setCurrentFunctionExt(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "function"    # Ljava/lang/String;
    .param p2, "bParam"    # Z

    .prologue
    .line 1789
    const-string v0, "UsbDeviceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentFunctionExt("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") bParam: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1790
    if-eqz p1, :cond_0

    .line 1791
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(ILjava/lang/Object;Z)V

    .line 1792
    :cond_0
    return-void
.end method

.method public setCurrentFunctions(Ljava/lang/String;)V
    .locals 5
    .param p1, "functions"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1707
    const-string v0, "UsbDeviceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentFunctions("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    if-eqz p1, :cond_1

    .line 1711
    const-string v0, "charging_on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1712
    const-string v0, "UsbDeviceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[USBNET][setCurrentFunctions] skip change functions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    invoke-virtual {p0, v3}, Lcom/android/server/usb/UsbDeviceManager;->setUsbStatus(Z)Z

    .line 1714
    iput-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager;->mChargeOnEnabled:Z

    .line 1729
    :goto_0
    return-void

    .line 1717
    :cond_0
    const-string v0, "charging_off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1718
    const-string v0, "UsbDeviceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[USBNET][setCurrentFunctions] skip change functions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    invoke-virtual {p0, v4}, Lcom/android/server/usb/UsbDeviceManager;->setUsbStatus(Z)Z

    .line 1720
    iput-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager;->mChargeOnEnabled:Z

    goto :goto_0

    .line 1724
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManager;->convertOemFunctions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1725
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mToolSwitch:Z

    if-eqz v0, :cond_2

    .line 1726
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 1728
    :cond_2
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public setCurrentUser(ILcom/android/server/usb/UsbSettingsManager;)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "settings"    # Lcom/android/server/usb/UsbSettingsManager;

    .prologue
    .line 447
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 448
    :try_start_0
    iput-object p2, p0, Lcom/android/server/usb/UsbDeviceManager;->mCurrentSettings:Lcom/android/server/usb/UsbSettingsManager;

    .line 449
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 450
    monitor-exit v1

    .line 451
    return-void

    .line 450
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setUsbDataUnlocked(Z)V
    .locals 3
    .param p1, "unlocked"    # Z

    .prologue
    .line 1732
    const-string v0, "UsbDeviceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUsbDataUnlocked("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(IZ)V

    .line 1734
    return-void
.end method

.method public setUsbDriveStatus(Z)Z
    .locals 3
    .param p1, "bAllowUsb"    # Z

    .prologue
    .line 1816
    const-string v0, "UsbDeviceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[USBNET] setUsbDriveStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1817
    const-string v0, "setUsbDriveStatus"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctionExt(Ljava/lang/String;Z)V

    .line 1818
    const/4 v0, 0x1

    return v0
.end method

.method public setUsbStatus(Z)Z
    .locals 3
    .param p1, "bAllowUsb"    # Z

    .prologue
    .line 1795
    const-string v0, "UsbDeviceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[USBNET] setUsbStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1796
    const-string v0, "setUsbStatus"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctionExt(Ljava/lang/String;Z)V

    .line 1797
    const/4 v0, 0x1

    return v0
.end method

.method public systemReady()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 409
    const-string v2, "UsbDeviceManager"

    const-string v5, "systemReady"

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lcom/android/server/usb/UsbDeviceManager;->mNotificationManager:Landroid/app/NotificationManager;

    .line 416
    const/4 v1, 0x0

    .line 421
    .local v1, "massStorageSupported":Z
    if-nez v1, :cond_0

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager;->mUseUsbNotification:Z

    .line 425
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "adb_enabled"

    iget-boolean v6, p0, Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z

    if-eqz v6, :cond_1

    :goto_1
    invoke-static {v2, v5, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    :goto_2
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendEmptyMessage(I)Z

    .line 433
    new-instance v2, Landroid/content/IntentFilter;

    sget-object v3, Landroid/hardware/usb/UsbManager;->USB_SWITCH_MTP_ON:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/usb/UsbDeviceManager;->mIntentFilter:Landroid/content/IntentFilter;

    .line 434
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager;->mIntentFilter:Landroid/content/IntentFilter;

    sget-object v3, Landroid/hardware/usb/UsbManager;->USB_SWITCH_MTP_OFF:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 435
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 436
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 438
    const-string v2, "usbnet"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/net/usbnet/IUsbnetController$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/net/usbnet/IUsbnetController;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/usb/UsbDeviceManager;->mUsbnetService:Lcom/htc/net/usbnet/IUsbnetController;

    .line 439
    return-void

    :cond_0
    move v2, v4

    .line 421
    goto :goto_0

    :cond_1
    move v3, v4

    .line 425
    goto :goto_1

    .line 427
    :catch_0
    move-exception v0

    .line 429
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v2, "UsbDeviceManager"

    const-string v3, "ADB_ENABLED is restricted."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public updateUserRestrictions()V
    .locals 2

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendEmptyMessage(I)Z

    .line 455
    return-void
.end method
