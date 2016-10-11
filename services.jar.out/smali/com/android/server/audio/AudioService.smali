.class public Lcom/android/server/audio/AudioService;
.super Landroid/media/IAudioService$Stub;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/AudioService$MirrorLinkVolumeDeathHandler;,
        Lcom/android/server/audio/AudioService$DLNAPlayingDeathHandler;,
        Lcom/android/server/audio/AudioService$FixedDLNAVolumeDeathHandler;,
        Lcom/android/server/audio/AudioService$ControllerService;,
        Lcom/android/server/audio/AudioService$AudioPolicyProxy;,
        Lcom/android/server/audio/AudioService$AudioServiceInternal;,
        Lcom/android/server/audio/AudioService$VolumeController;,
        Lcom/android/server/audio/AudioService$StreamOverride;,
        Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;,
        Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;,
        Lcom/android/server/audio/AudioService$SettingsObserver;,
        Lcom/android/server/audio/AudioService$AudioHandler;,
        Lcom/android/server/audio/AudioService$AudioSystemThread;,
        Lcom/android/server/audio/AudioService$VolumeStreamState;,
        Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;,
        Lcom/android/server/audio/AudioService$ScoClient;,
        Lcom/android/server/audio/AudioService$SoundPoolCallback;,
        Lcom/android/server/audio/AudioService$SoundPoolListenerThread;,
        Lcom/android/server/audio/AudioService$LoadSoundEffectReply;,
        Lcom/android/server/audio/AudioService$SetModeDeathHandler;,
        Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;,
        Lcom/android/server/audio/AudioService$ForceControlStreamClient;,
        Lcom/android/server/audio/AudioService$StreamVolumeCommand;,
        Lcom/android/server/audio/AudioService$AudioOrientationEventListener;,
        Lcom/android/server/audio/AudioService$DeviceListSpec;
    }
.end annotation


# static fields
.field private static final ASSET_FILE_VERSION:Ljava/lang/String; = "1.0"

.field private static final ATTR_ASSET_FILE:Ljava/lang/String; = "file"

.field private static final ATTR_ASSET_ID:Ljava/lang/String; = "id"

.field private static final ATTR_GROUP_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final BTA2DP_DOCK_TIMEOUT_MILLIS:I = 0x1f40

.field private static final BT_HEADSET_CNCT_TIMEOUT_MS:I = 0xbb8

.field public static final CONNECT_INTENT_KEY_ADDRESS:Ljava/lang/String; = "address"

.field public static final CONNECT_INTENT_KEY_DEVICE_CLASS:Ljava/lang/String; = "class"

.field public static final CONNECT_INTENT_KEY_HAS_CAPTURE:Ljava/lang/String; = "hasCapture"

.field public static final CONNECT_INTENT_KEY_HAS_MIDI:Ljava/lang/String; = "hasMIDI"

.field public static final CONNECT_INTENT_KEY_HAS_PLAYBACK:Ljava/lang/String; = "hasPlayback"

.field public static final CONNECT_INTENT_KEY_PORT_NAME:Ljava/lang/String; = "portName"

.field public static final CONNECT_INTENT_KEY_STATE:Ljava/lang/String; = "state"

.field protected static final DEBUG_AP:Z = true

.field protected static final DEBUG_DEVICES:Z = true

.field protected static final DEBUG_MODE:Z = true

.field protected static final DEBUG_VOL:Z = true

.field private static final EFFECT_MANAGER:I

.field private static final ENABLE_AUDIOSPHERE:Z

.field private static final ENABLE_BEATS:Z

.field private static final ENABLE_BOOMSOUND:Z

.field private static final ENABLE_DOLBY:Z

.field private static final ENABLE_HARMAN:Z

.field private static final ENABLE_SRS:Z

.field private static final FLAG_ADJUST_VOLUME:I = 0x1

.field private static final GROUP_TOUCH_SOUNDS:Ljava/lang/String; = "touch_sounds"

.field private static final INDICATE_SYSTEM_READY_RETRY_DELAY_MS:I = 0x3e8

.field private static MAX_STREAM_VOLUME:[I = null

.field private static MIN_STREAM_VOLUME:[I = null

.field private static final MSG_BROADCAST_AUDIO_BECOMING_NOISY:I = 0xf

.field private static final MSG_BROADCAST_BT_CONNECTION_STATE:I = 0x13

.field private static final MSG_BTA2DP_DOCK_TIMEOUT:I = 0x6

.field private static final MSG_BT_HEADSET_CNCT_FAILED:I = 0x9

.field private static final MSG_CHECK_MUSIC_ACTIVE:I = 0xe

.field private static final MSG_CONFIGURE_SAFE_MEDIA_VOLUME:I = 0x10

.field private static final MSG_CONFIGURE_SAFE_MEDIA_VOLUME_FORCED:I = 0x11

.field private static final MSG_DYN_POLICY_MIX_STATE_UPDATE:I = 0x19

.field private static final MSG_FM_ROUTE:I = 0x3e9

.field private static final MSG_INDICATE_SYSTEM_READY:I = 0x1a

.field private static final MSG_LOAD_SOUND_EFFECTS:I = 0x7

.field private static final MSG_MEDIA_SERVER_DIED:I = 0x4

.field private static final MSG_PERSIST_MASTER_VOLUME_MUTE:I = 0xb

.field private static final MSG_PERSIST_MICROPHONE_MUTE:I = 0x17

.field private static final MSG_PERSIST_MUSIC_ACTIVE_MS:I = 0x16

.field private static final MSG_PERSIST_RINGER_MODE:I = 0x3

.field private static final MSG_PERSIST_SAFE_VOLUME_STATE:I = 0x12

.field private static final MSG_PERSIST_VOLUME:I = 0x1

.field private static final MSG_PLAY_SOUND_EFFECT:I = 0x5

.field private static final MSG_REPORT_NEW_ROUTES:I = 0xc

.field private static final MSG_SET_A2DP_SINK_CONNECTION_STATE:I = 0x66

.field private static final MSG_SET_A2DP_SRC_CONNECTION_STATE:I = 0x65

.field private static final MSG_SET_ALL_VOLUMES:I = 0xa

.field private static final MSG_SET_ALL_VOLUMES_MIRRORLINK:I = 0x3eb

.field private static final MSG_SET_DEVICE_VOLUME:I = 0x0

.field private static final MSG_SET_DEVICE_VOLUME_HTC:I = 0x3ea

.field private static final MSG_SET_FORCE_BT_A2DP_USE:I = 0xd

.field private static final MSG_SET_FORCE_USE:I = 0x8

.field private static final MSG_SET_WIRED_DEVICE_CONNECTION_STATE:I = 0x64

.field private static final MSG_SYSTEM_READY:I = 0x15

.field private static final MSG_UNLOAD_SOUND_EFFECTS:I = 0x14

.field private static final MSG_UNMUTE_STREAM:I = 0x18

.field private static final MSG_UPDATE_RINGER_MODE_AFFECTED_STREAMS_INTERNAL:I = 0x3ec

.field private static final MUSIC_ACTIVE_POLL_PERIOD_MS:I = 0xea60

.field private static final NUM_SOUNDPOOL_CHANNELS:I = 0x4

.field private static final PERSIST_DELAY:I = 0x1f4

.field private static final RINGER_MODE_NAMES:[Ljava/lang/String;

.field private static final SAFE_MEDIA_VOLUME_ACTIVE:I = 0x3

.field private static final SAFE_MEDIA_VOLUME_DISABLED:I = 0x1

.field private static final SAFE_MEDIA_VOLUME_INACTIVE:I = 0x2

.field private static final SAFE_MEDIA_VOLUME_NOT_CONFIGURED:I = 0x0

.field private static final SAFE_VOLUME_CONFIGURE_TIMEOUT_MS:I = 0x7530

.field private static final SCO_MODE_MAX:I = 0x2

.field private static final SCO_MODE_RAW:I = 0x1

.field private static final SCO_MODE_UNDEFINED:I = -0x1

.field private static final SCO_MODE_VIRTUAL_CALL:I = 0x0

.field private static final SCO_MODE_VR:I = 0x2

.field private static final SCO_STATE_ACTIVATE_REQ:I = 0x1

.field private static final SCO_STATE_ACTIVE_EXTERNAL:I = 0x2

.field private static final SCO_STATE_ACTIVE_INTERNAL:I = 0x3

.field private static final SCO_STATE_DEACTIVATE_EXT_REQ:I = 0x4

.field private static final SCO_STATE_DEACTIVATE_REQ:I = 0x5

.field private static final SCO_STATE_INACTIVE:I = 0x0

.field private static final SENDMSG_NOOP:I = 0x1

.field private static final SENDMSG_QUEUE:I = 0x2

.field private static final SENDMSG_REPLACE:I = 0x0

.field private static final SOUND_EFFECTS_LOAD_TIMEOUT_MS:I = 0x1388

.field private static final SOUND_EFFECTS_PATH:Ljava/lang/String; = "/media/audio/ui/"

.field private static final SOUND_EFFECT_FILES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final STREAM_VOLUME_OPS:[I

.field private static SUPPORT_A2DP_SAFEVOLUME:Z = false

.field private static final TAG:Ljava/lang/String; = "AudioService"

.field private static final TAG_ASSET:Ljava/lang/String; = "asset"

.field private static final TAG_AUDIO_ASSETS:Ljava/lang/String; = "audio_assets"

.field private static final TAG_GROUP:Ljava/lang/String; = "group"

.field private static final UNMUTE_STREAM_DELAY:I = 0x15e

.field private static final UNSAFE_VOLUME_MUSIC_ACTIVE_MS_MAX:I = 0x44aa200

.field private static final VOLUME_FIXED_DLNA:I = 0xf

.field private static eADSReaderName:Ljava/lang/String;

.field private static final mDLNAPlayingLock:Ljava/lang/Object;

.field private static final mFixedDLNAVolumeLock:Ljava/lang/Object;

.field private static mHtcCameraShutterSound:Z

.field private static mLastDeviceConnectMsgTime:Ljava/lang/Long;

.field private static final mMirrorLinkVolumeLock:Ljava/lang/Object;

.field private static manager:Lcom/htc/customization/HtcCustomizationManager;

.field private static reader:Lcom/htc/customization/HtcCustomizationReader;

.field private static readerNeedSIMReady:Z

.field private static sSoundEffectVolumeDb:I


# instance fields
.field private final SOUND_EFFECT_FILES_MAP:[[I

.field private final STREAM_VOLUME_ALIAS_DEFAULT:[I

.field private final STREAM_VOLUME_ALIAS_TELEVISION:[I

.field private final STREAM_VOLUME_ALIAS_VOICE:[I

.field private final isStockUI:Z

.field private mA2dp:Landroid/bluetooth/BluetoothA2dp;

.field private final mA2dpAvrcpLock:Ljava/lang/Object;

.field private mAnalogFM:Z

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

.field private mAudioPolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/audio/AudioService$AudioPolicyProxy;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioPolicyCounter:I

.field private final mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

.field private mAudioSystemThread:Lcom/android/server/audio/AudioService$AudioSystemThread;

.field private mAvrcpAbsVolSupported:Z

.field mBecomingNoisyIntentDevices:I

.field private mBluetoothA2dpEnabled:Z

.field private final mBluetoothA2dpEnabledLock:Ljava/lang/Object;

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mBluetoothHeadsetConnected:Z

.field private mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

.field private mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBtIndex:I

.field private mBtName:Ljava/lang/String;

.field private mCameraSoundForced:Ljava/lang/Boolean;

.field private final mConnectedDevices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/audio/AudioService$DeviceListSpec;",
            ">;"
        }
    .end annotation
.end field

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mControllerService:Lcom/android/server/audio/AudioService$ControllerService;

.field final mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

.field private mDLNAPlayingDeathHandler:Lcom/android/server/audio/AudioService$DLNAPlayingDeathHandler;

.field private mDeviceOrientation:I

.field private mDeviceRotation:I

.field private mDockAddress:Ljava/lang/String;

.field private mDockAudioMediaEnabled:Z

.field private mDockState:I

.field private final mDynPolicyCallback:Landroid/media/AudioSystem$DynamicPolicyCallback;

.field private mEnableListenNotify:Z

.field private mFMActive:Z

.field private mFixedDLNAVolumeDeathHandler:Lcom/android/server/audio/AudioService$FixedDLNAVolumeDeathHandler;

.field mFixedVolumeDevices:I

.field private mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

.field private final mForceControlStreamLock:Ljava/lang/Object;

.field private mForcedUseForComm:I

.field mFullVolumeDevices:I

.field private final mHasVibrator:Z

.field private mHdmiCecSink:Z

.field private mHdmiDisplayStatusCallback:Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;

.field private mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

.field private mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

.field private mHdmiSystemAudioSupported:Z

.field private mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

.field private mHeadsetState:I

.field private mHtcBeatsEffect:Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;

.field private mIsLockMusicVolumeToMax:Z

.field private mIsLockMusicVolumeUI:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mListenNotifyDuration:J

.field private mListenNotifyThreshold:I

.field private mLockedMusicVolume:Z

.field private mLoweredFromNormalToVibrateTime:J

.field private mMcc:I

.field private final mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

.field private mMirrorLinkVolumeDeathHandler:Lcom/android/server/audio/AudioService$MirrorLinkVolumeDeathHandler;

.field private mMode:I

.field private final mMonitorOrientation:Z

.field private final mMonitorRotation:Z

.field private mMusicActiveMs:I

.field private mMuteAffectedStreams:I

.field private mOrientationListener:Lcom/android/server/audio/AudioService$AudioOrientationEventListener;

.field private mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

.field private final mPlatformType:I

.field private mPrevVolDirection:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRingerMode:I

.field private mRingerModeAffectedStreams:I

.field private mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

.field private mRingerModeExternal:I

.field private mRingerModeMutedStreams:I

.field private volatile mRingtonePlayer:Landroid/media/IRingtonePlayer;

.field private mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mRmtSbmxFullVolRefCount:I

.field final mRoutesObservers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/media/IAudioRoutesObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mSafeMediaVolumeDevices:I

.field private mSafeMediaVolumeIndex:I

.field private mSafeMediaVolumeState:Ljava/lang/Integer;

.field private mScoAudioMode:I

.field private mScoAudioState:I

.field private final mScoClients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/audio/AudioService$ScoClient;",
            ">;"
        }
    .end annotation
.end field

.field private mScoConnectionState:I

.field private final mSetModeDeathHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/audio/AudioService$SetModeDeathHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsLock:Ljava/lang/Object;

.field private mSettingsObserver:Lcom/android/server/audio/AudioService$SettingsObserver;

.field private final mSoundEffectsLock:Ljava/lang/Object;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolCallBack:Lcom/android/server/audio/AudioService$SoundPoolCallback;

.field private mSoundPoolListenerThread:Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

.field private mSoundPoolLooper:Landroid/os/Looper;

.field private mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

.field private mStreamVolumeAlias:[I

.field private mSystemReady:Z

.field private final mUseFixedVolume:Z

.field private mVibrateSetting:I

.field private mVolumeControlStream:I

.field private final mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

.field private mVolumePolicy:Landroid/media/VolumePolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v4, 0xb

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 284
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    .line 292
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    .line 307
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    .line 375
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_OPS:[I

    .line 585
    new-instance v0, Ljava/lang/Long;

    const-wide/16 v4, 0x0

    invoke-direct {v0, v4, v5}, Ljava/lang/Long;-><init>(J)V

    sput-object v0, Lcom/android/server/audio/AudioService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    .line 609
    const-string v0, "Android_Multimedia"

    sput-object v0, Lcom/android/server/audio/AudioService;->eADSReaderName:Ljava/lang/String;

    .line 610
    sput-boolean v1, Lcom/android/server/audio/AudioService;->readerNeedSIMReady:Z

    .line 611
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v0

    sput-object v0, Lcom/android/server/audio/AudioService;->manager:Lcom/htc/customization/HtcCustomizationManager;

    .line 612
    sget-object v0, Lcom/android/server/audio/AudioService;->manager:Lcom/htc/customization/HtcCustomizationManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/audio/AudioService;->manager:Lcom/htc/customization/HtcCustomizationManager;

    sget-object v4, Lcom/android/server/audio/AudioService;->eADSReaderName:Ljava/lang/String;

    sget-boolean v5, Lcom/android/server/audio/AudioService;->readerNeedSIMReady:Z

    invoke-virtual {v0, v4, v3, v5}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    :goto_0
    sput-object v0, Lcom/android/server/audio/AudioService;->reader:Lcom/htc/customization/HtcCustomizationReader;

    .line 616
    sget-object v0, Lcom/android/server/audio/AudioService;->reader:Lcom/htc/customization/HtcCustomizationReader;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/audio/AudioService;->reader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v4, "support_camera_enforce_shuttersound"

    invoke-interface {v0, v4, v1}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_1
    sput-boolean v0, Lcom/android/server/audio/AudioService;->mHtcCameraShutterSound:Z

    .line 630
    sget-object v0, Lcom/android/server/audio/AudioService;->reader:Lcom/htc/customization/HtcCustomizationReader;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/audio/AudioService;->reader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v4, "support_a2dp_safevolume"

    invoke-interface {v0, v4, v1}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_2
    sput-boolean v0, Lcom/android/server/audio/AudioService;->SUPPORT_A2DP_SAFEVOLUME:Z

    .line 638
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/audio/AudioService;->mMirrorLinkVolumeLock:Ljava/lang/Object;

    .line 6263
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v4, "SILENT"

    aput-object v4, v0, v1

    const-string v4, "VIBRATE"

    aput-object v4, v0, v3

    const/4 v4, 0x2

    const-string v5, "NORMAL"

    aput-object v5, v0, v4

    sput-object v0, Lcom/android/server/audio/AudioService;->RINGER_MODE_NAMES:[Ljava/lang/String;

    .line 6994
    sget-object v0, Lcom/android/server/audio/AudioService;->reader:Lcom/htc/customization/HtcCustomizationReader;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/server/audio/AudioService;->reader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v4, "support_beats_audio"

    invoke-interface {v0, v4, v1}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_3
    sput-boolean v0, Lcom/android/server/audio/AudioService;->ENABLE_BEATS:Z

    .line 6995
    sget-object v0, Lcom/android/server/audio/AudioService;->reader:Lcom/htc/customization/HtcCustomizationReader;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/server/audio/AudioService;->reader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v4, "support_boomsound_effect"

    invoke-interface {v0, v4, v1}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_4
    sput-boolean v0, Lcom/android/server/audio/AudioService;->ENABLE_BOOMSOUND:Z

    .line 6996
    sget-object v0, Lcom/android/server/audio/AudioService;->reader:Lcom/htc/customization/HtcCustomizationReader;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/server/audio/AudioService;->reader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v4, "support_harman"

    invoke-interface {v0, v4, v1}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_5
    sput-boolean v0, Lcom/android/server/audio/AudioService;->ENABLE_HARMAN:Z

    .line 6997
    sget-object v0, Lcom/android/server/audio/AudioService;->reader:Lcom/htc/customization/HtcCustomizationReader;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/android/server/audio/AudioService;->reader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v4, "effect_manager_id"

    invoke-interface {v0, v4, v2}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v0

    :goto_6
    sput v0, Lcom/android/server/audio/AudioService;->EFFECT_MANAGER:I

    .line 6998
    const-string v0, "htc.audio.effect.dolby"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_7

    move v0, v3

    :goto_7
    sput-boolean v0, Lcom/android/server/audio/AudioService;->ENABLE_DOLBY:Z

    .line 6999
    const-string v0, "htc.audio.effect.audiosphere"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_8

    move v0, v3

    :goto_8
    sput-boolean v0, Lcom/android/server/audio/AudioService;->ENABLE_AUDIOSPHERE:Z

    .line 7000
    const-string v0, "htc.audio.effect.srs"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_9

    :goto_9
    sput-boolean v3, Lcom/android/server/audio/AudioService;->ENABLE_SRS:Z

    .line 7134
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/audio/AudioService;->mFixedDLNAVolumeLock:Ljava/lang/Object;

    .line 7226
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/audio/AudioService;->mDLNAPlayingLock:Ljava/lang/Object;

    return-void

    .line 612
    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_1
    move v0, v1

    .line 616
    goto/16 :goto_1

    :cond_2
    move v0, v1

    .line 630
    goto/16 :goto_2

    :cond_3
    move v0, v1

    .line 6994
    goto :goto_3

    :cond_4
    move v0, v1

    .line 6995
    goto :goto_4

    :cond_5
    move v0, v1

    .line 6996
    goto :goto_5

    :cond_6
    move v0, v2

    .line 6997
    goto :goto_6

    :cond_7
    move v0, v1

    .line 6998
    goto :goto_7

    :cond_8
    move v0, v1

    .line 6999
    goto :goto_8

    :cond_9
    move v3, v1

    .line 7000
    goto :goto_9

    .line 292
    nop

    :array_0
    .array-data 4
        0x6
        0x7
        0x7
        0xf
        0x7
        0x7
        0xf
        0x7
        0xf
        0xf
        0xf
    .end array-data

    .line 307
    :array_1
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 375
    :array_2
    .array-data 4
        0x22
        0x24
        0x23
        0x24
        0x25
        0x26
        0x27
        0x24
        0x24
        0x24
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 660
    invoke-direct/range {p0 .. p0}, Landroid/media/IAudioService$Stub;-><init>()V

    .line 213
    new-instance v2, Lcom/android/server/audio/AudioService$VolumeController;

    invoke-direct {v2}, Lcom/android/server/audio/AudioService$VolumeController;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    .line 214
    new-instance v2, Lcom/android/server/audio/AudioService$ControllerService;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/audio/AudioService$ControllerService;-><init>(Lcom/android/server/audio/AudioService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mControllerService:Lcom/android/server/audio/AudioService$ControllerService;

    .line 274
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/audio/AudioService;->mMode:I

    .line 276
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    .line 279
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    .line 289
    const/16 v2, 0xa

    const/4 v3, 0x2

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    .line 330
    const/16 v2, 0xb

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_VOICE:[I

    .line 343
    const/16 v2, 0xb

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_TELEVISION:[I

    .line 356
    const/16 v2, 0xb

    new-array v2, v2, [I

    fill-array-data v2, :array_2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_DEFAULT:[I

    .line 390
    new-instance v2, Lcom/android/server/audio/AudioService$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/audio/AudioService$1;-><init>(Lcom/android/server/audio/AudioService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

    .line 410
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    .line 413
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    .line 433
    new-instance v2, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;-><init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$1;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 460
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    .line 467
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    .line 470
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    .line 521
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    .line 525
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/audio/AudioService;->mPrevVolDirection:I

    .line 530
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    .line 531
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    .line 535
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    .line 539
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/audio/AudioService;->mDeviceOrientation:I

    .line 540
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/audio/AudioService;->mDeviceRotation:I

    .line 544
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    .line 547
    new-instance v2, Landroid/media/AudioRoutesInfo;

    invoke-direct {v2}, Landroid/media/AudioRoutesInfo;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    .line 548
    new-instance v2, Landroid/os/RemoteCallbackList;

    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    .line 552
    const v2, 0x2c1c00

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    .line 558
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    .line 564
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/audio/AudioService;->mDockAudioMediaEnabled:Z

    .line 566
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/audio/AudioService;->mDockState:I

    .line 579
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    .line 581
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z

    .line 588
    sget-object v2, Landroid/media/VolumePolicy;->DEFAULT:Landroid/media/VolumePolicy;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    .line 619
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/audio/AudioService;->mFMActive:Z

    .line 620
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/audio/AudioService;->mAnalogFM:Z

    .line 635
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/audio/AudioService;->mIsLockMusicVolumeToMax:Z

    .line 636
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/audio/AudioService;->mIsLockMusicVolumeUI:Z

    .line 637
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/audio/AudioService;->mLockedMusicVolume:Z

    .line 648
    sget-boolean v2, Lcom/android/server/audio/htcsoundfx/CustomizationUtil;->SENSE_STOCK:Z

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/audio/AudioService;->isStockUI:Z

    .line 1904
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    .line 1905
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    .line 3161
    new-instance v2, Lcom/android/server/audio/AudioService$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/audio/AudioService$2;-><init>(Lcom/android/server/audio/AudioService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 5285
    const v2, 0x27f8c

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/audio/AudioService;->mBecomingNoisyIntentDevices:I

    .line 6017
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/audio/AudioService;->mMcc:I

    .line 6024
    const/16 v2, 0xc

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeDevices:I

    .line 6163
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    .line 6174
    new-instance v2, Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;-><init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$1;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mHdmiDisplayStatusCallback:Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;

    .line 6695
    new-instance v2, Lcom/android/server/audio/AudioService$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/audio/AudioService$4;-><init>(Lcom/android/server/audio/AudioService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mDynPolicyCallback:Landroid/media/AudioSystem$DynamicPolicyCallback;

    .line 6784
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    .line 6786
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/audio/AudioService;->mAudioPolicyCounter:I

    .line 6834
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mBtName:Ljava/lang/String;

    .line 6835
    const/16 v2, -0x3e9

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/audio/AudioService;->mBtIndex:I

    .line 6992
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mHtcBeatsEffect:Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;

    .line 7293
    new-instance v2, Lcom/android/server/audio/AudioService$5;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/audio/AudioService$5;-><init>(Lcom/android/server/audio/AudioService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 7554
    const-wide/16 v2, -0x1

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/audio/AudioService;->mListenNotifyDuration:J

    .line 7555
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/audio/AudioService;->mEnableListenNotify:Z

    .line 7556
    const/16 v2, 0x8

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/audio/AudioService;->mListenNotifyThreshold:I

    .line 661
    const-string v2, "AudioService"

    const-string v3, "AudioService construct ++"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 663
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 664
    const-string v2, "appops"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    .line 666
    invoke-static/range {p1 .. p1}, Landroid/media/AudioSystem;->getPlatformType(Landroid/content/Context;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/audio/AudioService;->mPlatformType:I

    .line 668
    const-string v2, "power"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/PowerManager;

    .line 669
    .local v15, "pm":Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v3, "handleAudioEvent"

    invoke-virtual {v15, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 671
    const-string v2, "vibrator"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Vibrator;

    .line 672
    .local v16, "vibrator":Landroid/os/Vibrator;
    if-nez v16, :cond_5

    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    .line 675
    const-string v2, "ro.config.vc_call_vol_steps"

    sget-object v3, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 677
    .local v14, "maxVolume":I
    sget-object v2, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-eq v14, v2, :cond_0

    .line 678
    sget-object v2, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    const/4 v3, 0x0

    aput v14, v2, v3

    .line 679
    sget-object v2, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    const/4 v3, 0x0

    mul-int/lit8 v4, v14, 0x3

    div-int/lit8 v4, v4, 0x4

    aput v4, v2, v3

    .line 681
    :cond_0
    const-string v2, "ro.config.media_vol_steps"

    sget-object v3, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 683
    sget-object v2, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    if-eq v14, v2, :cond_1

    .line 684
    sget-object v2, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    const/4 v3, 0x3

    aput v14, v2, v3

    .line 685
    sget-object v2, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    const/4 v3, 0x3

    mul-int/lit8 v4, v14, 0x3

    div-int/lit8 v4, v4, 0x4

    aput v4, v2, v3

    .line 688
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/android/server/audio/AudioService;->sSoundEffectVolumeDb:I

    .line 691
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    .line 693
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->createAudioSystemThread()V

    .line 695
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

    invoke-static {v2}, Landroid/media/AudioSystem;->setErrorCallback(Landroid/media/AudioSystem$ErrorCallback;)V

    .line 697
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->readCameraSoundForced()Z

    move-result v12

    .line 699
    .local v12, "cameraSoundForced":Z
    sget-boolean v2, Lcom/android/server/audio/AudioService;->mHtcCameraShutterSound:Z

    or-int v13, v12, v2

    .line 700
    .local v13, "isHtcCameraSoundForced":Z
    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, v13}, Ljava/lang/Boolean;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    .line 701
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "constructor, mCameraSoundForced = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", cameraSoundForced = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mHtcCameraShutterSound = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/server/audio/AudioService;->mHtcCameraShutterSound:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isHtcCameraSoundForced = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v3, 0x8

    const/4 v4, 0x2

    const/4 v5, 0x4

    if-eqz v13, :cond_6

    const/16 v6, 0xb

    :goto_1
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 715
    new-instance v2, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "audio_safe_volume_state"

    const/4 v6, 0x0

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    .line 721
    sget-boolean v2, Lcom/android/server/audio/AudioService;->SUPPORT_A2DP_SAFEVOLUME:Z

    if-eqz v2, :cond_2

    .line 722
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeDevices:I

    or-int/lit16 v2, v2, 0x380

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeDevices:I

    .line 723
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSafeMediaVolumeDevices="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeDevices:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0086

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0xa

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    .line 733
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1120079

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    .line 738
    const/4 v2, 0x0

    const-string v3, "AudioService"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/audio/AudioService;->updateStreamVolumeAlias(ZLjava/lang/String;)V

    .line 739
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->readPersistedSettings()V

    .line 740
    const-string v2, "AudioService"

    const-string v3, "readPersistedSettings finished"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    new-instance v2, Lcom/android/server/audio/AudioService$SettingsObserver;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/audio/AudioService$SettingsObserver;-><init>(Lcom/android/server/audio/AudioService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mSettingsObserver:Lcom/android/server/audio/AudioService$SettingsObserver;

    .line 742
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->createStreamStates()V

    .line 744
    new-instance v2, Lcom/android/server/audio/MediaFocusControl;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    invoke-virtual {v3}, Lcom/android/server/audio/AudioService$AudioHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    move-object/from16 v0, p0

    invoke-direct {v2, v3, v4, v6, v0}, Lcom/android/server/audio/MediaFocusControl;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/audio/AudioService$VolumeController;Lcom/android/server/audio/AudioService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    .line 747
    invoke-static {}, Lcom/android/server/audio/AudioService;->readAndSetLowRamDevice()V

    .line 751
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/audio/AudioService;->mRingerModeMutedStreams:I

    .line 752
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    .line 755
    new-instance v5, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-direct {v5, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 757
    .local v5, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 758
    const-string v2, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 759
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 760
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 761
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 762
    const-string v2, "android.intent.action.USER_BACKGROUND"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 763
    const-string v2, "android.intent.action.USER_FOREGROUND"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 764
    const-string v2, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 765
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 768
    const-string v2, "com.htc.intent.action.EFFECT_ICON_NOTIFICATION"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 769
    const-string v2, "com.htc.intent.action.SURROUNDSOUND_SETTINGS"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 770
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 774
    const-string v2, "ro.audio.monitorOrientation"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/audio/AudioService;->mMonitorOrientation:Z

    .line 775
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/audio/AudioService;->mMonitorOrientation:Z

    if-eqz v2, :cond_3

    .line 776
    const-string v2, "AudioService"

    const-string v3, "monitoring device orientation"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->setOrientationForAudioSystem()V

    .line 780
    :cond_3
    const-string v2, "ro.audio.monitorRotation"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/audio/AudioService;->mMonitorRotation:Z

    .line 781
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/audio/AudioService;->mMonitorRotation:Z

    if-eqz v2, :cond_4

    .line 782
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/audio/AudioService;->mDeviceRotation:I

    .line 784
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "monitoring device rotation, initial="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/audio/AudioService;->mDeviceRotation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    new-instance v2, Lcom/android/server/audio/AudioService$AudioOrientationEventListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/server/audio/AudioService$AudioOrientationEventListener;-><init>(Lcom/android/server/audio/AudioService;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mOrientationListener:Lcom/android/server/audio/AudioService$AudioOrientationEventListener;

    .line 787
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mOrientationListener:Lcom/android/server/audio/AudioService$AudioOrientationEventListener;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$AudioOrientationEventListener;->enable()V

    .line 790
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->setRotationForAudioSystem()V

    .line 793
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 795
    const-class v2, Landroid/media/AudioManagerInternal;

    new-instance v3, Lcom/android/server/audio/AudioService$AudioServiceInternal;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/audio/AudioService$AudioServiceInternal;-><init>(Lcom/android/server/audio/AudioService;)V

    invoke-static {v2, v3}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 800
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 801
    .local v9, "intentFilterFM":Landroid/content/IntentFilter;
    const-string v2, "com.htc.intent.action.FM"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 803
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/audio/AudioService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 805
    const-string v2, "isFmDigital"

    invoke-static {v2}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/audio/AudioService;->mAnalogFM:Z

    .line 810
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/audio/AudioService;->mHeadsetState:I

    .line 811
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetConnected:Z

    .line 814
    const-string v2, "AudioService"

    const-string v3, "AudioService construct ++"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    return-void

    .line 672
    .end local v5    # "intentFilter":Landroid/content/IntentFilter;
    .end local v9    # "intentFilterFM":Landroid/content/IntentFilter;
    .end local v12    # "cameraSoundForced":Z
    .end local v13    # "isHtcCameraSoundForced":Z
    .end local v14    # "maxVolume":I
    :cond_5
    invoke-virtual/range {v16 .. v16}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v2

    goto/16 :goto_0

    .line 704
    .restart local v12    # "cameraSoundForced":Z
    .restart local v13    # "isHtcCameraSoundForced":Z
    .restart local v14    # "maxVolume":I
    :cond_6
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 805
    .restart local v5    # "intentFilter":Landroid/content/IntentFilter;
    .restart local v9    # "intentFilterFM":Landroid/content/IntentFilter;
    :cond_7
    const/4 v2, 0x1

    goto :goto_2

    .line 330
    :array_0
    .array-data 4
        0x0
        0x2
        0x2
        0x3
        0x4
        0x2
        0x6
        0x2
        0x2
        0x3
        0x3
    .end array-data

    .line 343
    :array_1
    .array-data 4
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
    .end array-data

    .line 356
    :array_2
    .array-data 4
        0x0
        0x2
        0x2
        0x3
        0x4
        0x2
        0x6
        0x2
        0x2
        0x3
        0x3
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$AudioHandler;)Lcom/android/server/audio/AudioService$AudioHandler;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Lcom/android/server/audio/AudioService$AudioHandler;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    return-object p1
.end method

.method static synthetic access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .locals 0
    .param p0, "x0"    # Landroid/os/Handler;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Ljava/lang/Object;
    .param p6, "x6"    # I

    .prologue
    .line 170
    invoke-static/range {p0 .. p6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/audio/AudioService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 170
    iget v0, p0, Lcom/android/server/audio/AudioService;->mDeviceRotation:I

    return v0
.end method

.method static synthetic access$10000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$VolumeController;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/server/audio/AudioService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 170
    iput p1, p0, Lcom/android/server/audio/AudioService;->mDeviceRotation:I

    return p1
.end method

.method static synthetic access$10100(Lcom/android/server/audio/AudioService;)Landroid/media/AudioManagerInternal$RingerModeDelegate;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    return-object v0
.end method

.method static synthetic access$10102(Lcom/android/server/audio/AudioService;Landroid/media/AudioManagerInternal$RingerModeDelegate;)Landroid/media/AudioManagerInternal$RingerModeDelegate;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/media/AudioManagerInternal$RingerModeDelegate;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    return-object p1
.end method

.method static synthetic access$10200(Lcom/android/server/audio/AudioService;IIILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # I

    .prologue
    .line 170
    invoke-direct/range {p0 .. p6}, Lcom/android/server/audio/AudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$10300(Lcom/android/server/audio/AudioService;IIILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # I

    .prologue
    .line 170
    invoke-direct/range {p0 .. p6}, Lcom/android/server/audio/AudioService;->adjustStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$10400(Lcom/android/server/audio/AudioService;IIILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # I

    .prologue
    .line 170
    invoke-direct/range {p0 .. p6}, Lcom/android/server/audio/AudioService;->setStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$10500(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$ControllerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mControllerService:Lcom/android/server/audio/AudioService$ControllerService;

    return-object v0
.end method

.method static synthetic access$10608(Lcom/android/server/audio/AudioService;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 170
    iget v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicyCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicyCounter:I

    return v0
.end method

.method static synthetic access$10700(Lcom/android/server/audio/AudioService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/audio/AudioService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->setRotationForAudioSystem()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$ForceControlStreamClient;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$ForceControlStreamClient;)Lcom/android/server/audio/AudioService$ForceControlStreamClient;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/android/server/audio/AudioService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 170
    iput p1, p0, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/audio/AudioService;ILandroid/os/IBinder;ILjava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/IBinder;
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 170
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/audio/AudioService;->setModeInt(ILandroid/os/IBinder;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/audio/AudioService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->disconnectBluetoothSco(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/audio/AudioService;)Landroid/os/Looper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/server/audio/AudioService;Landroid/os/Looper;)Landroid/os/Looper;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/os/Looper;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/server/audio/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/media/SoundPool;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSoundPoolCallBack:Lcom/android/server/audio/AudioService$SoundPoolCallback;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolCallback;)Lcom/android/server/audio/AudioService$SoundPoolCallback;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Lcom/android/server/audio/AudioService$SoundPoolCallback;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mSoundPoolCallBack:Lcom/android/server/audio/AudioService$SoundPoolCallback;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/audio/AudioService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkScoAudioState()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/audio/AudioService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->broadcastScoConnectionState(I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/audio/AudioService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 170
    iget v0, p0, Lcom/android/server/audio/AudioService;->mScoAudioState:I

    return v0
.end method

.method static synthetic access$2802(Lcom/android/server/audio/AudioService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 170
    iput p1, p0, Lcom/android/server/audio/AudioService;->mScoAudioState:I

    return p1
.end method

.method static synthetic access$2900(Lcom/android/server/audio/AudioService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 170
    iget v0, p0, Lcom/android/server/audio/AudioService;->mScoAudioMode:I

    return v0
.end method

.method static synthetic access$2902(Lcom/android/server/audio/AudioService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 170
    iput p1, p0, Lcom/android/server/audio/AudioService;->mScoAudioMode:I

    return p1
.end method

.method static synthetic access$3000(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothHeadset;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/android/server/audio/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getBluetoothHeadset()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothA2dp;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothA2dp;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/android/server/audio/AudioService;II)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 170
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->checkSendBecomingNoisyIntent(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Lcom/android/server/audio/AudioService;Landroid/os/Handler;IIILjava/lang/Object;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/os/Handler;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Ljava/lang/Object;
    .param p6, "x6"    # I

    .prologue
    .line 170
    invoke-direct/range {p0 .. p6}, Lcom/android/server/audio/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 170
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->makeA2dpDeviceUnavailableLater(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/audio/AudioService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->makeA2dpSrcUnavailable(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4100()[I
    .locals 1

    .prologue
    .line 170
    sget-object v0, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    return-object v0
.end method

.method static synthetic access$4200()[I
    .locals 1

    .prologue
    .line 170
    sget-object v0, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/server/audio/AudioService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->observeDevicesForStreams(I)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/audio/AudioService;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/audio/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    return v0
.end method

.method static synthetic access$4700(Lcom/android/server/audio/AudioService;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/server/audio/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mIsLockMusicVolumeToMax:Z

    return v0
.end method

.method static synthetic access$4900(Lcom/android/server/audio/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mIsLockMusicVolumeUI:Z

    return v0
.end method

.method static synthetic access$5000(Lcom/android/server/audio/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z

    return v0
.end method

.method static synthetic access$5100(Lcom/android/server/audio/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isDLNAVolumeFixed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5200(Lcom/android/server/audio/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mLockedMusicVolume:Z

    return v0
.end method

.method static synthetic access$5202(Lcom/android/server/audio/AudioService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Z

    .prologue
    .line 170
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mLockedMusicVolume:Z

    return p1
.end method

.method static synthetic access$5300(Lcom/android/server/audio/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mAnalogFM:Z

    return v0
.end method

.method static synthetic access$5400(Lcom/android/server/audio/AudioService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->sendFMVolmeUpdate(I)V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/server/audio/AudioService;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$5600(Lcom/android/server/audio/AudioService;III)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 170
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/AudioService;->rescaleIndex(III)I

    move-result v0

    return v0
.end method

.method static synthetic access$5700(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/android/server/audio/AudioService;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getDevicesForStream(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$6000(Lcom/android/server/audio/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isPlatformTelevision()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6100(Lcom/android/server/audio/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    return v0
.end method

.method static synthetic access$6200(Lcom/android/server/audio/AudioService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->loadTouchSoundAssets()V

    return-void
.end method

.method static synthetic access$6300(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolListenerThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSoundPoolListenerThread:Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    return-object v0
.end method

.method static synthetic access$6302(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolListenerThread;)Lcom/android/server/audio/AudioService$SoundPoolListenerThread;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mSoundPoolListenerThread:Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    return-object p1
.end method

.method static synthetic access$6400()Ljava/util/List;
    .locals 1

    .prologue
    .line 170
    sget-object v0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/android/server/audio/AudioService;)[[I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    return-object v0
.end method

.method static synthetic access$6600()I
    .locals 1

    .prologue
    .line 170
    sget v0, Lcom/android/server/audio/AudioService;->sSoundEffectVolumeDb:I

    return v0
.end method

.method static synthetic access$6800(Lcom/android/server/audio/AudioService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 170
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->setForceUseInt_SyncDevices(II)V

    return-void
.end method

.method static synthetic access$6900(Lcom/android/server/audio/AudioService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7000(Lcom/android/server/audio/AudioService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->resetBluetoothSco()V

    return-void
.end method

.method static synthetic access$7100(Lcom/android/server/audio/AudioService;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;

    .prologue
    .line 170
    invoke-direct/range {p0 .. p5}, Lcom/android/server/audio/AudioService;->onSetWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7200(Lcom/android/server/audio/AudioService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$7300(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # I

    .prologue
    .line 170
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->onSetA2dpSourceConnectionState(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic access$7400(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # I

    .prologue
    .line 170
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->onSetA2dpSinkConnectionState(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic access$7500(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$7600(Lcom/android/server/audio/AudioService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->onCheckMusicActive(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7700(Lcom/android/server/audio/AudioService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->onSendBecomingNoisyIntent()V

    return-void
.end method

.method static synthetic access$7800(Lcom/android/server/audio/AudioService;ZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 170
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->onConfigureSafeVolume(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$7900(Lcom/android/server/audio/AudioService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->onBroadcastScoConnectionState(I)V

    return-void
.end method

.method static synthetic access$8000(Lcom/android/server/audio/AudioService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 170
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->onUnmuteStream(II)V

    return-void
.end method

.method static synthetic access$8100(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 170
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->onDynPolicyMixStateUpdate(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$8200(Lcom/android/server/audio/AudioService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 170
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->handleFMRoute(II)V

    return-void
.end method

.method static synthetic access$8300(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$8400(Lcom/android/server/audio/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->updateRingerModeAffectedStreams()Z

    move-result v0

    return v0
.end method

.method static synthetic access$8500(Lcom/android/server/audio/AudioService;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 170
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    return-void
.end method

.method static synthetic access$8600(Lcom/android/server/audio/AudioService;Landroid/content/ContentResolver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/content/ContentResolver;

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->readDockAudioSettings(Landroid/content/ContentResolver;)V

    return-void
.end method

.method static synthetic access$8700(Lcom/android/server/audio/AudioService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 170
    iget v0, p0, Lcom/android/server/audio/AudioService;->mDockState:I

    return v0
.end method

.method static synthetic access$8702(Lcom/android/server/audio/AudioService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 170
    iput p1, p0, Lcom/android/server/audio/AudioService;->mDockState:I

    return p1
.end method

.method static synthetic access$8800(Lcom/android/server/audio/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mMonitorRotation:Z

    return v0
.end method

.method static synthetic access$8900(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioOrientationEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mOrientationListener:Lcom/android/server/audio/AudioService$AudioOrientationEventListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/audio/AudioService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$9000(Lcom/android/server/audio/AudioService;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->handleConfigurationChanged(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$9100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    return-object v0
.end method

.method static synthetic access$9200(Lcom/android/server/audio/AudioService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Z

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->readAudioSettings(Z)V

    return-void
.end method

.method static synthetic access$9300(Lcom/android/server/audio/AudioService;Landroid/content/pm/UserInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/content/pm/UserInfo;

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->killBackgroundUserProcessesWithRecordAudioPermission(Landroid/content/pm/UserInfo;)V

    return-void
.end method

.method static synthetic access$9400(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHtcBeatsEffect:Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;

    return-object v0
.end method

.method static synthetic access$9500(Lcom/android/server/audio/AudioService;)Landroid/hardware/hdmi/HdmiControlManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    return-object v0
.end method

.method static synthetic access$9600(Lcom/android/server/audio/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z

    return v0
.end method

.method static synthetic access$9602(Lcom/android/server/audio/AudioService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Z

    .prologue
    .line 170
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z

    return p1
.end method

.method static synthetic access$9700(Lcom/android/server/audio/AudioService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkAllFixedVolumeDevices()V

    return-void
.end method

.method private adjustStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V
    .locals 29
    .param p1, "streamType"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "caller"    # Ljava/lang/String;
    .param p6, "uid"    # I

    .prologue
    .line 1291
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-eqz v5, :cond_1

    .line 1292
    const-string v5, "AudioService"

    const-string v6, "Use fixed volume, just return"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    :cond_0
    :goto_0
    return-void

    .line 1295
    :cond_1
    const-string v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "adjustStreamVolume() stream ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", dir ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", flags ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", callingPackage ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Pid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/audio/AudioService;->ensureValidDirection(I)V

    .line 1299
    invoke-direct/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    .line 1301
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/audio/AudioService;->isMuteAdjust(I)Z

    move-result v20

    .line 1303
    .local v20, "isMuteAdjust":Z
    if-eqz v20, :cond_2

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->isStreamAffectedByMute(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1310
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v8, v5, p1

    .line 1312
    .local v8, "streamTypeAlias":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v14, v5, v8

    .line 1314
    .local v14, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v12

    .line 1316
    .local v12, "device":I
    invoke-virtual {v14, v12}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v17

    .line 1317
    .local v17, "aliasIndex":I
    const/16 v16, 0x1

    .line 1322
    .local v16, "adjustVolume":Z
    and-int/lit16 v5, v12, 0x380

    if-nez v5, :cond_3

    and-int/lit8 v5, p3, 0x40

    if-nez v5, :cond_0

    .line 1329
    :cond_3
    const/16 v5, 0x3e8

    move/from16 v0, p6

    if-ne v0, v5, :cond_4

    .line 1330
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getCurrentUserId()I

    move-result v5

    invoke-static/range {p6 .. p6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    invoke-static {v5, v6}, Landroid/os/UserHandle;->getUid(II)I

    move-result p6

    .line 1332
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    sget-object v6, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_OPS:[I

    aget v6, v6, v8

    move/from16 v0, p6

    move-object/from16 v1, p4

    invoke-virtual {v5, v6, v0, v1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 1338
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v6

    .line 1339
    const/4 v5, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    .line 1340
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1342
    and-int/lit8 p3, p3, -0x21

    .line 1343
    const/4 v5, 0x3

    if-ne v8, v5, :cond_11

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    and-int/2addr v5, v12

    if-eqz v5, :cond_11

    .line 1345
    or-int/lit8 p3, p3, 0x20

    .line 1350
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_10

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeDevices:I

    and-int/2addr v5, v12

    if-eqz v5, :cond_10

    .line 1352
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    move/from16 v27, v0

    .line 1356
    .local v27, "step":I
    :goto_1
    if-eqz v17, :cond_5

    .line 1357
    move/from16 v17, v27

    .line 1366
    :cond_5
    :goto_2
    and-int/lit8 v5, p3, 0x2

    if-nez v5, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getUiSoundsStreamType()I

    move-result v5

    if-ne v8, v5, :cond_9

    .line 1368
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v25

    .line 1370
    .local v25, "ringerMode":I
    const/4 v5, 0x1

    move/from16 v0, v25

    if-ne v0, v5, :cond_7

    .line 1371
    and-int/lit8 p3, p3, -0x11

    .line 1375
    :cond_7
    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z
    invoke-static {v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$500(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v5

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, p2

    move/from16 v3, v27

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/android/server/audio/AudioService;->checkForRingerModeChange(IIIZ)I

    move-result v24

    .line 1377
    .local v24, "result":I
    and-int/lit8 v5, v24, 0x1

    if-eqz v5, :cond_12

    const/16 v16, 0x1

    .line 1379
    :goto_3
    move/from16 v0, v24

    and-int/lit16 v5, v0, 0x80

    if-eqz v5, :cond_8

    .line 1380
    move/from16 v0, p3

    or-int/lit16 v0, v0, 0x80

    move/from16 p3, v0

    .line 1383
    :cond_8
    move/from16 v0, v24

    and-int/lit16 v5, v0, 0x800

    if-eqz v5, :cond_9

    .line 1384
    move/from16 v0, p3

    or-int/lit16 v0, v0, 0x800

    move/from16 p3, v0

    .line 1388
    .end local v24    # "result":I
    .end local v25    # "ringerMode":I
    :cond_9
    const/4 v5, 0x3

    if-ne v8, v5, :cond_a

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/audio/AudioService;->mRingerModeMutedStreams:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_a

    .line 1390
    const/16 v16, 0x0

    .line 1393
    :cond_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v5, v5, p1

    invoke-virtual {v5, v12}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v23

    .line 1395
    .local v23, "oldIndex":I
    if-eqz v16, :cond_1b

    if-eqz p2, :cond_1b

    .line 1396
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v6, 0x18

    invoke-virtual {v5, v6}, Lcom/android/server/audio/AudioService$AudioHandler;->removeMessages(I)V

    .line 1399
    const/4 v5, 0x3

    if-ne v8, v5, :cond_c

    and-int/lit16 v5, v12, 0x380

    if-eqz v5, :cond_c

    and-int/lit8 v5, p3, 0x40

    if-nez v5, :cond_c

    .line 1405
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v6

    .line 1406
    :try_start_1
    sget-boolean v5, Lcom/android/server/audio/AudioService;->SUPPORT_A2DP_SAFEVOLUME:Z

    if-eqz v5, :cond_13

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v7, 0x3

    if-ne v5, v7, :cond_13

    add-int v5, v17, v27

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    if-le v5, v7, :cond_13

    const/16 v18, 0x1

    .line 1409
    .local v18, "forbidden":Z
    :goto_4
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1410
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1411
    :try_start_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v5, :cond_b

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z

    if-eqz v5, :cond_b

    if-nez v18, :cond_b

    .line 1414
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/bluetooth/BluetoothA2dp;->adjustAvrcpAbsoluteVolume(I)V

    .line 1416
    :cond_b
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1419
    .end local v18    # "forbidden":Z
    :cond_c
    if-eqz v20, :cond_17

    .line 1421
    const/16 v5, 0x65

    move/from16 v0, p2

    if-ne v0, v5, :cond_15

    .line 1422
    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z
    invoke-static {v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$500(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v5

    if-nez v5, :cond_14

    const/16 v26, 0x1

    .line 1426
    .local v26, "state":Z
    :goto_5
    const/4 v5, 0x3

    if-ne v8, v5, :cond_d

    .line 1427
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/audio/AudioService;->setSystemAudioMute(Z)V

    .line 1429
    :cond_d
    const/16 v28, 0x0

    .local v28, "stream":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    array-length v5, v5

    move/from16 v0, v28

    if-ge v0, v5, :cond_18

    .line 1430
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v5, v5, v28

    if-ne v8, v5, :cond_f

    .line 1431
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->readCameraSoundForced()Z

    move-result v5

    if-eqz v5, :cond_e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v5, v5, v28

    invoke-virtual {v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getStreamType()I

    move-result v5

    const/4 v6, 0x7

    if-eq v5, v6, :cond_f

    .line 1434
    :cond_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v5, v5, v28

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    .line 1429
    :cond_f
    add-int/lit8 v28, v28, 0x1

    goto :goto_6

    .line 1340
    .end local v23    # "oldIndex":I
    .end local v26    # "state":Z
    .end local v27    # "step":I
    .end local v28    # "stream":I
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 1354
    :cond_10
    invoke-virtual {v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v27

    .restart local v27    # "step":I
    goto/16 :goto_1

    .line 1361
    .end local v27    # "step":I
    :cond_11
    const/16 v5, 0xa

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v5, v1, v8}, Lcom/android/server/audio/AudioService;->rescaleIndex(III)I

    move-result v27

    .restart local v27    # "step":I
    goto/16 :goto_2

    .line 1377
    .restart local v24    # "result":I
    .restart local v25    # "ringerMode":I
    :cond_12
    const/16 v16, 0x0

    goto/16 :goto_3

    .line 1406
    .end local v24    # "result":I
    .end local v25    # "ringerMode":I
    .restart local v23    # "oldIndex":I
    :cond_13
    const/16 v18, 0x0

    goto/16 :goto_4

    .line 1409
    :catchall_1
    move-exception v5

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v5

    .line 1416
    .restart local v18    # "forbidden":Z
    :catchall_2
    move-exception v5

    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v5

    .line 1422
    .end local v18    # "forbidden":Z
    :cond_14
    const/16 v26, 0x0

    goto :goto_5

    .line 1424
    :cond_15
    const/16 v5, -0x64

    move/from16 v0, p2

    if-ne v0, v5, :cond_16

    const/16 v26, 0x1

    .restart local v26    # "state":Z
    :goto_7
    goto :goto_5

    .end local v26    # "state":Z
    :cond_16
    const/16 v26, 0x0

    goto :goto_7

    .line 1438
    :cond_17
    const/4 v5, 0x1

    move/from16 v0, p2

    if-ne v0, v5, :cond_1c

    add-int v5, v17, v27

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v5, v12}, Lcom/android/server/audio/AudioService;->checkSafeMediaVolume(III)Z

    move-result v5

    if-nez v5, :cond_1c

    .line 1440
    const-string v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "adjustStreamVolume() safe volume index = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    or-int/lit8 p3, p3, 0x1

    .line 1443
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Lcom/android/server/audio/AudioService$VolumeController;->postDisplaySafeVolumeWarning(I)V

    .line 1444
    and-int/lit8 p3, p3, -0x2

    .line 1472
    :cond_18
    :goto_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v5, v5, p1

    invoke-virtual {v5, v12}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v22

    .line 1473
    .local v22, "newIndex":I
    const/4 v5, 0x3

    if-ne v8, v5, :cond_19

    .line 1474
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->getStreamMaxVolume(I)I

    move-result v5

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v22

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/android/server/audio/AudioService;->setSystemAudioVolume(IIII)V

    .line 1476
    :cond_19
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v5, :cond_1b

    .line 1477
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v6

    .line 1479
    :try_start_6
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z

    if-eqz v5, :cond_1a

    const/4 v5, 0x3

    if-ne v8, v5, :cond_1a

    move/from16 v0, v23

    move/from16 v1, v22

    if-eq v0, v1, :cond_1a

    .line 1482
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    monitor-enter v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 1483
    const/4 v5, -0x1

    move/from16 v0, p2

    if-ne v0, v5, :cond_20

    const/16 v21, 0x19

    .line 1485
    .local v21, "keyCode":I
    :goto_9
    :try_start_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    const/4 v9, 0x1

    move/from16 v0, v21

    invoke-virtual {v5, v0, v9}, Landroid/hardware/hdmi/HdmiPlaybackClient;->sendKeyEvent(IZ)V

    .line 1486
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    const/4 v9, 0x0

    move/from16 v0, v21

    invoke-virtual {v5, v0, v9}, Landroid/hardware/hdmi/HdmiPlaybackClient;->sendKeyEvent(IZ)V

    .line 1487
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1489
    .end local v21    # "keyCode":I
    :cond_1a
    :try_start_8
    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 1492
    .end local v22    # "newIndex":I
    :cond_1b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v5, v5, p1

    invoke-virtual {v5, v12}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v19

    .line 1493
    .local v19, "index":I
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v23

    move/from16 v3, v19

    move/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/audio/AudioService;->sendVolumeUpdate(IIII)V

    goto/16 :goto_0

    .line 1446
    .end local v19    # "index":I
    :cond_1c
    mul-int v5, p2, v27

    move-object/from16 v0, p5

    invoke-virtual {v14, v5, v12, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->adjustIndex(IILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1d

    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z
    invoke-static {v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$500(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 1450
    :cond_1d
    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z
    invoke-static {v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$500(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 1452
    const/4 v5, 0x1

    move/from16 v0, p2

    if-ne v0, v5, :cond_1f

    .line 1454
    const/4 v5, 0x0

    invoke-virtual {v14, v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    .line 1462
    :cond_1e
    :goto_a
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/4 v13, 0x0

    const/4 v15, 0x0

    invoke-static/range {v9 .. v15}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto/16 :goto_8

    .line 1455
    :cond_1f
    const/4 v5, -0x1

    move/from16 v0, p2

    if-ne v0, v5, :cond_1e

    .line 1456
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/audio/AudioService;->mPlatformType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1e

    .line 1457
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v6, 0x18

    const/4 v7, 0x2

    const/4 v10, 0x0

    const/16 v11, 0x15e

    move/from16 v9, p3

    invoke-static/range {v5 .. v11}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_a

    .line 1483
    .restart local v22    # "newIndex":I
    :cond_20
    const/16 v21, 0x18

    goto :goto_9

    .line 1487
    .restart local v21    # "keyCode":I
    :catchall_3
    move-exception v5

    :try_start_9
    monitor-exit v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    throw v5

    .line 1489
    .end local v21    # "keyCode":I
    :catchall_4
    move-exception v5

    monitor-exit v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v5
.end method

.method private adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V
    .locals 9
    .param p1, "direction"    # I
    .param p2, "suggestedStreamType"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "caller"    # Ljava/lang/String;
    .param p6, "uid"    # I

    .prologue
    .line 1248
    const-string v0, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustSuggestedStreamVolume() stream="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", flags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->isMuteAdjust(I)Z

    move-result v7

    .line 1252
    .local v7, "isMute":Z
    iget v0, p0, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 1253
    iget v1, p0, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    .line 1261
    .local v1, "streamType":I
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    .line 1262
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v8, v0, v1

    .line 1265
    .local v8, "resolvedStream":I
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    if-eq v8, v0, :cond_0

    .line 1267
    and-int/lit8 p3, p3, -0x5

    .line 1272
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0, v8, p3, v7}, Lcom/android/server/audio/AudioService$VolumeController;->suppressAdjustment(IIZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1273
    const/4 p1, 0x0

    .line 1274
    and-int/lit8 p3, p3, -0x5

    .line 1275
    and-int/lit8 p3, p3, -0x11

    .line 1276
    const-string v0, "AudioService"

    const-string v2, "Volume controller suppressed adjustment"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v0, p0

    move v2, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .line 1279
    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->adjustStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    .line 1280
    return-void

    .line 1255
    .end local v1    # "streamType":I
    .end local v8    # "resolvedStream":I
    :cond_2
    const/16 v0, 0xa

    if-ne p2, v0, :cond_3

    .line 1256
    const/4 v1, 0x3

    .restart local v1    # "streamType":I
    goto :goto_0

    .line 1259
    .end local v1    # "streamType":I
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->getActiveStreamType(I)I

    move-result v1

    .restart local v1    # "streamType":I
    goto :goto_0
.end method

.method private broadcastMasterMuteStatus(Z)V
    .locals 2
    .param p1, "muted"    # Z

    .prologue
    .line 1785
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.MASTER_MUTE_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1786
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_MASTER_VOLUME_MUTED"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1787
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1789
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 1790
    return-void
.end method

.method private broadcastRingerMode(Ljava/lang/String;I)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "ringerMode"    # I

    .prologue
    .line 3694
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3695
    .local v0, "broadcast":Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_RINGER_MODE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3696
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3698
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 3699
    return-void
.end method

.method private broadcastScoConnectionState(I)V
    .locals 7
    .param p1, "state"    # I

    .prologue
    const/4 v4, 0x0

    .line 3103
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x13

    const/4 v2, 0x2

    const/4 v5, 0x0

    move v3, p1

    move v6, v4

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3105
    return-void
.end method

.method private broadcastVibrateSetting(I)V
    .locals 3
    .param p1, "vibrateType"    # I

    .prologue
    .line 3703
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3704
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3705
    .local v0, "broadcast":Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_VIBRATE_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3706
    const-string v1, "android.media.EXTRA_VIBRATE_SETTING"

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->getVibrateSetting(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3707
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 3709
    .end local v0    # "broadcast":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private cancelA2dpDeviceTimeout()V
    .locals 2

    .prologue
    .line 5061
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->removeMessages(I)V

    .line 5062
    return-void
.end method

.method private checkAllAliasStreamVolumes()V
    .locals 6

    .prologue
    .line 1018
    const-class v3, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v3

    .line 1019
    :try_start_0
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 1020
    .local v0, "numStreamTypes":I
    const/4 v1, 0x0

    .local v1, "streamType":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1021
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v2, v2, v1

    if-eq v1, v2, :cond_0

    .line 1022
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v5, v5, v1

    aget-object v4, v4, v5

    const-string v5, "AudioService"

    invoke-virtual {v2, v4, v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setAllIndexes(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)V

    .line 1027
    :cond_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z
    invoke-static {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$500(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1028
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 1020
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1031
    :cond_2
    monitor-exit v3

    .line 1032
    return-void

    .line 1031
    .end local v0    # "numStreamTypes":I
    .end local v1    # "streamType":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private checkAllFixedVolumeDevices()V
    .locals 3

    .prologue
    .line 1036
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 1037
    .local v0, "numStreamTypes":I
    const/4 v1, 0x0

    .local v1, "streamType":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1038
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->checkFixedVolumeDevices()V

    .line 1037
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1040
    :cond_0
    return-void
.end method

.method private checkAllFixedVolumeDevices(I)V
    .locals 1
    .param p1, "streamType"    # I

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->checkFixedVolumeDevices()V

    .line 1044
    return-void
.end method

.method private checkBeatsHeadset()I
    .locals 1

    .prologue
    .line 6865
    const/16 v0, 0x3f2

    return v0
.end method

.method private checkForRingerModeChange(IIIZ)I
    .locals 10
    .param p1, "oldIndex"    # I
    .param p2, "direction"    # I
    .param p3, "step"    # I
    .param p4, "isMuted"    # Z

    .prologue
    .line 3429
    iget v5, p0, Lcom/android/server/audio/AudioService;->mPlatformType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    const/4 v2, 0x1

    .line 3430
    .local v2, "isTv":Z
    :goto_0
    const/4 v3, 0x1

    .line 3431
    .local v3, "result":I
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v4

    .line 3433
    .local v4, "ringerMode":I
    packed-switch v4, :pswitch_data_0

    .line 3513
    const-string v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkForRingerModeChange() wrong ringer mode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3517
    :cond_0
    :goto_1
    const-string v5, "AudioService.checkForRingerModeChange"

    const/4 v6, 0x0

    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/audio/AudioService;->setRingerMode(ILjava/lang/String;Z)V

    .line 3519
    iput p2, p0, Lcom/android/server/audio/AudioService;->mPrevVolDirection:I

    .line 3521
    return v3

    .line 3429
    .end local v2    # "isTv":Z
    .end local v3    # "result":I
    .end local v4    # "ringerMode":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 3435
    .restart local v2    # "isTv":Z
    .restart local v3    # "result":I
    .restart local v4    # "ringerMode":I
    :pswitch_0
    const/4 v5, -0x1

    if-ne p2, v5, :cond_3

    .line 3436
    iget-boolean v5, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-eqz v5, :cond_2

    .line 3442
    if-gt p3, p1, :cond_0

    mul-int/lit8 v5, p3, 0x2

    if-ge p1, v5, :cond_0

    .line 3443
    const/4 v4, 0x1

    .line 3444
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/audio/AudioService;->mLoweredFromNormalToVibrateTime:J

    goto :goto_1

    .line 3447
    :cond_2
    if-ne p1, p3, :cond_0

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget-boolean v5, v5, Landroid/media/VolumePolicy;->volumeDownToEnterSilent:Z

    if-eqz v5, :cond_0

    .line 3448
    const/4 v4, 0x0

    goto :goto_1

    .line 3451
    :cond_3
    if-eqz v2, :cond_0

    const/16 v5, 0x65

    if-eq p2, v5, :cond_4

    const/16 v5, -0x64

    if-ne p2, v5, :cond_0

    .line 3453
    :cond_4
    iget-boolean v5, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-eqz v5, :cond_5

    .line 3454
    const/4 v4, 0x1

    .line 3459
    :goto_2
    and-int/lit8 v3, v3, -0x2

    goto :goto_1

    .line 3456
    :cond_5
    const/4 v4, 0x0

    goto :goto_2

    .line 3463
    :pswitch_1
    iget-boolean v5, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-nez v5, :cond_6

    .line 3464
    const-string v5, "AudioService"

    const-string v6, "checkForRingerModeChange() current ringer mode is vibratebut no vibrator is present"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3468
    :cond_6
    const/4 v5, -0x1

    if-ne p2, v5, :cond_a

    .line 3470
    if-eqz v2, :cond_8

    mul-int/lit8 v5, p3, 0x2

    if-lt p1, v5, :cond_8

    if-eqz p4, :cond_8

    .line 3471
    const/4 v4, 0x2

    .line 3489
    :cond_7
    :goto_3
    and-int/lit8 v3, v3, -0x2

    .line 3490
    goto :goto_1

    .line 3472
    :cond_8
    iget v5, p0, Lcom/android/server/audio/AudioService;->mPrevVolDirection:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_7

    .line 3473
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget-boolean v5, v5, Landroid/media/VolumePolicy;->volumeDownToEnterSilent:Z

    if-eqz v5, :cond_9

    .line 3474
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/audio/AudioService;->mLoweredFromNormalToVibrateTime:J

    sub-long v0, v6, v8

    .line 3476
    .local v0, "diff":J
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget v5, v5, Landroid/media/VolumePolicy;->vibrateToSilentDebounce:I

    int-to-long v6, v5

    cmp-long v5, v0, v6

    if-lez v5, :cond_7

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    invoke-interface {v5}, Landroid/media/AudioManagerInternal$RingerModeDelegate;->canVolumeDownEnterSilent()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 3478
    const/4 v4, 0x0

    goto :goto_3

    .line 3481
    .end local v0    # "diff":J
    :cond_9
    or-int/lit16 v3, v3, 0x800

    goto :goto_3

    .line 3484
    :cond_a
    const/4 v5, 0x1

    if-eq p2, v5, :cond_b

    const/16 v5, 0x65

    if-eq p2, v5, :cond_b

    const/16 v5, 0x64

    if-ne p2, v5, :cond_7

    .line 3487
    :cond_b
    const/4 v4, 0x2

    goto :goto_3

    .line 3492
    :pswitch_2
    if-eqz v2, :cond_d

    const/4 v5, -0x1

    if-ne p2, v5, :cond_d

    mul-int/lit8 v5, p3, 0x2

    if-lt p1, v5, :cond_d

    if-eqz p4, :cond_d

    .line 3494
    const/4 v4, 0x2

    .line 3510
    :cond_c
    :goto_4
    and-int/lit8 v3, v3, -0x2

    .line 3511
    goto/16 :goto_1

    .line 3495
    :cond_d
    const/4 v5, 0x1

    if-eq p2, v5, :cond_e

    const/16 v5, 0x65

    if-eq p2, v5, :cond_e

    const/16 v5, 0x64

    if-ne p2, v5, :cond_c

    .line 3498
    :cond_e
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget-boolean v5, v5, Landroid/media/VolumePolicy;->volumeUpToExitSilent:Z

    if-nez v5, :cond_f

    .line 3499
    or-int/lit16 v3, v3, 0x80

    goto :goto_4

    .line 3501
    :cond_f
    iget-boolean v5, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-eqz v5, :cond_10

    const/4 v5, 0x1

    if-ne p2, v5, :cond_10

    .line 3502
    const/4 v4, 0x1

    goto :goto_4

    .line 3506
    :cond_10
    const/4 v4, 0x2

    goto :goto_4

    .line 3433
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private checkMuteAffectedStreams()V
    .locals 5

    .prologue
    .line 1048
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 1049
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v2, v0

    .line 1050
    .local v1, "vss":Lcom/android/server/audio/AudioService$VolumeStreamState;
    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I
    invoke-static {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$300(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v2

    if-lez v2, :cond_0

    .line 1051
    iget v2, p0, Lcom/android/server/audio/AudioService;->mMuteAffectedStreams:I

    const/4 v3, 0x1

    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$600(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v4

    shl-int/2addr v3, v4

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/audio/AudioService;->mMuteAffectedStreams:I

    .line 1048
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1054
    .end local v1    # "vss":Lcom/android/server/audio/AudioService$VolumeStreamState;
    :cond_1
    return-void
.end method

.method private checkSafeMediaVolume(III)Z
    .locals 3
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "device"    # I

    .prologue
    const/4 v2, 0x3

    .line 6100
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v1

    .line 6101
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v0, v0, p1

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeDevices:I

    and-int/2addr v0, p3

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    if-le p2, v0, :cond_0

    .line 6105
    const/4 v0, 0x0

    monitor-exit v1

    .line 6107
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    .line 6108
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private checkScoAudioState()V
    .locals 2

    .prologue
    .line 3011
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/audio/AudioService;->mScoAudioState:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 3015
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/audio/AudioService;->mScoAudioState:I

    .line 3017
    :cond_0
    return-void
.end method

.method private checkSendBecomingNoisyIntent(II)I
    .locals 14
    .param p1, "device"    # I
    .param p2, "state"    # I

    .prologue
    .line 5294
    const/4 v7, 0x0

    .line 5295
    .local v7, "delay":I
    if-nez p2, :cond_2

    iget v0, p0, Lcom/android/server/audio/AudioService;->mBecomingNoisyIntentDevices:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_2

    .line 5296
    const/4 v9, 0x0

    .line 5297
    .local v9, "devices":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v10, v0, :cond_1

    .line 5298
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioService$DeviceListSpec;

    iget v8, v0, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceType:I

    .line 5299
    .local v8, "dev":I
    const/high16 v0, -0x80000000

    and-int/2addr v0, v8

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/audio/AudioService;->mBecomingNoisyIntentDevices:I

    and-int/2addr v0, v8

    if-eqz v0, :cond_0

    .line 5301
    or-int/2addr v9, v8

    .line 5297
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 5304
    .end local v8    # "dev":I
    :cond_1
    if-ne v9, p1, :cond_2

    .line 5305
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0xf

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5312
    const/16 v7, 0x3e8

    .line 5316
    .end local v9    # "devices":I
    .end local v10    # "i":I
    :cond_2
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5319
    :cond_3
    sget-object v1, Lcom/android/server/audio/AudioService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    monitor-enter v1

    .line 5320
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 5321
    .local v12, "time":J
    sget-object v0, Lcom/android/server/audio/AudioService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v2, v12

    if-lez v0, :cond_4

    .line 5322
    sget-object v0, Lcom/android/server/audio/AudioService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v2, v12

    long-to-int v0, v2

    add-int/lit8 v7, v0, 0x1e

    .line 5324
    :cond_4
    monitor-exit v1

    .line 5326
    .end local v12    # "time":J
    :cond_5
    return v7

    .line 5324
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private configureHdmiPlugIntent(Landroid/content/Intent;I)V
    .locals 22
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "state"    # I

    .prologue
    .line 5455
    const-string v20, "android.media.action.HDMI_AUDIO_PLUG"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5456
    const-string v20, "android.media.extra.AUDIO_PLUG_STATE"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5457
    const/16 v20, 0x1

    move/from16 v0, p2

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 5458
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 5459
    .local v18, "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 5460
    .local v17, "portGeneration":[I
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->listAudioPorts(Ljava/util/ArrayList;[I)I

    move-result v19

    .line 5461
    .local v19, "status":I
    if-nez v19, :cond_8

    .line 5462
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/media/AudioPort;

    .line 5463
    .local v16, "port":Landroid/media/AudioPort;
    move-object/from16 v0, v16

    instance-of v0, v0, Landroid/media/AudioDevicePort;

    move/from16 v20, v0

    if-eqz v20, :cond_0

    move-object/from16 v5, v16

    .line 5464
    check-cast v5, Landroid/media/AudioDevicePort;

    .line 5465
    .local v5, "devicePort":Landroid/media/AudioDevicePort;
    invoke-virtual {v5}, Landroid/media/AudioDevicePort;->type()I

    move-result v20

    const/16 v21, 0x400

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1

    invoke-virtual {v5}, Landroid/media/AudioDevicePort;->type()I

    move-result v20

    const/high16 v21, 0x40000

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 5468
    :cond_1
    invoke-virtual {v5}, Landroid/media/AudioDevicePort;->formats()[I

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/media/AudioFormat;->filterPublicFormats([I)[I

    move-result-object v9

    .line 5469
    .local v9, "formats":[I
    array-length v0, v9

    move/from16 v20, v0

    if-lez v20, :cond_5

    .line 5470
    new-instance v7, Ljava/util/ArrayList;

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 5471
    .local v7, "encodingList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object v3, v9

    .local v3, "arr$":[I
    array-length v13, v3

    .local v13, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_1
    if-ge v12, v13, :cond_3

    aget v8, v3, v12

    .line 5473
    .local v8, "format":I
    if-eqz v8, :cond_2

    .line 5474
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5471
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 5477
    .end local v8    # "format":I
    :cond_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    new-array v6, v0, [I

    .line 5478
    .local v6, "encodingArray":[I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    array-length v0, v6

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v10, v0, :cond_4

    .line 5479
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    aput v20, v6, v10

    .line 5478
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 5481
    :cond_4
    const-string v20, "android.media.extra.ENCODINGS"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 5484
    .end local v3    # "arr$":[I
    .end local v6    # "encodingArray":[I
    .end local v7    # "encodingList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v10    # "i":I
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    :cond_5
    const/4 v15, 0x0

    .line 5485
    .local v15, "maxChannels":I
    invoke-virtual {v5}, Landroid/media/AudioDevicePort;->channelMasks()[I

    move-result-object v3

    .restart local v3    # "arr$":[I
    array-length v13, v3

    .restart local v13    # "len$":I
    const/4 v12, 0x0

    .restart local v12    # "i$":I
    :goto_3
    if-ge v12, v13, :cond_7

    aget v14, v3, v12

    .line 5486
    .local v14, "mask":I
    invoke-static {v14}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v4

    .line 5487
    .local v4, "channelCount":I
    if-le v4, v15, :cond_6

    .line 5488
    move v15, v4

    .line 5485
    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 5491
    .end local v4    # "channelCount":I
    .end local v14    # "mask":I
    :cond_7
    const-string v20, "android.media.extra.MAX_CHANNEL_COUNT"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 5497
    .end local v3    # "arr$":[I
    .end local v5    # "devicePort":Landroid/media/AudioDevicePort;
    .end local v9    # "formats":[I
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    .end local v15    # "maxChannels":I
    .end local v16    # "port":Landroid/media/AudioPort;
    .end local v17    # "portGeneration":[I
    .end local v18    # "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    .end local v19    # "status":I
    :cond_8
    return-void
.end method

.method private createAudioSystemThread()V
    .locals 1

    .prologue
    .line 998
    new-instance v0, Lcom/android/server/audio/AudioService$AudioSystemThread;

    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioService$AudioSystemThread;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioSystemThread:Lcom/android/server/audio/AudioService$AudioSystemThread;

    .line 999
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioSystemThread:Lcom/android/server/audio/AudioService$AudioSystemThread;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$AudioSystemThread;->start()V

    .line 1000
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->waitForAudioHandlerCreation()V

    .line 1001
    return-void
.end method

.method private createSoundEffectManager()V
    .locals 8

    .prologue
    .line 7065
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createSoundEffectManager EFFECT_MANAGER="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/server/audio/AudioService;->EFFECT_MANAGER:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ENABLE_DOLBY= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/server/audio/AudioService;->ENABLE_DOLBY:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ENABLE_AUDIOSPHERE="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/server/audio/AudioService;->ENABLE_AUDIOSPHERE:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ENABLE_SRS="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/server/audio/AudioService;->ENABLE_SRS:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7066
    sget-boolean v4, Lcom/android/server/audio/AudioService;->ENABLE_DOLBY:Z

    if-eqz v4, :cond_0

    .line 7068
    :try_start_0
    invoke-static {}, Lcom/android/server/audio/htcsoundfx/DolbyController;->isDoblyInstanceExist()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7069
    sget-boolean v4, Lcom/android/server/audio/AudioService;->ENABLE_AUDIOSPHERE:Z

    if-eqz v4, :cond_3

    .line 7070
    new-instance v2, Lcom/android/server/audio/htcsoundfx/DolbyAudioSphereAdapter;

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    invoke-virtual {v5}, Lcom/android/server/audio/AudioService$AudioHandler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v2, v4, v5, p0}, Lcom/android/server/audio/htcsoundfx/DolbyAudioSphereAdapter;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/audio/AudioService;)V

    .line 7071
    .local v2, "hfDolby":Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;
    new-instance v0, Lcom/android/server/audio/htcsoundfx/CompositeEffectManager;

    invoke-direct {v0, v2}, Lcom/android/server/audio/htcsoundfx/CompositeEffectManager;-><init>(Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;)V

    .line 7072
    .local v0, "ce":Lcom/android/server/audio/htcsoundfx/CompositeEffectManager;
    new-instance v4, Lcom/android/server/audio/htcsoundfx/AudioSphereDolbyAdapter;

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    invoke-virtual {v6}, Lcom/android/server/audio/AudioService$AudioHandler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v4, v5, v6, p0}, Lcom/android/server/audio/htcsoundfx/AudioSphereDolbyAdapter;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/audio/AudioService;)V

    invoke-virtual {v0, v4}, Lcom/android/server/audio/htcsoundfx/CompositeEffectManager;->addEffect(Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;)V

    .line 7073
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mHtcBeatsEffect:Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7083
    .end local v0    # "ce":Lcom/android/server/audio/htcsoundfx/CompositeEffectManager;
    .end local v2    # "hfDolby":Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mHtcBeatsEffect:Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;

    if-nez v4, :cond_1

    .line 7084
    sget v4, Lcom/android/server/audio/AudioService;->EFFECT_MANAGER:I

    packed-switch v4, :pswitch_data_0

    .line 7097
    const-string v4, "AudioService"

    const-string v5, "fallback to old effect manager control policy"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7102
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mHtcBeatsEffect:Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;

    if-nez v4, :cond_2

    .line 7104
    sget-boolean v4, Lcom/android/server/audio/AudioService;->ENABLE_HARMAN:Z

    if-eqz v4, :cond_4

    .line 7105
    new-instance v4, Lcom/android/server/audio/htcsoundfx/HarmanManager;

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    invoke-virtual {v6}, Lcom/android/server/audio/AudioService$AudioHandler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v4, v5, v6, p0}, Lcom/android/server/audio/htcsoundfx/HarmanManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/audio/AudioService;)V

    iput-object v4, p0, Lcom/android/server/audio/AudioService;->mHtcBeatsEffect:Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;

    .line 7120
    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mHtcBeatsEffect:Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;

    invoke-interface {v4}, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;->loadSoundEffect()V

    .line 7121
    return-void

    .line 7075
    :cond_3
    :try_start_1
    new-instance v4, Lcom/android/server/audio/htcsoundfx/DolbyAudioSphereAdapter;

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    invoke-virtual {v6}, Lcom/android/server/audio/AudioService$AudioHandler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v4, v5, v6, p0}, Lcom/android/server/audio/htcsoundfx/DolbyAudioSphereAdapter;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/audio/AudioService;)V

    iput-object v4, p0, Lcom/android/server/audio/AudioService;->mHtcBeatsEffect:Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 7078
    :catch_0
    move-exception v1

    .line 7079
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 7088
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_0
    new-instance v4, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    invoke-virtual {v6}, Lcom/android/server/audio/AudioService$AudioHandler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    sget v7, Lcom/android/server/audio/AudioService;->EFFECT_MANAGER:I

    invoke-direct {v4, v5, v6, p0, v7}, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/audio/AudioService;I)V

    iput-object v4, p0, Lcom/android/server/audio/AudioService;->mHtcBeatsEffect:Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;

    goto :goto_1

    .line 7091
    :pswitch_1
    new-instance v4, Lcom/android/server/audio/htcsoundfx/HarmanManager;

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    invoke-virtual {v6}, Lcom/android/server/audio/AudioService$AudioHandler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v4, v5, v6, p0}, Lcom/android/server/audio/htcsoundfx/HarmanManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/audio/AudioService;)V

    iput-object v4, p0, Lcom/android/server/audio/AudioService;->mHtcBeatsEffect:Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;

    goto :goto_1

    .line 7094
    :pswitch_2
    new-instance v4, Lcom/android/server/audio/htcsoundfx/JBLManager;

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    invoke-virtual {v6}, Lcom/android/server/audio/AudioService$AudioHandler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v4, v5, v6, p0}, Lcom/android/server/audio/htcsoundfx/JBLManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/audio/AudioService;)V

    iput-object v4, p0, Lcom/android/server/audio/AudioService;->mHtcBeatsEffect:Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;

    goto :goto_1

    .line 7106
    :cond_4
    sget-boolean v4, Lcom/android/server/audio/AudioService;->ENABLE_SRS:Z

    if-eqz v4, :cond_5

    .line 7107
    new-instance v4, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    invoke-virtual {v6}, Lcom/android/server/audio/AudioService$AudioHandler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    const/4 v7, 0x2

    invoke-direct {v4, v5, v6, p0, v7}, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/audio/AudioService;I)V

    iput-object v4, p0, Lcom/android/server/audio/AudioService;->mHtcBeatsEffect:Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;

    goto :goto_2

    .line 7112
    :cond_5
    sget-boolean v4, Lcom/android/server/audio/AudioService;->ENABLE_BEATS:Z

    if-eqz v4, :cond_6

    .line 7113
    const/4 v3, 0x1

    .line 7117
    .local v3, "type":I
    :goto_3
    new-instance v4, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    invoke-virtual {v6}, Lcom/android/server/audio/AudioService$AudioHandler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v4, v5, v6, p0, v3}, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/audio/AudioService;I)V

    iput-object v4, p0, Lcom/android/server/audio/AudioService;->mHtcBeatsEffect:Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;

    goto :goto_2

    .line 7115
    .end local v3    # "type":I
    :cond_6
    const/4 v3, 0x0

    .restart local v3    # "type":I
    goto :goto_3

    .line 7084
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private createStreamStates()V
    .locals 6

    .prologue
    .line 1057
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 1058
    .local v1, "numStreamTypes":I
    new-array v2, v1, [Lcom/android/server/audio/AudioService$VolumeStreamState;

    iput-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 1060
    .local v2, "streams":[Lcom/android/server/audio/AudioService$VolumeStreamState;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1061
    new-instance v3, Lcom/android/server/audio/AudioService$VolumeStreamState;

    sget-object v4, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v5, v5, v0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    invoke-direct {v3, p0, v4, v0, v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;-><init>(Lcom/android/server/audio/AudioService;Ljava/lang/String;ILcom/android/server/audio/AudioService$1;)V

    aput-object v3, v2, v0

    .line 1060
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1064
    :cond_0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkAllFixedVolumeDevices()V

    .line 1065
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkAllAliasStreamVolumes()V

    .line 1066
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkMuteAffectedStreams()V

    .line 1067
    return-void
.end method

.method private discardRmtSbmxFullVolDeathHandlerFor(Landroid/os/IBinder;)Z
    .locals 3
    .param p1, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 1881
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1882
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1883
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;

    .line 1884
    .local v0, "handler":Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;
    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;->isHandlerFor(Landroid/os/IBinder;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1885
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;->forget()V

    .line 1886
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1887
    const/4 v2, 0x1

    .line 1890
    .end local v0    # "handler":Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private disconnectBluetoothSco(I)V
    .locals 8
    .param p1, "exceptPid"    # I

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x2

    .line 3072
    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v7

    .line 3073
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkScoAudioState()V

    .line 3074
    iget v0, p0, Lcom/android/server/audio/AudioService;->mScoAudioState:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/audio/AudioService;->mScoAudioState:I

    if-ne v0, v2, :cond_3

    .line 3076
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_1

    .line 3077
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_2

    .line 3078
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3080
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x9

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3091
    :cond_1
    :goto_0
    monitor-exit v7

    .line 3092
    return-void

    .line 3083
    :cond_2
    iget v0, p0, Lcom/android/server/audio/AudioService;->mScoAudioState:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getBluetoothHeadset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3085
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/audio/AudioService;->mScoAudioState:I

    goto :goto_0

    .line 3091
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3089
    :cond_3
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioService;->clearAllScoClients(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private dumpAudioPolicies(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 6684
    const-string v2, "\nAudio policies:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6685
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v3

    .line 6686
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    .line 6687
    .local v1, "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->toLogFriendlyString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 6689
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6690
    return-void
.end method

.method private dumpRingerMode(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 6270
    const-string v0, "\nRinger mode: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- mode (internal) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/audio/AudioService;->RINGER_MODE_NAMES:[Ljava/lang/String;

    iget v2, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- mode (external) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/audio/AudioService;->RINGER_MODE_NAMES:[Ljava/lang/String;

    iget v2, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6273
    const-string v0, "affected"

    iget v1, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/audio/AudioService;->dumpRingerModeStreams(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 6274
    const-string v0, "muted"

    iget v1, p0, Lcom/android/server/audio/AudioService;->mRingerModeMutedStreams:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/audio/AudioService;->dumpRingerModeStreams(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 6275
    const-string v0, "- delegate = "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6276
    return-void
.end method

.method private dumpRingerModeStreams(Ljava/io/PrintWriter;Ljava/lang/String;I)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "streams"    # I

    .prologue
    const/16 v4, 0x2c

    .line 6279
    const-string v3, "- ringer mode "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " streams = 0x"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6280
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6281
    if-eqz p3, :cond_5

    .line 6282
    const-string v3, " ("

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6283
    const/4 v0, 0x1

    .line 6284
    .local v0, "first":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v3, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 6285
    const/4 v3, 0x1

    shl-int v2, v3, v1

    .line 6286
    .local v2, "stream":I
    and-int v3, p3, v2

    if-eqz v3, :cond_1

    .line 6287
    if-nez v0, :cond_0

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 6288
    :cond_0
    sget-object v3, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6289
    xor-int/lit8 v3, v2, -0x1

    and-int/2addr p3, v3

    .line 6290
    const/4 v0, 0x0

    .line 6284
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6293
    .end local v2    # "stream":I
    :cond_2
    if-eqz p3, :cond_4

    .line 6294
    if-nez v0, :cond_3

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 6295
    :cond_3
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 6297
    :cond_4
    const/16 v3, 0x29

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 6299
    .end local v0    # "first":Z
    .end local v1    # "i":I
    :cond_5
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 6300
    return-void
.end method

.method private dumpStreamStates(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1070
    const-string v2, "\nStream volumes (device: index)"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1071
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 1072
    .local v1, "numStreamTypes":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1073
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1074
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, v0

    # invokes: Lcom/android/server/audio/AudioService$VolumeStreamState;->dump(Ljava/io/PrintWriter;)V
    invoke-static {v2, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$800(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/io/PrintWriter;)V

    .line 1075
    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1072
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1077
    :cond_0
    const-string v2, "\n- mute affected streams = 0x"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1078
    iget v2, p0, Lcom/android/server/audio/AudioService;->mMuteAffectedStreams:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1079
    return-void
.end method

.method private enforceSafeMediaVolume(Ljava/lang/String;)V
    .locals 11
    .param p1, "caller"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 6061
    const-string v0, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enforceSafeMediaVol, caller = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6062
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v2, 0x3

    aget-object v5, v0, v2

    .line 6063
    .local v5, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    iget v7, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeDevices:I

    .line 6064
    .local v7, "devices":I
    const/4 v8, 0x0

    .local v8, "i":I
    move v9, v8

    .line 6066
    .end local v8    # "i":I
    .local v9, "i":I
    :goto_0
    if-eqz v7, :cond_4

    .line 6067
    const/4 v0, 0x1

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "i":I
    .restart local v8    # "i":I
    shl-int v3, v0, v9

    .line 6068
    .local v3, "device":I
    and-int v0, v3, v7

    if-nez v0, :cond_0

    move v9, v8

    .line 6069
    .end local v8    # "i":I
    .restart local v9    # "i":I
    goto :goto_0

    .line 6071
    .end local v9    # "i":I
    .restart local v8    # "i":I
    :cond_0
    invoke-virtual {v5, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v10

    .line 6072
    .local v10, "index":I
    iget v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    if-le v10, v0, :cond_3

    .line 6075
    and-int/lit16 v0, v3, 0x380

    if-eqz v0, :cond_2

    .line 6076
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    monitor-enter v2

    .line 6077
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z

    if-eqz v0, :cond_1

    .line 6078
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    iget v4, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    div-int/lit8 v4, v4, 0xa

    invoke-virtual {v0, v4}, Landroid/bluetooth/BluetoothA2dp;->setAvrcpAbsoluteVolume(I)V

    .line 6080
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6085
    :cond_2
    iget v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    invoke-virtual {v5, v0, v3, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    .line 6087
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v2, 0x2

    move v4, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 6095
    :cond_3
    xor-int/lit8 v0, v3, -0x1

    and-int/2addr v7, v0

    move v9, v8

    .line 6096
    .end local v8    # "i":I
    .restart local v9    # "i":I
    goto :goto_0

    .line 6080
    .end local v9    # "i":I
    .restart local v8    # "i":I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 6097
    .end local v3    # "device":I
    .end local v8    # "i":I
    .end local v10    # "index":I
    .restart local v9    # "i":I
    :cond_4
    return-void
.end method

.method private enforceVolumeController(Ljava/lang/String;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 6351
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mControllerService:Lcom/android/server/audio/AudioService$ControllerService;

    # getter for: Lcom/android/server/audio/AudioService$ControllerService;->mUid:I
    invoke-static {v0}, Lcom/android/server/audio/AudioService$ControllerService;->access$9900(Lcom/android/server/audio/AudioService$ControllerService;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mControllerService:Lcom/android/server/audio/AudioService$ControllerService;

    # getter for: Lcom/android/server/audio/AudioService$ControllerService;->mUid:I
    invoke-static {v1}, Lcom/android/server/audio/AudioService$ControllerService;->access$9900(Lcom/android/server/audio/AudioService$ControllerService;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 6356
    :goto_0
    return-void

    .line 6354
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Only SystemUI can "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private ensureValidDirection(I)V
    .locals 3
    .param p1, "direction"    # I

    .prologue
    .line 3576
    sparse-switch p1, :sswitch_data_0

    .line 3585
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad direction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3587
    :sswitch_0
    return-void

    .line 3576
    nop

    :sswitch_data_0
    .sparse-switch
        -0x64 -> :sswitch_0
        -0x1 -> :sswitch_0
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x64 -> :sswitch_0
        0x65 -> :sswitch_0
    .end sparse-switch
.end method

.method private ensureValidRingerMode(I)V
    .locals 3
    .param p1, "ringerMode"    # I

    .prologue
    .line 2095
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->isValidRingerMode(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2096
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad ringer mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2098
    :cond_0
    return-void
.end method

.method private ensureValidStreamType(I)V
    .locals 3
    .param p1, "streamType"    # I

    .prologue
    .line 3590
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 3591
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad stream type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3593
    :cond_1
    return-void
.end method

.method private getActiveStreamType(I)I
    .locals 8
    .param p1, "suggestedStreamType"    # I

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x5

    const/high16 v7, -0x80000000

    const/4 v0, 0x0

    const/4 v2, 0x3

    .line 3625
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "is in communication? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isInCommunication()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3626
    iget v4, p0, Lcom/android/server/audio/AudioService;->mPlatformType:I

    packed-switch v4, :pswitch_data_0

    .line 3660
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isInCommunication()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 3661
    invoke-static {v0}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v1

    if-ne v1, v2, :cond_6

    .line 3663
    const-string v0, "AudioService"

    const-string v1, "getActiveStreamType: Forcing STREAM_BLUETOOTH_SCO"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3664
    const/4 p1, 0x6

    .line 3689
    .end local p1    # "suggestedStreamType":I
    :goto_0
    return p1

    .line 3628
    .restart local p1    # "suggestedStreamType":I
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isInCommunication()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3629
    invoke-static {v0}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 3632
    const/4 p1, 0x6

    goto :goto_0

    :cond_0
    move p1, v0

    .line 3635
    goto :goto_0

    .line 3637
    :cond_1
    if-ne p1, v7, :cond_4

    .line 3638
    sget v0, Lcom/android/server/audio/AudioService$StreamOverride;->sDelayMs:I

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->isAfMusicActiveRecently(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->isDLNAPlaying()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->isFMActive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3640
    :cond_2
    const-string v0, "AudioService"

    const-string v1, "getActiveStreamType: Forcing STREAM_MUSIC stream active"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v2

    .line 3641
    goto :goto_0

    .line 3644
    :cond_3
    const-string v0, "AudioService"

    const-string v2, "getActiveStreamType: Forcing STREAM_RING b/c default"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v1

    .line 3645
    goto :goto_0

    .line 3647
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->isAfMusicActiveRecently(I)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->isDLNAPlaying()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->isFMActive()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3649
    :cond_5
    const-string v0, "AudioService"

    const-string v1, "getActiveStreamType: Forcing STREAM_MUSIC stream active"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v2

    .line 3650
    goto :goto_0

    .line 3654
    :pswitch_1
    if-ne p1, v7, :cond_b

    move p1, v2

    .line 3656
    goto :goto_0

    .line 3666
    :cond_6
    const-string v1, "AudioService"

    const-string v2, "getActiveStreamType: Forcing STREAM_VOICE_CALL"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    .line 3667
    goto :goto_0

    .line 3669
    :cond_7
    sget v0, Lcom/android/server/audio/AudioService$StreamOverride;->sDelayMs:I

    invoke-static {v3, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-nez v0, :cond_8

    sget v0, Lcom/android/server/audio/AudioService$StreamOverride;->sDelayMs:I

    invoke-static {v1, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3673
    :cond_8
    const-string v0, "AudioService"

    const-string v1, "getActiveStreamType: Forcing STREAM_NOTIFICATION"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v3

    .line 3674
    goto :goto_0

    .line 3675
    :cond_9
    if-ne p1, v7, :cond_b

    .line 3676
    sget v0, Lcom/android/server/audio/AudioService$StreamOverride;->sDelayMs:I

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->isAfMusicActiveRecently(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3677
    const-string v0, "AudioService"

    const-string v1, "getActiveStreamType: forcing STREAM_MUSIC"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v2

    .line 3678
    goto/16 :goto_0

    .line 3680
    :cond_a
    const-string v0, "AudioService"

    const-string v1, "getActiveStreamType: using STREAM_NOTIFICATION as default"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v3

    .line 3682
    goto/16 :goto_0

    .line 3687
    :cond_b
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getActiveStreamType: Returning suggested type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3626
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getBluetoothHeadset()Z
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 3056
    const/4 v8, 0x0

    .line 3057
    .local v8, "result":Z
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v7

    .line 3058
    .local v7, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v7, :cond_0

    .line 3059
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x1

    invoke-virtual {v7, v0, v1, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result v8

    .line 3066
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x9

    const/4 v5, 0x0

    if-eqz v8, :cond_1

    const/16 v6, 0xbb8

    :goto_0
    move v3, v2

    move v4, v2

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3068
    return v8

    :cond_1
    move v6, v2

    .line 3066
    goto :goto_0
.end method

.method private getCurrentUserId()I
    .locals 4

    .prologue
    .line 1742
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1744
    .local v2, "ident":J
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1745
    .local v0, "currentUser":Landroid/content/pm/UserInfo;
    iget v1, v0, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1749
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1751
    .end local v0    # "currentUser":Landroid/content/pm/UserInfo;
    :goto_0
    return v1

    .line 1746
    :catch_0
    move-exception v1

    .line 1749
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1751
    const/4 v1, 0x0

    goto :goto_0

    .line 1749
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method private getCustomizedFile()Ljava/io/File;
    .locals 5

    .prologue
    .line 7559
    const-string v2, "ro.cid"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7560
    .local v0, "cid":Ljava/lang/String;
    const/4 v1, 0x0

    .line 7561
    .local v1, "target":Ljava/io/File;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 7562
    new-instance v1, Ljava/io/File;

    .end local v1    # "target":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/system/customize/CID/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7563
    .restart local v1    # "target":Ljava/io/File;
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 7564
    :cond_1
    new-instance v1, Ljava/io/File;

    .end local v1    # "target":Ljava/io/File;
    const-string v2, "/system/customize/CID/default.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7565
    .restart local v1    # "target":Ljava/io/File;
    :cond_2
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCustomizedFile="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7566
    return-object v1
.end method

.method private getDeviceForStream(I)I
    .locals 3
    .param p1, "stream"    # I

    .prologue
    .line 3760
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isDLNAVolumeFixed()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 3761
    const-string v1, "AudioService"

    const-string v2, "getDeviceForStream: isDLNAVolumeFixed->yes"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3762
    const/high16 v0, 0x20000000

    .line 3791
    :cond_0
    :goto_0
    return v0

    .line 3767
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getDevicesForStream(I)I

    move-result v0

    .line 3768
    .local v0, "device":I
    add-int/lit8 v1, v0, -0x1

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    .line 3775
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_2

    .line 3776
    const/4 v0, 0x2

    goto :goto_0

    .line 3777
    :cond_2
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_3

    .line 3778
    const/high16 v0, 0x40000

    goto :goto_0

    .line 3779
    :cond_3
    const/high16 v1, 0x80000

    and-int/2addr v1, v0

    if-eqz v1, :cond_4

    .line 3780
    const/high16 v0, 0x80000

    goto :goto_0

    .line 3781
    :cond_4
    const/high16 v1, 0x200000

    and-int/2addr v1, v0

    if-eqz v1, :cond_5

    .line 3782
    const/high16 v0, 0x200000

    goto :goto_0

    .line 3784
    :cond_5
    const/high16 v1, 0x100000

    and-int/2addr v1, v0

    if-eqz v1, :cond_6

    .line 3785
    const v1, -0x100001

    and-int/2addr v0, v1

    goto :goto_0

    .line 3788
    :cond_6
    and-int/lit16 v0, v0, 0x380

    goto :goto_0
.end method

.method private getDevicesForStream(I)I
    .locals 1
    .param p1, "stream"    # I

    .prologue
    .line 3795
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/audio/AudioService;->getDevicesForStream(IZ)I

    move-result v0

    return v0
.end method

.method private getDevicesForStream(IZ)I
    .locals 2
    .param p1, "stream"    # I
    .param p2, "checkOthers"    # Z

    .prologue
    .line 3799
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    .line 3800
    const-class v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v1

    .line 3801
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->observeDevicesForStream_syncVSS(Z)I

    move-result v0

    monitor-exit v1

    return v0

    .line 3802
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getScoClient(Landroid/os/IBinder;Z)Lcom/android/server/audio/AudioService$ScoClient;
    .locals 6
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "create"    # Z

    .prologue
    .line 3020
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v5

    .line 3021
    const/4 v0, 0x0

    .line 3022
    .local v0, "client":Lcom/android/server/audio/AudioService$ScoClient;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 3023
    .local v3, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    move-object v1, v0

    .end local v0    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    .local v1, "client":Lcom/android/server/audio/AudioService$ScoClient;
    :goto_0
    if-ge v2, v3, :cond_1

    .line 3024
    :try_start_1
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioService$ScoClient;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3025
    .end local v1    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    .restart local v0    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    :try_start_2
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$ScoClient;->getBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v4, p1, :cond_0

    .line 3026
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v0

    .line 3032
    .end local v0    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    .restart local v1    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    :goto_1
    return-object v1

    .line 3023
    .end local v1    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    .restart local v0    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    move-object v1, v0

    .end local v0    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    .restart local v1    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    goto :goto_0

    .line 3028
    :cond_1
    if-eqz p2, :cond_2

    .line 3029
    :try_start_3
    new-instance v0, Lcom/android/server/audio/AudioService$ScoClient;

    invoke-direct {v0, p0, p1}, Lcom/android/server/audio/AudioService$ScoClient;-><init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3030
    .end local v1    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    .restart local v0    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    :try_start_4
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3032
    :goto_2
    monitor-exit v5

    move-object v1, v0

    .end local v0    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    .restart local v1    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    goto :goto_1

    .line 3033
    .end local v1    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    .end local v2    # "i":I
    .end local v3    # "size":I
    .restart local v0    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    :catchall_0
    move-exception v4

    :goto_3
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .end local v0    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    .restart local v1    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    .restart local v2    # "i":I
    .restart local v3    # "size":I
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    .restart local v0    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    goto :goto_3

    .end local v0    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    .restart local v1    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    :cond_2
    move-object v0, v1

    .end local v1    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    .restart local v0    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    goto :goto_2
.end method

.method private handleConfigurationChanged(Landroid/content/Context;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 5816
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    .line 5818
    .local v9, "config":Landroid/content/res/Configuration;
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mMonitorOrientation:Z

    if-eqz v0, :cond_0

    .line 5819
    iget v12, v9, Landroid/content/res/Configuration;->orientation:I

    .line 5820
    .local v12, "newOrientation":I
    iget v0, p0, Lcom/android/server/audio/AudioService;->mDeviceOrientation:I

    if-eq v12, v0, :cond_0

    .line 5821
    iput v12, p0, Lcom/android/server/audio/AudioService;->mDeviceOrientation:I

    .line 5822
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->setOrientationForAudioSystem()V

    .line 5825
    .end local v12    # "newOrientation":I
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x10

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "AudioService"

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5833
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->readCameraSoundForced()Z

    move-result v7

    .line 5835
    .local v7, "cameraSoundForced":Z
    sget-boolean v0, Lcom/android/server/audio/AudioService;->mHtcCameraShutterSound:Z

    or-int v11, v7, v0

    .line 5837
    .local v11, "isHtcCameraSoundForced":Z
    iget-object v14, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5838
    const/4 v8, 0x0

    .line 5839
    .local v8, "cameraSoundForcedChanged":Z
    :try_start_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5841
    :try_start_2
    const-string v0, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleConfigurationChanged, mCameraSoundForced = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isHtcCameraSoundForced = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", cameraSoundForced = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5842
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v11, v0, :cond_1

    .line 5843
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    .line 5845
    const/4 v8, 0x1

    .line 5847
    :cond_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5848
    if-eqz v8, :cond_3

    .line 5849
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isPlatformTelevision()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5850
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v1, 0x7

    aget-object v13, v0, v1

    .line 5852
    .local v13, "s":Lcom/android/server/audio/AudioService$VolumeStreamState;
    if-eqz v11, :cond_4

    .line 5854
    invoke-virtual {v13}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setAllIndexesToMax()V

    .line 5855
    iget v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    .line 5863
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    .line 5866
    .end local v13    # "s":Lcom/android/server/audio/AudioService$VolumeStreamState;
    :cond_2
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x8

    const/4 v2, 0x2

    const/4 v3, 0x4

    if-eqz v11, :cond_5

    const/16 v4, 0xb

    :goto_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5877
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0xa

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v6, 0x7

    aget-object v5, v5, v6

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5884
    :cond_3
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 5885
    :try_start_4
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v9}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$VolumeController;->setLayoutDirection(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 5889
    .end local v7    # "cameraSoundForced":Z
    .end local v8    # "cameraSoundForcedChanged":Z
    .end local v9    # "config":Landroid/content/res/Configuration;
    .end local v11    # "isHtcCameraSoundForced":Z
    :goto_2
    return-void

    .line 5847
    .restart local v7    # "cameraSoundForced":Z
    .restart local v8    # "cameraSoundForcedChanged":Z
    .restart local v9    # "config":Landroid/content/res/Configuration;
    .restart local v11    # "isHtcCameraSoundForced":Z
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0

    .line 5884
    :catchall_1
    move-exception v0

    monitor-exit v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 5886
    .end local v7    # "cameraSoundForced":Z
    .end local v8    # "cameraSoundForcedChanged":Z
    .end local v9    # "config":Landroid/content/res/Configuration;
    .end local v11    # "isHtcCameraSoundForced":Z
    :catch_0
    move-exception v10

    .line 5887
    .local v10, "e":Ljava/lang/Exception;
    const-string v0, "AudioService"

    const-string v1, "Error handling configuration change: "

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 5858
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v7    # "cameraSoundForced":Z
    .restart local v8    # "cameraSoundForcedChanged":Z
    .restart local v9    # "config":Landroid/content/res/Configuration;
    .restart local v11    # "isHtcCameraSoundForced":Z
    .restart local v13    # "s":Lcom/android/server/audio/AudioService$VolumeStreamState;
    :cond_4
    :try_start_8
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const-string v1, "AudioService"

    invoke-virtual {v13, v0, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setAllIndexes(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)V

    .line 5859
    iget v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_0

    .line 5866
    .end local v13    # "s":Lcom/android/server/audio/AudioService$VolumeStreamState;
    :cond_5
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private handleDeviceConnection(ZILjava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "connect"    # Z
    .param p2, "device"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "deviceName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 5231
    const-string v6, "AudioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleDeviceConnection("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " dev:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " address:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " name:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5234
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v6

    .line 5235
    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5237
    .local v0, "deviceKey":Ljava/lang/String;
    const-string v7, "AudioService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "deviceKey:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5239
    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$DeviceListSpec;

    .line 5240
    .local v1, "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    if-eqz v1, :cond_0

    move v2, v5

    .line 5242
    .local v2, "isConnected":Z
    :goto_0
    const-string v7, "AudioService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "deviceSpec:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is(already)Connected:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5244
    if-eqz p1, :cond_2

    if-nez v2, :cond_2

    .line 5245
    const/4 v7, 0x1

    invoke-static {p2, v7, p3, p4}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 5247
    .local v3, "res":I
    if-eqz v3, :cond_1

    .line 5248
    const-string v5, "AudioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "not connecting device 0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " due to command error "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5250
    monitor-exit v6

    .line 5279
    .end local v3    # "res":I
    :goto_1
    return v4

    .end local v2    # "isConnected":Z
    :cond_0
    move v2, v4

    .line 5240
    goto :goto_0

    .line 5252
    .restart local v2    # "isConnected":Z
    .restart local v3    # "res":I
    :cond_1
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    new-instance v7, Lcom/android/server/audio/AudioService$DeviceListSpec;

    invoke-direct {v7, p0, p2, p4, p3}, Lcom/android/server/audio/AudioService$DeviceListSpec;-><init>(Lcom/android/server/audio/AudioService;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5254
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->onDeviceConnected(I)V

    .line 5256
    monitor-exit v6

    move v4, v5

    goto :goto_1

    .line 5257
    .end local v3    # "res":I
    :cond_2
    if-nez p1, :cond_5

    if-eqz v2, :cond_5

    .line 5260
    iget-boolean v4, p0, Lcom/android/server/audio/AudioService;->mFMActive:Z

    if-eqz v4, :cond_4

    const/4 v4, 0x4

    if-eq p2, v4, :cond_3

    const/16 v4, 0x8

    if-ne p2, v4, :cond_4

    .line 5261
    :cond_3
    const/4 v4, 0x1

    const/4 v7, 0x0

    invoke-static {v4, v7}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 5262
    const/high16 v4, 0x100000

    const/4 v7, 0x0

    const-string v8, ""

    const-string v9, ""

    invoke-static {v4, v7, v8, v9}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 5264
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    const/high16 v7, 0x100000

    const-string v8, ""

    invoke-direct {p0, v7, v8}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5266
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/audio/AudioService;->mFMActive:Z

    .line 5270
    :cond_4
    const/4 v4, 0x0

    invoke-static {p2, v4, p3, p4}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 5272
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5274
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->onDeviceDisconnected(I)V

    .line 5276
    monitor-exit v6

    move v4, v5

    goto :goto_1

    .line 5278
    :cond_5
    monitor-exit v6

    goto :goto_1

    .end local v0    # "deviceKey":Ljava/lang/String;
    .end local v1    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    .end local v2    # "isConnected":Z
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private handleFMRoute(II)V
    .locals 11
    .param p1, "isFmOn"    # I
    .param p2, "path"    # I

    .prologue
    const/16 v3, 0xa

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 7370
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleFMRoute, isFmOn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7371
    if-ne p1, v2, :cond_4

    .line 7372
    if-ne p2, v2, :cond_3

    move v1, v2

    .line 7377
    .local v1, "route":I
    :cond_0
    :goto_0
    invoke-static {v2, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 7379
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v4

    .line 7380
    const/16 v5, 0xa

    const/4 v6, 0x0

    :try_start_0
    invoke-static {v5, v6}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v5

    if-nez v5, :cond_1

    .line 7381
    const/high16 v5, 0x100000

    const/4 v6, 0x1

    const-string v7, ""

    const-string v8, ""

    invoke-static {v5, v6, v7, v8}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 7383
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    const/high16 v6, 0x100000

    const-string v7, ""

    invoke-direct {p0, v6, v7}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/server/audio/AudioService$DeviceListSpec;

    const/high16 v8, 0x100000

    const-string v9, ""

    const-string v10, ""

    invoke-direct {v7, p0, v8, v9, v10}, Lcom/android/server/audio/AudioService$DeviceListSpec;-><init>(Lcom/android/server/audio/AudioService;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7388
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7390
    invoke-static {v2, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 7392
    iput-boolean v2, p0, Lcom/android/server/audio/AudioService;->mFMActive:Z

    .line 7394
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mAnalogFM:Z

    if-eqz v2, :cond_2

    .line 7395
    invoke-direct {p0, v3}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v0

    .line 7396
    .local v0, "device":I
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v2

    div-int/lit8 v2, v2, 0xa

    invoke-direct {p0, v2}, Lcom/android/server/audio/AudioService;->sendFMVolmeUpdate(I)V

    .line 7412
    .end local v0    # "device":I
    .end local v1    # "route":I
    :cond_2
    :goto_1
    return-void

    .line 7372
    :cond_3
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->hasHeadsetConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v3

    goto :goto_0

    .line 7388
    .restart local v1    # "route":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 7398
    .end local v1    # "route":I
    :cond_4
    iget-boolean v4, p0, Lcom/android/server/audio/AudioService;->mFMActive:Z

    if-eqz v4, :cond_2

    .line 7399
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->hasHeadsetConnected()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 7400
    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 7404
    :goto_2
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 7405
    const/high16 v2, 0x100000

    const/4 v4, 0x0

    :try_start_2
    const-string v5, ""

    const-string v6, ""

    invoke-static {v2, v4, v5, v6}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 7407
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    const/high16 v4, 0x100000

    const-string v5, ""

    invoke-direct {p0, v4, v5}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7409
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 7410
    iput-boolean v1, p0, Lcom/android/server/audio/AudioService;->mFMActive:Z

    goto :goto_1

    .line 7402
    :cond_5
    invoke-static {v2, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    goto :goto_2

    .line 7409
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method private hasHeadsetConnected()Z
    .locals 4

    .prologue
    .line 7341
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 7342
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    const/16 v2, 0x8

    const-string v3, ""

    invoke-direct {p0, v2, v3}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    const/4 v2, 0x4

    const-string v3, ""

    invoke-direct {p0, v2, v3}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7344
    :cond_0
    const/4 v0, 0x1

    monitor-exit v1

    .line 7346
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 7347
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private hasRmtSbmxFullVolDeathHandlerFor(Landroid/os/IBinder;)Z
    .locals 2
    .param p1, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 1895
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1896
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1897
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;

    invoke-virtual {v1, p1}, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;->isHandlerFor(Landroid/os/IBinder;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1898
    const/4 v1, 0x1

    .line 1901
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private hasScheduledA2dpDockTimeout()Z
    .locals 2

    .prologue
    .line 5066
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method private identifyDevice(Landroid/bluetooth/BluetoothDevice;)I
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/16 v1, 0x7da

    .line 6969
    if-nez p1, :cond_1

    .line 6987
    :cond_0
    :goto_0
    return v1

    .line 6972
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 6973
    .local v0, "deviceName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 6977
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mBtName:Ljava/lang/String;

    .line 6978
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "identifyDevice, mBtName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mBtName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6979
    const-string v2, "Beats Wireless"

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mBtName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6980
    const/16 v1, 0x7d1

    goto :goto_0

    .line 6981
    :cond_2
    const-string v2, "Beatbox Portable"

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mBtName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6982
    const/16 v1, 0x7d2

    goto :goto_0

    .line 6983
    :cond_3
    const-string v2, "BeatsPill"

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mBtName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6984
    const/16 v1, 0x7d0

    goto :goto_0
.end method

.method private isAfMusicActiveRecently(I)Z
    .locals 2
    .param p1, "delay_ms"    # I

    .prologue
    const/4 v1, 0x3

    .line 3620
    invoke-static {v1, p1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1, p1}, Landroid/media/AudioSystem;->isStreamActiveRemotely(II)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDLNAVolumeFixed()Z
    .locals 2

    .prologue
    .line 7180
    sget-object v1, Lcom/android/server/audio/AudioService;->mFixedDLNAVolumeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 7181
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mFixedDLNAVolumeDeathHandler:Lcom/android/server/audio/AudioService$FixedDLNAVolumeDeathHandler;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 7182
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isInCommunication()Z
    .locals 6

    .prologue
    .line 3601
    const/4 v0, 0x0

    .line 3603
    .local v0, "IsInCall":Z
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v5, "telecom"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/TelecomManager;

    .line 3606
    .local v1, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3607
    .local v2, "ident":J
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    .line 3608
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3610
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getMode()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isMuteAdjust(I)Z
    .locals 1
    .param p1, "adjust"    # I

    .prologue
    .line 3596
    const/16 v0, -0x64

    if-eq p1, v0, :cond_0

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    const/16 v0, 0x65

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPlatformTelevision()Z
    .locals 2

    .prologue
    .line 209
    iget v0, p0, Lcom/android/server/audio/AudioService;->mPlatformType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPlatformVoice()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 205
    iget v1, p0, Lcom/android/server/audio/AudioService;->mPlatformType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isStreamMutedByRingerMode(I)Z
    .locals 3
    .param p1, "streamType"    # I

    .prologue
    const/4 v0, 0x1

    .line 3530
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRingerModeMutedStreams:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSubwooferConnected()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 6842
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->isStockUI:Z

    if-nez v1, :cond_1

    sget v1, Lcom/android/server/audio/htcsoundfx/CustomizationUtil;->SENSE_VERSION_NUM:F

    const/high16 v2, 0x41000000    # 8.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mBtName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 6845
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mBtName:Ljava/lang/String;

    const-string v2, "HTC ST A100"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mBtName:Ljava/lang/String;

    const-string v2, "HTC Boom Bass"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 6847
    :cond_1
    return v0
.end method

.method private killBackgroundUserProcessesWithRecordAudioPermission(Landroid/content/pm/UserInfo;)V
    .locals 12
    .param p1, "oldUser"    # Landroid/content/pm/UserInfo;

    .prologue
    const/4 v10, 0x0

    .line 5673
    iget-object v8, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 5676
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 5677
    .local v1, "homeActivityName":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v8

    if-nez v8, :cond_0

    .line 5678
    const-class v8, Landroid/app/ActivityManagerInternal;

    invoke-static {v8}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManagerInternal;

    iget v9, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v9}, Landroid/app/ActivityManagerInternal;->getHomeActivityForUser(I)Landroid/content/ComponentName;

    move-result-object v1

    .line 5681
    :cond_0
    const/4 v8, 0x1

    new-array v4, v8, [Ljava/lang/String;

    const-string v8, "android.permission.RECORD_AUDIO"

    aput-object v8, v4, v10

    .line 5684
    .local v4, "permissions":[Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v8

    const/4 v9, 0x0

    iget v10, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v8, v4, v9, v10}, Landroid/content/pm/IPackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 5689
    .local v3, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    .local v2, "j":I
    :goto_0
    if-ltz v2, :cond_4

    .line 5690
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    .line 5692
    .local v5, "pkg":Landroid/content/pm/PackageInfo;
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    const/16 v9, 0x2710

    if-ge v8, v9, :cond_2

    .line 5689
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 5686
    .end local v2    # "j":I
    .end local v3    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v5    # "pkg":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 5687
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v8, Landroid/util/AndroidRuntimeException;

    invoke-direct {v8, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v8

    .line 5696
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "j":I
    .restart local v3    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v5    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_2
    const-string v8, "android.permission.INTERACT_ACROSS_USERS"

    iget-object v9, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_1

    .line 5700
    if-eqz v1, :cond_3

    iget-object v8, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v8

    if-nez v8, :cond_1

    .line 5706
    :cond_3
    :try_start_1
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 5707
    .local v7, "uid":I
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v8

    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v9

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    const-string v11, "killBackgroundUserProcessesWithAudioRecordPermission"

    invoke-interface {v8, v9, v10, v11}, Landroid/app/IActivityManager;->killUid(IILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 5710
    .end local v7    # "uid":I
    :catch_1
    move-exception v0

    .line 5711
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v8, "AudioService"

    const-string v9, "Error calling killUid"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 5714
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v5    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_4
    return-void
.end method

.method private loadTouchSoundAssetDefaults()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2471
    sget-object v1, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    const-string v2, "Effect_Tick.ogg"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2472
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 2473
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v1, v1, v0

    aput v4, v1, v4

    .line 2474
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v1, v1, v0

    const/4 v2, 0x1

    const/4 v3, -0x1

    aput v3, v1, v2

    .line 2472
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2476
    :cond_0
    return-void
.end method

.method private loadTouchSoundAssets()V
    .locals 14

    .prologue
    .line 2479
    const/4 v9, 0x0

    .line 2482
    .local v9, "parser":Landroid/content/res/XmlResourceParser;
    sget-object v11, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1

    .line 2551
    :cond_0
    :goto_0
    return-void

    .line 2486
    :cond_1
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->loadTouchSoundAssetDefaults()V

    .line 2489
    :try_start_0
    iget-object v11, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x1110001

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v9

    .line 2491
    const-string v11, "audio_assets"

    invoke-static {v9, v11}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 2492
    const/4 v11, 0x0

    const-string v12, "version"

    invoke-interface {v9, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2493
    .local v10, "version":Ljava/lang/String;
    const/4 v7, 0x0

    .line 2495
    .local v7, "inTouchSoundsGroup":Z
    const-string v11, "1.0"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 2497
    :cond_2
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2498
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2499
    .local v1, "element":Ljava/lang/String;
    if-nez v1, :cond_4

    .line 2510
    :goto_1
    if-eqz v7, :cond_3

    .line 2511
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2512
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 2513
    if-nez v1, :cond_5

    .line 2547
    .end local v1    # "element":Ljava/lang/String;
    :cond_3
    if-eqz v9, :cond_0

    .line 2548
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    .line 2502
    .restart local v1    # "element":Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string v11, "group"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 2503
    const/4 v11, 0x0

    const-string v12, "name"

    invoke-interface {v9, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2504
    .local v8, "name":Ljava/lang/String;
    const-string v11, "touch_sounds"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 2505
    const/4 v7, 0x1

    .line 2506
    goto :goto_1

    .line 2516
    .end local v8    # "name":Ljava/lang/String;
    :cond_5
    const-string v11, "asset"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 2517
    const/4 v11, 0x0

    const-string v12, "id"

    invoke-interface {v9, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2518
    .local v6, "id":Ljava/lang/String;
    const/4 v11, 0x0

    const-string v12, "file"

    invoke-interface {v9, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 2522
    .local v3, "file":Ljava/lang/String;
    :try_start_2
    const-class v11, Landroid/media/AudioManager;

    invoke-virtual {v11, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 2523
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    .line 2529
    .local v4, "fx":I
    :try_start_3
    sget-object v11, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 2530
    .local v5, "i":I
    const/4 v11, -0x1

    if-ne v5, v11, :cond_6

    .line 2531
    sget-object v11, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v5

    .line 2532
    sget-object v11, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2534
    :cond_6
    iget-object v11, p0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v11, v11, v4

    const/4 v12, 0x0

    aput v5, v11, v12
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 2540
    .end local v1    # "element":Ljava/lang/String;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "file":Ljava/lang/String;
    .end local v4    # "fx":I
    .end local v5    # "i":I
    .end local v6    # "id":Ljava/lang/String;
    .end local v7    # "inTouchSoundsGroup":Z
    .end local v10    # "version":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2541
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    :try_start_4
    const-string v11, "AudioService"

    const-string v12, "audio assets file not found"

    invoke-static {v11, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2547
    if-eqz v9, :cond_0

    .line 2548
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_0

    .line 2524
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    .restart local v1    # "element":Ljava/lang/String;
    .restart local v3    # "file":Ljava/lang/String;
    .restart local v6    # "id":Ljava/lang/String;
    .restart local v7    # "inTouchSoundsGroup":Z
    .restart local v10    # "version":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 2525
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v11, "AudioService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Invalid touch sound ID: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 2542
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "element":Ljava/lang/String;
    .end local v3    # "file":Ljava/lang/String;
    .end local v6    # "id":Ljava/lang/String;
    .end local v7    # "inTouchSoundsGroup":Z
    .end local v10    # "version":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 2543
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_6
    const-string v11, "AudioService"

    const-string v12, "XML parser exception reading touch sound assets"

    invoke-static {v11, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2547
    if-eqz v9, :cond_0

    .line 2548
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_0

    .line 2544
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_3
    move-exception v0

    .line 2545
    .local v0, "e":Ljava/io/IOException;
    :try_start_7
    const-string v11, "AudioService"

    const-string v12, "I/O exception reading touch sound assets"

    invoke-static {v11, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2547
    if-eqz v9, :cond_0

    .line 2548
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_0

    .line 2547
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    if-eqz v9, :cond_7

    .line 2548
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_7
    throw v11
.end method

.method private makeA2dpDeviceAvailable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    const/16 v3, 0x80

    .line 4965
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v2, 0x3

    aget-object v5, v0, v2

    .line 4966
    .local v5, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v2, 0x2

    move v4, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4968
    invoke-virtual {p0, v7}, Lcom/android/server/audio/AudioService;->setBluetoothA2dpOnInt(Z)V

    .line 4972
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isSubwooferConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4973
    const-string v0, "htc_boom_base=ON"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 4977
    :cond_0
    invoke-static {v3, v7, p1, p2}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 4980
    const-string v0, "A2dpSuspended=false"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 4981
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-direct {p0, v3, p1}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/server/audio/AudioService$DeviceListSpec;

    invoke-direct {v2, p0, v3, p2, p1}, Lcom/android/server/audio/AudioService$DeviceListSpec;-><init>(Lcom/android/server/audio/AudioService;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4987
    invoke-direct {p0, v3}, Lcom/android/server/audio/AudioService;->onDeviceConnected(I)V

    .line 4990
    return-void
.end method

.method private makeA2dpDeviceUnavailableLater(Ljava/lang/String;I)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "delayMs"    # I

    .prologue
    .line 5031
    const-string v1, "A2dpSuspended=true"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 5033
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    const/16 v2, 0x80

    invoke-direct {p0, v2, p1}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5036
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, p1}, Lcom/android/server/audio/AudioService$AudioHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 5037
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    int-to-long v2, p2

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/audio/AudioService$AudioHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5039
    return-void
.end method

.method private makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    .locals 9
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x80

    const/4 v2, 0x0

    .line 4998
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4999
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z

    .line 5000
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5001
    const-string v0, ""

    invoke-static {v8, v2, p1, v0}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 5006
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isSubwooferConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5007
    const-string v0, "htc_boom_base=OFF"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 5011
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-direct {p0, v8, p1}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5013
    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v7

    .line 5015
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v0, v0, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 5016
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    .line 5017
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0xc

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5020
    :cond_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5023
    invoke-direct {p0, v8}, Lcom/android/server/audio/AudioService;->onDeviceDisconnected(I)V

    .line 5025
    return-void

    .line 5000
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 5020
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private makeA2dpSrcAvailable(Ljava/lang/String;)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/high16 v4, -0x7ffe0000

    .line 5043
    const/4 v0, 0x1

    const-string v1, ""

    invoke-static {v4, v0, p1, v1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 5045
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-direct {p0, v4, p1}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/server/audio/AudioService$DeviceListSpec;

    const-string v3, ""

    invoke-direct {v2, p0, v4, v3, p1}, Lcom/android/server/audio/AudioService$DeviceListSpec;-><init>(Lcom/android/server/audio/AudioService;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5049
    return-void
.end method

.method private makeA2dpSrcUnavailable(Ljava/lang/String;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/high16 v2, -0x7ffe0000

    .line 5053
    const/4 v0, 0x0

    const-string v1, ""

    invoke-static {v2, v0, p1, v1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 5055
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-direct {p0, v2, p1}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5057
    return-void
.end method

.method public static makeAlsaAddressString(II)Ljava/lang/String;
    .locals 2
    .param p0, "card"    # I
    .param p1, "device"    # I

    .prologue
    .line 602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "card="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "device"    # I
    .param p2, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private muteRingerModeStreams()V
    .locals 17

    .prologue
    .line 2169
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v10

    .line 2170
    .local v10, "numStreamTypes":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    if-nez v1, :cond_1

    :cond_0
    const/4 v11, 0x1

    .line 2172
    .local v11, "ringerModeMute":Z
    :goto_0
    add-int/lit8 v13, v10, -0x1

    .local v13, "streamType":I
    :goto_1
    if-ltz v13, :cond_8

    .line 2173
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/audio/AudioService;->isStreamMutedByRingerMode(I)Z

    move-result v9

    .line 2174
    .local v9, "isMuted":Z
    if-eqz v11, :cond_2

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/audio/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v12, 0x1

    .line 2175
    .local v12, "shouldMute":Z
    :goto_2
    if-ne v9, v12, :cond_3

    .line 2172
    :goto_3
    add-int/lit8 v13, v13, -0x1

    goto :goto_1

    .line 2170
    .end local v9    # "isMuted":Z
    .end local v11    # "ringerModeMute":Z
    .end local v12    # "shouldMute":Z
    .end local v13    # "streamType":I
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 2174
    .restart local v9    # "isMuted":Z
    .restart local v11    # "ringerModeMute":Z
    .restart local v13    # "streamType":I
    :cond_2
    const/4 v12, 0x0

    goto :goto_2

    .line 2176
    .restart local v12    # "shouldMute":Z
    :cond_3
    if-nez v12, :cond_7

    .line 2179
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v1, v1, v13

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 2180
    const-class v16, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v16

    .line 2181
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v15, v1, v13

    .line 2182
    .local v15, "vss":Lcom/android/server/audio/AudioService$VolumeStreamState;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_4
    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;
    invoke-static {v15}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1500(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v8, v1, :cond_5

    .line 2183
    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;
    invoke-static {v15}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1500(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    .line 2184
    .local v4, "device":I
    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;
    invoke-static {v15}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1500(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v14

    .line 2185
    .local v14, "value":I
    if-nez v14, :cond_4

    .line 2186
    const/16 v1, 0xa

    const-string v2, "AudioService"

    invoke-virtual {v15, v1, v4, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    .line 2182
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 2190
    .end local v4    # "device":I
    .end local v14    # "value":I
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v4

    .line 2191
    .restart local v4    # "device":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v6, v6, v13

    const/16 v7, 0x1f4

    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2198
    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2200
    .end local v4    # "device":I
    .end local v8    # "i":I
    .end local v15    # "vss":Lcom/android/server/audio/AudioService$VolumeStreamState;
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, v13

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    .line 2201
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/audio/AudioService;->mRingerModeMutedStreams:I

    const/4 v2, 0x1

    shl-int/2addr v2, v13

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/audio/AudioService;->mRingerModeMutedStreams:I

    goto :goto_3

    .line 2198
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 2204
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, v13

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    .line 2205
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/audio/AudioService;->mRingerModeMutedStreams:I

    const/4 v2, 0x1

    shl-int/2addr v2, v13

    or-int/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/audio/AudioService;->mRingerModeMutedStreams:I

    goto/16 :goto_3

    .line 2208
    .end local v9    # "isMuted":Z
    .end local v12    # "shouldMute":Z
    :cond_8
    return-void
.end method

.method private observeDevicesForStreams(I)V
    .locals 4
    .param p1, "skipStream"    # I

    .prologue
    .line 3806
    const-class v2, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v2

    .line 3807
    const/4 v0, 0x0

    .local v0, "stream":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 3808
    if-eq v0, p1, :cond_0

    .line 3809
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->observeDevicesForStream_syncVSS(Z)I

    .line 3807
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3812
    :cond_1
    monitor-exit v2

    .line 3813
    return-void

    .line 3812
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onBroadcastScoConnectionState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 3108
    iget v1, p0, Lcom/android/server/audio/AudioService;->mScoConnectionState:I

    if-eq p1, v1, :cond_0

    .line 3109
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3110
    .local v0, "newIntent":Landroid/content/Intent;
    const-string v1, "android.media.extra.SCO_AUDIO_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3111
    const-string v1, "android.media.extra.SCO_AUDIO_PREVIOUS_STATE"

    iget v2, p0, Lcom/android/server/audio/AudioService;->mScoConnectionState:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3113
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 3114
    iput p1, p0, Lcom/android/server/audio/AudioService;->mScoConnectionState:I

    .line 3116
    .end local v0    # "newIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private onCheckMusicActive(Ljava/lang/String;)V
    .locals 11
    .param p1, "caller"    # Ljava/lang/String;

    .prologue
    const v10, 0xea60

    .line 3326
    iget-object v9, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v9

    .line 3327
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 3328
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v7

    .line 3330
    .local v7, "device":I
    iget v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeDevices:I

    and-int/2addr v0, v7

    if-eqz v0, :cond_1

    .line 3331
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0xe

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v6, 0xea60

    move-object v5, p1

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3338
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0, v7}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v8

    .line 3339
    .local v8, "index":I
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    if-le v8, v0, :cond_1

    .line 3342
    iget v0, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    add-int/2addr v0, v10

    iput v0, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    .line 3343
    iget v0, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    const v1, 0x44aa200

    if-le v0, v1, :cond_0

    .line 3344
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/server/audio/AudioService;->setSafeMediaVolumeEnabled(ZLjava/lang/String;)V

    .line 3345
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    .line 3347
    :cond_0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->saveMusicActiveMs()V

    .line 3351
    .end local v7    # "device":I
    .end local v8    # "index":I
    :cond_1
    monitor-exit v9

    .line 3352
    return-void

    .line 3351
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onConfigureSafeVolume(ZLjava/lang/String;)V
    .locals 11
    .param p1, "force"    # Z
    .param p2, "caller"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v5, 0x2

    const/4 v9, 0x0

    .line 3359
    iget-object v10, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v10

    .line 3360
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v7, v1, Landroid/content/res/Configuration;->mcc:I

    .line 3364
    .local v7, "mcc":I
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onConfigureSafeVolume mMcc="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/server/audio/AudioService;->mMcc:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", mcc="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", force="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", mEnableListenNotify="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Lcom/android/server/audio/AudioService;->mEnableListenNotify:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", mListenNotifyThreshold="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/server/audio/AudioService;->mListenNotifyThreshold:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", caller="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3368
    iget v1, p0, Lcom/android/server/audio/AudioService;->mMcc:I

    if-ne v1, v7, :cond_1

    iget v1, p0, Lcom/android/server/audio/AudioService;->mMcc:I

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mEnableListenNotify:Z

    if-eqz v1, :cond_6

    :cond_0
    if-eqz p1, :cond_6

    .line 3370
    :cond_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0086

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0xa

    iput v1, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    .line 3372
    const-string v1, "audio.safemedia.force"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->isStockUI:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1120072

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    move v9, v0

    .line 3377
    .local v9, "safeMediaVolumeEnabled":Z
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mEnableListenNotify:Z

    if-eqz v0, :cond_4

    .line 3378
    iget-boolean v9, p0, Lcom/android/server/audio/AudioService;->mEnableListenNotify:Z

    .line 3379
    iget v0, p0, Lcom/android/server/audio/AudioService;->mListenNotifyThreshold:I

    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    .line 3383
    :cond_4
    const-string v0, "audio.safemedia.bypass"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 3389
    .local v8, "safeMediaVolumeBypass":Z
    if-eqz v9, :cond_8

    if-nez v8, :cond_8

    .line 3390
    const/4 v3, 0x3

    .line 3394
    .local v3, "persistedState":I
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v5, :cond_5

    .line 3395
    iget v0, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    if-nez v0, :cond_7

    .line 3396
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    .line 3397
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->enforceSafeMediaVolume(Ljava/lang/String;)V

    .line 3407
    :cond_5
    :goto_0
    iput v7, p0, Lcom/android/server/audio/AudioService;->mMcc:I

    .line 3408
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x12

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3416
    .end local v3    # "persistedState":I
    .end local v8    # "safeMediaVolumeBypass":Z
    .end local v9    # "safeMediaVolumeEnabled":Z
    :cond_6
    monitor-exit v10

    .line 3417
    return-void

    .line 3400
    .restart local v3    # "persistedState":I
    .restart local v8    # "safeMediaVolumeBypass":Z
    .restart local v9    # "safeMediaVolumeEnabled":Z
    :cond_7
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    goto :goto_0

    .line 3416
    .end local v3    # "persistedState":I
    .end local v7    # "mcc":I
    .end local v8    # "safeMediaVolumeBypass":Z
    .end local v9    # "safeMediaVolumeEnabled":Z
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3404
    .restart local v7    # "mcc":I
    .restart local v8    # "safeMediaVolumeBypass":Z
    .restart local v9    # "safeMediaVolumeEnabled":Z
    :cond_8
    const/4 v3, 0x1

    .line 3405
    .restart local v3    # "persistedState":I
    const/4 v0, 0x1

    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private onDeviceConnected(I)V
    .locals 9
    .param p1, "device"    # I

    .prologue
    const/4 v8, 0x1

    .line 6869
    const-string v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onDeviceConnected, device = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6870
    const/4 v1, 0x0

    .line 6871
    .local v1, "isChanged":Z
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 6872
    .local v3, "res":Landroid/content/res/Resources;
    const/4 v4, 0x0

    .line 6874
    .local v4, "strText":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 6929
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 6878
    :sswitch_1
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkBeatsHeadset()I

    move-result v2

    .line 6880
    .local v2, "mBeatsHeadset":I
    iput v8, p0, Lcom/android/server/audio/AudioService;->mHeadsetState:I

    goto :goto_0

    .line 6900
    .end local v2    # "mBeatsHeadset":I
    :sswitch_2
    iput-boolean v8, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetConnected:Z

    .line 6902
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mBtName:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 6903
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "global_a2dp_name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mBtName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6904
    .local v0, "a2dp_name":Ljava/lang/String;
    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 6905
    const-string v5, "AudioService"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6874
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x8 -> :sswitch_1
        0x80 -> :sswitch_2
        0x100 -> :sswitch_2
        0x200 -> :sswitch_2
        0x400 -> :sswitch_0
        0x800 -> :sswitch_0
        0x1000 -> :sswitch_0
    .end sparse-switch
.end method

.method private onDeviceDisconnected(I)V
    .locals 5
    .param p1, "device"    # I

    .prologue
    const/4 v4, 0x0

    .line 6932
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDeviceDisconnected, device = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6933
    const/4 v0, 0x0

    .line 6934
    .local v0, "isChanged":Z
    sparse-switch p1, :sswitch_data_0

    .line 6966
    :goto_0
    :sswitch_0
    return-void

    .line 6938
    :sswitch_1
    iput v4, p0, Lcom/android/server/audio/AudioService;->mHeadsetState:I

    goto :goto_0

    .line 6945
    :sswitch_2
    iput-boolean v4, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetConnected:Z

    .line 6947
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDeviceDisconnected, mBtIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/audio/AudioService;->mBtIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6948
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mBtName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6949
    const-string v1, "global_a2dp_name=none"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 6950
    const-string v1, "AudioService"

    const-string v2, "global_a2dp_name=none"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6951
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/audio/AudioService;->mBtName:Ljava/lang/String;

    .line 6953
    :cond_0
    const/16 v1, -0x3e9

    iput v1, p0, Lcom/android/server/audio/AudioService;->mBtIndex:I

    goto :goto_0

    .line 6934
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x8 -> :sswitch_1
        0x80 -> :sswitch_2
        0x100 -> :sswitch_2
        0x200 -> :sswitch_2
        0x400 -> :sswitch_0
        0x800 -> :sswitch_0
        0x1000 -> :sswitch_0
    .end sparse-switch
.end method

.method private onDynPolicyMixStateUpdate(Ljava/lang/String;I)V
    .locals 9
    .param p1, "regId"    # Ljava/lang/String;
    .param p2, "state"    # I

    .prologue
    .line 6706
    const-string v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onDynamicPolicyMixStateUpdate("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6707
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v6

    .line 6708
    :try_start_0
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    .line 6709
    .local v4, "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    invoke-virtual {v4}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->getMixes()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/audiopolicy/AudioMix;

    .line 6710
    .local v3, "mix":Landroid/media/audiopolicy/AudioMix;
    invoke-virtual {v3}, Landroid/media/audiopolicy/AudioMix;->getRegistration()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    .line 6712
    :try_start_1
    iget-object v5, v4, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mPolicyCallback:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-interface {v5, p1, p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyMixStateUpdate(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6717
    :goto_0
    :try_start_2
    monitor-exit v6

    .line 6723
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "mix":Landroid/media/audiopolicy/AudioMix;
    .end local v4    # "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    :goto_1
    return-void

    .line 6713
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "mix":Landroid/media/audiopolicy/AudioMix;
    .restart local v4    # "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    :catch_0
    move-exception v0

    .line 6714
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "AudioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t call notifyMixStateUpdate() on IAudioPolicyCallback "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mPolicyCallback:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-interface {v8}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 6721
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "mix":Landroid/media/audiopolicy/AudioMix;
    .end local v4    # "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    :cond_2
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private onSendBecomingNoisyIntent()V
    .locals 2

    .prologue
    .line 4993
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 4994
    return-void
.end method

.method private onSetA2dpSinkConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 17
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I

    .prologue
    .line 5072
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSetA2dpSinkConnectionState btDevice="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5074
    if-nez p1, :cond_0

    .line 5164
    :goto_0
    return-void

    .line 5077
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    .line 5078
    .local v8, "address":Ljava/lang/String;
    invoke-static {v8}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5079
    const-string v8, ""

    .line 5083
    :cond_1
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSetA2dpConnectionState, before identifyDevice, mBtIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/audio/AudioService;->mBtIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5084
    invoke-direct/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->identifyDevice(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/audio/AudioService;->mBtIndex:I

    .line 5085
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSetA2dpConnectionState, mBtIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/audio/AudioService;->mBtIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5088
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v15

    .line 5089
    const/16 v1, 0x80

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 5091
    .local v13, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v1, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/audio/AudioService$DeviceListSpec;

    .line 5092
    .local v10, "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    if-eqz v10, :cond_5

    const/4 v12, 0x1

    .line 5094
    .local v12, "isConnected":Z
    :goto_1
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSetA2dpConnectionState, isConnected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", new state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5096
    if-eqz v12, :cond_7

    const/4 v1, 0x2

    move/from16 v0, p2

    if-eq v0, v1, :cond_7

    .line 5097
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 5098
    if-nez p2, :cond_2

    .line 5102
    const/16 v1, 0x1f40

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v1}, Lcom/android/server/audio/AudioService;->makeA2dpDeviceUnavailableLater(Ljava/lang/String;I)V

    .line 5108
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    move-object/from16 v16, v0

    monitor-enter v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5109
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v1, v1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    .line 5110
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    .line 5111
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v2, 0xc

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5114
    :cond_3
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5163
    :cond_4
    :goto_3
    :try_start_2
    monitor-exit v15

    goto/16 :goto_0

    .end local v10    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    .end local v12    # "isConnected":Z
    .end local v13    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 5092
    .restart local v10    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    .restart local v13    # "key":Ljava/lang/String;
    :cond_5
    const/4 v12, 0x0

    goto :goto_1

    .line 5106
    .restart local v12    # "isConnected":Z
    :cond_6
    :try_start_3
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/audio/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 5114
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v1

    .line 5115
    :cond_7
    if-nez v12, :cond_4

    const/4 v1, 0x2

    move/from16 v0, p2

    if-ne v0, v1, :cond_4

    .line 5116
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 5118
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->cancelA2dpDeviceTimeout()V

    .line 5119
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/server/audio/AudioService;->mDockAddress:Ljava/lang/String;

    .line 5128
    :cond_8
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v1}, Lcom/android/server/audio/AudioService;->makeA2dpDeviceAvailable(Ljava/lang/String;Ljava/lang/String;)V

    .line 5129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    move-object/from16 v16, v0

    monitor-enter v16
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 5130
    :try_start_6
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v14

    .line 5133
    .local v14, "name":Ljava/lang/String;
    const-string v11, "false"

    .line 5135
    .local v11, "isCarkit":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v9

    .line 5136
    .local v9, "btClass":Landroid/bluetooth/BluetoothClass;
    if-eqz v9, :cond_9

    const/16 v1, 0xb

    invoke-virtual {v9, v1}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 5138
    const-string v11, "true"

    .line 5140
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "a2dp_name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v14, :cond_c

    const-string v1, "<unknown>"

    :goto_5
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";a2dp_carkit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 5144
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v1, v1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    invoke-static {v1, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 5145
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iput-object v14, v1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    .line 5146
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v2, 0xc

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5149
    :cond_a
    monitor-exit v16
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 5152
    :try_start_7
    sget-boolean v1, Lcom/android/server/audio/AudioService;->SUPPORT_A2DP_SAFEVOLUME:Z

    if-eqz v1, :cond_4

    .line 5153
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v2, 0xe

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0xea60

    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto/16 :goto_3

    .line 5123
    .end local v9    # "btClass":Landroid/bluetooth/BluetoothClass;
    .end local v11    # "isCarkit":Ljava/lang/String;
    .end local v14    # "name":Ljava/lang/String;
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->hasScheduledA2dpDockTimeout()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 5124
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->cancelA2dpDeviceTimeout()V

    .line 5125
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mDockAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/audio/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_4

    .restart local v9    # "btClass":Landroid/bluetooth/BluetoothClass;
    .restart local v11    # "isCarkit":Ljava/lang/String;
    .restart local v14    # "name":Ljava/lang/String;
    :cond_c
    move-object v1, v14

    .line 5140
    goto :goto_5

    .line 5149
    .end local v9    # "btClass":Landroid/bluetooth/BluetoothClass;
    .end local v11    # "isCarkit":Ljava/lang/String;
    .end local v14    # "name":Ljava/lang/String;
    :catchall_2
    move-exception v1

    :try_start_8
    monitor-exit v16
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
.end method

.method private onSetA2dpSourceConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 8
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I

    .prologue
    const/4 v7, 0x2

    .line 5169
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSetA2dpSourceConnectionState btDevice="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5171
    if-nez p1, :cond_0

    .line 5190
    :goto_0
    return-void

    .line 5174
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 5175
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 5176
    const-string v0, ""

    .line 5179
    :cond_1
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v5

    .line 5180
    const/high16 v4, -0x7ffe0000

    :try_start_0
    invoke-direct {p0, v4, v0}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5181
    .local v3, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$DeviceListSpec;

    .line 5182
    .local v1, "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    if-eqz v1, :cond_3

    const/4 v2, 0x1

    .line 5184
    .local v2, "isConnected":Z
    :goto_1
    if-eqz v2, :cond_4

    if-eq p2, v7, :cond_4

    .line 5185
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->makeA2dpSrcUnavailable(Ljava/lang/String;)V

    .line 5189
    :cond_2
    :goto_2
    monitor-exit v5

    goto :goto_0

    .end local v1    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    .end local v2    # "isConnected":Z
    .end local v3    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 5182
    .restart local v1    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    .restart local v3    # "key":Ljava/lang/String;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 5186
    .restart local v2    # "isConnected":Z
    :cond_4
    if-nez v2, :cond_2

    if-ne p2, v7, :cond_2

    .line 5187
    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->makeA2dpSrcAvailable(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method private onSetStreamVolume(IIIILjava/lang/String;)V
    .locals 8
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I
    .param p4, "device"    # I
    .param p5, "caller"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 1552
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v1, v0, p1

    .local v1, "stream":I
    move-object v0, p0

    move v2, p2

    move v3, p4

    move-object v5, p5

    .line 1553
    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioService;->setStreamVolumeInt(IIIZLjava/lang/String;)V

    .line 1555
    and-int/lit8 v0, p3, 0x2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getUiSoundsStreamType()I

    move-result v0

    if-ne v1, v0, :cond_1

    .line 1558
    :cond_0
    if-nez p2, :cond_4

    .line 1559
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-eqz v0, :cond_2

    move v6, v7

    .line 1565
    .local v6, "newRingerMode":I
    :goto_0
    const-string v0, "AudioService.onSetStreamVolume"

    invoke-direct {p0, v6, v0, v4}, Lcom/android/server/audio/AudioService;->setRingerMode(ILjava/lang/String;Z)V

    .line 1568
    .end local v6    # "newRingerMode":I
    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v1

    if-nez p2, :cond_5

    :goto_1
    invoke-virtual {v0, v7}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    .line 1569
    return-void

    .line 1559
    :cond_2
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget-boolean v0, v0, Landroid/media/VolumePolicy;->volumeDownToEnterSilent:Z

    if-eqz v0, :cond_3

    move v6, v4

    goto :goto_0

    :cond_3
    const/4 v6, 0x2

    goto :goto_0

    .line 1563
    :cond_4
    const/4 v6, 0x2

    .restart local v6    # "newRingerMode":I
    goto :goto_0

    .end local v6    # "newRingerMode":I
    :cond_5
    move v7, v4

    .line 1568
    goto :goto_1
.end method

.method private onSetWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "device"    # I
    .param p2, "state"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "deviceName"    # Ljava/lang/String;
    .param p5, "caller"    # Ljava/lang/String;

    .prologue
    const/high16 v9, 0x20000

    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5391
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSetWiredDeviceConnectionState(dev:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " address:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " deviceName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " caller: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ");"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5398
    iget-object v8, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v8

    .line 5399
    if-nez p2, :cond_1

    if-eq p1, v5, :cond_0

    if-eq p1, v6, :cond_0

    if-ne p1, v9, :cond_1

    .line 5402
    :cond_0
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioService;->setBluetoothA2dpOnInt(Z)V

    .line 5404
    :cond_1
    and-int/lit16 v2, p1, -0x6001

    if-eqz v2, :cond_2

    const/high16 v2, -0x80000000

    and-int/2addr v2, p1

    if-eqz v2, :cond_3

    const v2, 0x7fffe7ff

    and-int/2addr v2, p1

    if-nez v2, :cond_3

    :cond_2
    move v7, v0

    .line 5407
    .local v7, "isUsb":Z
    :goto_0
    if-ne p2, v0, :cond_4

    :goto_1
    invoke-direct {p0, v0, p1, p3, p4}, Lcom/android/server/audio/AudioService;->handleDeviceConnection(ZILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 5409
    monitor-exit v8

    .line 5452
    :goto_2
    return-void

    .end local v7    # "isUsb":Z
    :cond_3
    move v7, v1

    .line 5404
    goto :goto_0

    .restart local v7    # "isUsb":Z
    :cond_4
    move v0, v1

    .line 5407
    goto :goto_1

    .line 5411
    :cond_5
    if-eqz p2, :cond_c

    .line 5412
    if-eq p1, v5, :cond_6

    if-eq p1, v6, :cond_6

    if-ne p1, v9, :cond_7

    .line 5415
    :cond_6
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->setBluetoothA2dpOnInt(Z)V

    .line 5417
    :cond_7
    iget v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeDevices:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_8

    .line 5418
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0xe

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v6, 0xea60

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5427
    :cond_8
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isPlatformTelevision()Z

    move-result v0

    if-eqz v0, :cond_a

    and-int/lit16 v0, p1, 0x400

    if-eqz v0, :cond_a

    .line 5428
    iget v0, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    .line 5429
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkAllFixedVolumeDevices()V

    .line 5430
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v0, :cond_a

    .line 5431
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5432
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    if-eqz v0, :cond_9

    .line 5433
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z

    .line 5434
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiDisplayStatusCallback:Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;

    invoke-virtual {v0, v2}, Landroid/hardware/hdmi/HdmiPlaybackClient;->queryDisplayStatus(Landroid/hardware/hdmi/HdmiPlaybackClient$DisplayStatusCallback;)V

    .line 5436
    :cond_9
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5448
    :cond_a
    :goto_3
    if-nez v7, :cond_b

    const v0, -0x7ffffff0

    if-eq p1, v0, :cond_b

    .line 5449
    :try_start_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/audio/AudioService;->sendDeviceConnectionIntent(IILjava/lang/String;Ljava/lang/String;)V

    .line 5451
    :cond_b
    monitor-exit v8

    goto :goto_2

    .end local v7    # "isUsb":Z
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 5436
    .restart local v7    # "isUsb":Z
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    .line 5440
    :cond_c
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isPlatformTelevision()Z

    move-result v0

    if-eqz v0, :cond_a

    and-int/lit16 v0, p1, 0x400

    if-eqz v0, :cond_a

    .line 5441
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v0, :cond_a

    .line 5442
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 5443
    const/4 v0, 0x0

    :try_start_5
    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z

    .line 5444
    monitor-exit v1

    goto :goto_3

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method private onUnmuteStream(II)V
    .locals 4
    .param p1, "stream"    # I
    .param p2, "flags"    # I

    .prologue
    .line 1498
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v3, p1

    .line 1499
    .local v2, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    .line 1501
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v0

    .line 1502
    .local v0, "device":I
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v3, v3, p1

    invoke-virtual {v3, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    .line 1503
    .local v1, "index":I
    invoke-direct {p0, p1, v1, v1, p2}, Lcom/android/server/audio/AudioService;->sendVolumeUpdate(IIII)V

    .line 1504
    return-void
.end method

.method private queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V
    .locals 10
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "msg"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj"    # Ljava/lang/Object;
    .param p6, "delay"    # I

    .prologue
    .line 3718
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 3721
    .local v8, "ident":J
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3722
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3723
    const/4 v2, 0x2

    move-object v0, p1

    move v1, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3724
    return-void
.end method

.method private static readAndSetLowRamDevice()V
    .locals 4

    .prologue
    .line 6344
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v1

    invoke-static {v1}, Landroid/media/AudioSystem;->setLowRamDevice(Z)I

    move-result v0

    .line 6345
    .local v0, "status":I
    if-eqz v0, :cond_0

    .line 6346
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioFlinger informed of device\'s low RAM attribute; status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6348
    :cond_0
    return-void
.end method

.method private readAudioSettings(Z)V
    .locals 9
    .param p1, "userSwitch"    # Z

    .prologue
    const/4 v8, 0x3

    const/4 v5, 0x0

    .line 2661
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->readPersistedSettings()V

    .line 2664
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 2665
    .local v0, "numStreamTypes":I
    const/4 v2, 0x0

    .local v2, "streamType":I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 2666
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v3, v2

    .line 2668
    .local v1, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v3, v3, v2

    if-ne v3, v8, :cond_0

    .line 2665
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2672
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->readSettings()V

    .line 2673
    const-class v4, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v4

    .line 2675
    :try_start_0
    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z
    invoke-static {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$500(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioService;->isStreamAffectedByMute(I)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0, v2}, Lcom/android/server/audio/AudioService;->isStreamMutedByRingerMode(I)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    iget-boolean v3, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-eqz v3, :cond_3

    .line 2677
    :cond_2
    const/4 v3, 0x0

    # setter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z
    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$502(Lcom/android/server/audio/AudioService$VolumeStreamState;Z)Z

    .line 2679
    :cond_3
    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2684
    .end local v1    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v3

    invoke-direct {p0, v3, v5}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    .line 2686
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkAllFixedVolumeDevices()V

    .line 2687
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkAllAliasStreamVolumes()V

    .line 2688
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkMuteAffectedStreams()V

    .line 2690
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v4

    .line 2691
    :try_start_1
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "unsafe_volume_music_active_ms"

    const/4 v6, 0x0

    const/4 v7, -0x2

    invoke-static {v3, v5, v6, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    const/4 v5, 0x0

    const v6, 0x44aa200

    invoke-static {v3, v5, v6}, Landroid/util/MathUtils;->constrain(III)I

    move-result v3

    iput v3, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    .line 2694
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v8, :cond_5

    .line 2695
    const-string v3, "AudioService"

    invoke-direct {p0, v3}, Lcom/android/server/audio/AudioService;->enforceSafeMediaVolume(Ljava/lang/String;)V

    .line 2697
    :cond_5
    monitor-exit v4

    .line 2698
    return-void

    .line 2697
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v3
.end method

.method private readCameraSoundForced()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 5792
    const-string v1, "audio.camerasound.force"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1120074

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private readCustomizedSetting()V
    .locals 8

    .prologue
    .line 7570
    const/4 v1, 0x0

    .line 7572
    .local v1, "in":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getCustomizedFile()Ljava/io/File;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7573
    .end local v1    # "in":Ljava/io/FileInputStream;
    .local v2, "in":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v3, Lcom/android/server/audio/CustomizationParser;

    invoke-direct {v3, v2}, Lcom/android/server/audio/CustomizationParser;-><init>(Ljava/io/InputStream;)V

    .line 7574
    .local v3, "parser":Lcom/android/server/audio/CustomizationParser;
    const-string v5, "category"

    const-string v6, "AudioService"

    invoke-virtual {v3, v5, v6}, Lcom/android/server/audio/CustomizationParser;->addKeyPairs(Ljava/lang/String;Ljava/lang/String;)V

    .line 7575
    const-string v5, "module"

    const-string v6, "res"

    invoke-virtual {v3, v5, v6}, Lcom/android/server/audio/CustomizationParser;->addKeyPairs(Ljava/lang/String;Ljava/lang/String;)V

    .line 7576
    const-string v5, "function"

    const-string v6, "values"

    invoke-virtual {v3, v5, v6}, Lcom/android/server/audio/CustomizationParser;->addKeyPairs(Ljava/lang/String;Ljava/lang/String;)V

    .line 7577
    const-string v5, "set"

    const-string v6, "single"

    invoke-virtual {v3, v5, v6}, Lcom/android/server/audio/CustomizationParser;->addKeyPairs(Ljava/lang/String;Ljava/lang/String;)V

    .line 7578
    invoke-virtual {v3}, Lcom/android/server/audio/CustomizationParser;->parseResult()V

    .line 7580
    const-string v5, "enable_listen_notify"

    invoke-virtual {v3, v5}, Lcom/android/server/audio/CustomizationParser;->queryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 7581
    .local v4, "result":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 7582
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/audio/AudioService;->mEnableListenNotify:Z

    .line 7584
    :cond_0
    const-string v5, "listen_notify_duration"

    invoke-virtual {v3, v5}, Lcom/android/server/audio/CustomizationParser;->queryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 7585
    if-eqz v4, :cond_1

    .line 7586
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/audio/AudioService;->mListenNotifyDuration:J

    .line 7588
    :cond_1
    const-string v5, "listen_notify_threshold"

    invoke-virtual {v3, v5}, Lcom/android/server/audio/CustomizationParser;->queryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 7589
    if-eqz v4, :cond_2

    .line 7590
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/server/audio/AudioService;->mListenNotifyThreshold:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7596
    :cond_2
    if-eqz v2, :cond_3

    .line 7597
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    move-object v1, v2

    .line 7602
    .end local v2    # "in":Ljava/io/FileInputStream;
    .end local v3    # "parser":Lcom/android/server/audio/CustomizationParser;
    .end local v4    # "result":Ljava/lang/String;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    :cond_4
    :goto_0
    return-void

    .line 7598
    .end local v1    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "parser":Lcom/android/server/audio/CustomizationParser;
    .restart local v4    # "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 7599
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "AudioService"

    const-string v6, "can\'t close input stream"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 7601
    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    goto :goto_0

    .line 7591
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "parser":Lcom/android/server/audio/CustomizationParser;
    .end local v4    # "result":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 7592
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string v5, "AudioService"

    const-string v6, "read sound effect customization failure"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7593
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 7596
    if-eqz v1, :cond_4

    .line 7597
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 7598
    :catch_2
    move-exception v0

    .line 7599
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "AudioService"

    const-string v6, "can\'t close input stream"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7595
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 7596
    :goto_2
    if-eqz v1, :cond_5

    .line 7597
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 7600
    :cond_5
    :goto_3
    throw v5

    .line 7598
    :catch_3
    move-exception v0

    .line 7599
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "AudioService"

    const-string v7, "can\'t close input stream"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 7595
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    goto :goto_2

    .line 7591
    .end local v1    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private readDockAudioSettings(Landroid/content/ContentResolver;)V
    .locals 7
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    const/16 v1, 0x8

    const/4 v0, 0x1

    const/4 v6, 0x0

    .line 1126
    const-string v2, "dock_audio_media_enabled"

    invoke-static {p1, v2, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mDockAudioMediaEnabled:Z

    .line 1129
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v2, 0x2

    const/4 v3, 0x3

    iget-boolean v4, p0, Lcom/android/server/audio/AudioService;->mDockAudioMediaEnabled:Z

    if-eqz v4, :cond_1

    move v4, v1

    :goto_1
    const/4 v5, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1137
    return-void

    :cond_0
    move v0, v6

    .line 1126
    goto :goto_0

    :cond_1
    move v4, v6

    .line 1129
    goto :goto_1
.end method

.method private readPersistedSettings()V
    .locals 13

    .prologue
    const/4 v7, 0x2

    const/4 v12, -0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1140
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 1142
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v8, "mode_ringer"

    invoke-static {v0, v8, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 1145
    .local v4, "ringerModeFromSettings":I
    move v3, v4

    .line 1148
    .local v3, "ringerMode":I
    invoke-virtual {p0, v3}, Lcom/android/server/audio/AudioService;->isValidRingerMode(I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1149
    const/4 v3, 0x2

    .line 1151
    :cond_0
    if-ne v3, v5, :cond_1

    iget-boolean v8, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-nez v8, :cond_1

    .line 1152
    const/4 v3, 0x0

    .line 1154
    :cond_1
    if-eq v3, v4, :cond_2

    .line 1155
    const-string v8, "mode_ringer"

    invoke-static {v0, v8, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1157
    :cond_2
    iget-boolean v8, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-nez v8, :cond_3

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isPlatformTelevision()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1158
    :cond_3
    const/4 v3, 0x2

    .line 1160
    :cond_4
    iget-object v9, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1161
    :try_start_0
    iput v3, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    .line 1162
    iget v8, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    const/4 v10, -0x1

    if-ne v8, v10, :cond_5

    .line 1163
    iget v8, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    iput v8, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    .line 1169
    :cond_5
    const/4 v10, 0x0

    const/4 v11, 0x1

    iget-boolean v8, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-eqz v8, :cond_7

    move v8, v7

    :goto_0
    invoke-static {v10, v11, v8}, Landroid/media/AudioSystem;->getValueForVibrateSetting(III)I

    move-result v8

    iput v8, p0, Lcom/android/server/audio/AudioService;->mVibrateSetting:I

    .line 1173
    iget v8, p0, Lcom/android/server/audio/AudioService;->mVibrateSetting:I

    const/4 v10, 0x0

    iget-boolean v11, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-eqz v11, :cond_8

    :goto_1
    invoke-static {v8, v10, v7}, Landroid/media/AudioSystem;->getValueForVibrateSetting(III)I

    move-result v7

    iput v7, p0, Lcom/android/server/audio/AudioService;->mVibrateSetting:I

    .line 1178
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->updateRingerModeAffectedStreams()Z

    .line 1179
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->readDockAudioSettings(Landroid/content/ContentResolver;)V

    .line 1180
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1182
    const-string v7, "mute_streams_affected"

    const/16 v8, 0x2e

    invoke-static {v0, v7, v8, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    iput v7, p0, Lcom/android/server/audio/AudioService;->mMuteAffectedStreams:I

    .line 1186
    const-string v7, "volume_master_mute"

    invoke-static {v0, v7, v6, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-ne v7, v5, :cond_9

    move v1, v5

    .line 1188
    .local v1, "masterMute":Z
    :goto_2
    iget-boolean v7, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-eqz v7, :cond_6

    .line 1189
    const/4 v1, 0x0

    .line 1190
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v7}, Landroid/media/AudioSystem;->setMasterVolume(F)I

    .line 1192
    :cond_6
    invoke-static {v1}, Landroid/media/AudioSystem;->setMasterMute(Z)I

    .line 1193
    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->broadcastMasterMuteStatus(Z)V

    .line 1195
    const-string v7, "microphone_mute"

    invoke-static {v0, v7, v6, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-ne v7, v5, :cond_a

    move v2, v5

    .line 1197
    .local v2, "microphoneMute":Z
    :goto_3
    invoke-static {v2}, Landroid/media/AudioSystem;->muteMicrophone(Z)I

    .line 1202
    const-string v7, "android.media.RINGER_MODE_CHANGED"

    iget v8, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    invoke-direct {p0, v7, v8}, Lcom/android/server/audio/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V

    .line 1203
    const-string v7, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    iget v8, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    invoke-direct {p0, v7, v8}, Lcom/android/server/audio/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V

    .line 1206
    invoke-direct {p0, v6}, Lcom/android/server/audio/AudioService;->broadcastVibrateSetting(I)V

    .line 1207
    invoke-direct {p0, v5}, Lcom/android/server/audio/AudioService;->broadcastVibrateSetting(I)V

    .line 1210
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v5, v0}, Lcom/android/server/audio/AudioService$VolumeController;->loadSettings(Landroid/content/ContentResolver;)V

    .line 1211
    return-void

    .end local v1    # "masterMute":Z
    .end local v2    # "microphoneMute":Z
    :cond_7
    move v8, v6

    .line 1169
    goto :goto_0

    :cond_8
    move v7, v6

    .line 1173
    goto :goto_1

    .line 1180
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    :cond_9
    move v1, v6

    .line 1186
    goto :goto_2

    .restart local v1    # "masterMute":Z
    :cond_a
    move v2, v6

    .line 1195
    goto :goto_3
.end method

.method private rescaleIndex(III)I
    .locals 2
    .param p1, "index"    # I
    .param p2, "srcStream"    # I
    .param p3, "dstStream"    # I

    .prologue
    .line 1214
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p3

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v0

    mul-int/2addr v0, p1

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v1

    div-int/2addr v0, v1

    return v0
.end method

.method private resetBluetoothSco()V
    .locals 3

    .prologue
    .line 3095
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v1

    .line 3096
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v2}, Lcom/android/server/audio/AudioService;->clearAllScoClients(IZ)V

    .line 3097
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/audio/AudioService;->mScoAudioState:I

    .line 3098
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->broadcastScoConnectionState(I)V

    .line 3099
    monitor-exit v1

    .line 3100
    return-void

    .line 3099
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static safeMediaVolumeStateToString(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # Ljava/lang/Integer;

    .prologue
    .line 6332
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 6338
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 6333
    :pswitch_0
    const-string v0, "SAFE_MEDIA_VOLUME_NOT_CONFIGURED"

    goto :goto_0

    .line 6334
    :pswitch_1
    const-string v0, "SAFE_MEDIA_VOLUME_DISABLED"

    goto :goto_0

    .line 6335
    :pswitch_2
    const-string v0, "SAFE_MEDIA_VOLUME_INACTIVE"

    goto :goto_0

    .line 6336
    :pswitch_3
    const-string v0, "SAFE_MEDIA_VOLUME_ACTIVE"

    goto :goto_0

    .line 6332
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private saveMusicActiveMs()V
    .locals 4

    .prologue
    .line 3355
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x16

    iget v2, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/audio/AudioService$AudioHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3356
    return-void
.end method

.method private sendBroadcastToAll(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1721
    const/high16 v2, 0x4000000

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1722
    const/high16 v2, 0x10000000

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1723
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1725
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1727
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1729
    return-void

    .line 1727
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private sendDeviceConnectionIntent(IILjava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p1, "device"    # I
    .param p2, "state"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 5332
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendDeviceConnectionIntent(dev:0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " state:0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " address:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ");"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5336
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 5338
    .local v12, "intent":Landroid/content/Intent;
    const-string v2, "state"

    move/from16 v0, p2

    invoke-virtual {v12, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5339
    const-string v2, "address"

    move-object/from16 v0, p3

    invoke-virtual {v12, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5340
    const-string v2, "portName"

    move-object/from16 v0, p4

    invoke-virtual {v12, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5342
    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v12, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5344
    const/4 v9, 0x0

    .line 5346
    .local v9, "connType":I
    const/4 v2, 0x4

    move/from16 v0, p1

    if-ne v0, v2, :cond_2

    .line 5347
    const/4 v9, 0x1

    .line 5348
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v12, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5349
    const-string v2, "microphone"

    const/4 v3, 0x1

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5364
    :cond_0
    :goto_0
    iget-object v14, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v14

    .line 5365
    if-eqz v9, :cond_1

    .line 5366
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget v13, v2, Landroid/media/AudioRoutesInfo;->mainType:I

    .line 5367
    .local v13, "newConn":I
    if-eqz p2, :cond_7

    .line 5368
    or-int/2addr v13, v9

    .line 5372
    :goto_1
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget v2, v2, Landroid/media/AudioRoutesInfo;->mainType:I

    if-eq v13, v2, :cond_1

    .line 5373
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iput v13, v2, Landroid/media/AudioRoutesInfo;->mainType:I

    .line 5374
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v3, 0xc

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5378
    .end local v13    # "newConn":I
    :cond_1
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5380
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 5382
    .local v10, "ident":J
    const/4 v2, 0x0

    const/4 v3, -0x1

    :try_start_1
    invoke-static {v12, v2, v3}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5384
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5386
    return-void

    .line 5350
    .end local v10    # "ident":J
    :cond_2
    const/16 v2, 0x8

    move/from16 v0, p1

    if-eq v0, v2, :cond_3

    const/high16 v2, 0x20000

    move/from16 v0, p1

    if-ne v0, v2, :cond_4

    .line 5353
    :cond_3
    const/4 v9, 0x2

    .line 5354
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v12, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5355
    const-string v2, "microphone"

    const/4 v3, 0x0

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 5356
    :cond_4
    const/16 v2, 0x400

    move/from16 v0, p1

    if-eq v0, v2, :cond_5

    const/high16 v2, 0x40000

    move/from16 v0, p1

    if-ne v0, v2, :cond_6

    .line 5358
    :cond_5
    const/16 v9, 0x8

    .line 5359
    move/from16 v0, p2

    invoke-direct {p0, v12, v0}, Lcom/android/server/audio/AudioService;->configureHdmiPlugIntent(Landroid/content/Intent;I)V

    goto :goto_0

    .line 5360
    :cond_6
    const/16 v2, 0x4000

    move/from16 v0, p1

    if-ne v0, v2, :cond_0

    .line 5361
    const/16 v9, 0x10

    goto :goto_0

    .line 5370
    .restart local v13    # "newConn":I
    :cond_7
    xor-int/lit8 v2, v9, -0x1

    and-int/2addr v13, v2

    goto :goto_1

    .line 5378
    .end local v13    # "newConn":I
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 5384
    .restart local v10    # "ident":J
    :catchall_1
    move-exception v2

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private sendFMVolmeUpdate(I)V
    .locals 6
    .param p1, "volume"    # I

    .prologue
    .line 7351
    const-string v3, "AudioService"

    const-string v4, "broadcastFMVolume"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7352
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.fmservice"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7353
    .local v2, "intent":Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.htc.fmservice"

    const-string v5, "com.htc.fmservice.FMRadioService"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 7354
    const-string v3, "command"

    const/16 v4, 0xc

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7355
    const-string v3, "freq"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7356
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 7363
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7365
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7367
    return-void

    .line 7365
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private sendMasterMuteUpdate(ZI)V
    .locals 2
    .param p1, "muted"    # Z
    .param p2, "flags"    # I

    .prologue
    .line 1780
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->updateFlagsForSystemAudio(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$VolumeController;->postMasterMuteChanged(I)V

    .line 1781
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->broadcastMasterMuteStatus(Z)V

    .line 1782
    return-void
.end method

.method private static sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .locals 8
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj"    # Ljava/lang/Object;
    .param p6, "delay"    # I

    .prologue
    .line 3729
    if-nez p2, :cond_3

    .line 3730
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3734
    :cond_0
    sget-object v3, Lcom/android/server/audio/AudioService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    monitor-enter v3

    .line 3735
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    int-to-long v6, p6

    add-long v0, v4, v6

    .line 3736
    .local v0, "time":J
    invoke-virtual {p0, p1, p3, p4, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 3737
    const/16 v2, 0x64

    if-eq p1, v2, :cond_1

    const/16 v2, 0x65

    if-eq p1, v2, :cond_1

    const/16 v2, 0x66

    if-ne p1, v2, :cond_2

    .line 3740
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    sput-object v2, Lcom/android/server/audio/AudioService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    .line 3742
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3743
    .end local v0    # "time":J
    :goto_0
    return-void

    .line 3731
    :cond_3
    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 3742
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private sendStickyBroadcastToAll(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1732
    const/high16 v2, 0x10000000

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1733
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1735
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1737
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1739
    return-void

    .line 1737
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private sendVolumeUpdate(IIII)V
    .locals 1
    .param p1, "streamType"    # I
    .param p2, "oldIndex"    # I
    .param p3, "index"    # I
    .param p4, "flags"    # I

    .prologue
    .line 1756
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget p1, v0, p1

    .line 1758
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1759
    invoke-direct {p0, p4}, Lcom/android/server/audio/AudioService;->updateFlagsForSystemAudio(I)I

    move-result p4

    .line 1761
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0, p1, p4}, Lcom/android/server/audio/AudioService$VolumeController;->postVolumeChanged(II)V

    .line 1762
    return-void
.end method

.method private setForceUseInt_SyncDevices(II)V
    .locals 1
    .param p1, "usage"    # I
    .param p2, "config"    # I

    .prologue
    .line 5953
    packed-switch p1, :pswitch_data_0

    .line 5971
    :goto_0
    :pswitch_0
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 5972
    return-void

    .line 5955
    :pswitch_1
    const/16 v0, 0xa

    if-ne p2, v0, :cond_0

    .line 5956
    iget v0, p0, Lcom/android/server/audio/AudioService;->mBecomingNoisyIntentDevices:I

    and-int/lit16 v0, v0, -0x381

    iput v0, p0, Lcom/android/server/audio/AudioService;->mBecomingNoisyIntentDevices:I

    goto :goto_0

    .line 5958
    :cond_0
    iget v0, p0, Lcom/android/server/audio/AudioService;->mBecomingNoisyIntentDevices:I

    or-int/lit16 v0, v0, 0x380

    iput v0, p0, Lcom/android/server/audio/AudioService;->mBecomingNoisyIntentDevices:I

    goto :goto_0

    .line 5962
    :pswitch_2
    const/16 v0, 0x8

    if-ne p2, v0, :cond_1

    .line 5963
    iget v0, p0, Lcom/android/server/audio/AudioService;->mBecomingNoisyIntentDevices:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/android/server/audio/AudioService;->mBecomingNoisyIntentDevices:I

    goto :goto_0

    .line 5965
    :cond_1
    iget v0, p0, Lcom/android/server/audio/AudioService;->mBecomingNoisyIntentDevices:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/android/server/audio/AudioService;->mBecomingNoisyIntentDevices:I

    goto :goto_0

    .line 5953
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private setMasterMuteInternal(ZILjava/lang/String;II)V
    .locals 8
    .param p1, "mute"    # Z
    .param p2, "flags"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "userId"    # I

    .prologue
    const/4 v5, 0x0

    const/16 v6, 0x1f4

    const/16 v1, 0xb

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1951
    const/16 v0, 0x3e8

    if-ne p4, v0, :cond_0

    .line 1952
    invoke-static {p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-static {p5, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result p4

    .line 1954
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v4, 0x21

    invoke-virtual {v0, v4, p4, p3}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 1983
    :cond_1
    :goto_0
    return-void

    .line 1958
    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p5, v0, :cond_3

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1964
    :cond_3
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getCurrentUserId()I

    move-result v0

    if-ne v0, p5, :cond_5

    .line 1965
    invoke-static {}, Landroid/media/AudioSystem;->getMasterMute()Z

    move-result v0

    if-eq p1, v0, :cond_1

    .line 1966
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->setSystemAudioMute(Z)V

    .line 1967
    invoke-static {p1}, Landroid/media/AudioSystem;->setMasterMute(Z)I

    .line 1969
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    if-eqz p1, :cond_4

    :goto_1
    move v4, p5

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1971
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->sendMasterMuteUpdate(ZI)V

    .line 1973
    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.media.MASTER_MUTE_CHANGED_ACTION"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1974
    .local v7, "intent":Landroid/content/Intent;
    const-string v0, "android.media.EXTRA_MASTER_VOLUME_MUTED"

    invoke-virtual {v7, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1975
    invoke-direct {p0, v7}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    goto :goto_0

    .end local v7    # "intent":Landroid/content/Intent;
    :cond_4
    move v3, v2

    .line 1969
    goto :goto_1

    .line 1980
    :cond_5
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    if-eqz p1, :cond_6

    :goto_2
    move v4, p5

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_0

    :cond_6
    move v3, v2

    goto :goto_2
.end method

.method private setModeInt(ILandroid/os/IBinder;ILjava/lang/String;)I
    .locals 17
    .param p1, "mode"    # I
    .param p2, "cb"    # Landroid/os/IBinder;
    .param p3, "pid"    # I
    .param p4, "caller"    # Ljava/lang/String;

    .prologue
    .line 2356
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setModeInt(mode="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", pid="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", caller="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ")"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2358
    const/4 v13, 0x0

    .line 2359
    .local v13, "newModeOwnerPid":I
    if-nez p2, :cond_0

    .line 2360
    const-string v3, "AudioService"

    const-string v4, "setModeInt() called with null binder"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v14, v13

    .line 2441
    .end local v13    # "newModeOwnerPid":I
    .local v14, "newModeOwnerPid":I
    :goto_0
    return v14

    .line 2364
    .end local v14    # "newModeOwnerPid":I
    .restart local v13    # "newModeOwnerPid":I
    :cond_0
    const/4 v11, 0x0

    .line 2365
    .local v11, "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 2366
    .local v12, "iter":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2367
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    .line 2368
    .local v10, "h":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    invoke-virtual {v10}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getPid()I

    move-result v3

    move/from16 v0, p3

    if-ne v3, v0, :cond_1

    .line 2369
    move-object v11, v10

    .line 2371
    invoke-interface {v12}, Ljava/util/Iterator;->remove()V

    .line 2372
    invoke-virtual {v11}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v11, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 2376
    .end local v10    # "h":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    :cond_2
    const/4 v15, 0x0

    .line 2378
    .local v15, "status":I
    :cond_3
    if-nez p1, :cond_8

    .line 2380
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 2381
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    check-cast v11, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    .line 2382
    .restart local v11    # "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    invoke-virtual {v11}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getBinder()Landroid/os/IBinder;

    move-result-object p2

    .line 2383
    invoke-virtual {v11}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getMode()I

    move-result p1

    .line 2385
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " using mode="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " instead due to death hdlr at pid="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mPid:I
    invoke-static {v11}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->access$1900(Lcom/android/server/audio/AudioService$SetModeDeathHandler;)I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2407
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/audio/AudioService;->mMode:I

    move/from16 v0, p1

    if-eq v0, v3, :cond_c

    .line 2408
    invoke-static/range {p1 .. p1}, Landroid/media/AudioSystem;->setPhoneState(I)I

    move-result v15

    .line 2409
    if-nez v15, :cond_a

    .line 2410
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mode successfully set to "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2411
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/audio/AudioService;->mMode:I

    .line 2424
    :goto_2
    if-eqz v15, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2426
    :cond_5
    if-nez v15, :cond_7

    .line 2427
    if-eqz p1, :cond_6

    .line 2428
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 2429
    const-string v3, "AudioService"

    const-string v4, "setMode() different from MODE_NORMAL with empty mode client stack"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2434
    :cond_6
    :goto_3
    const/high16 v3, -0x80000000

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/audio/AudioService;->getActiveStreamType(I)I

    move-result v16

    .line 2435
    .local v16, "streamType":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v6

    .line 2436
    .local v6, "device":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v4, v4, v16

    aget-object v3, v3, v4

    invoke-virtual {v3, v6}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v5

    .line 2437
    .local v5, "index":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v4, v3, v16

    const/4 v7, 0x1

    move-object/from16 v3, p0

    move-object/from16 v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/android/server/audio/AudioService;->setStreamVolumeInt(IIIZLjava/lang/String;)V

    .line 2439
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v3, v1}, Lcom/android/server/audio/AudioService;->updateStreamVolumeAlias(ZLjava/lang/String;)V

    .end local v5    # "index":I
    .end local v6    # "device":I
    .end local v16    # "streamType":I
    :cond_7
    move v14, v13

    .line 2441
    .end local v13    # "newModeOwnerPid":I
    .restart local v14    # "newModeOwnerPid":I
    goto/16 :goto_0

    .line 2390
    .end local v14    # "newModeOwnerPid":I
    .restart local v13    # "newModeOwnerPid":I
    :cond_8
    if-nez v11, :cond_9

    .line 2391
    new-instance v11, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    .end local v11    # "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v11, v0, v1, v2}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;-><init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;I)V

    .line 2395
    .restart local v11    # "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    :cond_9
    const/4 v3, 0x0

    :try_start_0
    move-object/from16 v0, p2

    invoke-interface {v0, v11, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2403
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2404
    move/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->setMode(I)V

    goto/16 :goto_1

    .line 2396
    :catch_0
    move-exception v9

    .line 2398
    .local v9, "e":Landroid/os/RemoteException;
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setMode() could not link to "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " binder death"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 2413
    .end local v9    # "e":Landroid/os/RemoteException;
    :cond_a
    if-eqz v11, :cond_b

    .line 2414
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2415
    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v11, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 2418
    :cond_b
    const-string v3, "AudioService"

    const-string v4, " mode set to MODE_NORMAL after phoneState pb"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2419
    const/16 p1, 0x0

    goto/16 :goto_2

    .line 2422
    :cond_c
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 2431
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    invoke-virtual {v3}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getPid()I

    move-result v13

    goto/16 :goto_3
.end method

.method private setOrientationForAudioSystem()V
    .locals 2

    .prologue
    .line 5892
    iget v0, p0, Lcom/android/server/audio/AudioService;->mDeviceOrientation:I

    packed-switch v0, :pswitch_data_0

    .line 5910
    const-string v0, "AudioService"

    const-string v1, "Unknown orientation"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5912
    :goto_0
    return-void

    .line 5895
    :pswitch_0
    const-string v0, "orientation=landscape"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 5899
    :pswitch_1
    const-string v0, "orientation=portrait"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 5903
    :pswitch_2
    const-string v0, "orientation=square"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 5907
    :pswitch_3
    const-string v0, "orientation=undefined"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 5892
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private setRingerMode(ILjava/lang/String;Z)V
    .locals 12
    .param p1, "ringerMode"    # I
    .param p2, "caller"    # Ljava/lang/String;
    .param p3, "external"    # Z

    .prologue
    const/4 v2, 0x1

    .line 2115
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isPlatformTelevision()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2153
    :cond_0
    :goto_0
    return-void

    .line 2118
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 2119
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad caller: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2121
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidRingerMode(I)V

    .line 2122
    if-ne p1, v2, :cond_4

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-nez v0, :cond_4

    .line 2123
    const/4 p1, 0x0

    .line 2125
    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 2127
    .local v10, "identity":J
    :try_start_0
    iget-object v9, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2128
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v4

    .line 2129
    .local v4, "ringerModeInternal":I
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    move-result v1

    .line 2130
    .local v1, "ringerModeExternal":I
    if-eqz p3, :cond_7

    .line 2131
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->setRingerModeExt(I)V

    .line 2132
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    if-eqz v0, :cond_5

    .line 2133
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    move v2, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Landroid/media/AudioManagerInternal$RingerModeDelegate;->onSetRingerModeExternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I

    move-result p1

    .line 2136
    :cond_5
    if-eq p1, v4, :cond_6

    .line 2137
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    .line 2149
    :cond_6
    :goto_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2151
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 2140
    :cond_7
    if-eq p1, v4, :cond_8

    .line 2141
    const/4 v0, 0x1

    :try_start_2
    invoke-direct {p0, p1, v0}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    .line 2143
    :cond_8
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    if-eqz v0, :cond_9

    .line 2144
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    iget-object v8, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    move v5, p1

    move-object v6, p2

    move v7, v1

    invoke-interface/range {v3 .. v8}, Landroid/media/AudioManagerInternal$RingerModeDelegate;->onSetRingerModeInternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I

    move-result p1

    .line 2147
    :cond_9
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->setRingerModeExt(I)V

    goto :goto_1

    .line 2149
    .end local v1    # "ringerModeExternal":I
    .end local v4    # "ringerModeInternal":I
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2151
    :catchall_1
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private setRingerModeExt(I)V
    .locals 2
    .param p1, "ringerMode"    # I

    .prologue
    .line 2156
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2157
    :try_start_0
    iget v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    if-ne p1, v0, :cond_0

    monitor-exit v1

    .line 2162
    :goto_0
    return-void

    .line 2158
    :cond_0
    iput p1, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    .line 2159
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2161
    const-string v0, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {p0, v0, p1}, Lcom/android/server/audio/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V

    goto :goto_0

    .line 2159
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private setRingerModeInt(IZ)V
    .locals 8
    .param p1, "ringerMode"    # I
    .param p2, "persist"    # Z

    .prologue
    const/4 v2, 0x0

    .line 2211
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRingerModeInt "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2213
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2214
    :try_start_0
    iget v0, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    if-eq v0, p1, :cond_2

    const/4 v7, 0x1

    .line 2215
    .local v7, "change":Z
    :goto_0
    iput p1, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    .line 2216
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2218
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->muteRingerModeStreams()V

    .line 2221
    if-eqz p2, :cond_0

    .line 2222
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v1, 0x3

    const/4 v5, 0x0

    const/16 v6, 0x1f4

    move v3, v2

    move v4, v2

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2225
    :cond_0
    if-eqz v7, :cond_1

    .line 2227
    const-string v0, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-direct {p0, v0, p1}, Lcom/android/server/audio/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V

    .line 2229
    :cond_1
    return-void

    .end local v7    # "change":Z
    :cond_2
    move v7, v2

    .line 2214
    goto :goto_0

    .line 2216
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private setRotationForAudioSystem()V
    .locals 2

    .prologue
    .line 5915
    iget v0, p0, Lcom/android/server/audio/AudioService;->mDeviceRotation:I

    packed-switch v0, :pswitch_data_0

    .line 5929
    const-string v0, "AudioService"

    const-string v1, "Unknown device rotation"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5931
    :goto_0
    return-void

    .line 5917
    :pswitch_0
    const-string v0, "rotation=0"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 5920
    :pswitch_1
    const-string v0, "rotation=90"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 5923
    :pswitch_2
    const-string v0, "rotation=180"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 5926
    :pswitch_3
    const-string v0, "rotation=270"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 5915
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setSafeMediaVolumeEnabled(ZLjava/lang/String;)V
    .locals 8
    .param p1, "on"    # Z
    .param p2, "caller"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 6038
    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v7

    .line 6039
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 6041
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 6042
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    .line 6043
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->enforceSafeMediaVolume(Ljava/lang/String;)V

    .line 6057
    :cond_0
    :goto_0
    monitor-exit v7

    .line 6058
    return-void

    .line 6044
    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 6045
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    .line 6046
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    .line 6047
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->saveMusicActiveMs()V

    .line 6048
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0xe

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v6, 0xea60

    move-object v5, p2

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_0

    .line 6057
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V
    .locals 14
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "caller"    # Ljava/lang/String;
    .param p6, "uid"    # I

    .prologue
    .line 1579
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-eqz v2, :cond_1

    .line 1667
    :cond_0
    :goto_0
    return-void

    .line 1582
    :cond_1
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setStreamVolume "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", flags = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from pid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " callingPackage = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    .line 1585
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v12, v2, p1

    .line 1586
    .local v12, "streamTypeAlias":I
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v11, v2, v12

    .line 1588
    .local v11, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v7

    .line 1593
    .local v7, "device":I
    and-int/lit16 v2, v7, 0x380

    if-nez v2, :cond_2

    and-int/lit8 v2, p3, 0x40

    if-nez v2, :cond_0

    .line 1599
    :cond_2
    const/16 v2, 0x3e8

    move/from16 v0, p6

    if-ne v0, v2, :cond_3

    .line 1600
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getCurrentUserId()I

    move-result v2

    invoke-static/range {p6 .. p6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    invoke-static {v2, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result p6

    .line 1602
    :cond_3
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    sget-object v3, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_OPS:[I

    aget v3, v3, v12

    move/from16 v0, p6

    move-object/from16 v1, p4

    invoke-virtual {v2, v3, v0, v1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 1607
    iget-object v13, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v13

    .line 1609
    const/4 v2, 0x0

    :try_start_0
    iput-object v2, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    .line 1611
    invoke-virtual {v11, v7}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v10

    .line 1613
    .local v10, "oldIndex":I
    mul-int/lit8 v2, p2, 0xa

    invoke-direct {p0, v2, p1, v12}, Lcom/android/server/audio/AudioService;->rescaleIndex(III)I

    move-result p2

    .line 1615
    const/4 v2, 0x3

    if-ne v12, v2, :cond_5

    and-int/lit16 v2, v7, 0x380

    if-eqz v2, :cond_5

    and-int/lit8 v2, p3, 0x40

    if-nez v2, :cond_5

    .line 1621
    sget-boolean v2, Lcom/android/server/audio/AudioService;->SUPPORT_A2DP_SAFEVOLUME:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_8

    iget v2, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    move/from16 v0, p2

    if-le v0, v2, :cond_8

    const/4 v9, 0x1

    .line 1624
    .local v9, "forbidden":Z
    :goto_1
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1625
    :try_start_1
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z

    if-eqz v2, :cond_4

    if-nez v9, :cond_4

    .line 1628
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    div-int/lit8 v4, p2, 0xa

    invoke-virtual {v2, v4}, Landroid/bluetooth/BluetoothA2dp;->setAvrcpAbsoluteVolume(I)V

    .line 1630
    :cond_4
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1633
    .end local v9    # "forbidden":Z
    :cond_5
    const/4 v2, 0x3

    if-ne v12, v2, :cond_6

    .line 1634
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->getStreamMaxVolume(I)I

    move-result v2

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {p0, v10, v0, v2, v1}, Lcom/android/server/audio/AudioService;->setSystemAudioVolume(IIII)V

    .line 1637
    :cond_6
    and-int/lit8 p3, p3, -0x21

    .line 1638
    const/4 v2, 0x3

    if-ne v12, v2, :cond_7

    iget v2, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    and-int/2addr v2, v7

    if-eqz v2, :cond_7

    .line 1640
    or-int/lit8 p3, p3, 0x20

    .line 1643
    if-eqz p2, :cond_7

    .line 1644
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_9

    iget v2, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeDevices:I

    and-int/2addr v2, v7

    if-eqz v2, :cond_9

    .line 1646
    iget v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    move/from16 p2, v0

    .line 1653
    :cond_7
    :goto_2
    move/from16 v0, p2

    invoke-direct {p0, v12, v0, v7}, Lcom/android/server/audio/AudioService;->checkSafeMediaVolume(III)Z

    move-result v2

    if-nez v2, :cond_a

    .line 1655
    or-int/lit8 p3, p3, 0x1

    .line 1656
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/android/server/audio/AudioService$VolumeController;->postDisplaySafeVolumeWarning(I)V

    .line 1657
    and-int/lit8 p3, p3, -0x2

    .line 1659
    new-instance v2, Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    move-object v3, p0

    move v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/audio/AudioService$StreamVolumeCommand;-><init>(Lcom/android/server/audio/AudioService;IIII)V

    iput-object v2, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    .line 1665
    :goto_3
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1666
    move/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {p0, p1, v10, v0, v1}, Lcom/android/server/audio/AudioService;->sendVolumeUpdate(IIII)V

    goto/16 :goto_0

    .line 1621
    :cond_8
    const/4 v9, 0x0

    goto :goto_1

    .line 1630
    .restart local v9    # "forbidden":Z
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    .line 1665
    .end local v9    # "forbidden":Z
    .end local v10    # "oldIndex":I
    :catchall_1
    move-exception v2

    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 1648
    .restart local v10    # "oldIndex":I
    :cond_9
    :try_start_5
    invoke-virtual {v11}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result p2

    goto :goto_2

    :cond_a
    move-object v3, p0

    move v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v8, p5

    .line 1662
    invoke-direct/range {v3 .. v8}, Lcom/android/server/audio/AudioService;->onSetStreamVolume(IIIILjava/lang/String;)V

    .line 1663
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, p1

    invoke-virtual {v2, v7}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result p2

    goto :goto_3
.end method

.method private setStreamVolumeInt(IIIZLjava/lang/String;)V
    .locals 7
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "device"    # I
    .param p4, "force"    # Z
    .param p5, "caller"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1807
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v5, v0, p1

    .line 1809
    .local v5, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-virtual {v5, p2, p3, p5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p4, :cond_1

    .line 1812
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v2, 0x2

    move v3, p3

    move v4, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1820
    :cond_1
    return-void
.end method

.method private setSystemAudioMute(Z)V
    .locals 5
    .param p1, "state"    # Z

    .prologue
    .line 1823
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-nez v2, :cond_1

    .line 1835
    :cond_0
    :goto_0
    return-void

    .line 1824
    :cond_1
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v3

    .line 1825
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    if-nez v2, :cond_2

    monitor-exit v3

    goto :goto_0

    .line 1834
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1826
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1827
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-wide v0

    .line 1829
    .local v0, "token":J
    :try_start_3
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    invoke-virtual {v2, p1}, Landroid/hardware/hdmi/HdmiTvClient;->setSystemAudioMute(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1831
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1833
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1834
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 1831
    :catchall_1
    move-exception v2

    :try_start_6
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1833
    .end local v0    # "token":J
    :catchall_2
    move-exception v2

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method private setSystemAudioVolume(IIII)V
    .locals 5
    .param p1, "oldVolume"    # I
    .param p2, "newVolume"    # I
    .param p3, "maxVolume"    # I
    .param p4, "flags"    # I

    .prologue
    .line 1507
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-eqz v2, :cond_0

    if-eq p1, p2, :cond_0

    and-int/lit16 v2, p4, 0x100

    if-eqz v2, :cond_1

    .line 1525
    :cond_0
    :goto_0
    return-void

    .line 1514
    :cond_1
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v3

    .line 1515
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    if-nez v2, :cond_2

    monitor-exit v3

    goto :goto_0

    .line 1524
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1516
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1517
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-wide v0

    .line 1519
    .local v0, "token":J
    :try_start_3
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    invoke-virtual {v2, p1, p2, p3}, Landroid/hardware/hdmi/HdmiTvClient;->setSystemAudioVolume(III)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1521
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1523
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1524
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 1521
    :catchall_1
    move-exception v2

    :try_start_6
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1523
    .end local v0    # "token":J
    :catchall_2
    move-exception v2

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method private updateFlagsForSystemAudio(I)I
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 1767
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-eqz v0, :cond_1

    .line 1768
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    monitor-enter v1

    .line 1769
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    if-eqz v0, :cond_0

    and-int/lit16 v0, p1, 0x100

    if-nez v0, :cond_0

    .line 1771
    and-int/lit8 p1, p1, -0x2

    .line 1773
    :cond_0
    monitor-exit v1

    .line 1775
    :cond_1
    return p1

    .line 1773
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateRingerModeAffectedStreams()Z
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, -0x2

    .line 3534
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "mode_ringer_streams_affected"

    const/16 v3, 0xa6

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 3540
    .local v0, "ringerModeAffectedStreams":I
    iget v1, p0, Lcom/android/server/audio/AudioService;->mPlatformType:I

    if-ne v1, v5, :cond_1

    .line 3541
    const/4 v0, 0x0

    .line 3546
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    monitor-enter v2

    .line 3547
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3548
    and-int/lit16 v0, v0, -0x81

    .line 3552
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3553
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    const/16 v2, 0x8

    aget v1, v1, v2

    if-ne v1, v5, :cond_3

    .line 3554
    or-int/lit16 v0, v0, 0x100

    .line 3559
    :goto_2
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    if-eq v0, v1, :cond_4

    .line 3560
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "mode_ringer_streams_affected"

    invoke-static {v1, v2, v0, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 3564
    iput v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    .line 3565
    const/4 v1, 0x1

    .line 3567
    :goto_3
    return v1

    .line 3542
    :cond_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    if-eqz v1, :cond_0

    .line 3543
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    invoke-interface {v1, v0}, Landroid/media/AudioManagerInternal$RingerModeDelegate;->getRingerModeAffectedStreams(I)I

    move-result v0

    goto :goto_0

    .line 3550
    :cond_2
    or-int/lit16 v0, v0, 0x80

    goto :goto_1

    .line 3552
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 3556
    :cond_3
    and-int/lit16 v0, v0, -0x101

    goto :goto_2

    .line 3567
    :cond_4
    const/4 v1, 0x0

    goto :goto_3
.end method

.method private updateStreamVolumeAlias(ZLjava/lang/String;)V
    .locals 8
    .param p1, "updateVolumes"    # Z
    .param p2, "caller"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x8

    const/4 v3, 0x0

    .line 1084
    iget v0, p0, Lcom/android/server/audio/AudioService;->mPlatformType:I

    packed-switch v0, :pswitch_data_0

    .line 1094
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_DEFAULT:[I

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    .line 1095
    const/4 v7, 0x3

    .line 1098
    .local v7, "dtmfStreamAlias":I
    :goto_0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isPlatformTelevision()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1099
    iput v3, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    .line 1109
    :goto_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aput v7, v0, v5

    .line 1110
    if-eqz p1, :cond_0

    .line 1111
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, v7

    invoke-virtual {v0, v1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setAllIndexes(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)V

    .line 1114
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v0

    invoke-direct {p0, v0, v3}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    .line 1115
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0xa

    const/4 v2, 0x2

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v5, v4, v5

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1122
    :cond_0
    return-void

    .line 1086
    .end local v7    # "dtmfStreamAlias":I
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_VOICE:[I

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    .line 1087
    const/4 v7, 0x2

    .line 1088
    .restart local v7    # "dtmfStreamAlias":I
    goto :goto_0

    .line 1090
    .end local v7    # "dtmfStreamAlias":I
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_TELEVISION:[I

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    .line 1091
    const/4 v7, 0x3

    .line 1092
    .restart local v7    # "dtmfStreamAlias":I
    goto :goto_0

    .line 1101
    :cond_1
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isInCommunication()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1102
    const/4 v7, 0x0

    .line 1103
    iget v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    goto :goto_1

    .line 1105
    :cond_2
    iget v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    goto :goto_1

    .line 1084
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private waitForAudioHandlerCreation()V
    .locals 3

    .prologue
    .line 1005
    monitor-enter p0

    .line 1006
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1009
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1010
    :catch_0
    move-exception v0

    .line 1011
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v1, "AudioService"

    const-string v2, "Interrupted while waiting on volume handler."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1014
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1015
    return-void
.end method


# virtual methods
.method public abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;)I
    .locals 1
    .param p1, "fd"    # Landroid/media/IAudioFocusDispatcher;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "aa"    # Landroid/media/AudioAttributes;

    .prologue
    .line 5780
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/audio/MediaFocusControl;->abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;)I

    move-result v0

    return v0
.end method

.method public abandonFixedDLNAVolume()V
    .locals 8

    .prologue
    .line 7163
    sget-object v7, Lcom/android/server/audio/AudioService;->mFixedDLNAVolumeLock:Ljava/lang/Object;

    monitor-enter v7

    .line 7164
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mFixedDLNAVolumeDeathHandler:Lcom/android/server/audio/AudioService$FixedDLNAVolumeDeathHandler;

    if-eqz v0, :cond_0

    .line 7165
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mFixedDLNAVolumeDeathHandler:Lcom/android/server/audio/AudioService$FixedDLNAVolumeDeathHandler;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$FixedDLNAVolumeDeathHandler;->unlinkToDeath()V

    .line 7166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mFixedDLNAVolumeDeathHandler:Lcom/android/server/audio/AudioService$FixedDLNAVolumeDeathHandler;

    .line 7169
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x2

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 7176
    monitor-exit v7

    .line 7177
    return-void

    .line 7176
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public adjustStreamVolume(IIILjava/lang/String;)V
    .locals 7
    .param p1, "streamType"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 1285
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->adjustStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    .line 1287
    return-void
.end method

.method public adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "direction"    # I
    .param p2, "suggestedStreamType"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "caller"    # Ljava/lang/String;

    .prologue
    .line 1242
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    .line 1244
    return-void
.end method

.method public avrcpSupportsAbsoluteVolume(Ljava/lang/String;Z)V
    .locals 11
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "support"    # Z

    .prologue
    const/4 v2, 0x3

    const/4 v7, 0x0

    .line 5196
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v1

    .line 5197
    :try_start_0
    iget v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeDevices:I

    and-int/lit16 v0, v0, 0x380

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_0

    const/4 v7, 0x1

    .line 5199
    .local v7, "a2dpSafeVolumeEnabled":Z
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5204
    iget-object v10, p0, Lcom/android/server/audio/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    monitor-enter v10

    .line 5205
    :try_start_1
    iput-boolean p2, p0, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z

    .line 5209
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v1, 0x3

    aget-object v9, v0, v1

    .line 5210
    .local v9, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "avrcpSupportsAbsoluteVolume support="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5211
    if-eqz v7, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z

    if-eqz v0, :cond_1

    .line 5212
    const/16 v0, 0x80

    invoke-virtual {v9, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v8, v0, 0xa

    .line 5213
    .local v8, "index":I
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "avrcpSupportsAbsoluteVolume setAvrcpAbsoluteVolume index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5214
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, v8}, Landroid/bluetooth/BluetoothA2dp;->setAvrcpAbsoluteVolume(I)V

    .line 5219
    .end local v8    # "index":I
    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/16 v3, 0x80

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5222
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/16 v3, 0x80

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5225
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5226
    return-void

    .line 5199
    .end local v7    # "a2dpSafeVolumeEnabled":Z
    .end local v9    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 5225
    .restart local v7    # "a2dpSafeVolumeEnabled":Z
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public broadcastSoundEffectChanged(I)V
    .locals 4
    .param p1, "effectId"    # I

    .prologue
    .line 7056
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcastSoundEffectChanged effect="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7057
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.intent.action.SOUNDEFFECT_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7058
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.htc.EXTRA_SOUNDEFFECT_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7060
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    if-eqz v1, :cond_0

    .line 7061
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 7062
    :cond_0
    return-void
.end method

.method checkAudioSettingsPermission(Ljava/lang/String;)Z
    .locals 3
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 3746
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_AUDIO_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 3748
    const/4 v1, 0x1

    .line 3754
    :goto_0
    return v1

    .line 3750
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audio Settings Permission Denial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3753
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3754
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clearAllScoClients(IZ)V
    .locals 6
    .param p1, "exceptPid"    # I
    .param p2, "stopSco"    # Z

    .prologue
    .line 3037
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v5

    .line 3038
    const/4 v2, 0x0

    .line 3039
    .local v2, "savedClient":Lcom/android/server/audio/AudioService$ScoClient;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3040
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 3041
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioService$ScoClient;

    .line 3042
    .local v0, "cl":Lcom/android/server/audio/AudioService$ScoClient;
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$ScoClient;->getPid()I

    move-result v4

    if-eq v4, p1, :cond_0

    .line 3043
    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioService$ScoClient;->clearCount(Z)V

    .line 3040
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3045
    :cond_0
    move-object v2, v0

    goto :goto_1

    .line 3048
    .end local v0    # "cl":Lcom/android/server/audio/AudioService$ScoClient;
    :cond_1
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 3049
    if-eqz v2, :cond_2

    .line 3050
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3052
    :cond_2
    monitor-exit v5

    .line 3053
    return-void

    .line 3052
    .end local v1    # "i":I
    .end local v3    # "size":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public disableSafeMediaVolume(Ljava/lang/String;)V
    .locals 7
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 6113
    const-string v0, "disable the safe media volume"

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->enforceVolumeController(Ljava/lang/String;)V

    .line 6114
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v6

    .line 6115
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/android/server/audio/AudioService;->setSafeMediaVolumeEnabled(ZLjava/lang/String;)V

    .line 6116
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    if-eqz v0, :cond_2

    .line 6119
    sget-boolean v0, Lcom/android/server/audio/AudioService;->SUPPORT_A2DP_SAFEVOLUME:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    iget v0, v0, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mDevice:I

    and-int/lit16 v0, v0, 0x380

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    iget v0, v0, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mFlags:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_1

    .line 6122
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6123
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z

    if-eqz v0, :cond_0

    .line 6124
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    iget v2, v2, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mIndex:I

    div-int/lit8 v2, v2, 0xa

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothA2dp;->setAvrcpAbsoluteVolume(I)V

    .line 6126
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6131
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    iget v1, v0, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mStreamType:I

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    iget v2, v0, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mIndex:I

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    iget v3, v0, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mFlags:I

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    iget v4, v0, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mDevice:I

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioService;->onSetStreamVolume(IIIILjava/lang/String;)V

    .line 6136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    .line 6138
    :cond_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 6139
    return-void

    .line 6126
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 6138
    :catchall_1
    move-exception v0

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 6304
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    const-string v2, "AudioService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6306
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHtcBeatsEffect:Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;

    invoke-interface {v0, p2}, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;->dump(Ljava/io/PrintWriter;)V

    .line 6308
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0, p2}, Lcom/android/server/audio/MediaFocusControl;->dump(Ljava/io/PrintWriter;)V

    .line 6309
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->dumpStreamStates(Ljava/io/PrintWriter;)V

    .line 6310
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->dumpRingerMode(Ljava/io/PrintWriter;)V

    .line 6311
    const-string v0, "\nAudio routes:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6312
    const-string v0, "  mMainType=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget v0, v0, Landroid/media/AudioRoutesInfo;->mainType:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6313
    const-string v0, "  mBluetoothName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v0, v0, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6315
    const-string v0, "\nOther state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6316
    const-string v0, "  mVolumeController="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6317
    const-string v0, "  mSafeMediaVolumeState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6318
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->safeMediaVolumeStateToString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6319
    const-string v0, "  mSafeMediaVolumeIndex="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 6320
    const-string v0, "  mPendingVolumeCommand="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6321
    const-string v0, "  mMusicActiveMs="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 6322
    const-string v0, "  mMcc="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mMcc:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 6323
    const-string v0, "  mCameraSoundForced="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6324
    const-string v0, "  mHasVibrator="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6325
    const-string v0, "  mControllerService="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mControllerService:Lcom/android/server/audio/AudioService$ControllerService;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6326
    const-string v0, "  mVolumePolicy="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6328
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->dumpAudioPolicies(Ljava/io/PrintWriter;)V

    .line 6329
    return-void
.end method

.method public forceRemoteSubmixFullVolume(ZLandroid/os/IBinder;)V
    .locals 5
    .param p1, "startForcing"    # Z
    .param p2, "cb"    # Landroid/os/IBinder;

    .prologue
    const v4, 0x8000

    const v3, -0x8001

    .line 1909
    if-nez p2, :cond_0

    .line 1945
    :goto_0
    return-void

    .line 1912
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CAPTURE_AUDIO_OUTPUT"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 1914
    const-string v1, "AudioService"

    const-string v2, "Trying to call forceRemoteSubmixFullVolume() without CAPTURE_AUDIO_OUTPUT"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1917
    :cond_1
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1918
    const/4 v0, 0x0

    .line 1919
    .local v0, "applyRequired":Z
    if-eqz p1, :cond_5

    .line 1920
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->hasRmtSbmxFullVolDeathHandlerFor(Landroid/os/IBinder;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1921
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;

    invoke-direct {v3, p0, p2}, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;-><init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1922
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    if-nez v1, :cond_2

    .line 1923
    iget v1, p0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    or-int/2addr v1, v4

    iput v1, p0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    .line 1924
    iget v1, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    or-int/2addr v1, v4

    iput v1, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    .line 1925
    const/4 v0, 0x1

    .line 1927
    :cond_2
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    .line 1939
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 1941
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->checkAllFixedVolumeDevices(I)V

    .line 1942
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v3, 0x3

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 1944
    :cond_4
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1930
    :cond_5
    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->discardRmtSbmxFullVolDeathHandlerFor(Landroid/os/IBinder;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    if-lez v1, :cond_3

    .line 1931
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    .line 1932
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    if-nez v1, :cond_3

    .line 1933
    iget v1, p0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    and-int/2addr v1, v3

    iput v1, p0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    .line 1934
    iget v1, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    and-int/2addr v1, v3

    iput v1, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1935
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public forceSoundEffect(ILandroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "cb"    # Landroid/os/IBinder;
    .param p3, "clientId"    # Ljava/lang/String;
    .param p4, "callingPackageName"    # Ljava/lang/String;

    .prologue
    .line 7024
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHtcBeatsEffect:Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;->forceSoundEffect(ILandroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    .line 7025
    return-void
.end method

.method public forceVolumeControlStream(ILandroid/os/IBinder;)V
    .locals 3
    .param p1, "streamType"    # I
    .param p2, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 1671
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1672
    :try_start_0
    iput p1, p0, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    .line 1673
    iget v0, p0, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 1674
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    if-eqz v0, :cond_0

    .line 1675
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$ForceControlStreamClient;->release()V

    .line 1676
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    .line 1681
    :cond_0
    :goto_0
    monitor-exit v1

    .line 1682
    return-void

    .line 1679
    :cond_1
    new-instance v0, Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    invoke-direct {v0, p0, p2}, Lcom/android/server/audio/AudioService$ForceControlStreamClient;-><init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    goto :goto_0

    .line 1681
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCurrentAudioFocus()I
    .locals 1

    .prologue
    .line 5788
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0}, Lcom/android/server/audio/MediaFocusControl;->getCurrentAudioFocus()I

    move-result v0

    return v0
.end method

.method public getDeviceVolume(II)I
    .locals 4
    .param p1, "streamType"    # I
    .param p2, "device"    # I

    .prologue
    .line 7446
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, p1

    invoke-virtual {v1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v0, v1, 0xa

    .line 7447
    .local v0, "volume":I
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceVolume from stream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", volume: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Pid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7449
    return v0
.end method

.method public getEffectManagerProperty(I)I
    .locals 1
    .param p1, "name"    # I

    .prologue
    .line 7124
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHtcBeatsEffect:Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;

    invoke-interface {v0, p1}, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;->getSystemProperty(I)I

    move-result v0

    return v0
.end method

.method public getGlobalEffect()I
    .locals 4

    .prologue
    .line 7003
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHtcBeatsEffect:Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;->getSoundEffect(Z)I

    move-result v0

    .line 7004
    .local v0, "id":I
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getGlobalEffect="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7005
    return v0
.end method

.method public getLastAudibleStreamVolume(I)I
    .locals 2
    .param p1, "streamType"    # I

    .prologue
    .line 2036
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    .line 2037
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v0

    .line 2038
    .local v0, "device":I
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0xa

    return v1
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 2446
    iget v0, p0, Lcom/android/server/audio/AudioService;->mMode:I

    return v0
.end method

.method public getRingerModeExternal()I
    .locals 2

    .prologue
    .line 2082
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2083
    :try_start_0
    iget v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    monitor-exit v1

    return v0

    .line 2084
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRingerModeInternal()I
    .locals 2

    .prologue
    .line 2089
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2090
    :try_start_0
    iget v0, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    monitor-exit v1

    return v0

    .line 2091
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRingtonePlayer()Landroid/media/IRingtonePlayer;
    .locals 1

    .prologue
    .line 5982
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRingtonePlayer:Landroid/media/IRingtonePlayer;

    return-object v0
.end method

.method public getSoundEffect()I
    .locals 4

    .prologue
    .line 7032
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHtcBeatsEffect:Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;->getSoundEffect(Z)I

    move-result v0

    .line 7033
    .local v0, "id":I
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSoundEffect="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7034
    return v0
.end method

.method public getStreamMaxVolume(I)I
    .locals 1
    .param p1, "streamType"    # I

    .prologue
    .line 2024
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    .line 2025
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public getStreamMinVolume(I)I
    .locals 1
    .param p1, "streamType"    # I

    .prologue
    .line 2030
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    .line 2031
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMinIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public getStreamVolume(I)I
    .locals 5
    .param p1, "streamType"    # I

    .prologue
    .line 1997
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    .line 1998
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v0

    .line 1999
    .local v0, "device":I
    const-class v3, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v3

    .line 2000
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, p1

    invoke-virtual {v2, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    .line 2003
    .local v1, "index":I
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mIsLockMusicVolumeToMax:Z

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    const/4 v2, 0x6

    if-eq p1, v2, :cond_0

    .line 2006
    sget-object v2, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v2, v2, p1

    monitor-exit v3

    .line 2018
    :goto_0
    return v2

    .line 2011
    :cond_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, p1

    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z
    invoke-static {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$500(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2012
    const/4 v1, 0x0

    .line 2014
    :cond_1
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v2, v2, p1

    const/4 v4, 0x3

    if-ne v2, v4, :cond_2

    iget v2, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_2

    .line 2016
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v1

    .line 2018
    :cond_2
    add-int/lit8 v2, v1, 0x5

    div-int/lit8 v2, v2, 0xa

    monitor-exit v3

    goto :goto_0

    .line 2019
    .end local v1    # "index":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getUiSoundsStreamType()I
    .locals 2

    .prologue
    .line 2043
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getVibrateSetting(I)I
    .locals 2
    .param p1, "vibrateType"    # I

    .prologue
    .line 2254
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2255
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/server/audio/AudioService;->mVibrateSetting:I

    mul-int/lit8 v1, p1, 0x2

    shr-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x3

    goto :goto_0
.end method

.method public isAppInFocus(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 5799
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/MediaFocusControl;->isAppInFocus(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isBluetoothA2dpOn()Z
    .locals 2

    .prologue
    .line 2768
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2769
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabled:Z

    monitor-exit v1

    return v0

    .line 2770
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isBluetoothScoOn()Z
    .locals 2

    .prologue
    .line 2746
    iget v0, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCameraSoundForced()Z
    .locals 2

    .prologue
    .line 6258
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    monitor-enter v1

    .line 6259
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 6260
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isDLNAPlaying()Z
    .locals 2

    .prologue
    .line 7243
    sget-object v1, Lcom/android/server/audio/AudioService;->mDLNAPlayingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 7244
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDLNAPlayingDeathHandler:Lcom/android/server/audio/AudioService$DLNAPlayingDeathHandler;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 7245
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isFMActive()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 7337
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mFMActive:Z

    if-nez v1, :cond_0

    const/16 v1, 0xa

    invoke-static {v1, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isHdmiSystemAudioSupported()Z
    .locals 1

    .prologue
    .line 6202
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    return v0
.end method

.method public isHeadsetPlugged()Z
    .locals 1

    .prologue
    .line 6838
    iget v0, p0, Lcom/android/server/audio/AudioService;->mHeadsetState:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMasterMute()Z
    .locals 1

    .prologue
    .line 1987
    invoke-static {}, Landroid/media/AudioSystem;->getMasterMute()Z

    move-result v0

    return v0
.end method

.method public isSpeakerphoneOn()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2722
    iget v1, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStreamAffectedByMute(I)Z
    .locals 3
    .param p1, "streamType"    # I

    .prologue
    const/4 v0, 0x1

    .line 3572
    iget v1, p0, Lcom/android/server/audio/AudioService;->mMuteAffectedStreams:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStreamAffectedByRingerMode(I)Z
    .locals 3
    .param p1, "streamType"    # I

    .prologue
    const/4 v0, 0x1

    .line 3526
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStreamMute(I)Z
    .locals 2
    .param p1, "streamType"    # I

    .prologue
    .line 1839
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    .line 1840
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getActiveStreamType(I)I

    move-result p1

    .line 1842
    :cond_0
    const-class v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v1

    .line 1843
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z
    invoke-static {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$500(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1844
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isValidRingerMode(I)Z
    .locals 1
    .param p1, "ringerMode"    # I

    .prologue
    .line 2102
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadSoundEffects()Z
    .locals 12

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 2574
    const/4 v7, 0x3

    .line 2575
    .local v7, "attempts":I
    new-instance v5, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;

    invoke-direct {v5, p0}, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;-><init>(Lcom/android/server/audio/AudioService;)V

    .line 2577
    .local v5, "reply":Lcom/android/server/audio/AudioService$LoadSoundEffectReply;
    monitor-enter v5

    .line 2578
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v1, 0x7

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v8, v7

    .line 2579
    .end local v7    # "attempts":I
    .local v8, "attempts":I
    :goto_0
    :try_start_1
    iget v0, v5, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;->mStatus:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v0, v10, :cond_0

    add-int/lit8 v7, v8, -0x1

    .end local v8    # "attempts":I
    .restart local v7    # "attempts":I
    if-lez v8, :cond_1

    .line 2581
    const-wide/16 v0, 0x1388

    :try_start_2
    invoke-virtual {v5, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v8, v7

    .line 2584
    .end local v7    # "attempts":I
    .restart local v8    # "attempts":I
    goto :goto_0

    .line 2582
    .end local v8    # "attempts":I
    .restart local v7    # "attempts":I
    :catch_0
    move-exception v9

    .line 2583
    .local v9, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v0, "AudioService"

    const-string v1, "loadSoundEffects Interrupted while waiting sound pool loaded."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v7

    .line 2584
    .end local v7    # "attempts":I
    .restart local v8    # "attempts":I
    goto :goto_0

    .end local v9    # "e":Ljava/lang/InterruptedException;
    :cond_0
    move v7, v8

    .line 2586
    .end local v8    # "attempts":I
    .restart local v7    # "attempts":I
    :cond_1
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2587
    iget v0, v5, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;->mStatus:I

    if-nez v0, :cond_2

    move v0, v10

    :goto_1
    return v0

    .line 2586
    :catchall_0
    move-exception v0

    :goto_2
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_2
    move v0, v11

    .line 2587
    goto :goto_1

    .line 2586
    .end local v7    # "attempts":I
    .restart local v8    # "attempts":I
    :catchall_1
    move-exception v0

    move v7, v8

    .end local v8    # "attempts":I
    .restart local v7    # "attempts":I
    goto :goto_2
.end method

.method public lockMusicVolumeToMax(Landroid/os/IBinder;Z)V
    .locals 8
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "isLock"    # Z

    .prologue
    .line 7473
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lockMusicVolumeToMax, mIsLockMusicVolumeToMax="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mIsLockMusicVolumeToMax:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isLock="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7474
    sget-object v7, Lcom/android/server/audio/AudioService;->mMirrorLinkVolumeLock:Ljava/lang/Object;

    monitor-enter v7

    .line 7475
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mIsLockMusicVolumeToMax:Z

    if-ne v0, p2, :cond_0

    .line 7476
    monitor-exit v7

    .line 7502
    :goto_0
    return-void

    .line 7478
    :cond_0
    iput-boolean p2, p0, Lcom/android/server/audio/AudioService;->mIsLockMusicVolumeToMax:Z

    .line 7479
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMirrorLinkVolumeDeathHandler:Lcom/android/server/audio/AudioService$MirrorLinkVolumeDeathHandler;

    if-eqz v0, :cond_1

    .line 7480
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMirrorLinkVolumeDeathHandler:Lcom/android/server/audio/AudioService$MirrorLinkVolumeDeathHandler;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$MirrorLinkVolumeDeathHandler;->unlinkToDeath()V

    .line 7481
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mMirrorLinkVolumeDeathHandler:Lcom/android/server/audio/AudioService$MirrorLinkVolumeDeathHandler;

    .line 7485
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mIsLockMusicVolumeToMax:Z

    if-eqz v0, :cond_2

    .line 7486
    new-instance v0, Lcom/android/server/audio/AudioService$MirrorLinkVolumeDeathHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/server/audio/AudioService$MirrorLinkVolumeDeathHandler;-><init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mMirrorLinkVolumeDeathHandler:Lcom/android/server/audio/AudioService$MirrorLinkVolumeDeathHandler;

    .line 7487
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x3eb

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 7501
    :goto_1
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 7494
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x3eb

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public lockMusicVolumeUI(Z)V
    .locals 3
    .param p1, "isLock"    # Z

    .prologue
    .line 7505
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lockMusicVolumeUI, mIsLockMusicVolumeUI="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mIsLockMusicVolumeUI:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isLock="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7506
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mIsLockMusicVolumeUI:Z

    if-ne v0, p1, :cond_0

    .line 7511
    :goto_0
    return-void

    .line 7509
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mIsLockMusicVolumeUI:Z

    goto :goto_0
.end method

.method public notifyVideoEvent(Landroid/os/IBinder;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "status"    # Z

    .prologue
    .line 7038
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHtcBeatsEffect:Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;->onVideoEvent(Landroid/os/IBinder;Ljava/lang/String;Z)V

    .line 7039
    return-void
.end method

.method public notifyVolumeControllerVisible(Landroid/media/IVolumeController;Z)V
    .locals 3
    .param p1, "controller"    # Landroid/media/IVolumeController;
    .param p2, "visible"    # Z

    .prologue
    .line 6391
    const-string v0, "notify about volume controller visibility"

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->enforceVolumeController(Ljava/lang/String;)V

    .line 6394
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService$VolumeController;->isSameBinder(Landroid/media/IVolumeController;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6400
    :goto_0
    return-void

    .line 6398
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioService$VolumeController;->setVisible(Z)V

    .line 6399
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Volume controller visible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method onIndicateSystemReady()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 883
    invoke-static {}, Landroid/media/AudioSystem;->systemReady()I

    move-result v0

    if-nez v0, :cond_0

    .line 893
    :goto_0
    return-void

    .line 886
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x1a

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    move v3, v2

    move v4, v2

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public onMediaServerDied()V
    .locals 15

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 896
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/media/AudioSystem;->checkAudioFlinger()I

    move-result v0

    if-eqz v0, :cond_1

    .line 898
    :cond_0
    const-string v0, "AudioService"

    const-string v4, "Media server died."

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v5, 0x0

    const/16 v6, 0x1f4

    move v4, v3

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 995
    :goto_0
    return-void

    .line 903
    :cond_1
    const-string v0, "AudioService"

    const-string v2, "Media server started."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    const-string v0, "restarting=true"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 911
    invoke-static {}, Lcom/android/server/audio/AudioService;->readAndSetLowRamDevice()V

    .line 914
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 915
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v8, v0, :cond_2

    .line 916
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/audio/AudioService$DeviceListSpec;

    .line 917
    .local v12, "spec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    iget v0, v12, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceType:I

    const/4 v4, 0x1

    iget-object v5, v12, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceAddress:Ljava/lang/String;

    iget-object v6, v12, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceName:Ljava/lang/String;

    invoke-static {v0, v4, v5, v6}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 915
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 923
    .end local v12    # "spec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 925
    iget v0, p0, Lcom/android/server/audio/AudioService;->mMode:I

    invoke-static {v0}, Landroid/media/AudioSystem;->setPhoneState(I)I

    .line 928
    iget v0, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    invoke-static {v3, v0}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 929
    const/4 v0, 0x2

    iget v2, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    invoke-static {v0, v2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 930
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0xb

    :goto_2
    invoke-static {v1, v0}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 934
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v10

    .line 935
    .local v10, "numStreamTypes":I
    add-int/lit8 v14, v10, -0x1

    .local v14, "streamType":I
    :goto_3
    if-ltz v14, :cond_4

    .line 936
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v13, v0, v14

    .line 937
    .local v13, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I
    invoke-static {v13}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$300(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I
    invoke-static {v13}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$400(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0xa

    invoke-static {v14, v0, v1}, Landroid/media/AudioSystem;->initStreamVolume(III)I

    .line 939
    invoke-virtual {v13}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 935
    add-int/lit8 v14, v14, -0x1

    goto :goto_3

    .line 923
    .end local v10    # "numStreamTypes":I
    .end local v13    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .end local v14    # "streamType":I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    move v0, v3

    .line 930
    goto :goto_2

    .line 943
    .restart local v10    # "numStreamTypes":I
    .restart local v14    # "streamType":I
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v0

    invoke-direct {p0, v0, v3}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    .line 946
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mMonitorOrientation:Z

    if-eqz v0, :cond_5

    .line 947
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->setOrientationForAudioSystem()V

    .line 949
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mMonitorRotation:Z

    if-eqz v0, :cond_6

    .line 950
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->setRotationForAudioSystem()V

    .line 953
    :cond_6
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    monitor-enter v1

    .line 954
    const/4 v2, 0x1

    :try_start_2
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabled:Z

    if-eqz v0, :cond_a

    move v0, v3

    :goto_4
    invoke-static {v2, v0}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 957
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 959
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 960
    const/4 v0, 0x3

    :try_start_3
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mDockAudioMediaEnabled:Z

    if-eqz v2, :cond_7

    const/16 v3, 0x8

    :cond_7
    invoke-static {v0, v3}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 963
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 964
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v0, :cond_9

    .line 965
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v1

    .line 966
    :try_start_4
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-eqz v0, :cond_8

    .line 967
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->setHdmiSystemAudioSupported(Z)I

    .line 969
    :cond_8
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 972
    :cond_9
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v1

    .line 973
    :try_start_5
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    .line 974
    .local v11, "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    invoke-virtual {v11}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->connectMixes()V

    goto :goto_5

    .line 976
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v11    # "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 954
    :cond_a
    const/16 v0, 0xa

    goto :goto_4

    .line 957
    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    .line 963
    :catchall_3
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    .line 969
    :catchall_4
    move-exception v0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v0

    .line 976
    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_b
    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 978
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->onIndicateSystemReady()V

    .line 982
    new-instance v7, Landroid/content/Intent;

    const-string v0, "media_server_started"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 983
    .local v7, "broadcast":Landroid/content/Intent;
    const-string v0, "com.dolby"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 984
    const/high16 v0, 0x4000000

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 985
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 989
    const-string v0, "restarting=false"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 992
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHtcBeatsEffect:Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;

    invoke-interface {v0}, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;->resetSoundEffect()V

    .line 993
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHtcBeatsEffect:Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;

    invoke-interface {v0}, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;->loadSoundEffect()V

    goto/16 :goto_0
.end method

.method public onSystemReady()V
    .locals 10

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 824
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->createSoundEffectManager()V

    .line 827
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    .line 828
    const-string v0, "AudioService"

    const-string v1, "boot sequence has been completed !"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->readCustomizedSetting()V

    .line 832
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v1, 0x7

    const/4 v5, 0x0

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 835
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 837
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/audio/AudioService;->mScoConnectionState:I

    .line 838
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->resetBluetoothSco()V

    .line 839
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getBluetoothHeadset()Z

    .line 842
    new-instance v9, Landroid/content/Intent;

    const-string v0, "android.media.SCO_AUDIO_STATE_CHANGED"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 843
    .local v9, "newIntent":Landroid/content/Intent;
    const-string v0, "android.media.extra.SCO_AUDIO_STATE"

    invoke-virtual {v9, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 845
    invoke-direct {p0, v9}, Lcom/android/server/audio/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 847
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v8

    .line 848
    .local v8, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v8, :cond_0

    .line 849
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-virtual {v8, v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 853
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "hdmi_control"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiControlManager;

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    .line 855
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v0, :cond_2

    .line 856
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v1

    .line 857
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlManager;->getTvClient()Landroid/hardware/hdmi/HdmiTvClient;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    .line 858
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-eqz v0, :cond_1

    .line 859
    iget v0, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    const v2, -0x2c0003

    and-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    .line 861
    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlManager;->getPlaybackClient()Landroid/hardware/hdmi/HdmiPlaybackClient;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    .line 862
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z

    .line 863
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 867
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mEnableListenNotify:Z

    if-eqz v0, :cond_3

    move v7, v3

    .line 868
    .local v7, "delay":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v2, 0x11

    const-string v6, "AudioService"

    move v4, v3

    move v5, v3

    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 877
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/audio/AudioService$StreamOverride;->init(Landroid/content/Context;)V

    .line 878
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mControllerService:Lcom/android/server/audio/AudioService$ControllerService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$ControllerService;->init()V

    .line 879
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->onIndicateSystemReady()V

    .line 880
    return-void

    .line 863
    .end local v7    # "delay":I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 867
    :cond_3
    const/16 v7, 0x7530

    goto :goto_0
.end method

.method public playSoundEffect(I)V
    .locals 1
    .param p1, "effectType"    # I

    .prologue
    .line 2555
    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioService;->playSoundEffectVolume(IF)V

    .line 2556
    return-void
.end method

.method public playSoundEffectVolume(IF)V
    .locals 7
    .param p1, "effectType"    # I
    .param p2, "volume"    # F

    .prologue
    .line 2560
    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 2561
    :cond_0
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioService effectType value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " out of range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2567
    :goto_0
    return-void

    .line 2565
    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v1, 0x5

    const/4 v2, 0x2

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v3, p2

    float-to-int v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v3, p1

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public registerAudioPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;Z)Ljava/lang/String;
    .locals 9
    .param p1, "policyConfig"    # Landroid/media/audiopolicy/AudioPolicyConfig;
    .param p2, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;
    .param p3, "hasFocusListener"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 6596
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mDynPolicyCallback:Landroid/media/AudioSystem$DynamicPolicyCallback;

    invoke-static {v5}, Landroid/media/AudioSystem;->setDynamicPolicyCallback(Landroid/media/AudioSystem$DynamicPolicyCallback;)V

    .line 6598
    const-string v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "registerAudioPolicy for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with config:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6600
    const/4 v3, 0x0

    .line 6602
    .local v3, "regId":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    const/4 v2, 0x1

    .line 6605
    .local v2, "hasPermissionForPolicy":Z
    :cond_0
    if-nez v2, :cond_1

    .line 6606
    const-string v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t register audio policy for pid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", need MODIFY_AUDIO_ROUTING"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6628
    :goto_0
    return-object v4

    .line 6611
    :cond_1
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v5

    .line 6613
    :try_start_0
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 6614
    const-string v6, "AudioService"

    const-string v7, "Cannot re-register policy"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6615
    :try_start_1
    monitor-exit v5

    goto :goto_0

    .line 6627
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 6617
    :cond_2
    :try_start_2
    new-instance v0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;-><init>(Lcom/android/server/audio/AudioService;Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;Z)V

    .line 6618
    .local v0, "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v0, v7}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 6619
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->getRegistrationId()Ljava/lang/String;

    move-result-object v3

    .line 6620
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6627
    :try_start_3
    monitor-exit v5

    move-object v4, v3

    .line 6628
    goto :goto_0

    .line 6621
    .end local v0    # "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    :catch_0
    move-exception v1

    .line 6623
    .local v1, "e":Landroid/os/RemoteException;
    const-string v6, "AudioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Audio policy registration failed, could not link to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " binder death"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6625
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;II)Z
    .locals 1
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 5725
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/audio/MediaFocusControl;->registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;II)Z

    move-result v0

    return v0
.end method

.method public registerRemoteController(Landroid/media/IRemoteControlDisplay;IILandroid/content/ComponentName;)Z
    .locals 1
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "listenerComp"    # Landroid/content/ComponentName;

    .prologue
    .line 5721
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/audio/MediaFocusControl;->registerRemoteController(Landroid/media/IRemoteControlDisplay;IILandroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public reloadAudioSettings()V
    .locals 1

    .prologue
    .line 2656
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->readAudioSettings(Z)V

    .line 2657
    return-void
.end method

.method public remoteControlDisplayUsesBitmapSize(Landroid/media/IRemoteControlDisplay;II)V
    .locals 1
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 5733
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/audio/MediaFocusControl;->remoteControlDisplayUsesBitmapSize(Landroid/media/IRemoteControlDisplay;II)V

    .line 5734
    return-void
.end method

.method public remoteControlDisplayWantsPlaybackPositionSync(Landroid/media/IRemoteControlDisplay;Z)V
    .locals 1
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "wantsSync"    # Z

    .prologue
    .line 5738
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/audio/MediaFocusControl;->remoteControlDisplayWantsPlaybackPositionSync(Landroid/media/IRemoteControlDisplay;Z)V

    .line 5739
    return-void
.end method

.method public requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;ILandroid/media/audiopolicy/IAudioPolicyCallback;)I
    .locals 8
    .param p1, "aa"    # Landroid/media/AudioAttributes;
    .param p2, "durationHint"    # I
    .param p3, "cb"    # Landroid/os/IBinder;
    .param p4, "fd"    # Landroid/media/IAudioFocusDispatcher;
    .param p5, "clientId"    # Ljava/lang/String;
    .param p6, "callingPackageName"    # Ljava/lang/String;
    .param p7, "flags"    # I
    .param p8, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .prologue
    .line 5754
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestAF from pid= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " clientId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " durationHint = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5757
    and-int/lit8 v0, p7, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 5758
    const-string v0, "AudioFocus_For_Phone_Ring_And_Calls"

    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5759
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 5761
    const-string v0, "AudioService"

    const-string v1, "Invalid permission to (un)lock audio focus"

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5762
    const/4 v0, 0x0

    .line 5775
    :goto_0
    return v0

    .line 5766
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v1

    .line 5767
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface/range {p8 .. p8}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5768
    const-string v0, "AudioService"

    const-string v2, "Invalid unregistered AudioPolicy to (un)lock audio focus"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5769
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 5771
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5775
    :cond_2
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/audio/MediaFocusControl;->requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public requestFixedDLNAVolume(Landroid/os/IBinder;I)V
    .locals 9
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "index"    # I

    .prologue
    const/high16 v3, 0x20000000

    const/4 v1, 0x0

    const/4 v8, 0x3

    .line 7139
    const-class v2, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v2

    .line 7140
    :try_start_0
    sget-object v4, Lcom/android/server/audio/AudioService;->mFixedDLNAVolumeLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7141
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mFixedDLNAVolumeDeathHandler:Lcom/android/server/audio/AudioService$FixedDLNAVolumeDeathHandler;

    if-eqz v0, :cond_0

    .line 7142
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mFixedDLNAVolumeDeathHandler:Lcom/android/server/audio/AudioService$FixedDLNAVolumeDeathHandler;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$FixedDLNAVolumeDeathHandler;->unlinkToDeath()V

    .line 7143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mFixedDLNAVolumeDeathHandler:Lcom/android/server/audio/AudioService$FixedDLNAVolumeDeathHandler;

    .line 7146
    :cond_0
    new-instance v0, Lcom/android/server/audio/AudioService$FixedDLNAVolumeDeathHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/server/audio/AudioService$FixedDLNAVolumeDeathHandler;-><init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mFixedDLNAVolumeDeathHandler:Lcom/android/server/audio/AudioService$FixedDLNAVolumeDeathHandler;

    .line 7147
    mul-int/lit8 v0, p2, 0xa

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    const/4 v7, 0x3

    aget v6, v6, v7

    invoke-direct {p0, v0, v5, v6}, Lcom/android/server/audio/AudioService;->rescaleIndex(III)I

    move-result p2

    .line 7148
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v5, 0x3

    aget-object v0, v0, v5

    const/high16 v5, 0x20000000

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, p2, v5, v6}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    .line 7150
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7151
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 7153
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v2, 0x2

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v5, v4, v8

    move v4, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 7160
    return-void

    .line 7150
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 7151
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public restoreSoundEffect(Ljava/lang/String;)V
    .locals 1
    .param p1, "clientId"    # Ljava/lang/String;

    .prologue
    .line 7028
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHtcBeatsEffect:Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;

    invoke-interface {v0, p1}, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;->restoreSoundEffect(Ljava/lang/String;)V

    .line 7029
    return-void
.end method

.method public setBluetoothA2dpDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;II)I
    .locals 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "profile"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x2

    .line 3855
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBluetoothA2dpDeviceConnectionState, state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3856
    if-eq p3, v4, :cond_0

    const/16 v1, 0xb

    if-eq p3, v1, :cond_0

    .line 3857
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid profile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3859
    :cond_0
    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v7

    .line 3860
    if-ne p3, v4, :cond_2

    .line 3861
    const/16 v1, 0x80

    if-ne p2, v4, :cond_1

    const/4 v0, 0x1

    :cond_1
    :try_start_0
    invoke-direct {p0, v1, v0}, Lcom/android/server/audio/AudioService;->checkSendBecomingNoisyIntent(II)I

    move-result v6

    .line 3866
    .local v6, "delay":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    if-ne p3, v4, :cond_3

    const/16 v2, 0x66

    :goto_1
    const/4 v4, 0x0

    move-object v0, p0

    move v3, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V

    .line 3873
    monitor-exit v7

    .line 3874
    return v6

    .line 3864
    .end local v6    # "delay":I
    :cond_2
    const/4 v6, 0x0

    .restart local v6    # "delay":I
    goto :goto_0

    .line 3866
    :cond_3
    const/16 v2, 0x65

    goto :goto_1

    .line 3873
    .end local v6    # "delay":I
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBluetoothA2dpOn(Z)V
    .locals 8
    .param p1, "on"    # Z

    .prologue
    const/4 v4, 0x0

    .line 2751
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBluetoothA2dpOn, on="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2752
    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2753
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabled:Z

    .line 2756
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mFMActive:Z

    if-nez v0, :cond_0

    .line 2757
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0xd

    const/4 v2, 0x2

    const/4 v3, 0x1

    iget-boolean v5, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabled:Z

    if-eqz v5, :cond_1

    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2763
    :cond_0
    monitor-exit v7

    .line 2764
    return-void

    .line 2757
    :cond_1
    const/16 v4, 0xa

    goto :goto_0

    .line 2763
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBluetoothA2dpOnInt(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 5937
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBTA2dpOnInt, on="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5938
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5939
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabled:Z

    .line 5940
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Lcom/android/server/audio/AudioService$AudioHandler;->removeMessages(I)V

    .line 5943
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mFMActive:Z

    if-nez v0, :cond_0

    .line 5944
    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabled:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v2, v0}, Lcom/android/server/audio/AudioService;->setForceUseInt_SyncDevices(II)V

    .line 5948
    :cond_0
    monitor-exit v1

    .line 5949
    return-void

    .line 5944
    :cond_1
    const/16 v0, 0xa

    goto :goto_0

    .line 5948
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBluetoothScoOn(Z)V
    .locals 13
    .param p1, "on"    # Z

    .prologue
    const/4 v5, 0x0

    const/16 v1, 0x8

    const/4 v7, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 2727
    const-string v0, "setBluetoothScoOn()"

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2742
    :goto_0
    return-void

    .line 2730
    :cond_0
    const-string v0, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setBluetoothScoOn, on="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ",from pid="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2732
    if-eqz p1, :cond_2

    .line 2733
    iput v7, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    .line 2738
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    iget v4, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    move v6, v3

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2740
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    iget v10, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    move v7, v1

    move v8, v2

    move v9, v2

    move-object v11, v5

    move v12, v3

    invoke-static/range {v6 .. v12}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_0

    .line 2734
    :cond_2
    iget v0, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    if-ne v0, v7, :cond_1

    .line 2735
    iput v3, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    goto :goto_1
.end method

.method setBtScoDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 10
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 3119
    if-nez p1, :cond_1

    .line 3159
    :cond_0
    :goto_0
    return-void

    .line 3123
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 3124
    .local v0, "address":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v1

    .line 3125
    .local v1, "btClass":Landroid/bluetooth/BluetoothClass;
    const/16 v5, 0x10

    .line 3126
    .local v5, "outDevice":I
    const v4, -0x7ffffff8

    .line 3127
    .local v4, "inDevice":I
    if-eqz v1, :cond_2

    .line 3128
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    .line 3139
    :cond_2
    :goto_1
    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 3140
    const-string v0, ""

    .line 3143
    :cond_3
    const/4 v9, 0x2

    if-ne p2, v9, :cond_4

    move v3, v7

    .line 3145
    .local v3, "connected":Z
    :goto_2
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    .line 3146
    .local v2, "btDeviceName":Ljava/lang/String;
    invoke-direct {p0, v3, v5, v0, v2}, Lcom/android/server/audio/AudioService;->handleDeviceConnection(ZILjava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-direct {p0, v3, v4, v0, v2}, Lcom/android/server/audio/AudioService;->handleDeviceConnection(ZILjava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    move v6, v7

    .line 3149
    .local v6, "success":Z
    :goto_3
    if-eqz v6, :cond_0

    .line 3150
    iget-object v8, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v8

    .line 3151
    if-eqz v3, :cond_6

    .line 3152
    :try_start_0
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 3157
    :goto_4
    monitor-exit v8

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 3131
    .end local v2    # "btDeviceName":Ljava/lang/String;
    .end local v3    # "connected":Z
    .end local v6    # "success":Z
    :sswitch_0
    const/16 v5, 0x20

    .line 3132
    goto :goto_1

    .line 3134
    :sswitch_1
    const/16 v5, 0x40

    goto :goto_1

    :cond_4
    move v3, v8

    .line 3143
    goto :goto_2

    .restart local v2    # "btDeviceName":Ljava/lang/String;
    .restart local v3    # "connected":Z
    :cond_5
    move v6, v8

    .line 3146
    goto :goto_3

    .line 3154
    .restart local v6    # "success":Z
    :cond_6
    const/4 v7, 0x0

    :try_start_1
    iput-object v7, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 3155
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->resetBluetoothSco()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 3128
    nop

    :sswitch_data_0
    .sparse-switch
        0x404 -> :sswitch_0
        0x408 -> :sswitch_0
        0x420 -> :sswitch_1
    .end sparse-switch
.end method

.method public setDLNAPlayingOn(Landroid/os/IBinder;Z)V
    .locals 3
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "on"    # Z

    .prologue
    .line 7230
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDLNAPlayingOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7231
    sget-object v1, Lcom/android/server/audio/AudioService;->mDLNAPlayingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 7232
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDLNAPlayingDeathHandler:Lcom/android/server/audio/AudioService$DLNAPlayingDeathHandler;

    if-eqz v0, :cond_0

    .line 7233
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDLNAPlayingDeathHandler:Lcom/android/server/audio/AudioService$DLNAPlayingDeathHandler;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$DLNAPlayingDeathHandler;->unlinkToDeath()V

    .line 7234
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mDLNAPlayingDeathHandler:Lcom/android/server/audio/AudioService$DLNAPlayingDeathHandler;

    .line 7237
    :cond_0
    if-eqz p2, :cond_1

    .line 7238
    new-instance v0, Lcom/android/server/audio/AudioService$DLNAPlayingDeathHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/server/audio/AudioService$DLNAPlayingDeathHandler;-><init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mDLNAPlayingDeathHandler:Lcom/android/server/audio/AudioService$DLNAPlayingDeathHandler;

    .line 7239
    :cond_1
    monitor-exit v1

    .line 7240
    return-void

    .line 7239
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDeviceVolume(III)V
    .locals 7
    .param p1, "stream"    # I
    .param p2, "device"    # I
    .param p3, "index"    # I

    .prologue
    const/4 v4, 0x0

    .line 7453
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDeviceVolume for stream: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Pid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7455
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v5, v0, p1

    .line 7456
    .local v5, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    mul-int/lit8 v0, p3, 0xa

    const-string v1, "AudioService"

    invoke-virtual {v5, v0, p2, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7457
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x3ea

    const/4 v2, 0x2

    move v3, p2

    move v6, v4

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 7467
    :goto_0
    return-void

    .line 7465
    :cond_0
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "volume index is the same for device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setEffectManagerProperty(II)V
    .locals 1
    .param p1, "name"    # I
    .param p2, "value"    # I

    .prologue
    .line 7128
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHtcBeatsEffect:Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;->setSystemProperty(II)V

    .line 7129
    return-void
.end method

.method public setFocusPropertiesForPolicy(ILandroid/media/audiopolicy/IAudioPolicyCallback;)I
    .locals 10
    .param p1, "duckingBehavior"    # I
    .param p2, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v6, 0x1

    .line 6648
    const-string v7, "AudioService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setFocusPropertiesForPolicy() duck behavior="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " policy "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6651
    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v7, v8}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_0

    move v1, v6

    .line 6654
    .local v1, "hasPermissionForPolicy":Z
    :goto_0
    if-nez v1, :cond_1

    .line 6655
    const-string v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot change audio policy ducking handling for pid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", need MODIFY_AUDIO_ROUTING"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6680
    :goto_1
    return v4

    .end local v1    # "hasPermissionForPolicy":Z
    :cond_0
    move v1, v5

    .line 6651
    goto :goto_0

    .line 6661
    .restart local v1    # "hasPermissionForPolicy":Z
    :cond_1
    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v7

    .line 6662
    :try_start_0
    iget-object v8, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 6663
    const-string v5, "AudioService"

    const-string v6, "Cannot change audio policy focus properties, unregistered policy"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6664
    monitor-exit v7

    goto :goto_1

    .line 6679
    :catchall_0
    move-exception v4

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 6666
    :cond_2
    :try_start_1
    iget-object v8, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    .line 6667
    .local v0, "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    if-ne p1, v6, :cond_4

    .line 6669
    iget-object v8, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    .line 6670
    .local v3, "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    iget v8, v3, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mFocusDuckBehavior:I

    if-ne v8, v6, :cond_3

    .line 6671
    const-string v5, "AudioService"

    const-string v6, "Cannot change audio policy ducking behavior, already handled"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6672
    monitor-exit v7

    goto :goto_1

    .line 6676
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    :cond_4
    iput p1, v0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mFocusDuckBehavior:I

    .line 6677
    iget-object v8, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    if-ne p1, v6, :cond_5

    move v4, v6

    :goto_2
    invoke-virtual {v8, v4}, Lcom/android/server/audio/MediaFocusControl;->setDuckingInExtPolicyAvailable(Z)V

    .line 6679
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v4, v5

    .line 6680
    goto :goto_1

    :cond_5
    move v4, v5

    .line 6677
    goto :goto_2
.end method

.method public setGlobalEffect(ILjava/lang/String;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "callingPackageName"    # Ljava/lang/String;

    .prologue
    .line 7010
    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    .line 7011
    sget-boolean v0, Lcom/android/server/audio/AudioService;->ENABLE_BEATS:Z

    if-eqz v0, :cond_1

    .line 7012
    const/16 p1, 0x384

    .line 7019
    :cond_0
    :goto_0
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setGlobalEffect id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7020
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHtcBeatsEffect:Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;

    invoke-interface {v0, p1}, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;->setSystemSoundEffect(I)V

    .line 7021
    return-void

    .line 7013
    :cond_1
    sget-boolean v0, Lcom/android/server/audio/AudioService;->ENABLE_SRS:Z

    if-eqz v0, :cond_2

    .line 7014
    const/16 p1, 0x386

    goto :goto_0

    .line 7016
    :cond_2
    const/16 p1, 0x320

    goto :goto_0
.end method

.method public setHdmiSystemAudioSupported(Z)I
    .locals 6
    .param p1, "on"    # Z

    .prologue
    .line 6178
    const/4 v0, 0x0

    .line 6179
    .local v0, "device":I
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v2, :cond_2

    .line 6180
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v3

    .line 6181
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-nez v2, :cond_0

    .line 6182
    const-string v2, "AudioService"

    const-string v4, "Only Hdmi-Cec enabled TV device supports system audio mode."

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6183
    monitor-exit v3

    move v1, v0

    .line 6197
    .end local v0    # "device":I
    .local v1, "device":I
    :goto_0
    return v1

    .line 6186
    .end local v1    # "device":I
    .restart local v0    # "device":I
    :cond_0
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6187
    :try_start_1
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    if-eq v2, p1, :cond_1

    .line 6188
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    .line 6189
    const/4 v5, 0x5

    if-eqz p1, :cond_3

    const/16 v2, 0xc

    :goto_1
    invoke-static {v5, v2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 6193
    :cond_1
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/android/server/audio/AudioService;->getDevicesForStream(I)I

    move-result v0

    .line 6194
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6195
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    move v1, v0

    .line 6197
    .end local v0    # "device":I
    .restart local v1    # "device":I
    goto :goto_0

    .line 6189
    .end local v1    # "device":I
    .restart local v0    # "device":I
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 6194
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    .line 6195
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2
.end method

.method public setMasterMute(ZILjava/lang/String;I)V
    .locals 6
    .param p1, "mute"    # Z
    .param p2, "flags"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .prologue
    .line 1991
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioService;->setMasterMuteInternal(ZILjava/lang/String;II)V

    .line 1993
    return-void
.end method

.method public setMicrophoneMute(ZLjava/lang/String;I)V
    .locals 8
    .param p1, "on"    # Z
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 2048
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMicrophoneMute(): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " from pid = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " userId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2052
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 2053
    .local v7, "uid":I
    const/16 v0, 0x3e8

    if-ne v7, v0, :cond_0

    .line 2054
    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-static {p3, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v7

    .line 2056
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1, v7, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 2078
    :cond_1
    :goto_0
    return-void

    .line 2060
    :cond_2
    const-string v0, "setMicrophoneMute()"

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2063
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p3, v0, :cond_3

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 2072
    :cond_3
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getCurrentUserId()I

    move-result v0

    if-ne v0, p3, :cond_4

    .line 2073
    invoke-static {p1}, Landroid/media/AudioSystem;->muteMicrophone(Z)I

    .line 2076
    :cond_4
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x17

    if-eqz p1, :cond_5

    const/4 v3, 0x1

    :goto_1
    const/4 v5, 0x0

    const/16 v6, 0x1f4

    move v4, p3

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_0

    :cond_5
    move v3, v2

    goto :goto_1
.end method

.method public setMode(ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 5
    .param p1, "mode"    # I
    .param p2, "cb"    # Landroid/os/IBinder;
    .param p3, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 2320
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMode(mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", callingPackage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2321
    const-string v1, "setMode()"

    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2350
    :cond_0
    :goto_0
    return-void

    .line 2325
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 2329
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MODIFY_PHONE_STATE Permission Denial: setMode(MODE_IN_CALL) from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2334
    :cond_2
    if-lt p1, v4, :cond_0

    const/4 v1, 0x4

    if-ge p1, v1, :cond_0

    .line 2338
    const/4 v0, 0x0

    .line 2339
    .local v0, "newModeOwnerPid":I
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    monitor-enter v2

    .line 2340
    if-ne p1, v4, :cond_3

    .line 2341
    :try_start_0
    iget p1, p0, Lcom/android/server/audio/AudioService;->mMode:I

    .line 2343
    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-direct {p0, p1, p2, v1, p3}, Lcom/android/server/audio/AudioService;->setModeInt(ILandroid/os/IBinder;ILjava/lang/String;)I

    move-result v0

    .line 2344
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2347
    if-eqz v0, :cond_0

    .line 2348
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->disconnectBluetoothSco(I)V

    goto :goto_0

    .line 2344
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setRemoteStreamVolume(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 5743
    const-string v0, "set the remote stream volume"

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->enforceVolumeController(Ljava/lang/String;)V

    .line 5744
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/MediaFocusControl;->setRemoteStreamVolume(I)V

    .line 5745
    return-void
.end method

.method public setRingerModeExternal(ILjava/lang/String;)V
    .locals 1
    .param p1, "ringerMode"    # I
    .param p2, "caller"    # Ljava/lang/String;

    .prologue
    .line 2106
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/audio/AudioService;->setRingerMode(ILjava/lang/String;Z)V

    .line 2107
    return-void
.end method

.method public setRingerModeInternal(ILjava/lang/String;)V
    .locals 1
    .param p1, "ringerMode"    # I
    .param p2, "caller"    # Ljava/lang/String;

    .prologue
    .line 2110
    const-string v0, "setRingerModeInternal"

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->enforceVolumeController(Ljava/lang/String;)V

    .line 2111
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/audio/AudioService;->setRingerMode(ILjava/lang/String;Z)V

    .line 2112
    return-void
.end method

.method public setRingtonePlayer(Landroid/media/IRingtonePlayer;)V
    .locals 3
    .param p1, "player"    # Landroid/media/IRingtonePlayer;

    .prologue
    .line 5976
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.REMOTE_AUDIO_PLAYBACK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5977
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mRingtonePlayer:Landroid/media/IRingtonePlayer;

    .line 5978
    return-void
.end method

.method public setSpeakerphoneOn(Z)V
    .locals 13
    .param p1, "on"    # Z

    .prologue
    const/4 v5, 0x0

    const/16 v1, 0x8

    const/4 v7, 0x1

    const/4 v2, 0x2

    const/4 v4, 0x0

    .line 2702
    const-string v0, "setSpeakerphoneOn()"

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2718
    :goto_0
    return-void

    .line 2705
    :cond_0
    const-string v0, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setSpeakerphoneOn, on="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ",from pid="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2706
    if-eqz p1, :cond_3

    .line 2707
    iget v0, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    .line 2708
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    move v3, v2

    move v6, v4

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2711
    :cond_1
    iput v7, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    .line 2716
    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    iget v10, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    move v7, v1

    move v8, v2

    move v9, v4

    move-object v11, v5

    move v12, v4

    invoke-static/range {v6 .. v12}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_0

    .line 2712
    :cond_3
    iget v0, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    if-ne v0, v7, :cond_2

    .line 2713
    iput v4, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    goto :goto_1
.end method

.method public setStreamVolume(IIILjava/lang/String;)V
    .locals 7
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 1573
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->setStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    .line 1575
    return-void
.end method

.method public setVibrateSetting(II)V
    .locals 1
    .param p1, "vibrateType"    # I
    .param p2, "vibrateSetting"    # I

    .prologue
    .line 2261
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-nez v0, :cond_0

    .line 2269
    :goto_0
    return-void

    .line 2263
    :cond_0
    iget v0, p0, Lcom/android/server/audio/AudioService;->mVibrateSetting:I

    invoke-static {v0, p1, p2}, Landroid/media/AudioSystem;->getValueForVibrateSetting(III)I

    move-result v0

    iput v0, p0, Lcom/android/server/audio/AudioService;->mVibrateSetting:I

    .line 2267
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->broadcastVibrateSetting(I)V

    goto :goto_0
.end method

.method public setVolumeController(Landroid/media/IVolumeController;)V
    .locals 3
    .param p1, "controller"    # Landroid/media/IVolumeController;

    .prologue
    .line 6360
    const-string v0, "set the volume controller"

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->enforceVolumeController(Ljava/lang/String;)V

    .line 6363
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService$VolumeController;->isSameBinder(Landroid/media/IVolumeController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6387
    :goto_0
    return-void

    .line 6368
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeController;->postDismiss()V

    .line 6369
    if-eqz p1, :cond_1

    .line 6372
    :try_start_0
    invoke-interface {p1}, Landroid/media/IVolumeController;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Lcom/android/server/audio/AudioService$3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/audio/AudioService$3;-><init>(Lcom/android/server/audio/AudioService;Landroid/media/IVolumeController;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6385
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService$VolumeController;->setController(Landroid/media/IVolumeController;)V

    .line 6386
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Volume controller: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6381
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public setVolumePolicy(Landroid/media/VolumePolicy;)V
    .locals 3
    .param p1, "policy"    # Landroid/media/VolumePolicy;

    .prologue
    .line 6404
    const-string v0, "set volume policy"

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->enforceVolumeController(Ljava/lang/String;)V

    .line 6405
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    invoke-virtual {p1, v0}, Landroid/media/VolumePolicy;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6406
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    .line 6407
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Volume policy changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6409
    :cond_0
    return-void
.end method

.method public setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .param p1, "type"    # I
    .param p2, "state"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "caller"    # Ljava/lang/String;

    .prologue
    .line 3837
    iget-object v9, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v9

    .line 3839
    :try_start_0
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWiredDeviceConnectionState(type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " nm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " addr:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " caller: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3842
    invoke-direct/range {p0 .. p2}, Lcom/android/server/audio/AudioService;->checkSendBecomingNoisyIntent(II)I

    move-result v8

    .line 3843
    .local v8, "delay":I
    iget-object v10, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v11, 0x64

    const/4 v12, 0x0

    const/4 v13, 0x0

    new-instance v1, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;

    move-object v2, p0

    move v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;-><init>(Lcom/android/server/audio/AudioService;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, p0

    move-object v3, v10

    move v4, v11

    move v5, v12

    move v6, v13

    move-object v7, v1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V

    .line 3849
    monitor-exit v9

    .line 3850
    return-void

    .line 3849
    .end local v8    # "delay":I
    :catchall_0
    move-exception v1

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public shouldVibrate(I)Z
    .locals 3
    .param p1, "vibrateType"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2233
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-nez v2, :cond_0

    .line 2248
    :goto_0
    :pswitch_0
    return v1

    .line 2235
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->getVibrateSetting(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 2238
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 2241
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    move-result v2

    if-ne v2, v0, :cond_2

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2

    .line 2235
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public startBluetoothSco(Landroid/os/IBinder;I)V
    .locals 2
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "targetSdkVersion"    # I

    .prologue
    .line 2775
    const/16 v1, 0x12

    if-ge p2, v1, :cond_0

    const/4 v0, 0x0

    .line 2778
    .local v0, "scoAudioMode":I
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioService;->startBluetoothScoInt(Landroid/os/IBinder;I)V

    .line 2779
    return-void

    .line 2775
    .end local v0    # "scoAudioMode":I
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method startBluetoothScoInt(Landroid/os/IBinder;I)V
    .locals 6
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "scoAudioMode"    # I

    .prologue
    .line 2787
    const-string v1, "startBluetoothSco()"

    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    if-nez v1, :cond_1

    .line 2801
    :cond_0
    :goto_0
    return-void

    .line 2791
    :cond_1
    const-string v1, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startBTSco,from pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", scoAudioMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2792
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/server/audio/AudioService;->getScoClient(Landroid/os/IBinder;Z)Lcom/android/server/audio/AudioService$ScoClient;

    move-result-object v0

    .line 2798
    .local v0, "client":Lcom/android/server/audio/AudioService$ScoClient;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2799
    .local v2, "ident":J
    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioService$ScoClient;->incCount(I)V

    .line 2800
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0
.end method

.method public startBluetoothScoVirtualCall(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 2783
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioService;->startBluetoothScoInt(Landroid/os/IBinder;I)V

    .line 2784
    return-void
.end method

.method public startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;
    .locals 3
    .param p1, "observer"    # Landroid/media/IAudioRoutesObserver;

    .prologue
    .line 5987
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v2

    .line 5988
    :try_start_0
    new-instance v0, Landroid/media/AudioRoutesInfo;

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    invoke-direct {v0, v1}, Landroid/media/AudioRoutesInfo;-><init>(Landroid/media/AudioRoutesInfo;)V

    .line 5989
    .local v0, "routes":Landroid/media/AudioRoutesInfo;
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 5990
    monitor-exit v2

    return-object v0

    .line 5991
    .end local v0    # "routes":Landroid/media/AudioRoutesInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stopBluetoothSco(Landroid/os/IBinder;)V
    .locals 6
    .param p1, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 2805
    const-string v1, "stopBluetoothSco()"

    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    if-nez v1, :cond_1

    .line 2819
    :cond_0
    :goto_0
    return-void

    .line 2809
    :cond_1
    const-string v1, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopBTSco, from pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2810
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/server/audio/AudioService;->getScoClient(Landroid/os/IBinder;Z)Lcom/android/server/audio/AudioService$ScoClient;

    move-result-object v0

    .line 2814
    .local v0, "client":Lcom/android/server/audio/AudioService$ScoClient;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2815
    .local v2, "ident":J
    if-eqz v0, :cond_2

    .line 2816
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$ScoClient;->decCount()V

    .line 2818
    :cond_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0
.end method

.method public systemReady()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 818
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x15

    const/4 v2, 0x2

    const/4 v5, 0x0

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 820
    return-void
.end method

.method public unloadSoundEffects()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 2596
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x14

    const/4 v2, 0x2

    const/4 v5, 0x0

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2597
    return-void
.end method

.method public unregisterAudioFocusClient(Ljava/lang/String;)V
    .locals 1
    .param p1, "clientId"    # Ljava/lang/String;

    .prologue
    .line 5784
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/MediaFocusControl;->unregisterAudioFocusClient(Ljava/lang/String;)V

    .line 5785
    return-void
.end method

.method public unregisterAudioPolicyAsync(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .locals 5
    .param p1, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .prologue
    .line 6632
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterAudioPolicyAsync for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6633
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v2

    .line 6634
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    .line 6635
    .local v0, "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    if-nez v0, :cond_0

    .line 6636
    const-string v1, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to unregister unknown audio policy for pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6638
    monitor-exit v2

    .line 6645
    :goto_0
    return-void

    .line 6640
    :cond_0
    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 6642
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->release()V

    .line 6643
    monitor-exit v2

    goto :goto_0

    .end local v0    # "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    .locals 1
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;

    .prologue
    .line 5729
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/MediaFocusControl;->unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V

    .line 5730
    return-void
.end method
