.class public final Lcom/android/server/power/PowerManagerService;
.super Lcom/android/server/SystemService;
.source "PowerManagerService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/PowerManagerService$LocalService;,
        Lcom/android/server/power/PowerManagerService$BinderService;,
        Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;,
        Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;,
        Lcom/android/server/power/PowerManagerService$WakeLock;,
        Lcom/android/server/power/PowerManagerService$PowerManagerHandler;,
        Lcom/android/server/power/PowerManagerService$SettingsObserver;,
        Lcom/android/server/power/PowerManagerService$DockReceiver;,
        Lcom/android/server/power/PowerManagerService$UserSwitchedReceiver;,
        Lcom/android/server/power/PowerManagerService$DreamReceiver;,
        Lcom/android/server/power/PowerManagerService$BatteryReceiver;
    }
.end annotation


# static fields
.field private static final CPU_LOCK_MASK:I = 0xf000

.field private static final DEBUG:Z = false

.field private static final DEBUG_ON:Z

.field private static final DEBUG_SECURITY_ON:Z = false

.field private static final DEBUG_SPEW:Z = false

.field private static final DEFAULT_DOUBLE_TAP_TO_WAKE:I = 0x0

.field private static final DEFAULT_SCREEN_OFF_TIMEOUT:I = 0x3a98

.field private static final DEFAULT_SLEEP_TIMEOUT:I = -0x1

.field private static final DIM_ANIMATION_FLAG_OFF:I = 0x0

.field private static final DIM_ANIMATION_FLAG_ON:I = 0x1

.field private static final DIRTY_ACTUAL_DISPLAY_POWER_STATE_UPDATED:I = 0x8

.field private static final DIRTY_BATTERY_STATE:I = 0x100

.field private static final DIRTY_BOOT_COMPLETED:I = 0x10

.field private static final DIRTY_DOCK_STATE:I = 0x400

.field private static final DIRTY_IS_POWERED:I = 0x40

.field private static final DIRTY_PROXIMITY_POSITIVE:I = 0x200

.field private static final DIRTY_SCREEN_BRIGHTNESS_BOOST:I = 0x800

.field private static final DIRTY_SETTINGS:I = 0x20

.field private static final DIRTY_STAY_ON:I = 0x80

.field private static final DIRTY_USER_ACTIVITY:I = 0x4

.field private static final DIRTY_WAKEFULNESS:I = 0x2

.field private static final DIRTY_WAKE_LOCKS:I = 0x1

.field private static final MSG_SANDMAN:I = 0x2

.field private static final MSG_SCREEN_BRIGHTNESS_BOOST_TIMEOUT:I = 0x3

.field private static final MSG_SEND_CLEAR_SCREEN_TIMEOUT_TASK:I = 0x8

.field private static final MSG_UPDATE_DIM_ANIMATION_STATUS:I = 0xd

.field private static final MSG_USER_ACTIVITY_TIMEOUT:I = 0x1

.field private static final POWER_FEATURE_DOUBLE_TAP_TO_WAKE:I = 0x1

.field private static final POWER_HINT_INTERACTION:I = 0x2

.field private static final POWER_HINT_LOW_POWER:I = 0x5

.field private static final SCREEN_BRIGHTNESS_BOOST_TIMEOUT:I = 0x1388

.field private static final SEND_CLEAR_SCREEN_TIMEOUT_DELAY_VALUE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PMS"

.field private static final USER_ACTIVITY_SCREEN_BRIGHT:I = 0x1

.field private static final USER_ACTIVITY_SCREEN_DIM:I = 0x2

.field private static final USER_ACTIVITY_SCREEN_DREAM:I = 0x4

.field private static final WAKE_LOCK_BUTTON_BRIGHT:I = 0x8

.field private static final WAKE_LOCK_CPU:I = 0x1

.field private static final WAKE_LOCK_DOZE:I = 0x40

.field private static final WAKE_LOCK_DRAW:I = 0x80

.field private static final WAKE_LOCK_PROXIMITY_SCREEN_OFF:I = 0x10

.field private static final WAKE_LOCK_SCREEN_BRIGHT:I = 0x2

.field private static final WAKE_LOCK_SCREEN_DIM:I = 0x4

.field private static final WAKE_LOCK_STAY_AWAKE:I = 0x20

.field private static mDimAnimationCompleted:Z

.field private static mHtcPMSExtension:Lcom/android/server/power/HtcPMSExtension;


# instance fields
.field private final DEFAULT_SYSTEM_TIMEOUT:I

.field private mAppOps:Lcom/android/internal/app/IAppOpsService;

.field private mAttentionLight:Lcom/android/server/lights/Light;

.field private mAutoLowPowerModeConfigured:Z

.field private mAutoLowPowerModeSnoozing:Z

.field private mAutoLowPowerModeTriggerLevel:I

.field private mBatteryLevel:I

.field private mBatteryLevelLow:Z

.field private mBatteryLevelWhenDreamStarted:I

.field private mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

.field private mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBootCompleted:Z

.field private mClearScreenTimeoutTask:Ljava/lang/Runnable;

.field private final mContext:Landroid/content/Context;

.field private mCpuFreqMaxCount:I

.field private mCpuFreqMinCount:I

.field private mCpuNumMaxCount:I

.field private mCpuNumMinCount:I

.field private mCpuPerfCount:I

.field private mCurAutoLowPowerModeEnabled:Z

.field private mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

.field private mDecoupleHalInteractiveModeFromDisplayConfig:Z

.field private mDeviceIdleMode:Z

.field mDeviceIdleTempWhitelist:[I

.field mDeviceIdleWhitelist:[I

.field private mDirty:I

.field private mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private final mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

.field private final mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

.field private mDisplayReady:Z

.field private final mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

.field private mDockState:I

.field private mDoubleTapWakeEnabled:Z

.field private mDozeAfterScreenOffConfig:Z

.field private mDozeScreenBrightnessOverrideFromDreamManager:I

.field private mDozeScreenStateOverrideFromDreamManager:I

.field private mDreamManager:Landroid/service/dreams/DreamManagerInternal;

.field private mDreamsActivateOnDockSetting:Z

.field private mDreamsActivateOnSleepSetting:Z

.field private mDreamsActivatedOnDockByDefaultConfig:Z

.field private mDreamsActivatedOnSleepByDefaultConfig:Z

.field private mDreamsBatteryLevelDrainCutoffConfig:I

.field private mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

.field private mDreamsBatteryLevelMinimumWhenPoweredConfig:I

.field private mDreamsEnabledByDefaultConfig:Z

.field private mDreamsEnabledOnBatteryConfig:Z

.field private mDreamsEnabledSetting:Z

.field private mDreamsSupportedConfig:Z

.field private mHalAutoSuspendModeEnabled:Z

.field private mHalInteractiveModeEnabled:Z

.field private final mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

.field private final mHandlerThread:Lcom/android/server/ServiceThread;

.field private mHoldingDisplaySuspendBlocker:Z

.field private mHoldingWakeLockSuspendBlocker:Z

.field private final mHtcCpuCtrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;",
            ">;"
        }
    .end annotation
.end field

.field private mHtcPowerSaver:Lcom/android/server/power/HtcPowerSaver;

.field private mHtcWakeLockDetector:Lcom/android/server/power/HtcWakeLockDetector;

.field private mIsActualScreenOn:Z

.field private mIsPowered:Z

.field private mIsStockUI:Z

.field private mLastInteractivePowerHintTime:J

.field private mLastScreenBrightnessBoostTime:J

.field private mLastSleepTime:J

.field private mLastUserActivityTime:J

.field private mLastUserActivityTimeNoChangeLights:J

.field private mLastWakeTime:J

.field private mLastWarningAboutUserActivityPermission:J

.field private mLightsManager:Lcom/android/server/lights/LightsManager;

.field private final mLock:Ljava/lang/Object;

.field private mLowPowerModeEnabled:Z

.field private final mLowPowerModeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/PowerManagerInternal$LowPowerModeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLowPowerModeSetting:Z

.field private mMaximumScreenDimDurationConfig:I

.field private mMaximumScreenDimRatioConfig:F

.field private mMaximumScreenOffTimeoutFromDeviceAdmin:I

.field private mMinimumScreenOffTimeoutConfig:I

.field private mNotifier:Lcom/android/server/power/Notifier;

.field private mPlugType:I

.field private mPolicy:Landroid/view/WindowManagerPolicy;

.field private mPowerSaverHandler:Landroid/os/Handler;

.field private mPreScreenDimDuration:I

.field private mPreScreenOffTimeout:I

.field private mPreUserActivitySummary:I

.field private mPreWakefulness:I

.field private mProximityPositive:Z

.field private mRequestWaitForNegativeProximity:Z

.field private mSandmanScheduled:Z

.field private mSandmanSummoned:Z

.field private mScreenAutoBrightnessAdjustmentSetting:F

.field private mScreenBrightnessBoostInProgress:Z

.field private mScreenBrightnessModeSetting:I

.field private mScreenBrightnessOverrideFromWindowManager:I

.field private mScreenBrightnessSetting:I

.field private mScreenBrightnessSettingDefault:I

.field private mScreenBrightnessSettingMaximum:I

.field private mScreenBrightnessSettingMinimum:I

.field private mScreenOffTimeoutSetting:I

.field private mScreenTimeout_Always:I

.field private mScreenTimeout_Once:I

.field private mScreenTimeout_System:I

.field private mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

.field private mSkipLowPowerMode:Z

.field private mSleepTimeoutSetting:I

.field private mStayOn:Z

.field private mStayOnWhilePluggedInSetting:I

.field private mSupportsDoubleTapWakeConfig:Z

.field private final mSuspendBlockers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/SuspendBlocker;",
            ">;"
        }
    .end annotation
.end field

.field private mSuspendWhenScreenOffDueToProximityConfig:Z

.field private mSystemReady:Z

.field private mSystemReadyDone:Z

.field private mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

.field private mTemporaryScreenBrightnessSettingOverride:I

.field private mTheaterModeEnabled:Z

.field private final mUidState:Landroid/util/SparseIntArray;

.field private mUserActivitySummary:I

.field private mUserActivityTimeoutOverrideFromWindowManager:J

.field private mWakeLockSummary:I

.field private mWakeLockSummaryLog:I

.field private final mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

.field private final mWakeLocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/PowerManagerService$WakeLock;",
            ">;"
        }
    .end annotation
.end field

.field private mWakeUpWhenPluggedOrUnpluggedConfig:Z

.field private mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig:Z

.field private mWakefulness:I

.field private mWakefulnessChanging:Z

.field private mWakefulnessLog:I

.field private mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

.field private runHtcPowerSaverCheck:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    .line 130
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/PowerManagerService;->mDimAnimationCompleted:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const v0, 0xea60

    const/4 v2, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 585
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 121
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->DEFAULT_SYSTEM_TIMEOUT:I

    .line 122
    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Once:I

    .line 123
    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Always:I

    .line 124
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_System:I

    .line 191
    iput-object v5, p0, Lcom/android/server/power/PowerManagerService;->mHtcWakeLockDetector:Lcom/android/server/power/HtcWakeLockDetector;

    .line 213
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    .line 236
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHtcCpuCtrls:Ljava/util/ArrayList;

    .line 269
    new-instance v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 294
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mSystemReadyDone:Z

    .line 309
    iput-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mIsActualScreenOn:Z

    .line 327
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    .line 409
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    .line 441
    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    .line 446
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    .line 451
    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    .line 457
    const/high16 v0, 0x7fc00000    # NaNf

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    .line 460
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    .line 463
    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    .line 466
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastWarningAboutUserActivityPermission:J

    .line 478
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mSkipLowPowerMode:Z

    .line 479
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mCurAutoLowPowerModeEnabled:Z

    .line 480
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeTriggerLevel:I

    .line 493
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleWhitelist:[I

    .line 496
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleTempWhitelist:[I

    .line 498
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseIntArray;

    .line 506
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeListeners:Ljava/util/ArrayList;

    .line 543
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mCpuFreqMinCount:I

    .line 544
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mCpuFreqMaxCount:I

    .line 545
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mCpuNumMinCount:I

    .line 546
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mCpuNumMaxCount:I

    .line 548
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mCpuPerfCount:I

    .line 561
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulnessLog:I

    .line 562
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummaryLog:I

    .line 572
    new-instance v0, Lcom/android/server/power/PowerManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$1;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->runHtcPowerSaverCheck:Ljava/lang/Runnable;

    .line 582
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mIsStockUI:Z

    .line 2941
    new-instance v0, Lcom/android/server/power/PowerManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$3;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    .line 3689
    new-instance v0, Lcom/android/server/power/PowerManagerService$6;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$6;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mClearScreenTimeoutTask:Ljava/lang/Runnable;

    .line 586
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 587
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v1, "PMS"

    const/4 v2, -0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 589
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 590
    new-instance v0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    .line 592
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 593
    :try_start_0
    const-string v0, "PowerManagerService.WakeLocks"

    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerService;->createSuspendBlockerLocked(Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    .line 594
    const-string v0, "PowerManagerService.Display"

    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerService;->createSuspendBlockerLocked(Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    .line 595
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 596
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    .line 597
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHalAutoSuspendModeEnabled:Z

    .line 598
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    .line 600
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    .line 602
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->nativeInit()V

    .line 603
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->nativeSetAutoSuspend(Z)V

    .line 604
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->nativeSetInteractive(Z)V

    .line 605
    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->nativeSetFeature(II)V

    .line 606
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 608
    const-string v0, "sense_version"

    invoke-static {v0, v5}, Lcom/htc/customization/HtcCustomizationSystemReaderImpl;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 609
    iput-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mIsStockUI:Z

    .line 610
    const-string v0, "PMS"

    const-string v1, "no sense version"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    :cond_0
    return-void

    .line 606
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic access$000(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/HtcPowerSaver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHtcPowerSaver:Lcom/android/server/power/HtcPowerSaver;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1100()Z
    .locals 1

    .prologue
    .line 97
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    return v0
.end method

.method static synthetic access$1376(Lcom/android/server/power/PowerManagerService;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 97
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/server/power/PowerManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/power/PowerManagerService;JIII)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I

    .prologue
    .line 97
    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/power/PowerManagerService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setForceScreenOnWhenNear(Z)V

    return-void
.end method

.method static synthetic access$1802(Lcom/android/server/power/PowerManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mIsActualScreenOn:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/power/PowerManagerService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setHalInteractiveModeLocked(Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/power/PowerManagerService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setHalAutoSuspendModeLocked(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/power/PowerManagerService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->screenStateNotifier(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/SuspendBlocker;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/server/power/PowerManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 97
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    return p1
.end method

.method static synthetic access$2600(I)V
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 97
    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->nativeAcquireCpuMode(I)V

    return-void
.end method

.method static synthetic access$2700()Z
    .locals 1

    .prologue
    .line 97
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->mDimAnimationCompleted:Z

    return v0
.end method

.method static synthetic access$2702(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 97
    sput-boolean p0, Lcom/android/server/power/PowerManagerService;->mDimAnimationCompleted:Z

    return p0
.end method

.method static synthetic access$2800(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/android/server/power/PowerManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 97
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Once:I

    return p1
.end method

.method static synthetic access$3000(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleBatteryStateChangedLocked()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->runHtcPowerSaverCheck:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/power/PowerManagerService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mPowerSaverHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->scheduleSandmanLocked()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleSettingsChangedLocked()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/power/PowerManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 97
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    return v0
.end method

.method static synthetic access$3502(Lcom/android/server/power/PowerManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 97
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    return p1
.end method

.method static synthetic access$3600(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleUserActivityTimeout()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleSandman()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleScreenBrightnessBoostTimeout()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/power/PowerManagerService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->sendClearScreenTimeoutTask(II)V

    return-void
.end method

.method static synthetic access$4000(Z)V
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 97
    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->nativeSetDimAnimationCompleted(Z)V

    return-void
.end method

.method static synthetic access$4100(Landroid/os/WorkSource;)Landroid/os/WorkSource;
    .locals 1
    .param p0, "x0"    # Landroid/os/WorkSource;

    .prologue
    .line 97
    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->copyWorkSource(Landroid/os/WorkSource;)Landroid/os/WorkSource;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->handleWakeLockDeath(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # I

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->releaseHtcCpuCtrlInternal(Landroid/os/IBinder;I)V

    return-void
.end method

.method static synthetic access$4400(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->nativeReleaseSuspendBlocker(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4500(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->nativeAcquireSuspendBlocker(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    return v0
.end method

.method static synthetic access$4700(Lcom/android/server/power/PowerManagerService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->powerHintInternal(II)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Landroid/os/WorkSource;
    .param p6, "x6"    # Ljava/lang/String;
    .param p7, "x7"    # I
    .param p8, "x8"    # I

    .prologue
    .line 97
    invoke-direct/range {p0 .. p8}, Lcom/android/server/power/PowerManagerService;->acquireWakeLockInternal(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # I

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->releaseWakeLockInternal(Landroid/os/IBinder;I)V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # Landroid/os/WorkSource;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I

    .prologue
    .line 97
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/power/PowerManagerService;->updateWakeLockWorkSourceInternal(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/server/power/PowerManagerService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->isWakeLockLevelSupportedInternal(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5200(Lcom/android/server/power/PowerManagerService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastWarningAboutUserActivityPermission:J

    return-wide v0
.end method

.method static synthetic access$5202(Lcom/android/server/power/PowerManagerService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J

    .prologue
    .line 97
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastWarningAboutUserActivityPermission:J

    return-wide p1
.end method

.method static synthetic access$5300(Lcom/android/server/power/PowerManagerService;JIII)V
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I

    .prologue
    .line 97
    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/PowerManagerService;->userActivityInternal(JIII)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/server/power/PowerManagerService;JLjava/lang/String;ILjava/lang/String;I)V
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # I
    .param p5, "x4"    # Ljava/lang/String;
    .param p6, "x5"    # I

    .prologue
    .line 97
    invoke-direct/range {p0 .. p6}, Lcom/android/server/power/PowerManagerService;->wakeUpInternal(JLjava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsStockUI:Z

    return v0
.end method

.method static synthetic access$5600(Lcom/android/server/power/PowerManagerService;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    return v0
.end method

.method static synthetic access$5800(Lcom/android/server/power/PowerManagerService;JIII)V
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I

    .prologue
    .line 97
    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/PowerManagerService;->goToSleepInternal(JIII)V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/server/power/PowerManagerService;JI)V
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I

    .prologue
    .line 97
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->napInternal(JI)V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isInteractiveInternal()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6100(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isLowPowerModeInternal()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6200(Lcom/android/server/power/PowerManagerService;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setLowPowerModeInternal(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6300(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isDeviceIdleModeInternal()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6400(Lcom/android/server/power/PowerManagerService;ZZLjava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Z

    .prologue
    .line 97
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/power/PowerManagerService;->shutdownOrRebootInternal(ZZLjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->crashInternal(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6600(Lcom/android/server/power/PowerManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setTemporaryScreenBrightnessSettingOverrideInternal(I)V

    return-void
.end method

.method static synthetic access$6700(Lcom/android/server/power/PowerManagerService;F)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # F

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setTemporaryScreenAutoBrightnessAdjustmentSettingOverrideInternal(F)V

    return-void
.end method

.method static synthetic access$6800(Lcom/android/server/power/PowerManagerService;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setAttentionLightInternal(ZI)V

    return-void
.end method

.method static synthetic access$6900(Lcom/android/server/power/PowerManagerService;JI)V
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I

    .prologue
    .line 97
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->boostScreenBrightnessInternal(JI)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeEnabled:Z

    return v0
.end method

.method static synthetic access$7000(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isScreenBrightnessBoostedInternal()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7100(Lcom/android/server/power/PowerManagerService;Ljava/io/PrintWriter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$7200(Lcom/android/server/power/PowerManagerService;[B[B)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # [B
    .param p2, "x2"    # [B

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->wipeSystemInternal([B[B)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7300(Lcom/android/server/power/PowerManagerService;IIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 97
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->customizeScreenOffDelayLocked(IIZ)V

    return-void
.end method

.method static synthetic access$7400(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isActualScreenOnInternal()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7500(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;IIILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Landroid/os/WorkSource;
    .param p5, "x5"    # I
    .param p6, "x6"    # I
    .param p7, "x7"    # I
    .param p8, "x8"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-direct/range {p0 .. p8}, Lcom/android/server/power/PowerManagerService;->acquireHtcCpuCtrlInternal(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;IIILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$7600(Lcom/android/server/power/PowerManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setScreenBrightnessOverrideFromWindowManagerInternal(I)V

    return-void
.end method

.method static synthetic access$7700(Lcom/android/server/power/PowerManagerService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setDozeOverrideFromDreamManagerInternal(II)V

    return-void
.end method

.method static synthetic access$7800(Lcom/android/server/power/PowerManagerService;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setUserActivityTimeoutOverrideFromWindowManagerInternal(J)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method private acquireHtcCpuCtrlInternal(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;IIILjava/lang/String;)V
    .locals 17
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "ws"    # Landroid/os/WorkSource;
    .param p5, "uid"    # I
    .param p6, "pid"    # I
    .param p7, "level"    # I
    .param p8, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 1167
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/power/PowerManagerService;->findHtcCpuCtrlIndexLocked(Landroid/os/IBinder;)I

    move-result v13

    .line 1168
    .local v13, "index":I
    if-ltz v13, :cond_5

    .line 1169
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mHtcCpuCtrls:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;

    .local v1, "htcCpuCtrl":Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;
    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    .line 1170
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->hasSameProperties(ILjava/lang/String;Landroid/os/WorkSource;II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1172
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/power/PowerManagerService;->notifyHtcCpuCtrlReleasedLocked(Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;)V

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p8

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    .line 1173
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->updateProperties(ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;II)V

    .line 1174
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/power/PowerManagerService;->notifyHtcCpuCtrlAcquiredLocked(Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;)V

    .line 1188
    :cond_0
    :goto_0
    const v2, 0xffff

    and-int v2, v2, p2

    const/16 v3, 0x800

    if-ne v2, v3, :cond_6

    .line 1189
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/power/PowerManagerService;->mCpuPerfCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/power/PowerManagerService;->mCpuPerfCount:I

    .line 1191
    const/16 v2, 0x800

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/power/PowerManagerService;->updateHtcCpuCtrlLevel(I)V

    .line 1209
    :cond_1
    :goto_1
    sget-boolean v2, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-nez v2, :cond_2

    .line 1211
    :cond_2
    move-object/from16 v14, p3

    .line 1213
    .local v14, "new_tag":Ljava/lang/String;
    const-string v2, "@"

    invoke-virtual {v14, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1214
    const-string v14, "encrypted_tag"

    .line 1219
    :cond_3
    invoke-static/range {p2 .. p2}, Lcom/android/server/power/HtcPMSExtension;->getWakeLockTypeInfo(I)Ljava/lang/String;

    move-result-object v15

    .local v15, "typeInfo":Ljava/lang/String;
    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    .line 1221
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->hasSameProperties(ILjava/lang/String;Landroid/os/WorkSource;II)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1222
    new-instance v12, Ljava/util/Formatter;

    invoke-direct {v12}, Ljava/util/Formatter;-><init>()V

    .line 1223
    .local v12, "f":Ljava/util/Formatter;
    const-string v2, "releaseHCC(%x): %s %s 0x%x %s"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v15, v3, v4

    const/4 v4, 0x2

    aput-object v14, v3, v4

    const/4 v4, 0x3

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    aput-object p4, v3, v4

    invoke-virtual {v12, v2, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 1225
    const-string v2, "PMS"

    invoke-virtual {v12}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    .end local v12    # "f":Ljava/util/Formatter;
    :cond_4
    new-instance v12, Ljava/util/Formatter;

    invoke-direct {v12}, Ljava/util/Formatter;-><init>()V

    .line 1228
    .restart local v12    # "f":Ljava/util/Formatter;
    const-string v2, "acquireHCC(%x): %s %s 0x%x %d %d %s"

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v15, v3, v4

    const/4 v4, 0x2

    aput-object v14, v3, v4

    const/4 v4, 0x3

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    aput-object p4, v3, v4

    invoke-virtual {v12, v2, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 1230
    const-string v2, "PMS"

    invoke-virtual {v12}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1235
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1236
    monitor-exit v16

    .line 1237
    return-void

    .line 1177
    .end local v1    # "htcCpuCtrl":Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;
    .end local v12    # "f":Ljava/util/Formatter;
    .end local v14    # "new_tag":Ljava/lang/String;
    .end local v15    # "typeInfo":Ljava/lang/String;
    :cond_5
    new-instance v1, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p8

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v1 .. v10}, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1179
    .restart local v1    # "htcCpuCtrl":Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;
    const/4 v2, 0x0

    :try_start_1
    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1183
    :try_start_2
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/power/PowerManagerService;->notifyHtcCpuCtrlAcquiredLocked(Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;)V

    .line 1184
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mHtcCpuCtrls:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1236
    .end local v1    # "htcCpuCtrl":Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;
    .end local v13    # "index":I
    :catchall_0
    move-exception v2

    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1180
    .restart local v1    # "htcCpuCtrl":Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;
    .restart local v13    # "index":I
    :catch_0
    move-exception v11

    .line 1181
    .local v11, "ex":Landroid/os/RemoteException;
    :try_start_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "HtcCpuCtrl is already dead."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1193
    .end local v11    # "ex":Landroid/os/RemoteException;
    :cond_6
    const v2, 0xf000

    and-int v2, v2, p2

    const/16 v3, 0x1000

    if-ne v2, v3, :cond_7

    .line 1194
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/power/PowerManagerService;->mCpuFreqMaxCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/power/PowerManagerService;->mCpuFreqMaxCount:I

    .line 1195
    const/16 v2, 0x1000

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/power/PowerManagerService;->updateHtcCpuCtrlLevel(I)V

    goto/16 :goto_1

    .line 1196
    :cond_7
    const v2, 0xf000

    and-int v2, v2, p2

    const/16 v3, 0x2000

    if-ne v2, v3, :cond_8

    .line 1197
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/power/PowerManagerService;->mCpuFreqMinCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/power/PowerManagerService;->mCpuFreqMinCount:I

    .line 1198
    const/16 v2, 0x2000

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/power/PowerManagerService;->updateHtcCpuCtrlLevel(I)V

    goto/16 :goto_1

    .line 1199
    :cond_8
    const v2, 0xf000

    and-int v2, v2, p2

    const/16 v3, 0x4000

    if-ne v2, v3, :cond_9

    .line 1200
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/power/PowerManagerService;->mCpuNumMaxCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/power/PowerManagerService;->mCpuNumMaxCount:I

    .line 1201
    const/16 v2, 0x4000

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/power/PowerManagerService;->updateHtcCpuCtrlLevel(I)V

    goto/16 :goto_1

    .line 1202
    :cond_9
    const v2, 0xf000

    and-int v2, v2, p2

    const v3, 0x8000

    if-ne v2, v3, :cond_1

    .line 1203
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/power/PowerManagerService;->mCpuNumMinCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/power/PowerManagerService;->mCpuNumMinCount:I

    .line 1204
    const v2, 0x8000

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/power/PowerManagerService;->updateHtcCpuCtrlLevel(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1
.end method

.method private acquireWakeLockInternal(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V
    .locals 21
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "ws"    # Landroid/os/WorkSource;
    .param p6, "historyTag"    # Ljava/lang/String;
    .param p7, "uid"    # I
    .param p8, "pid"    # I

    .prologue
    .line 1060
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 1068
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/power/PowerManagerService;->findWakeLockIndexLocked(Landroid/os/IBinder;)I

    move-result v16

    .line 1070
    .local v16, "index":I
    if-ltz v16, :cond_7

    .line 1071
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService$WakeLock;

    .local v2, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    move/from16 v6, p7

    move/from16 v7, p8

    .line 1072
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/PowerManagerService$WakeLock;->hasSameProperties(ILjava/lang/String;Landroid/os/WorkSource;II)Z

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v3, p0

    move-object v4, v2

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    .line 1074
    invoke-direct/range {v3 .. v11}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockChangingLocked(Lcom/android/server/power/PowerManagerService$WakeLock;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    .line 1076
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/power/PowerManagerService$WakeLock;->updateProperties(ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V

    .line 1078
    :cond_0
    const/16 v18, 0x0

    .line 1107
    .local v18, "notifyAcquire":Z
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    move/from16 v1, p7

    invoke-direct {v0, v2, v1}, Lcom/android/server/power/PowerManagerService;->applyWakeLockFlagsOnAcquireLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V

    .line 1110
    const v3, 0xffff

    and-int v3, v3, p2

    const/16 v4, 0x800

    if-ne v3, v4, :cond_2

    .line 1111
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mCpuPerfCount:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/power/PowerManagerService;->mCpuPerfCount:I

    .line 1113
    const/16 v3, 0x800

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/power/PowerManagerService;->updateHtcCpuCtrlLevel(I)V

    .line 1119
    :cond_2
    invoke-static/range {p2 .. p3}, Lcom/android/server/power/HtcPMSExtension;->canPrintWakeLockLog(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1121
    move-object/from16 v17, p3

    .line 1123
    .local v17, "new_tag":Ljava/lang/String;
    const-string v3, "@"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1124
    const-string v17, "encrypted_tag"

    .line 1129
    :cond_3
    invoke-static/range {p2 .. p2}, Lcom/android/server/power/HtcPMSExtension;->getWakeLockTypeInfo(I)Ljava/lang/String;

    move-result-object v19

    .line 1130
    .local v19, "typeInfo":Ljava/lang/String;
    # invokes: Lcom/android/server/power/PowerManagerService$WakeLock;->getLockFlagsString()Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService$WakeLock;->access$1200(Lcom/android/server/power/PowerManagerService$WakeLock;)Ljava/lang/String;

    move-result-object v15

    .local v15, "flagInfo":Ljava/lang/String;
    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    move/from16 v6, p7

    move/from16 v7, p8

    .line 1132
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/PowerManagerService$WakeLock;->hasSameProperties(ILjava/lang/String;Landroid/os/WorkSource;II)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1133
    new-instance v14, Ljava/util/Formatter;

    invoke-direct {v14}, Ljava/util/Formatter;-><init>()V

    .line 1135
    .local v14, "f":Ljava/util/Formatter;
    const-string v3, "releaseWL(%x): %s %s %s 0x%x %s"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v19, v4, v5

    const/4 v5, 0x2

    aput-object v15, v4, v5

    const/4 v5, 0x3

    aput-object v17, v4, v5

    const/4 v5, 0x4

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    aput-object p5, v4, v5

    invoke-virtual {v14, v3, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 1138
    const-string v3, "PMS"

    invoke-virtual {v14}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    .end local v14    # "f":Ljava/util/Formatter;
    :cond_4
    new-instance v14, Ljava/util/Formatter;

    invoke-direct {v14}, Ljava/util/Formatter;-><init>()V

    .line 1142
    .restart local v14    # "f":Ljava/util/Formatter;
    const-string v3, "acquireWL(%x): %s %s %s 0x%x %d %d %s"

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v19, v4, v5

    const/4 v5, 0x2

    aput-object v15, v4, v5

    const/4 v5, 0x3

    aput-object v17, v4, v5

    const/4 v5, 0x4

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x7

    aput-object p5, v4, v5

    invoke-virtual {v14, v3, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 1145
    const-string v3, "PMS"

    invoke-virtual {v14}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    .end local v14    # "f":Ljava/util/Formatter;
    .end local v15    # "flagInfo":Ljava/lang/String;
    .end local v17    # "new_tag":Ljava/lang/String;
    .end local v19    # "typeInfo":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1150
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1151
    if-eqz v18, :cond_6

    .line 1157
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 1159
    :cond_6
    monitor-exit v20

    .line 1160
    return-void

    .line 1080
    .end local v2    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    .end local v18    # "notifyAcquire":Z
    :cond_7
    new-instance v2, Lcom/android/server/power/PowerManagerService$WakeLock;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-direct/range {v2 .. v11}, Lcom/android/server/power/PowerManagerService$WakeLock;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1082
    .restart local v2    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    const/4 v3, 0x0

    :try_start_1
    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1086
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1087
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/power/PowerManagerService;->setWakeLockDisabledStateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    .line 1088
    const/16 v18, 0x1

    .line 1091
    .restart local v18    # "notifyAcquire":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mHtcWakeLockDetector:Lcom/android/server/power/HtcWakeLockDetector;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_1

    .line 1093
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mHtcWakeLockDetector:Lcom/android/server/power/HtcWakeLockDetector;

    iget-object v4, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    iget v5, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iget-object v6, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget-object v7, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    iget-object v8, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    iget v9, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget v10, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/power/HtcWakeLockDetector;->addWakeLock(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;II)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 1100
    :catch_0
    move-exception v12

    .line 1101
    .local v12, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v3, "PMS"

    const-string v4, "[HtcWLD] addWakeLock Exception : "

    invoke-static {v3, v4, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1159
    .end local v2    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v16    # "index":I
    .end local v18    # "notifyAcquire":Z
    :catchall_0
    move-exception v3

    monitor-exit v20
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 1083
    .restart local v2    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    .restart local v16    # "index":I
    :catch_1
    move-exception v13

    .line 1084
    .local v13, "ex":Landroid/os/RemoteException;
    :try_start_5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Wake lock is already dead."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private adjustHtcScreenOffDelay(I)I
    .locals 4
    .param p1, "totalDelay"    # I

    .prologue
    .line 3658
    move v0, p1

    .line 3660
    .local v0, "adjTotalDelay":I
    const/4 v1, -0x1

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:I

    if-ne v1, v2, :cond_0

    .line 3661
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    .line 3662
    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    .line 3663
    const-string v1, "PMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustDelay[NTF]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3667
    :cond_0
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Once:I

    if-lez v1, :cond_2

    .line 3668
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Once:I

    .line 3669
    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v1, :cond_1

    .line 3670
    const-string v1, "PMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustDelay[O]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3685
    :cond_1
    :goto_0
    return v0

    .line 3672
    :cond_2
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Always:I

    if-lez v1, :cond_3

    .line 3673
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Always:I

    .line 3674
    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v1, :cond_1

    .line 3675
    const-string v1, "PMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustDelay[A]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3677
    :cond_3
    const/4 v1, -0x2

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_System:I

    if-lez v1, :cond_1

    .line 3678
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_System:I

    .line 3679
    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v1, :cond_1

    .line 3680
    const-string v1, "PMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustDelay[S]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private applyWakeLockFlagsOnAcquireLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V
    .locals 8
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;
    .param p2, "uid"    # I

    .prologue
    const/4 v2, 0x0

    .line 1252
    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1256
    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v0, v2}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1257
    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v0, v2}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v6

    .line 1258
    .local v6, "opPackageName":Ljava/lang/String;
    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v0, v2}, Landroid/os/WorkSource;->get(I)I

    move-result v5

    .line 1264
    .local v5, "opUid":I
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    move-object v1, p0

    move v7, v5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(JLjava/lang/String;ILjava/lang/String;I)Z

    .line 1267
    .end local v5    # "opUid":I
    .end local v6    # "opPackageName":Ljava/lang/String;
    :cond_0
    return-void

    .line 1260
    :cond_1
    iget-object v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    .line 1261
    .restart local v6    # "opPackageName":Ljava/lang/String;
    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v0, v2}, Landroid/os/WorkSource;->get(I)I

    move-result v5

    .restart local v5    # "opUid":I
    :goto_1
    goto :goto_0

    .end local v5    # "opUid":I
    :cond_2
    iget v5, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    goto :goto_1
.end method

.method private applyWakeLockFlagsOnReleaseLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 7
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .prologue
    .line 1666
    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1668
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    .line 1673
    :cond_0
    return-void
.end method

.method private boostScreenBrightnessInternal(JI)V
    .locals 9
    .param p1, "eventTime"    # J
    .param p3, "uid"    # I

    .prologue
    .line 3470
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 3471
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 3473
    :cond_0
    monitor-exit v7

    .line 3488
    :goto_0
    return-void

    .line 3476
    :cond_1
    const-string v0, "PMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Brightness boost activated (uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3477
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    .line 3478
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    if-nez v0, :cond_2

    .line 3479
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    .line 3480
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v0}, Lcom/android/server/power/Notifier;->onScreenBrightnessBoostChanged()V

    .line 3482
    :cond_2
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3484
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-wide v2, p1

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    .line 3486
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 3487
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private canDozeLocked()Z
    .locals 2

    .prologue
    .line 2761
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private canDreamLocked()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2730
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsSupportedConfig:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isBrightOrDim()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    and-int/lit8 v1, v1, 0x7

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-nez v1, :cond_1

    .line 2754
    :cond_0
    :goto_0
    return v0

    .line 2739
    :cond_1
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isBeingKeptAwakeLocked()Z

    move-result v1

    if-nez v1, :cond_4

    .line 2740
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledOnBatteryConfig:Z

    if-eqz v1, :cond_0

    .line 2743
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-nez v1, :cond_3

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    if-ltz v1, :cond_3

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    if-lt v1, v2, :cond_0

    .line 2748
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    if-ltz v1, :cond_4

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    if-lt v1, v2, :cond_0

    .line 2754
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static copyWorkSource(Landroid/os/WorkSource;)Landroid/os/WorkSource;
    .locals 1
    .param p0, "workSource"    # Landroid/os/WorkSource;

    .prologue
    .line 4055
    if-eqz p0, :cond_0

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p0}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private crashInternal(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 3325
    new-instance v1, Lcom/android/server/power/PowerManagerService$5;

    const-string v2, "PowerManagerService.crash()"

    invoke-direct {v1, p0, v2, p1}, Lcom/android/server/power/PowerManagerService$5;-><init>(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 3332
    .local v1, "t":Ljava/lang/Thread;
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 3333
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3337
    :goto_0
    return-void

    .line 3334
    :catch_0
    move-exception v0

    .line 3335
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "PMS"

    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private createSuspendBlockerLocked(Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 4049
    new-instance v0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;

    invoke-direct {v0, p0, p1}, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;-><init>(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)V

    .line 4050
    .local v0, "suspendBlocker":Lcom/android/server/power/SuspendBlocker;
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4051
    return-object v0
.end method

.method private customizeScreenOffDelayLocked(IIZ)V
    .locals 15
    .param p1, "flag"    # I
    .param p2, "screenOffDelay"    # I
    .param p3, "calcRemaining"    # Z

    .prologue
    .line 3705
    iget-boolean v12, p0, Lcom/android/server/power/PowerManagerService;->mIsStockUI:Z

    if-eqz v12, :cond_1

    .line 3837
    :cond_0
    :goto_0
    return-void

    .line 3710
    :cond_1
    and-int/lit8 v12, p1, 0x7

    packed-switch v12, :pswitch_data_0

    .line 3716
    :pswitch_0
    sget-boolean v12, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v12, :cond_0

    .line 3717
    const-string v12, "PMS"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "customizeScreenOffDelayLocked: Unknown flag found. Skip. flag=0x"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", screenOffDelay="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", calcRemaining="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3726
    :pswitch_1
    if-gez p2, :cond_3

    .line 3727
    and-int/lit8 v12, p1, 0x7

    packed-switch v12, :pswitch_data_1

    .line 3742
    :goto_1
    :pswitch_2
    sget-boolean v12, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v12, :cond_2

    .line 3743
    const-string v12, "PMS"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ScreenOffDelay: reset(0x"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Once:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Always:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_System:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3750
    :cond_2
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->recalculateScreenTimeout()V

    goto/16 :goto_0

    .line 3730
    :pswitch_3
    iget-object v12, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeMessages(I)V

    .line 3731
    iget-object v12, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    iget-object v13, p0, Lcom/android/server/power/PowerManagerService;->mClearScreenTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v12, v13}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3732
    const/4 v12, -0x1

    iput v12, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Once:I

    goto :goto_1

    .line 3735
    :pswitch_4
    const/4 v12, -0x1

    iput v12, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Always:I

    goto :goto_1

    .line 3738
    :pswitch_5
    const v12, 0xea60

    iput v12, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_System:I

    goto :goto_1

    .line 3755
    :cond_3
    if-eqz p3, :cond_5

    .line 3756
    iget v12, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Once:I

    if-lez v12, :cond_8

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Once:I

    .line 3759
    .local v2, "CURRENT_TIMEOUT":I
    :goto_2
    move/from16 v0, p2

    if-eq v2, v0, :cond_b

    .line 3760
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3761
    .local v4, "NOW":J
    iget-wide v12, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    sub-long v6, v4, v12

    .line 3762
    .local v6, "elapsed":J
    int-to-long v12, v2

    sub-long v10, v12, v6

    .line 3765
    .local v10, "remaining":J
    move/from16 v0, p2

    if-ge v2, v0, :cond_a

    .line 3766
    move/from16 v0, p2

    int-to-long v12, v0

    sub-long/2addr v12, v6

    long-to-int v12, v12

    iput v12, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Once:I

    .line 3773
    :cond_4
    :goto_3
    iget v12, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Once:I

    iget v13, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimDurationConfig:I

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    iput v12, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Once:I

    .line 3774
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->recalculateScreenTimeout()V

    .line 3776
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isScreenBright()Z

    move-result v12

    if-eqz v12, :cond_5

    iget v12, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eqz v12, :cond_5

    .line 3777
    iput-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    .line 3778
    iget v12, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v12, v12, 0x4

    iput v12, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3779
    const/16 v12, 0x20

    invoke-direct {p0, v4, v5, v12}, Lcom/android/server/power/PowerManagerService;->updateUserActivitySummaryLocked(JI)V

    .line 3781
    iget v12, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Once:I

    const/4 v13, 0x0

    invoke-direct {p0, v12, v13}, Lcom/android/server/power/PowerManagerService;->handleClearScreenTimeoutTask(II)V

    .line 3792
    .end local v2    # "CURRENT_TIMEOUT":I
    .end local v4    # "NOW":J
    .end local v6    # "elapsed":J
    .end local v10    # "remaining":J
    :cond_5
    :goto_4
    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Once:I

    .line 3793
    .local v8, "prev_once":I
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Always:I

    .line 3794
    .local v3, "prev_always":I
    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_System:I

    .line 3795
    .local v9, "prev_system":I
    and-int/lit8 v12, p1, 0x7

    packed-switch v12, :pswitch_data_2

    .line 3812
    :cond_6
    :goto_5
    :pswitch_6
    sget-boolean v12, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v12, :cond_7

    .line 3813
    const-string v12, "PMS"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ScreenOffDelay:(0x"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "->"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Once:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "->"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Always:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "->"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_System:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    invoke-static {v14}, Landroid/os/PowerManagerInternal;->wakefulnessToString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3823
    :cond_7
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->recalculateScreenTimeout()V

    .line 3826
    if-nez p3, :cond_0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isScreenBright()Z

    move-result v12

    if-eqz v12, :cond_0

    iget v12, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eqz v12, :cond_0

    .line 3827
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3828
    .restart local v4    # "NOW":J
    iput-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    .line 3829
    iget v12, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v12, v12, 0x4

    iput v12, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3830
    const/16 v12, 0x20

    invoke-direct {p0, v4, v5, v12}, Lcom/android/server/power/PowerManagerService;->updateUserActivitySummaryLocked(JI)V

    .line 3832
    const/4 v12, 0x1

    move/from16 v0, p1

    if-ne v0, v12, :cond_0

    .line 3833
    iget v12, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Once:I

    const/4 v13, 0x1

    invoke-direct {p0, v12, v13}, Lcom/android/server/power/PowerManagerService;->handleClearScreenTimeoutTask(II)V

    goto/16 :goto_0

    .line 3756
    .end local v3    # "prev_always":I
    .end local v4    # "NOW":J
    .end local v8    # "prev_once":I
    .end local v9    # "prev_system":I
    :cond_8
    iget v12, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Always:I

    if-lez v12, :cond_9

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Always:I

    goto/16 :goto_2

    :cond_9
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_System:I

    goto/16 :goto_2

    .line 3768
    .restart local v2    # "CURRENT_TIMEOUT":I
    .restart local v4    # "NOW":J
    .restart local v6    # "elapsed":J
    .restart local v10    # "remaining":J
    :cond_a
    move/from16 v0, p2

    if-le v2, v0, :cond_4

    .line 3769
    move/from16 v0, p2

    int-to-long v12, v0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    long-to-int v12, v12

    iput v12, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Once:I

    goto/16 :goto_3

    .line 3786
    .end local v4    # "NOW":J
    .end local v6    # "elapsed":J
    .end local v10    # "remaining":J
    :cond_b
    sget-boolean v12, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v12, :cond_5

    .line 3787
    const-string v12, "PMS"

    const-string v13, "ScreenOffDelay: Same. Skip"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 3797
    .end local v2    # "CURRENT_TIMEOUT":I
    .restart local v3    # "prev_always":I
    .restart local v8    # "prev_once":I
    .restart local v9    # "prev_system":I
    :pswitch_7
    if-nez p3, :cond_6

    .line 3798
    move/from16 v0, p2

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Once:I

    .line 3800
    iget v12, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Once:I

    const/4 v13, 0x1

    invoke-direct {p0, v12, v13}, Lcom/android/server/power/PowerManagerService;->handleClearScreenTimeoutTask(II)V

    goto/16 :goto_5

    .line 3805
    :pswitch_8
    move/from16 v0, p2

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Always:I

    goto/16 :goto_5

    .line 3808
    :pswitch_9
    move/from16 v0, p2

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_System:I

    goto/16 :goto_5

    .line 3710
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 3727
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_5
    .end packed-switch

    .line 3795
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_9
    .end packed-switch
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .locals 14
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 3884
    const-string v9, "POWER MANAGER (dumpsys power)\n"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3887
    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 3888
    :try_start_0
    const-string v9, "Power Manager State:"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3889
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mDirty=0x"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3890
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mWakefulness="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    invoke-static {v11}, Landroid/os/PowerManagerInternal;->wakefulnessToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3891
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mWakefulnessChanging="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mWakefulnessChanging:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3892
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mIsPowered="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3893
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mPlugType="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3894
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mBatteryLevel="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3895
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mBatteryLevelWhenDreamStarted="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3896
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mDockState="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3897
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mStayOn="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3898
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mProximityPositive="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3899
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mBootCompleted="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3900
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mSystemReady="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3901
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mHalAutoSuspendModeEnabled="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mHalAutoSuspendModeEnabled:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3902
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mHalInteractiveModeEnabled="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3903
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mWakeLockSummary=0x"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3904
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mUserActivitySummary=0x"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3905
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mRequestWaitForNegativeProximity="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3906
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mSandmanScheduled="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3907
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mSandmanSummoned="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mSandmanSummoned:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3908
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mLowPowerModeEnabled="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeEnabled:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3909
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mBatteryLevelLow="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3910
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mDeviceIdleMode="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3911
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mDeviceIdleWhitelist="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleWhitelist:[I

    invoke-static {v11}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3912
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mDeviceIdleTempWhitelist="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleTempWhitelist:[I

    invoke-static {v11}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3913
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mLastWakeTime="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v12, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    invoke-static {v12, v13}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3914
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mLastSleepTime="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v12, p0, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    invoke-static {v12, v13}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3915
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mLastUserActivityTime="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v12, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    invoke-static {v12, v13}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3916
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mLastUserActivityTimeNoChangeLights="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v12, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    invoke-static {v12, v13}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3918
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mLastInteractivePowerHintTime="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v12, p0, Lcom/android/server/power/PowerManagerService;->mLastInteractivePowerHintTime:J

    invoke-static {v12, v13}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3920
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mLastScreenBrightnessBoostTime="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v12, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    invoke-static {v12, v13}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3922
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mScreenBrightnessBoostInProgress="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3924
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mDisplayReady="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3925
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mHoldingWakeLockSuspendBlocker="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3926
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mHoldingDisplaySuspendBlocker="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3928
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3929
    const-string v9, "Settings and Configuration:"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3930
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mDecoupleHalAutoSuspendModeFromDisplayConfig="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3932
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mDecoupleHalInteractiveModeFromDisplayConfig="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3934
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mWakeUpWhenPluggedOrUnpluggedConfig="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedConfig:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3936
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3938
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mTheaterModeEnabled="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mTheaterModeEnabled:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3940
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mSuspendWhenScreenOffDueToProximityConfig="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mSuspendWhenScreenOffDueToProximityConfig:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3942
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mDreamsSupportedConfig="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mDreamsSupportedConfig:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3943
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mDreamsEnabledByDefaultConfig="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledByDefaultConfig:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3944
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mDreamsActivatedOnSleepByDefaultConfig="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnSleepByDefaultConfig:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3946
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mDreamsActivatedOnDockByDefaultConfig="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnDockByDefaultConfig:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3948
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mDreamsEnabledOnBatteryConfig="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledOnBatteryConfig:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3950
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mDreamsBatteryLevelMinimumWhenPoweredConfig="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3952
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mDreamsBatteryLevelMinimumWhenNotPoweredConfig="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3954
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mDreamsBatteryLevelDrainCutoffConfig="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrainCutoffConfig:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3956
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mDreamsEnabledSetting="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3957
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mDreamsActivateOnSleepSetting="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnSleepSetting:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3958
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mDreamsActivateOnDockSetting="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnDockSetting:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3959
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mDozeAfterScreenOffConfig="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mDozeAfterScreenOffConfig:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3960
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mLowPowerModeSetting="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeSetting:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3961
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mAutoLowPowerModeConfigured="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeConfigured:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3962
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mAutoLowPowerModeSnoozing="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeSnoozing:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3963
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mMinimumScreenOffTimeoutConfig="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3964
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mMaximumScreenDimDurationConfig="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimDurationConfig:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3965
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mMaximumScreenDimRatioConfig="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimRatioConfig:F

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3966
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mScreenOffTimeoutSetting="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3967
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mSleepTimeoutSetting="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mSleepTimeoutSetting:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3968
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mMaximumScreenOffTimeoutFromDeviceAdmin="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " (enforced="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ")"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3971
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mStayOnWhilePluggedInSetting="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3972
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mScreenBrightnessSetting="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3973
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mScreenAutoBrightnessAdjustmentSetting="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3975
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mScreenBrightnessModeSetting="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3976
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mScreenBrightnessOverrideFromWindowManager="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3978
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mUserActivityTimeoutOverrideFromWindowManager="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v12, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3981
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mScreenTimeout_Once="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Once:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " mScreenTimeout_Always="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Always:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " mScreenTimeout_System="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_System:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3985
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mTemporaryScreenBrightnessSettingOverride="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3987
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mTemporaryScreenAutoBrightnessAdjustmentSettingOverride="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3989
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mDozeScreenStateOverrideFromDreamManager="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3991
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mDozeScreenBrightnessOverrideFromDreamManager="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3993
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mScreenBrightnessSettingMinimum="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMinimum:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3994
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mScreenBrightnessSettingMaximum="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMaximum:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3995
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mScreenBrightnessSettingDefault="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3996
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mDoubleTapWakeEnabled="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mDoubleTapWakeEnabled:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3998
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->getSleepTimeoutLocked()I

    move-result v6

    .line 3999
    .local v6, "sleepTimeout":I
    invoke-direct {p0, v6}, Lcom/android/server/power/PowerManagerService;->getScreenOffTimeoutLocked(I)I

    move-result v5

    .line 4000
    .local v5, "screenOffTimeout":I
    invoke-direct {p0, v5}, Lcom/android/server/power/PowerManagerService;->getScreenDimDurationLocked(I)I

    move-result v4

    .line 4001
    .local v4, "screenDimDuration":I
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4002
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Sleep timeout: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " ms"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4003
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Screen off timeout: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " ms"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4004
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Screen dim duration: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " ms"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4006
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4007
    const-string v9, "UID states:"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4008
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    if-ge v1, v9, :cond_0

    .line 4009
    const-string v9, "  UID "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v9

    invoke-static {p1, v9}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 4010
    const-string v9, ": "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(I)V

    .line 4008
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4013
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4014
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Wake Locks: size="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4015
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 4016
    .local v8, "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 4041
    .end local v1    # "i":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "screenDimDuration":I
    .end local v5    # "screenOffTimeout":I
    .end local v6    # "sleepTimeout":I
    .end local v8    # "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 4020
    .restart local v1    # "i":I
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "screenDimDuration":I
    .restart local v5    # "screenOffTimeout":I
    .restart local v6    # "sleepTimeout":I
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4021
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "HtcCpuCtrls: size="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p0, Lcom/android/server/power/PowerManagerService;->mHtcCpuCtrls:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4022
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mCpuFreqMinCount="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mCpuFreqMinCount:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4023
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mCpuFreqMaxCount="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mCpuFreqMaxCount:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4024
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mCpuNumMinCount="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mCpuNumMinCount:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4025
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mCpuNumMaxCount="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mCpuNumMaxCount:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4026
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mHtcCpuCtrls:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;

    .line 4027
    .local v0, "hcc":Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 4031
    .end local v0    # "hcc":Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;
    :cond_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4032
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Suspend Blockers: size="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4033
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/SuspendBlocker;

    .line 4034
    .local v3, "sb":Lcom/android/server/power/SuspendBlocker;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 4037
    .end local v3    # "sb":Lcom/android/server/power/SuspendBlocker;
    :cond_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4038
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Display Power: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4040
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

    .line 4041
    .local v7, "wcd":Lcom/android/server/power/WirelessChargerDetector;
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4043
    if-eqz v7, :cond_4

    .line 4044
    invoke-virtual {v7, p1}, Lcom/android/server/power/WirelessChargerDetector;->dump(Ljava/io/PrintWriter;)V

    .line 4046
    :cond_4
    return-void
.end method

.method private findHtcCpuCtrlIndexLocked(Landroid/os/IBinder;)I
    .locals 3
    .param p1, "lock"    # Landroid/os/IBinder;

    .prologue
    .line 1716
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHtcCpuCtrls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1717
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1718
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHtcCpuCtrls:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;

    iget-object v2, v2, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mLock:Landroid/os/IBinder;

    if-ne v2, p1, :cond_0

    .line 1722
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 1717
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1722
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private findWakeLockIndexLocked(Landroid/os/IBinder;)I
    .locals 3
    .param p1, "lock"    # Landroid/os/IBinder;

    .prologue
    .line 1705
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1706
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1707
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService$WakeLock;

    iget-object v2, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    if-ne v2, p1, :cond_0

    .line 1711
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 1706
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1711
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private finishWakefulnessChangeIfNeededLocked()V
    .locals 2

    .prologue
    .line 2074
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulnessChanging:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    if-eqz v0, :cond_0

    .line 2075
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_1

    .line 2082
    :cond_0
    :goto_0
    return-void

    .line 2079
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulnessChanging:Z

    .line 2080
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v0}, Lcom/android/server/power/Notifier;->onWakefulnessChangeFinished()V

    goto :goto_0
.end method

.method private getDesiredScreenPolicyLocked()I
    .locals 3

    .prologue
    const/4 v1, 0x3

    const/4 v0, 0x0

    .line 2916
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-nez v2, :cond_1

    .line 2938
    :cond_0
    :goto_0
    return v0

    .line 2920
    :cond_1
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-ne v2, v1, :cond_3

    .line 2921
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_2

    .line 2922
    const/4 v0, 0x1

    goto :goto_0

    .line 2924
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDozeAfterScreenOffConfig:Z

    if-nez v2, :cond_0

    .line 2931
    :cond_3
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    if-eqz v0, :cond_5

    :cond_4
    move v0, v1

    .line 2935
    goto :goto_0

    .line 2938
    :cond_5
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private getScreenDimDurationLocked(I)I
    .locals 3
    .param p1, "screenOffTimeout"    # I

    .prologue
    .line 2526
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimDurationConfig:I

    int-to-float v1, p1

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimRatioConfig:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private getScreenOffTimeoutLocked(I)I
    .locals 6
    .param p1, "sleepTimeout"    # I

    .prologue
    .line 2505
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:I

    .line 2508
    .local v0, "timeout":I
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsStockUI:Z

    if-nez v1, :cond_0

    .line 2509
    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerService;->adjustHtcScreenOffDelay(I)I

    move-result v0

    .line 2513
    :cond_0
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2514
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2516
    :cond_1
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_2

    .line 2517
    int-to-long v2, v0

    iget-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v0, v2

    .line 2519
    :cond_2
    if-ltz p1, :cond_3

    .line 2520
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2522
    :cond_3
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method private getSleepTimeoutLocked()I
    .locals 2

    .prologue
    .line 2497
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mSleepTimeoutSetting:I

    .line 2498
    .local v0, "timeout":I
    if-gtz v0, :cond_0

    .line 2499
    const/4 v1, -0x1

    .line 2501
    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0
.end method

.method private goToSleepInternal(JIII)V
    .locals 3
    .param p1, "eventTime"    # J
    .param p3, "reason"    # I
    .param p4, "flags"    # I
    .param p5, "uid"    # I

    .prologue
    .line 1921
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1922
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/PowerManagerService;->goToSleepNoUpdateLocked(JIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1923
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1925
    :cond_0
    monitor-exit v1

    .line 1926
    return-void

    .line 1925
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private goToSleepNoUpdateLocked(JIII)Z
    .locals 9
    .param p1, "eventTime"    # J
    .param p3, "reason"    # I
    .param p4, "flags"    # I
    .param p5, "uid"    # I

    .prologue
    .line 1937
    iget-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v4, p1, v4

    if-ltz v4, :cond_0

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v4, :cond_2

    .line 1942
    :cond_0
    sget-boolean v4, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v4, :cond_1

    .line 1943
    const-string v4, "PMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "return goToSleepNoUpdateLocked , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1947
    :cond_1
    const/4 v4, 0x0

    .line 2008
    :goto_0
    return v4

    .line 1950
    :cond_2
    const-wide/32 v4, 0x20000

    const-string v6, "goToSleep"

    invoke-static {v4, v5, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1952
    packed-switch p3, :pswitch_data_0

    .line 1973
    :try_start_0
    const-string v4, "PMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Going to sleep by application request (uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    const/4 p3, 0x0

    .line 1979
    :goto_1
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/server/power/PowerManagerService;->setForceScreenOnWhenNear(Z)V

    .line 1982
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    .line 1983
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mSandmanSummoned:Z

    .line 1984
    const/4 v4, 0x3

    invoke-direct {p0, v4, p3}, Lcom/android/server/power/PowerManagerService;->setWakefulnessLocked(II)V

    .line 1987
    const/4 v2, 0x0

    .line 1988
    .local v2, "numWakeLocksCleared":I
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1989
    .local v1, "numWakeLocks":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v1, :cond_3

    .line 1990
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 1991
    .local v3, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget v4, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v5, 0xffff

    and-int/2addr v4, v5

    sparse-switch v4, :sswitch_data_0

    .line 1989
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1954
    .end local v0    # "i":I
    .end local v1    # "numWakeLocks":I
    .end local v2    # "numWakeLocksCleared":I
    .end local v3    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :pswitch_0
    const-string v4, "PMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Going to sleep due to device administration policy (uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 2006
    :catchall_0
    move-exception v4

    const-wide/32 v6, 0x20000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    throw v4

    .line 1958
    :pswitch_1
    :try_start_1
    const-string v4, "PMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Going to sleep due to screen timeout (uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1961
    :pswitch_2
    const-string v4, "PMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Going to sleep due to lid switch (uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1964
    :pswitch_3
    const-string v4, "PMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Going to sleep due to power button (uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1967
    :pswitch_4
    const-string v4, "PMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Going to sleep due to sleep button (uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1970
    :pswitch_5
    const-string v4, "PMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Going to sleep due to HDMI standby (uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1995
    .restart local v0    # "i":I
    .restart local v1    # "numWakeLocks":I
    .restart local v2    # "numWakeLocksCleared":I
    .restart local v3    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :sswitch_0
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .line 1999
    .end local v3    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_3
    const/16 v4, 0xaa4

    invoke-static {v4, v2}, Landroid/util/EventLog;->writeEvent(II)I

    .line 2002
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_4

    .line 2003
    invoke-direct {p0, p1, p2, p5}, Lcom/android/server/power/PowerManagerService;->reallyGoToSleepNoUpdateLocked(JI)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2006
    :cond_4
    const-wide/32 v4, 0x20000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 2008
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1952
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch

    .line 1991
    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0xa -> :sswitch_0
        0x1a -> :sswitch_0
    .end sparse-switch
.end method

.method private handleBatteryStateChangedLocked()V
    .locals 1

    .prologue
    .line 3259
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3260
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 3261
    return-void
.end method

.method private handleClearScreenTimeoutTask(II)V
    .locals 5
    .param p1, "timeout"    # I
    .param p2, "calcRemaining"    # I

    .prologue
    const/16 v4, 0x8

    .line 3636
    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    .line 3637
    const-string v1, "PMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleClearTask("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3639
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mClearScreenTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3640
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v1, v4}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeMessages(I)V

    .line 3641
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v1, v4, p1, p2}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 3642
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3643
    return-void
.end method

.method private handleSandman()V
    .locals 12

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v4, 0x3

    const/4 v10, 0x0

    .line 2635
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2636
    const/4 v3, 0x0

    :try_start_0
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    .line 2637
    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    .line 2638
    .local v9, "wakefulness":I
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mSandmanSummoned:Z

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    if-eqz v3, :cond_6

    .line 2639
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->canDreamLocked()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->canDozeLocked()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_0
    move v8, v1

    .line 2640
    .local v8, "startDreaming":Z
    :goto_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mSandmanSummoned:Z

    .line 2644
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2650
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    if-eqz v2, :cond_8

    .line 2652
    if-eqz v8, :cond_1

    .line 2653
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    invoke-virtual {v2, v10}, Landroid/service/dreams/DreamManagerInternal;->stopDream(Z)V

    .line 2654
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    if-ne v9, v4, :cond_7

    :goto_2
    invoke-virtual {v2, v1}, Landroid/service/dreams/DreamManagerInternal;->startDream(Z)V

    .line 2656
    :cond_1
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    invoke-virtual {v1}, Landroid/service/dreams/DreamManagerInternal;->isDreaming()Z

    move-result v0

    .line 2662
    .local v0, "isDreaming":Z
    :goto_3
    iget-object v11, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 2664
    if-eqz v8, :cond_2

    if-eqz v0, :cond_2

    .line 2665
    :try_start_1
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    .line 2666
    if-ne v9, v4, :cond_9

    .line 2667
    const-string v1, "PMS"

    const-string v2, "Dozing..."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2675
    :cond_2
    :goto_4
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSandmanSummoned:Z

    if-nez v1, :cond_3

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eq v1, v9, :cond_a

    .line 2676
    :cond_3
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2724
    :cond_4
    :goto_5
    return-void

    .end local v0    # "isDreaming":Z
    .end local v8    # "startDreaming":Z
    :cond_5
    move v8, v10

    .line 2639
    goto :goto_0

    .line 2642
    :cond_6
    const/4 v8, 0x0

    .restart local v8    # "startDreaming":Z
    goto :goto_1

    .line 2644
    .end local v8    # "startDreaming":Z
    .end local v9    # "wakefulness":I
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .restart local v8    # "startDreaming":Z
    .restart local v9    # "wakefulness":I
    :cond_7
    move v1, v10

    .line 2654
    goto :goto_2

    .line 2658
    :cond_8
    const/4 v0, 0x0

    .restart local v0    # "isDreaming":Z
    goto :goto_3

    .line 2669
    :cond_9
    :try_start_3
    const-string v1, "PMS"

    const-string v2, "Dreaming..."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 2718
    :catchall_1
    move-exception v1

    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 2680
    :cond_a
    if-ne v9, v5, :cond_f

    .line 2681
    if-eqz v0, :cond_b

    :try_start_4
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->canDreamLocked()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2682
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrainCutoffConfig:I

    if-ltz v1, :cond_d

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrainCutoffConfig:I

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_d

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isBeingKeptAwakeLocked()Z

    move-result v1

    if-nez v1, :cond_d

    .line 2689
    const-string v1, "PMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stopping dream because the battery appears to be draining faster than it is charging.  Battery level when dream started: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%.  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Battery level now: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2700
    :cond_b
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isItBedTimeYetLocked()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2701
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->goToSleepNoUpdateLocked(JIII)Z

    .line 2703
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 2718
    :cond_c
    :goto_6
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2721
    if-eqz v0, :cond_4

    .line 2722
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    invoke-virtual {v1, v10}, Landroid/service/dreams/DreamManagerInternal;->stopDream(Z)V

    goto/16 :goto_5

    .line 2695
    :cond_d
    :try_start_5
    monitor-exit v11

    goto/16 :goto_5

    .line 2705
    :cond_e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-string v4, "android.server.power:DREAM"

    const/16 v5, 0x3e8

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x3e8

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(JLjava/lang/String;ILjava/lang/String;I)Z

    .line 2707
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    goto :goto_6

    .line 2709
    :cond_f
    if-ne v9, v4, :cond_c

    .line 2710
    if-eqz v0, :cond_10

    .line 2711
    monitor-exit v11

    goto/16 :goto_5

    .line 2715
    :cond_10
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/16 v1, 0x3e8

    invoke-direct {p0, v2, v3, v1}, Lcom/android/server/power/PowerManagerService;->reallyGoToSleepNoUpdateLocked(JI)Z

    .line 2716
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_6
.end method

.method private handleScreenBrightnessBoostTimeout()V
    .locals 2

    .prologue
    .line 3503
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3508
    :try_start_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3509
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 3510
    monitor-exit v1

    .line 3511
    return-void

    .line 3510
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleSettingsChangedLocked()V
    .locals 0

    .prologue
    .line 1054
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateSettingsLocked()V

    .line 1055
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1056
    return-void
.end method

.method private handleUserActivityTimeout()V
    .locals 2

    .prologue
    .line 2486
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2491
    :try_start_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2492
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 2493
    monitor-exit v1

    .line 2494
    return-void

    .line 2493
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleWakeLockDeath(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 11
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .prologue
    .line 1612
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1618
    :try_start_0
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 1619
    .local v3, "index":I
    if-gez v3, :cond_0

    .line 1620
    monitor-exit v7

    .line 1654
    :goto_0
    return-void

    .line 1624
    :cond_0
    sget-boolean v6, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-nez v6, :cond_1

    .line 1626
    :cond_1
    iget-object v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    .line 1628
    .local v4, "new_tag":Ljava/lang/String;
    const-string v6, "@"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1629
    const-string v4, "encrypted_tag"

    .line 1634
    :cond_2
    iget v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    invoke-static {v6}, Lcom/android/server/power/HtcPMSExtension;->getWakeLockTypeInfo(I)Ljava/lang/String;

    move-result-object v5

    .line 1635
    .local v5, "typeInfo":Ljava/lang/String;
    # invokes: Lcom/android/server/power/PowerManagerService$WakeLock;->getLockFlagsString()Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService$WakeLock;->access$1200(Lcom/android/server/power/PowerManagerService$WakeLock;)Ljava/lang/String;

    move-result-object v2

    .line 1636
    .local v2, "flagInfo":Ljava/lang/String;
    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1}, Ljava/util/Formatter;-><init>()V

    .line 1637
    .local v1, "f":Ljava/util/Formatter;
    const-string v6, "handleWLDeath(%x): %s %s %s 0x%x"

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v5, v8, v9

    const/4 v9, 0x2

    aput-object v2, v8, v9

    const/4 v9, 0x3

    aput-object v4, v8, v9

    const/4 v9, 0x4

    iget v10, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v1, v6, v8}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 1638
    const-string v6, "PMS"

    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1643
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mHtcWakeLockDetector:Lcom/android/server/power/HtcWakeLockDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_3

    .line 1645
    :try_start_1
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mHtcWakeLockDetector:Lcom/android/server/power/HtcWakeLockDetector;

    iget-object v8, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    invoke-virtual {v6, v8}, Lcom/android/server/power/HtcWakeLockDetector;->removeWakeLock(Landroid/os/IBinder;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1652
    :cond_3
    :goto_1
    :try_start_2
    invoke-direct {p0, p1, v3}, Lcom/android/server/power/PowerManagerService;->removeWakeLockLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V

    .line 1653
    monitor-exit v7

    goto :goto_0

    .end local v1    # "f":Ljava/util/Formatter;
    .end local v2    # "flagInfo":Ljava/lang/String;
    .end local v3    # "index":I
    .end local v4    # "new_tag":Ljava/lang/String;
    .end local v5    # "typeInfo":Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 1646
    .restart local v1    # "f":Ljava/util/Formatter;
    .restart local v2    # "flagInfo":Ljava/lang/String;
    .restart local v3    # "index":I
    .restart local v4    # "new_tag":Ljava/lang/String;
    .restart local v5    # "typeInfo":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1647
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v6, "PMS"

    const-string v8, "[HtcWLD] removeWakeLock Exception : "

    invoke-static {v6, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private isActualScreenOnInternal()Z
    .locals 1

    .prologue
    .line 3578
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsActualScreenOn:Z

    return v0
.end method

.method private isBeingKeptAwakeLocked()Z
    .locals 1

    .prologue
    .line 2588
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    and-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDeviceIdleModeInternal()Z
    .locals 2

    .prologue
    .line 3253
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3254
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    monitor-exit v1

    return v0

    .line 3255
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isInteractiveInternal()Z
    .locals 2

    .prologue
    .line 3198
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3199
    :try_start_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    invoke-static {v0}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 3200
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isItBedTimeYetLocked()Z
    .locals 1

    .prologue
    .line 2576
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isBeingKeptAwakeLocked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLowPowerModeInternal()Z
    .locals 2

    .prologue
    .line 3204
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3205
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeEnabled:Z

    monitor-exit v1

    return v0

    .line 3206
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z
    .locals 2

    .prologue
    .line 3452
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    const v1, 0x7fffffff

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPerfLevelLock(I)Z
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 4164
    const v1, 0xf000

    and-int v0, p1, v1

    .line 4165
    .local v0, "n":I
    const/16 v1, 0x1000

    if-eq v0, v1, :cond_0

    const/16 v1, 0x2000

    if-eq v0, v1, :cond_0

    const/16 v1, 0x4000

    if-eq v0, v1, :cond_0

    const v1, 0x8000

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isScreenBright()Z
    .locals 3

    .prologue
    .line 3626
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3627
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 3628
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isScreenBrightnessBoostedInternal()Z
    .locals 2

    .prologue
    .line 3491
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3492
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    monitor-exit v1

    return v0

    .line 3493
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z
    .locals 2
    .param p0, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .prologue
    .line 1242
    iget v0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v1, 0xffff

    and-int/2addr v0, v1

    sparse-switch v0, :sswitch_data_0

    .line 1248
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1246
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1242
    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0xa -> :sswitch_0
        0x1a -> :sswitch_0
    .end sparse-switch
.end method

.method private static isValidAutoBrightnessAdjustment(F)Z
    .locals 1
    .param p0, "value"    # F

    .prologue
    .line 2912
    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isValidBrightness(I)Z
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 2907
    if-ltz p0, :cond_0

    const/16 v0, 0xff

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWakeLockLevelSupportedInternal(I)Z
    .locals 4
    .param p1, "level"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1769
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1770
    sparse-switch p1, :sswitch_data_0

    .line 1790
    :try_start_0
    monitor-exit v2

    move v0, v1

    :goto_0
    return v0

    .line 1784
    :sswitch_0
    monitor-exit v2

    goto :goto_0

    .line 1792
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1787
    :sswitch_1
    :try_start_1
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v3}, Landroid/hardware/display/DisplayManagerInternal;->isProximitySensorAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    .line 1770
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_0
        0xa -> :sswitch_0
        0x1a -> :sswitch_0
        0x20 -> :sswitch_1
        0x40 -> :sswitch_0
        0x80 -> :sswitch_0
        0x800 -> :sswitch_0
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_0
        0x4000 -> :sswitch_0
        0x8000 -> :sswitch_0
    .end sparse-switch
.end method

.method private keepGoogleOriginalPowerSaverBehavior()Z
    .locals 1

    .prologue
    .line 957
    invoke-static {}, Lcom/android/server/power/HtcPMSExtension;->isVzwSku()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsStockUI:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static lowLevelReboot(Ljava/lang/String;)V
    .locals 4
    .param p0, "reason"    # Ljava/lang/String;

    .prologue
    .line 3603
    if-nez p0, :cond_0

    .line 3604
    const-string p0, ""

    .line 3606
    :cond_0
    const-string v1, "PMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lowLevelReboot, reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3607
    const-string v1, "recovery"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3612
    const-string v1, "ctl.start"

    const-string v2, "pre-recovery"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3617
    :goto_0
    const-wide/16 v2, 0x4e20

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3621
    :goto_1
    const-string v1, "PMS"

    const-string v2, "Unexpected return from lowLevelReboot!"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3622
    return-void

    .line 3614
    :cond_1
    const-string v1, "sys.powerctl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reboot,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3618
    :catch_0
    move-exception v0

    .line 3619
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1
.end method

.method public static lowLevelShutdown()V
    .locals 3

    .prologue
    .line 3591
    const-string v0, "PMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lowLevelShutdown, pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3592
    const-string v0, "sys.powerctl"

    const-string v1, "shutdown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3593
    return-void
.end method

.method private napInternal(JI)V
    .locals 3
    .param p1, "eventTime"    # J
    .param p3, "uid"    # I

    .prologue
    .line 2012
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2013
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->napNoUpdateLocked(JI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2014
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 2016
    :cond_0
    monitor-exit v1

    .line 2017
    return-void

    .line 2016
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private napNoUpdateLocked(JI)Z
    .locals 7
    .param p1, "eventTime"    # J
    .param p3, "uid"    # I

    .prologue
    const/4 v1, 0x0

    const-wide/32 v4, 0x20000

    const/4 v0, 0x1

    .line 2024
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-ne v2, v0, :cond_0

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 2038
    :goto_0
    return v0

    .line 2029
    :cond_1
    const-string v1, "nap"

    invoke-static {v4, v5, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2031
    :try_start_0
    const-string v1, "PMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Nap time (uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2033
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSandmanSummoned:Z

    .line 2034
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/power/PowerManagerService;->setWakefulnessLocked(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2036
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private static native nativeAcquireCpuFreqMaxWakeLock(I)V
.end method

.method private static native nativeAcquireCpuFreqMinWakeLock(I)V
.end method

.method private static native nativeAcquireCpuMode(I)V
.end method

.method private static native nativeAcquireCpuNumMaxWakeLock(I)V
.end method

.method private static native nativeAcquireCpuNumMinWakeLock(I)V
.end method

.method public static native nativeAcquireCpuPerfWakeLock()V
.end method

.method private static native nativeAcquireSuspendBlocker(Ljava/lang/String;)V
.end method

.method private native nativeInit()V
.end method

.method private static native nativeReleaseCpuFreqMaxWakeLock()V
.end method

.method private static native nativeReleaseCpuFreqMinWakeLock()V
.end method

.method private static native nativeReleaseCpuNumMaxWakeLock()V
.end method

.method private static native nativeReleaseCpuNumMinWakeLock()V
.end method

.method public static native nativeReleaseCpuPerfWakeLock()V
.end method

.method private static native nativeReleaseSuspendBlocker(Ljava/lang/String;)V
.end method

.method private static native nativeSendPowerHint(II)V
.end method

.method private static native nativeSetAutoSuspend(Z)V
.end method

.method private static native nativeSetDimAnimationCompleted(Z)V
.end method

.method private static native nativeSetFeature(II)V
.end method

.method private static native nativeSetInteractive(Z)V
.end method

.method private static native nativeSetPowerState(ZZ)V
.end method

.method private native nativeWipeSystem([B[B)V
.end method

.method private needDisplaySuspendBlockerLocked()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3149
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    if-nez v1, :cond_1

    .line 3166
    :cond_0
    :goto_0
    return v0

    .line 3152
    :cond_1
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isBrightOrDim()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3157
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSuspendWhenScreenOffDueToProximityConfig:Z

    if-eqz v1, :cond_0

    .line 3162
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    if-nez v1, :cond_0

    .line 3166
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyHtcCpuCtrlAcquiredLocked(Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;)V
    .locals 1
    .param p1, "htcCpuCtrl"    # Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;

    .prologue
    .line 1755
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_0

    .line 1756
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mNotifiedAcquired:Z

    .line 1758
    :cond_0
    return-void
.end method

.method private notifyHtcCpuCtrlReleasedLocked(Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;)V
    .locals 1
    .param p1, "htcCpuCtrl"    # Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;

    .prologue
    .line 1761
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mNotifiedAcquired:Z

    if-eqz v0, :cond_0

    .line 1762
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mNotifiedAcquired:Z

    .line 1764
    :cond_0
    return-void
.end method

.method private notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 8
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .prologue
    .line 1727
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-nez v0, :cond_0

    .line 1728
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    .line 1729
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iget-object v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    iget v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget v5, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    iget-object v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    iget-object v7, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/power/Notifier;->onWakeLockAcquired(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    .line 1733
    :cond_0
    return-void
.end method

.method private notifyWakeLockChangingLocked(Lcom/android/server/power/PowerManagerService$WakeLock;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V
    .locals 16
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;
    .param p2, "flags"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "uid"    # I
    .param p6, "pid"    # I
    .param p7, "ws"    # Landroid/os/WorkSource;
    .param p8, "historyTag"    # Ljava/lang/String;

    .prologue
    .line 1737
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v1, :cond_0

    move-object/from16 v0, p1

    iget-boolean v1, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    if-eqz v1, :cond_0

    .line 1738
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    move/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p6

    move-object/from16 v14, p7

    move-object/from16 v15, p8

    invoke-virtual/range {v1 .. v15}, Lcom/android/server/power/Notifier;->onWakeLockChanging(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    .line 1742
    :cond_0
    return-void
.end method

.method private notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 8
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .prologue
    .line 1745
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    if-eqz v0, :cond_0

    .line 1746
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    .line 1747
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iget-object v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    iget v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget v5, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    iget-object v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    iget-object v7, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/power/Notifier;->onWakeLockReleased(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    .line 1751
    :cond_0
    return-void
.end method

.method private powerHintInternal(II)V
    .locals 0
    .param p1, "hintId"    # I
    .param p2, "data"    # I

    .prologue
    .line 3583
    invoke-static {p1, p2}, Lcom/android/server/power/PowerManagerService;->nativeSendPowerHint(II)V

    .line 3584
    return-void
.end method

.method private readConfigurationLocked()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 806
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 808
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x112006a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    .line 810
    const v1, 0x112006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    .line 812
    const v1, 0x1120023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedConfig:Z

    .line 814
    const v1, 0x1120027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig:Z

    .line 816
    const v1, 0x1120039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSuspendWhenScreenOffDueToProximityConfig:Z

    .line 818
    const v1, 0x1120064

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsSupportedConfig:Z

    .line 820
    const v1, 0x1120065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledByDefaultConfig:Z

    .line 822
    const v1, 0x1120067

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnSleepByDefaultConfig:Z

    .line 824
    const v1, 0x1120066

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnDockByDefaultConfig:Z

    .line 826
    const v1, 0x1120068

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledOnBatteryConfig:Z

    .line 828
    const v1, 0x10e007e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    .line 830
    const v1, 0x10e007f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    .line 832
    const v1, 0x10e0080

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrainCutoffConfig:I

    .line 834
    const v1, 0x1120069

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDozeAfterScreenOffConfig:Z

    .line 839
    const/16 v1, 0x1388

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:I

    .line 841
    const v1, 0x10e0082

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimDurationConfig:I

    .line 843
    const v1, 0x1130002

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimRatioConfig:F

    .line 845
    const v1, 0x112009a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSupportsDoubleTapWakeConfig:Z

    .line 847
    return-void
.end method

.method private reallyGoToSleepNoUpdateLocked(JI)Z
    .locals 7
    .param p1, "eventTime"    # J
    .param p3, "uid"    # I

    .prologue
    const/4 v0, 0x0

    const-wide/32 v4, 0x20000

    .line 2048
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v1, p1, v2

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v1, :cond_1

    .line 2061
    :cond_0
    :goto_0
    return v0

    .line 2053
    :cond_1
    const-string v0, "reallyGoToSleep"

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2055
    :try_start_0
    const-string v0, "PMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sleeping (uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2057
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/server/power/PowerManagerService;->setWakefulnessLocked(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2059
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 2061
    const/4 v0, 0x1

    goto :goto_0

    .line 2059
    :catchall_0
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private recalculateScreenTimeout()V
    .locals 2

    .prologue
    .line 5380
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5381
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isScreenBright()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eqz v0, :cond_0

    .line 5382
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 5383
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 5385
    :cond_0
    monitor-exit v1

    .line 5386
    return-void

    .line 5385
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private releaseHtcCpuCtrlInternal(Landroid/os/IBinder;I)V
    .locals 10
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "flags"    # I

    .prologue
    .line 1505
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1506
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->findHtcCpuCtrlIndexLocked(Landroid/os/IBinder;)I

    move-result v2

    .line 1507
    .local v2, "index":I
    if-gez v2, :cond_0

    .line 1514
    monitor-exit v6

    .line 1608
    :goto_0
    return-void

    .line 1517
    :cond_0
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mHtcCpuCtrls:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;

    .line 1518
    .local v1, "htcCpuCtrl":Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mHtcCpuCtrls:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1521
    sget-boolean v5, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-nez v5, :cond_1

    .line 1523
    :cond_1
    iget-object v3, v1, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mTag:Ljava/lang/String;

    .line 1525
    .local v3, "new_tag":Ljava/lang/String;
    const-string v5, "@"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1526
    const-string v3, "encrypted_tag"

    .line 1531
    :cond_2
    iget v5, v1, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mFlags:I

    invoke-static {v5}, Lcom/android/server/power/HtcPMSExtension;->getWakeLockTypeInfo(I)Ljava/lang/String;

    move-result-object v4

    .line 1532
    .local v4, "typeInfo":Ljava/lang/String;
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    .line 1535
    .local v0, "f":Ljava/util/Formatter;
    const-string v5, "releaseHCC(%x): %s %s 0x%x %s"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v4, v7, v8

    const/4 v8, 0x2

    aput-object v3, v7, v8

    const/4 v8, 0x3

    iget v9, v1, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mFlags:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    iget-object v9, v1, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mWorkSource:Landroid/os/WorkSource;

    aput-object v9, v7, v8

    invoke-virtual {v0, v5, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 1537
    const-string v5, "PMS"

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService;->notifyHtcCpuCtrlReleasedLocked(Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;)V

    .line 1542
    iget-object v5, v1, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mLock:Landroid/os/IBinder;

    const/4 v7, 0x0

    invoke-interface {v5, v1, v7}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1545
    iget v5, v1, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mFlags:I

    const v7, 0xffff

    and-int/2addr v5, v7

    const/16 v7, 0x800

    if-ne v5, v7, :cond_8

    .line 1546
    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mCpuPerfCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/android/server/power/PowerManagerService;->mCpuPerfCount:I

    .line 1548
    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mCpuPerfCount:I

    if-nez v5, :cond_7

    .line 1549
    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mCpuFreqMinCount:I

    if-nez v5, :cond_3

    .line 1550
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->nativeReleaseCpuFreqMinWakeLock()V

    .line 1552
    :cond_3
    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mCpuNumMinCount:I

    if-nez v5, :cond_4

    .line 1553
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->nativeReleaseCpuNumMinWakeLock()V

    .line 1555
    :cond_4
    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mCpuFreqMinCount:I

    if-nez v5, :cond_5

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mCpuNumMinCount:I

    if-eqz v5, :cond_6

    .line 1556
    :cond_5
    const/16 v5, 0x800

    invoke-direct {p0, v5}, Lcom/android/server/power/PowerManagerService;->updateHtcCpuCtrlLevel(I)V

    .line 1605
    :cond_6
    :goto_1
    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1606
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1607
    monitor-exit v6

    goto/16 :goto_0

    .end local v0    # "f":Ljava/util/Formatter;
    .end local v1    # "htcCpuCtrl":Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;
    .end local v2    # "index":I
    .end local v3    # "new_tag":Ljava/lang/String;
    .end local v4    # "typeInfo":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1559
    .restart local v0    # "f":Ljava/util/Formatter;
    .restart local v1    # "htcCpuCtrl":Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;
    .restart local v2    # "index":I
    .restart local v3    # "new_tag":Ljava/lang/String;
    .restart local v4    # "typeInfo":Ljava/lang/String;
    :cond_7
    const/16 v5, 0x800

    :try_start_1
    invoke-direct {p0, v5}, Lcom/android/server/power/PowerManagerService;->updateHtcCpuCtrlLevel(I)V

    goto :goto_1

    .line 1562
    :cond_8
    iget v5, v1, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mFlags:I

    const v7, 0xf000

    and-int/2addr v5, v7

    const/16 v7, 0x1000

    if-ne v5, v7, :cond_a

    .line 1563
    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mCpuFreqMaxCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/android/server/power/PowerManagerService;->mCpuFreqMaxCount:I

    .line 1564
    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mCpuFreqMaxCount:I

    if-nez v5, :cond_9

    .line 1565
    const/16 v5, 0x1000

    invoke-direct {p0, v5}, Lcom/android/server/power/PowerManagerService;->updateHtcCpuCtrlLevel(I)V

    .line 1566
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->nativeReleaseCpuFreqMaxWakeLock()V

    goto :goto_1

    .line 1568
    :cond_9
    const/16 v5, 0x1000

    invoke-direct {p0, v5}, Lcom/android/server/power/PowerManagerService;->updateHtcCpuCtrlLevel(I)V

    goto :goto_1

    .line 1570
    :cond_a
    iget v5, v1, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mFlags:I

    const v7, 0xf000

    and-int/2addr v5, v7

    const/16 v7, 0x2000

    if-ne v5, v7, :cond_c

    .line 1571
    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mCpuFreqMinCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/android/server/power/PowerManagerService;->mCpuFreqMinCount:I

    .line 1573
    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mCpuFreqMinCount:I

    if-nez v5, :cond_b

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mCpuPerfCount:I

    if-nez v5, :cond_b

    .line 1575
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->nativeReleaseCpuFreqMinWakeLock()V

    goto :goto_1

    .line 1577
    :cond_b
    const/16 v5, 0x2000

    invoke-direct {p0, v5}, Lcom/android/server/power/PowerManagerService;->updateHtcCpuCtrlLevel(I)V

    goto :goto_1

    .line 1579
    :cond_c
    iget v5, v1, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mFlags:I

    const v7, 0xf000

    and-int/2addr v5, v7

    const/16 v7, 0x4000

    if-ne v5, v7, :cond_e

    .line 1580
    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mCpuNumMaxCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/android/server/power/PowerManagerService;->mCpuNumMaxCount:I

    .line 1581
    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mCpuNumMaxCount:I

    if-nez v5, :cond_d

    .line 1582
    const/16 v5, 0x4000

    invoke-direct {p0, v5}, Lcom/android/server/power/PowerManagerService;->updateHtcCpuCtrlLevel(I)V

    .line 1583
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->nativeReleaseCpuNumMaxWakeLock()V

    goto :goto_1

    .line 1585
    :cond_d
    const/16 v5, 0x4000

    invoke-direct {p0, v5}, Lcom/android/server/power/PowerManagerService;->updateHtcCpuCtrlLevel(I)V

    goto :goto_1

    .line 1587
    :cond_e
    iget v5, v1, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mFlags:I

    const v7, 0xf000

    and-int/2addr v5, v7

    const v7, 0x8000

    if-ne v5, v7, :cond_6

    .line 1588
    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mCpuNumMinCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/android/server/power/PowerManagerService;->mCpuNumMinCount:I

    .line 1590
    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mCpuNumMinCount:I

    if-nez v5, :cond_f

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mCpuPerfCount:I

    if-nez v5, :cond_f

    .line 1592
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->nativeReleaseCpuNumMinWakeLock()V

    goto/16 :goto_1

    .line 1594
    :cond_f
    const v5, 0x8000

    invoke-direct {p0, v5}, Lcom/android/server/power/PowerManagerService;->updateHtcCpuCtrlLevel(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1
.end method

.method private releaseWakeLockInternal(Landroid/os/IBinder;I)V
    .locals 13
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "flags"    # I

    .prologue
    const/16 v12, 0x800

    .line 1429
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1430
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->findWakeLockIndexLocked(Landroid/os/IBinder;)I

    move-result v3

    .line 1431
    .local v3, "index":I
    if-gez v3, :cond_0

    .line 1436
    monitor-exit v8

    .line 1501
    :goto_0
    return-void

    .line 1439
    :cond_0
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 1446
    .local v6, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget v7, v6, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iget-object v9, v6, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    invoke-static {v7, v9}, Lcom/android/server/power/HtcPMSExtension;->canPrintWakeLockLog(ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1448
    iget-object v4, v6, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    .line 1450
    .local v4, "new_tag":Ljava/lang/String;
    const-string v7, "@"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1451
    const-string v4, "encrypted_tag"

    .line 1456
    :cond_1
    iget v7, v6, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    invoke-static {v7}, Lcom/android/server/power/HtcPMSExtension;->getWakeLockTypeInfo(I)Ljava/lang/String;

    move-result-object v5

    .line 1457
    .local v5, "typeInfo":Ljava/lang/String;
    # invokes: Lcom/android/server/power/PowerManagerService$WakeLock;->getLockFlagsString()Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/power/PowerManagerService$WakeLock;->access$1200(Lcom/android/server/power/PowerManagerService$WakeLock;)Ljava/lang/String;

    move-result-object v2

    .line 1458
    .local v2, "flagInfo":Ljava/lang/String;
    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1}, Ljava/util/Formatter;-><init>()V

    .line 1459
    .local v1, "f":Ljava/util/Formatter;
    const-string v7, "releaseWL(%x): %s %s %s 0x%x %s"

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v5, v9, v10

    const/4 v10, 0x2

    aput-object v2, v9, v10

    const/4 v10, 0x3

    aput-object v4, v9, v10

    const/4 v10, 0x4

    iget v11, v6, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x5

    iget-object v11, v6, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    aput-object v11, v9, v10

    invoke-virtual {v1, v7, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 1460
    const-string v7, "PMS"

    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    .end local v1    # "f":Ljava/util/Formatter;
    .end local v2    # "flagInfo":Ljava/lang/String;
    .end local v4    # "new_tag":Ljava/lang/String;
    .end local v5    # "typeInfo":Ljava/lang/String;
    :cond_2
    and-int/lit8 v7, p2, 0x1

    if-eqz v7, :cond_3

    .line 1465
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    .line 1469
    :cond_3
    iget v7, v6, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v9, 0xffff

    and-int/2addr v7, v9

    if-ne v7, v12, :cond_7

    .line 1470
    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mCpuPerfCount:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/android/server/power/PowerManagerService;->mCpuPerfCount:I

    .line 1472
    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mCpuPerfCount:I

    if-nez v7, :cond_9

    .line 1473
    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mCpuFreqMinCount:I

    if-nez v7, :cond_4

    .line 1474
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->nativeReleaseCpuFreqMinWakeLock()V

    .line 1476
    :cond_4
    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mCpuNumMinCount:I

    if-nez v7, :cond_5

    .line 1477
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->nativeReleaseCpuNumMinWakeLock()V

    .line 1479
    :cond_5
    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mCpuFreqMinCount:I

    if-nez v7, :cond_6

    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mCpuNumMinCount:I

    if-eqz v7, :cond_7

    .line 1480
    :cond_6
    const/16 v7, 0x800

    invoke-direct {p0, v7}, Lcom/android/server/power/PowerManagerService;->updateHtcCpuCtrlLevel(I)V

    .line 1488
    :cond_7
    :goto_1
    iget-object v7, v6, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    const/4 v9, 0x0

    invoke-interface {v7, v6, v9}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1489
    invoke-direct {p0, v6, v3}, Lcom/android/server/power/PowerManagerService;->removeWakeLockLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V

    .line 1492
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mHtcWakeLockDetector:Lcom/android/server/power/HtcWakeLockDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_8

    .line 1494
    :try_start_1
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mHtcWakeLockDetector:Lcom/android/server/power/HtcWakeLockDetector;

    iget-object v9, v6, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    invoke-virtual {v7, v9}, Lcom/android/server/power/HtcWakeLockDetector;->removeWakeLock(Landroid/os/IBinder;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1500
    :cond_8
    :goto_2
    :try_start_2
    monitor-exit v8

    goto/16 :goto_0

    .end local v3    # "index":I
    .end local v6    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 1483
    .restart local v3    # "index":I
    .restart local v6    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_9
    const/16 v7, 0x800

    :try_start_3
    invoke-direct {p0, v7}, Lcom/android/server/power/PowerManagerService;->updateHtcCpuCtrlLevel(I)V

    goto :goto_1

    .line 1495
    :catch_0
    move-exception v0

    .line 1496
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "PMS"

    const-string v9, "[HtcWLD] removeWakeLock Exception : "

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method private removeWakeLockLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V
    .locals 1
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;
    .param p2, "index"    # I

    .prologue
    .line 1657
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1658
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 1660
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->applyWakeLockFlagsOnReleaseLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 1661
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1662
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1663
    return-void
.end method

.method private scheduleSandmanLocked()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2616
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    if-nez v1, :cond_0

    .line 2617
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    .line 2618
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2619
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 2620
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2622
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private screenStateNotifier(Z)V
    .locals 1
    .param p1, "on"    # Z

    .prologue
    .line 3857
    sget-object v0, Lcom/android/server/power/PowerManagerService;->mHtcPMSExtension:Lcom/android/server/power/HtcPMSExtension;

    if-eqz v0, :cond_0

    .line 3858
    sget-object v0, Lcom/android/server/power/PowerManagerService;->mHtcPMSExtension:Lcom/android/server/power/HtcPMSExtension;

    invoke-virtual {v0, p1}, Lcom/android/server/power/HtcPMSExtension;->notifyActualScreenState(Z)V

    .line 3863
    :cond_0
    sget-object v0, Lcom/android/server/power/PowerManagerService;->mHtcPMSExtension:Lcom/android/server/power/HtcPMSExtension;

    if-eqz v0, :cond_1

    .line 3864
    sget-object v0, Lcom/android/server/power/PowerManagerService;->mHtcPMSExtension:Lcom/android/server/power/HtcPMSExtension;

    invoke-virtual {v0, p1}, Lcom/android/server/power/HtcPMSExtension;->writeScreenState(Z)V

    .line 3869
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    if-eqz v0, :cond_2

    .line 3870
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerInternal;->notifyHABCScreenState(Z)V

    .line 3873
    :cond_2
    return-void
.end method

.method private sendClearScreenTimeoutTask(II)V
    .locals 4
    .param p1, "timeout"    # I
    .param p2, "calcRemaining"    # I

    .prologue
    .line 3647
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 3648
    const-string v0, "PMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendClearTask("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3649
    const-string v0, "PMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Post("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3651
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mClearScreenTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3652
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mClearScreenTimeoutTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3653
    return-void
.end method

.method private setAttentionLightInternal(ZI)V
    .locals 4
    .param p1, "on"    # Z
    .param p2, "color"    # I

    .prologue
    const/4 v2, 0x0

    .line 3458
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3459
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v1, :cond_0

    .line 3460
    monitor-exit v3

    .line 3467
    :goto_0
    return-void

    .line 3462
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mAttentionLight:Lcom/android/server/lights/Light;

    .line 3463
    .local v0, "light":Lcom/android/server/lights/Light;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3466
    const/4 v3, 0x2

    if-eqz p1, :cond_1

    const/4 v1, 0x3

    :goto_1
    invoke-virtual {v0, p2, v3, v1, v2}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    goto :goto_0

    .line 3463
    .end local v0    # "light":Lcom/android/server/lights/Light;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .restart local v0    # "light":Lcom/android/server/lights/Light;
    :cond_1
    move v1, v2

    .line 3466
    goto :goto_1
.end method

.method private setDozeOverrideFromDreamManagerInternal(II)V
    .locals 2
    .param p1, "screenState"    # I
    .param p2, "screenBrightness"    # I

    .prologue
    .line 3565
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3566
    :try_start_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    if-eq v0, p2, :cond_1

    .line 3568
    :cond_0
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    .line 3569
    iput p2, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    .line 3570
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3571
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 3573
    :cond_1
    monitor-exit v1

    .line 3574
    return-void

    .line 3573
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setForceScreenOnWhenNear(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .prologue
    .line 5391
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    if-eqz v0, :cond_1

    .line 5392
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 5393
    const-string v0, "PMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setForceScreenOnWhenNear = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5395
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput-boolean p1, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forceScreenOnWhenNear:Z

    .line 5397
    :cond_1
    return-void
.end method

.method private setHalAutoSuspendModeLocked(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    const-wide/32 v4, 0x20000

    .line 3170
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHalAutoSuspendModeEnabled:Z

    if-eq p1, v0, :cond_0

    .line 3171
    const-string v0, "PMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting HAL auto-suspend mode to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3172
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mHalAutoSuspendModeEnabled:Z

    .line 3173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setHalAutoSuspend("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3175
    :try_start_0
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->nativeSetAutoSuspend(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3177
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 3179
    const-string v0, "PMS"

    const-string v1, "Setting HAL auto-suspend mode done"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3181
    :cond_0
    return-void

    .line 3177
    :catchall_0
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private setHalInteractiveModeLocked(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    const-wide/32 v4, 0x20000

    .line 3184
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    if-eq p1, v0, :cond_0

    .line 3185
    const-string v0, "PMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting HAL interactive mode to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3186
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    .line 3187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setHalInteractive("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3189
    :try_start_0
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->nativeSetInteractive(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3191
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 3193
    const-string v0, "PMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting HAL interactive mode to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " done"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3195
    :cond_0
    return-void

    .line 3191
    :catchall_0
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private setLowPowerModeInternal(Z)Z
    .locals 6
    .param p1, "mode"    # Z

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3210
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3212
    :try_start_0
    sget-boolean v3, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v3, :cond_0

    .line 3213
    const-string v3, "PMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setLowPowerModeInternal, mode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeSetting:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mIsPowered="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mCurAutoLPME="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mCurAutoLowPowerModeEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3218
    :cond_0
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->keepGoogleOriginalPowerSaverBehavior()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-eqz v3, :cond_1

    .line 3219
    monitor-exit v2

    .line 3248
    :goto_0
    return v0

    .line 3222
    :cond_1
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mCurAutoLowPowerModeEnabled:Z

    if-eqz v3, :cond_3

    if-nez p1, :cond_3

    .line 3223
    sget-boolean v3, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v3, :cond_2

    .line 3224
    const-string v3, "PMS"

    const-string v4, "Set mSkipLowPowerMode"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3226
    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mSkipLowPowerMode:Z

    .line 3229
    :cond_3
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "low_power"

    if-eqz p1, :cond_4

    move v0, v1

    :cond_4
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3231
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeSetting:Z

    .line 3233
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeConfigured:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    if-eqz v0, :cond_5

    .line 3234
    if-eqz p1, :cond_6

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeSnoozing:Z

    if-eqz v0, :cond_6

    .line 3238
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeSnoozing:Z

    .line 3247
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updateLowPowerModeLocked()V

    .line 3248
    monitor-exit v2

    move v0, v1

    goto :goto_0

    .line 3239
    :cond_6
    if-nez p1, :cond_5

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeSnoozing:Z

    if-nez v0, :cond_5

    .line 3243
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeSnoozing:Z

    goto :goto_1

    .line 3249
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setScreenBrightnessOverrideFromWindowManagerInternal(I)V
    .locals 2
    .param p1, "brightness"    # I

    .prologue
    .line 3516
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReadyDone:Z

    if-nez v0, :cond_0

    .line 3517
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    .line 3518
    const-string v0, "PMS"

    const-string v1, "setSBOFWM is called before system ready"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3529
    :goto_0
    return-void

    .line 3522
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3523
    :try_start_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    if-eq v0, p1, :cond_1

    .line 3524
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    .line 3525
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3526
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 3528
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setTemporaryScreenAutoBrightnessAdjustmentSettingOverrideInternal(F)V
    .locals 2
    .param p1, "adj"    # F

    .prologue
    .line 3552
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3555
    :try_start_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 3556
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    .line 3557
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3558
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 3560
    :cond_0
    monitor-exit v1

    .line 3561
    return-void

    .line 3560
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setTemporaryScreenBrightnessSettingOverrideInternal(I)V
    .locals 2
    .param p1, "brightness"    # I

    .prologue
    .line 3542
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3543
    :try_start_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    if-eq v0, p1, :cond_0

    .line 3544
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    .line 3545
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3546
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 3548
    :cond_0
    monitor-exit v1

    .line 3549
    return-void

    .line 3548
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setUserActivityTimeoutOverrideFromWindowManagerInternal(J)V
    .locals 5
    .param p1, "timeoutMillis"    # J

    .prologue
    .line 3532
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3533
    :try_start_0
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    .line 3534
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    .line 3535
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3536
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 3538
    :cond_0
    monitor-exit v1

    .line 3539
    return-void

    .line 3538
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setWakeLockDisabledStateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)Z
    .locals 6
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .prologue
    const/4 v2, 0x1

    .line 3427
    iget v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v4, 0xffff

    and-int/2addr v3, v4

    if-ne v3, v2, :cond_1

    .line 3429
    const/4 v1, 0x0

    .line 3430
    .local v1, "disabled":Z
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    if-eqz v3, :cond_0

    .line 3431
    iget v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 3434
    .local v0, "appid":I
    const/16 v3, 0x2710

    if-lt v0, v3, :cond_0

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleWhitelist:[I

    invoke-static {v3, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v3

    if-gez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleTempWhitelist:[I

    invoke-static {v3, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v3

    if-gez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseIntArray;

    iget v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    const/16 v5, 0x10

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    const/4 v4, 0x4

    if-le v3, v4, :cond_0

    .line 3440
    const/4 v1, 0x1

    .line 3443
    .end local v0    # "appid":I
    :cond_0
    iget-boolean v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eq v3, v1, :cond_1

    .line 3444
    iput-boolean v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    .line 3448
    .end local v1    # "disabled":Z
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setWakefulnessLocked(II)V
    .locals 1
    .param p1, "wakefulness"    # I
    .param p2, "reason"    # I

    .prologue
    .line 2065
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eq v0, p1, :cond_0

    .line 2066
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    .line 2067
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulnessChanging:Z

    .line 2068
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2069
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/Notifier;->onWakefulnessChangeStarted(II)V

    .line 2071
    :cond_0
    return-void
.end method

.method private shouldNapAtBedTimeLocked()Z
    .locals 1

    .prologue
    .line 2565
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnSleepSetting:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnDockSetting:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldUseProximitySensorLocked()Z
    .locals 1

    .prologue
    .line 3075
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldWakeUpWhenPluggedOrUnpluggedLocked(ZIZ)Z
    .locals 3
    .param p1, "wasPowered"    # Z
    .param p2, "oldPlugType"    # I
    .param p3, "dockedOnWirelessCharger"    # Z

    .prologue
    const/4 v2, 0x4

    const/4 v0, 0x0

    .line 2239
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedConfig:Z

    if-nez v1, :cond_1

    .line 2269
    :cond_0
    :goto_0
    return v0

    .line 2245
    :cond_1
    if-eqz p1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-nez v1, :cond_2

    if-eq p2, v2, :cond_0

    .line 2252
    :cond_2
    if-nez p1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    if-ne v1, v2, :cond_3

    if-eqz p3, :cond_0

    .line 2259
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 2264
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mTheaterModeEnabled:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig:Z

    if-eqz v1, :cond_0

    .line 2269
    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private shutdownOrRebootInternal(ZZLjava/lang/String;Z)V
    .locals 6
    .param p1, "shutdown"    # Z
    .param p2, "confirm"    # Z
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "wait"    # Z

    .prologue
    .line 3265
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v4, :cond_1

    .line 3266
    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Too early to call shutdown() or reboot()"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3269
    :cond_1
    new-instance v3, Lcom/android/server/power/PowerManagerService$4;

    invoke-direct {v3, p0, p2, p3, p1}, Lcom/android/server/power/PowerManagerService$4;-><init>(Lcom/android/server/power/PowerManagerService;ZLjava/lang/String;Z)V

    .line 3288
    .local v3, "runnable":Ljava/lang/Runnable;
    new-instance v2, Landroid/os/HandlerThread;

    const-string v4, "PowerManagerService.reboot"

    invoke-direct {v2, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 3289
    .local v2, "rebootThread":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 3290
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3296
    .local v1, "rebootHandler":Landroid/os/Handler;
    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    .line 3300
    .local v0, "msg":Landroid/os/Message;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 3303
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3304
    const-string v4, "PMS"

    const-string v5, "rebootHandler msg sent."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3309
    if-eqz p4, :cond_2

    .line 3310
    monitor-enter v3

    .line 3313
    :goto_0
    :try_start_0
    const-string v4, "PMS"

    const-string v5, "runnable.wait()"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3316
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3317
    :catch_0
    move-exception v4

    goto :goto_0

    .line 3320
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 3322
    :cond_2
    return-void
.end method

.method private updateDisplayPowerStateLocked(I)Z
    .locals 13
    .param p1, "dirty"    # I

    .prologue
    .line 2775
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    .line 2776
    .local v4, "oldDisplayReady":Z
    and-int/lit16 v9, p1, 0x83f

    if-eqz v9, :cond_6

    .line 2780
    const/4 v2, 0x0

    .line 2781
    .local v2, "isLoggable":Z
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v6, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    .line 2784
    .local v6, "preScreenState":I
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->getDesiredScreenPolicyLocked()I

    move-result v10

    iput v10, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    .line 2787
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v9, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-eq v9, v6, :cond_0

    .line 2788
    const/4 v2, 0x1

    .line 2790
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v9, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-eqz v9, :cond_7

    const/4 v9, 0x1

    :goto_0
    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v10, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_8

    const/4 v10, 0x1

    :goto_1
    invoke-static {v9, v10}, Lcom/android/server/power/PowerManagerService;->nativeSetPowerState(ZZ)V

    .line 2798
    :cond_0
    const/4 v1, 0x1

    .line 2799
    .local v1, "brightnessSetByUser":Z
    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    .line 2800
    .local v8, "screenBrightness":I
    const/4 v7, 0x0

    .line 2801
    .local v7, "screenAutoBrightnessAdjustment":F
    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_9

    const/4 v0, 0x1

    .line 2803
    .local v0, "autoBrightness":Z
    :goto_2
    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->isValidBrightness(I)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 2804
    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    .line 2805
    const/4 v0, 0x0

    .line 2806
    const/4 v1, 0x0

    .line 2812
    :cond_1
    :goto_3
    if-eqz v0, :cond_2

    .line 2813
    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    .line 2814
    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->isValidAutoBrightnessAdjustment(F)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 2816
    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    .line 2823
    :cond_2
    :goto_4
    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMaximum:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMinimum:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 2825
    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v7, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    const/high16 v10, -0x40800000    # -1.0f

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 2829
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput v8, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightness:I

    .line 2830
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput v7, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    .line 2832
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput-boolean v1, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->brightnessSetByUser:Z

    .line 2833
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput-boolean v0, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    .line 2834
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->shouldUseProximitySensorLocked()Z

    move-result v10

    iput-boolean v10, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    .line 2835
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeEnabled:Z

    iput-boolean v10, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    .line 2836
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    iput-boolean v10, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->boostScreenBrightness:Z

    .line 2838
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v9, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_d

    .line 2839
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    iput v10, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    .line 2840
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v9, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_3

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit16 v9, v9, 0x80

    if-eqz v9, :cond_3

    .line 2842
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const/4 v10, 0x3

    iput v10, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    .line 2844
    :cond_3
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    iput v10, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:I

    .line 2851
    :goto_5
    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    .line 2852
    .local v5, "preDisplayReady":Z
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    invoke-virtual {v9, v10, v11}, Landroid/hardware/display/DisplayManagerInternal;->requestPowerState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Z)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    .line 2854
    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    if-eq v9, v5, :cond_4

    .line 2855
    const/4 v2, 0x1

    .line 2858
    :cond_4
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    .line 2862
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v9, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_5

    sget-boolean v9, Lcom/android/server/power/PowerManagerService;->mDimAnimationCompleted:Z

    if-eqz v9, :cond_5

    .line 2863
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/16 v10, 0xd

    invoke-virtual {v9, v10}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeMessages(I)V

    .line 2864
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/16 v10, 0xd

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .line 2865
    .local v3, "msg":Landroid/os/Message;
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v9, v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2869
    .end local v3    # "msg":Landroid/os/Message;
    :cond_5
    sget-boolean v9, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v9, :cond_6

    if-eqz v2, :cond_6

    .line 2870
    const-string v9, "PMS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateDisplayPowerStateLocked: mDisplayReady="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", policy="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v11, v11, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mWakefulness="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    invoke-static {v11}, Landroid/os/PowerManagerInternal;->wakefulnessToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mWakeLockSummary=0x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mUserActivitySummary=0x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mBootCompleted="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mScreenBrightnessBoostInProgress="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2880
    .end local v0    # "autoBrightness":Z
    .end local v1    # "brightnessSetByUser":Z
    .end local v2    # "isLoggable":Z
    .end local v5    # "preDisplayReady":Z
    .end local v6    # "preScreenState":I
    .end local v7    # "screenAutoBrightnessAdjustment":F
    .end local v8    # "screenBrightness":I
    :cond_6
    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    if-eqz v9, :cond_e

    if-nez v4, :cond_e

    const/4 v9, 0x1

    :goto_6
    return v9

    .line 2790
    .restart local v2    # "isLoggable":Z
    .restart local v6    # "preScreenState":I
    :cond_7
    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_8
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 2801
    .restart local v1    # "brightnessSetByUser":Z
    .restart local v7    # "screenAutoBrightnessAdjustment":F
    .restart local v8    # "screenBrightness":I
    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 2807
    .restart local v0    # "autoBrightness":Z
    :cond_a
    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->isValidBrightness(I)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 2808
    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    goto/16 :goto_3

    .line 2809
    :cond_b
    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->isValidBrightness(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2810
    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    goto/16 :goto_3

    .line 2818
    :cond_c
    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->isValidAutoBrightnessAdjustment(F)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2820
    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    goto/16 :goto_4

    .line 2847
    :cond_d
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const/4 v10, 0x0

    iput v10, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    .line 2848
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const/4 v10, -0x1

    iput v10, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:I

    goto/16 :goto_5

    .line 2880
    .end local v0    # "autoBrightness":Z
    .end local v1    # "brightnessSetByUser":Z
    .end local v2    # "isLoggable":Z
    .end local v6    # "preScreenState":I
    .end local v7    # "screenAutoBrightnessAdjustment":F
    .end local v8    # "screenBrightness":I
    :cond_e
    const/4 v9, 0x0

    goto :goto_6
.end method

.method private updateDreamLocked(IZ)V
    .locals 1
    .param p1, "dirty"    # I
    .param p2, "displayBecameReady"    # Z

    .prologue
    .line 2600
    and-int/lit16 v0, p1, 0x3f7

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    .line 2609
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    if-eqz v0, :cond_1

    .line 2610
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->scheduleSandmanLocked()V

    .line 2613
    :cond_1
    return-void
.end method

.method private updateHtcCpuCtrlLevel(I)V
    .locals 14
    .param p1, "flags"    # I

    .prologue
    .line 1271
    const/4 v7, 0x0

    .line 1272
    .local v7, "level":I
    const/4 v4, 0x0

    .line 1273
    .local v4, "freq_min_level":I
    const/4 v3, 0x0

    .line 1274
    .local v3, "freq_max_level":I
    const/4 v9, 0x0

    .line 1275
    .local v9, "num_min_level":I
    const/4 v8, 0x0

    .line 1278
    .local v8, "num_max_level":I
    iget-object v11, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1279
    .local v0, "M":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v0, :cond_2

    .line 1280
    iget-object v11, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 1282
    .local v10, "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget v11, v10, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v12, 0xffff

    and-int/2addr v11, v12

    const/16 v12, 0x800

    if-ne v11, v12, :cond_1

    .line 1283
    const/4 v11, 0x5

    if-le v11, v4, :cond_0

    .line 1284
    const/4 v4, 0x5

    .line 1286
    :cond_0
    const/4 v11, 0x2

    if-le v11, v9, :cond_1

    .line 1287
    const/4 v9, 0x2

    .line 1279
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1293
    .end local v10    # "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_2
    iget-object v11, p0, Lcom/android/server/power/PowerManagerService;->mHtcCpuCtrls:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1294
    .local v1, "N":I
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v1, :cond_a

    .line 1295
    iget-object v11, p0, Lcom/android/server/power/PowerManagerService;->mHtcCpuCtrls:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;

    .line 1296
    .local v5, "hcc":Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;
    iget v11, v5, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mFlags:I

    const v12, 0xf000

    and-int/2addr v11, v12

    if-nez v11, :cond_5

    .line 1298
    iget v11, v5, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mFlags:I

    const v12, 0xffff

    and-int/2addr v11, v12

    const/16 v12, 0x800

    if-ne v11, v12, :cond_4

    .line 1299
    const/4 v11, 0x5

    if-le v11, v4, :cond_3

    .line 1300
    const/4 v4, 0x5

    .line 1302
    :cond_3
    const/4 v11, 0x2

    if-le v11, v9, :cond_4

    .line 1303
    const/4 v9, 0x2

    .line 1294
    :cond_4
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1310
    :cond_5
    :try_start_0
    invoke-virtual {v5}, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->getLevel()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 1315
    iget v11, v5, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mFlags:I

    const v12, 0xf000

    and-int/2addr v11, v12

    sparse-switch v11, :sswitch_data_0

    goto :goto_2

    .line 1317
    :sswitch_0
    if-eqz v3, :cond_6

    if-ge v7, v3, :cond_4

    .line 1318
    :cond_6
    move v3, v7

    goto :goto_2

    .line 1311
    :catch_0
    move-exception v2

    .line 1312
    .local v2, "e":Ljava/lang/Exception;
    const-string v11, "PMS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateHtcCpuCtrlLevel: Skip. hcc.mFlags="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v5, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mFlags:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", hcc.mTag="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v5, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mTag:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1321
    .end local v2    # "e":Ljava/lang/Exception;
    :sswitch_1
    if-eqz v4, :cond_7

    if-le v7, v4, :cond_4

    .line 1322
    :cond_7
    move v4, v7

    goto :goto_2

    .line 1325
    :sswitch_2
    if-eqz v8, :cond_8

    if-ge v7, v8, :cond_4

    .line 1326
    :cond_8
    move v8, v7

    goto :goto_2

    .line 1329
    :sswitch_3
    if-eqz v9, :cond_9

    if-le v7, v9, :cond_4

    .line 1330
    :cond_9
    move v9, v7

    goto :goto_2

    .line 1335
    .end local v5    # "hcc":Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;
    :cond_a
    const v11, 0xffff

    and-int/2addr v11, p1

    sparse-switch v11, :sswitch_data_1

    .line 1425
    :cond_b
    :goto_3
    return-void

    .line 1338
    :sswitch_4
    if-eqz v4, :cond_d

    .line 1339
    if-eqz v3, :cond_c

    if-ge v3, v4, :cond_c

    .line 1340
    const-string v11, "PMS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Freq conflict in CPU_PERF:("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    move v4, v3

    .line 1345
    :cond_c
    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->nativeAcquireCpuFreqMinWakeLock(I)V

    .line 1347
    :cond_d
    if-eqz v9, :cond_b

    .line 1348
    if-eqz v8, :cond_e

    if-ge v8, v9, :cond_e

    .line 1349
    const-string v11, "PMS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Num conflict in CPU_PERF:("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    move v9, v8

    .line 1354
    :cond_e
    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->nativeAcquireCpuNumMinWakeLock(I)V

    goto :goto_3

    .line 1359
    :sswitch_5
    if-nez v4, :cond_f

    .line 1360
    const-string v11, "PMS"

    const-string v12, "There is no CPU_MIN_FREQ to update"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1363
    :cond_f
    if-eqz v3, :cond_10

    if-ge v3, v4, :cond_10

    .line 1364
    const-string v11, "PMS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Freq conflict in CPU_MIN_FREQ:("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    move v4, v3

    .line 1369
    :cond_10
    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->nativeAcquireCpuFreqMinWakeLock(I)V

    goto/16 :goto_3

    .line 1372
    :sswitch_6
    if-nez v3, :cond_12

    .line 1373
    if-eqz v4, :cond_11

    .line 1376
    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->nativeAcquireCpuFreqMinWakeLock(I)V

    goto/16 :goto_3

    .line 1378
    :cond_11
    const-string v11, "PMS"

    const-string v12, "There is no CPU_MAX_FREQ to update"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1382
    :cond_12
    if-eqz v4, :cond_13

    if-ge v3, v4, :cond_13

    .line 1383
    const-string v11, "PMS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Freq conflict in CPU_MAX_FREQ:("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    move v4, v3

    .line 1387
    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->nativeAcquireCpuFreqMinWakeLock(I)V

    .line 1389
    :cond_13
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->nativeAcquireCpuFreqMaxWakeLock(I)V

    goto/16 :goto_3

    .line 1392
    :sswitch_7
    if-nez v9, :cond_14

    .line 1393
    const-string v11, "PMS"

    const-string v12, "There is no CPU_MIN_NUM to update"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1396
    :cond_14
    if-eqz v8, :cond_15

    if-ge v8, v9, :cond_15

    .line 1397
    const-string v11, "PMS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Num conflict in CPU_MIN_NUM:("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    move v9, v8

    .line 1402
    :cond_15
    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->nativeAcquireCpuNumMinWakeLock(I)V

    goto/16 :goto_3

    .line 1405
    :sswitch_8
    if-nez v8, :cond_17

    .line 1406
    if-eqz v9, :cond_16

    .line 1409
    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->nativeAcquireCpuNumMinWakeLock(I)V

    goto/16 :goto_3

    .line 1411
    :cond_16
    const-string v11, "PMS"

    const-string v12, "There is no CPU_MAX_NUM to update"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1415
    :cond_17
    if-eqz v9, :cond_18

    if-ge v8, v9, :cond_18

    .line 1416
    const-string v11, "PMS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Num conflict in CPU_MAX_NUM:("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    move v9, v8

    .line 1420
    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->nativeAcquireCpuNumMinWakeLock(I)V

    .line 1422
    :cond_18
    invoke-static {v8}, Lcom/android/server/power/PowerManagerService;->nativeAcquireCpuNumMaxWakeLock(I)V

    goto/16 :goto_3

    .line 1315
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
        0x4000 -> :sswitch_2
        0x8000 -> :sswitch_3
    .end sparse-switch

    .line 1335
    :sswitch_data_1
    .sparse-switch
        0x800 -> :sswitch_4
        0x1000 -> :sswitch_6
        0x2000 -> :sswitch_5
        0x4000 -> :sswitch_8
        0x8000 -> :sswitch_7
    .end sparse-switch
.end method

.method private updateIsPoweredLocked(I)V
    .locals 12
    .param p1, "dirty"    # I

    .prologue
    .line 2162
    and-int/lit16 v1, p1, 0x100

    if-eqz v1, :cond_7

    .line 2163
    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    .line 2164
    .local v11, "wasPowered":Z
    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    .line 2166
    .local v10, "oldPlugType":I
    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    .line 2168
    .local v8, "oldBatteryLevel":I
    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    .line 2169
    .local v9, "oldLevelLow":Z
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    const/4 v4, 0x7

    invoke-virtual {v1, v4}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    .line 2170
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v1}, Landroid/os/BatteryManagerInternal;->getPlugType()I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    .line 2171
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v1}, Landroid/os/BatteryManagerInternal;->getBatteryLevel()I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    .line 2172
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v1}, Landroid/os/BatteryManagerInternal;->getBatteryLevelLow()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    .line 2175
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeTriggerLevel:I

    if-le v1, v4, :cond_0

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSkipLowPowerMode:Z

    if-eqz v1, :cond_0

    .line 2176
    const-string v1, "PMS"

    const-string v4, "updateIsPoweredLocked: clear mSkipLowPowerMode."

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2177
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSkipLowPowerMode:Z

    .line 2182
    :cond_0
    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v1, :cond_1

    .line 2183
    const-string v1, "PMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateIsPoweredLocked: wasPowered="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mIsPowered="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", oldPlugType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mPlugType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mBatteryLevel="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mBatteryLevelLow="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mSkipLowPowerMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mSkipLowPowerMode:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2193
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-ne v11, v1, :cond_2

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    if-eq v10, v1, :cond_4

    .line 2194
    :cond_2
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2197
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    invoke-virtual {v1, v4, v5, v6}, Lcom/android/server/power/WirelessChargerDetector;->update(ZII)Z

    move-result v0

    .line 2205
    .local v0, "dockedOnWirelessCharger":Z
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 2206
    .local v2, "now":J
    invoke-direct {p0, v11, v10, v0}, Lcom/android/server/power/PowerManagerService;->shouldWakeUpWhenPluggedOrUnpluggedLocked(ZIZ)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2208
    const-string v4, "android.server.power:POWER"

    const/16 v5, 0x3e8

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x3e8

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(JLjava/lang/String;ILjava/lang/String;I)Z

    .line 2211
    :cond_3
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    .line 2216
    if-eqz v0, :cond_4

    .line 2217
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v1}, Lcom/android/server/power/Notifier;->onWirelessChargingStarted()V

    .line 2221
    .end local v0    # "dockedOnWirelessCharger":Z
    .end local v2    # "now":J
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-ne v11, v1, :cond_5

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    if-ne v9, v1, :cond_5

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->keepGoogleOriginalPowerSaverBehavior()Z

    move-result v1

    if-nez v1, :cond_7

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeTriggerLevel:I

    if-lt v1, v8, :cond_8

    const/4 v1, 0x1

    :goto_0
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeTriggerLevel:I

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    if-lt v4, v5, :cond_9

    const/4 v4, 0x1

    :goto_1
    if-eq v1, v4, :cond_7

    .line 2225
    :cond_5
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    if-eq v9, v1, :cond_6

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    if-nez v1, :cond_6

    .line 2229
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeSnoozing:Z

    .line 2231
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updateLowPowerModeLocked()V

    .line 2234
    .end local v8    # "oldBatteryLevel":I
    .end local v9    # "oldLevelLow":Z
    .end local v10    # "oldPlugType":I
    .end local v11    # "wasPowered":Z
    :cond_7
    return-void

    .line 2221
    .restart local v8    # "oldBatteryLevel":I
    .restart local v9    # "oldLevelLow":Z
    .restart local v10    # "oldPlugType":I
    .restart local v11    # "wasPowered":Z
    :cond_8
    const/4 v1, 0x0

    goto :goto_0

    :cond_9
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private updatePowerStateLocked()V
    .locals 14

    .prologue
    const-wide/32 v12, 0x20000

    .line 2094
    sget-boolean v8, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v8, :cond_0

    sget-object v8, Lcom/android/server/power/PowerManagerService;->mHtcPMSExtension:Lcom/android/server/power/HtcPMSExtension;

    if-eqz v8, :cond_0

    .line 2095
    new-instance v4, Ljava/util/Formatter;

    invoke-direct {v4}, Ljava/util/Formatter;-><init>()V

    .line 2097
    .local v4, "f":Ljava/util/Formatter;
    :try_start_0
    const-string v5, "udpatePowerStateLocked-arg_check"

    .line 2098
    .local v5, "logKey":Ljava/lang/String;
    const-string v8, "updatePSL(0x%x,%b)"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v4, v8, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 2099
    sget-object v8, Lcom/android/server/power/PowerManagerService;->mHtcPMSExtension:Lcom/android/server/power/HtcPMSExtension;

    const-string v9, "udpatePowerStateLocked-arg_check"

    const-string v10, "PMS"

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/server/power/HtcPMSExtension;->reduceLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2108
    .end local v4    # "f":Ljava/util/Formatter;
    .end local v5    # "logKey":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-boolean v8, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v8, :cond_1

    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    if-nez v8, :cond_2

    .line 2155
    :cond_1
    :goto_1
    return-void

    .line 2100
    .restart local v4    # "f":Ljava/util/Formatter;
    :catch_0
    move-exception v3

    .line 2101
    .local v3, "e":Ljava/lang/Exception;
    if-eqz v4, :cond_0

    .line 2102
    const-string v8, "PMS"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2111
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "f":Ljava/util/Formatter;
    :cond_2
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 2112
    const-string v8, "PMS"

    const-string v9, "Power manager lock was not held when calling updatePowerStateLocked"

    invoke-static {v8, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2115
    :cond_3
    const-string v8, "updatePowerState"

    invoke-static {v12, v13, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2118
    :try_start_1
    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0, v8}, Lcom/android/server/power/PowerManagerService;->updateIsPoweredLocked(I)V

    .line 2119
    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0, v8}, Lcom/android/server/power/PowerManagerService;->updateStayOnLocked(I)V

    .line 2120
    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0, v8}, Lcom/android/server/power/PowerManagerService;->updateScreenBrightnessBoostLocked(I)V

    .line 2125
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 2126
    .local v6, "now":J
    const/4 v1, 0x0

    .line 2128
    .local v1, "dirtyPhase2":I
    :cond_4
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2129
    .local v0, "dirtyPhase1":I
    or-int/2addr v1, v0

    .line 2130
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2132
    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockSummaryLocked(I)V

    .line 2133
    invoke-direct {p0, v6, v7, v0}, Lcom/android/server/power/PowerManagerService;->updateUserActivitySummaryLocked(JI)V

    .line 2134
    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerService;->updateWakefulnessLocked(I)Z

    move-result v8

    if-nez v8, :cond_4

    .line 2140
    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService;->updateDisplayPowerStateLocked(I)Z

    move-result v2

    .line 2143
    .local v2, "displayBecameReady":Z
    invoke-direct {p0, v1, v2}, Lcom/android/server/power/PowerManagerService;->updateDreamLocked(IZ)V

    .line 2146
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->finishWakefulnessChangeIfNeededLocked()V

    .line 2151
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateSuspendBlockerLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2153
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_1

    .end local v0    # "dirtyPhase1":I
    .end local v1    # "dirtyPhase2":I
    .end local v2    # "displayBecameReady":Z
    .end local v6    # "now":J
    :catchall_0
    move-exception v8

    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    throw v8
.end method

.method private updateScreenBrightnessBoostLocked(I)V
    .locals 12
    .param p1, "dirty"    # I

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 2884
    and-int/lit16 v1, p1, 0x800

    if-eqz v1, :cond_0

    .line 2885
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    if-eqz v1, :cond_0

    .line 2886
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 2887
    .local v2, "now":J
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v1, v5}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeMessages(I)V

    .line 2888
    iget-wide v6, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    iget-wide v10, p0, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    cmp-long v1, v6, v10

    if-lez v1, :cond_1

    .line 2889
    iget-wide v6, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    const-wide/16 v10, 0x1388

    add-long v8, v6, v10

    .line 2891
    .local v8, "boostTimeout":J
    cmp-long v1, v8, v2

    if-lez v1, :cond_1

    .line 2892
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v1, v5}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2893
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 2894
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v1, v0, v8, v9}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 2904
    .end local v0    # "msg":Landroid/os/Message;
    .end local v2    # "now":J
    .end local v8    # "boostTimeout":J
    :cond_0
    :goto_0
    return-void

    .line 2898
    .restart local v2    # "now":J
    :cond_1
    iput-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    .line 2899
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v1}, Lcom/android/server/power/Notifier;->onScreenBrightnessBoostChanged()V

    .line 2900
    const/16 v6, 0x3e8

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    goto :goto_0
.end method

.method private updateSettingsLocked()V
    .locals 14

    .prologue
    const/4 v13, -0x1

    const/4 v12, -0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 850
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 852
    .local v7, "resolver":Landroid/content/ContentResolver;
    const-string v11, "screensaver_enabled"

    iget-boolean v8, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledByDefaultConfig:Z

    if-eqz v8, :cond_8

    move v8, v9

    :goto_0
    invoke-static {v7, v11, v8, v12}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-eqz v8, :cond_9

    move v8, v9

    :goto_1
    iput-boolean v8, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    .line 856
    const-string v11, "screensaver_activate_on_sleep"

    iget-boolean v8, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnSleepByDefaultConfig:Z

    if-eqz v8, :cond_a

    move v8, v9

    :goto_2
    invoke-static {v7, v11, v8, v12}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-eqz v8, :cond_b

    move v8, v9

    :goto_3
    iput-boolean v8, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnSleepSetting:Z

    .line 860
    const-string v11, "screensaver_activate_on_dock"

    iget-boolean v8, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnDockByDefaultConfig:Z

    if-eqz v8, :cond_c

    move v8, v9

    :goto_4
    invoke-static {v7, v11, v8, v12}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-eqz v8, :cond_d

    move v8, v9

    :goto_5
    iput-boolean v8, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnDockSetting:Z

    .line 864
    const-string v8, "screen_off_timeout"

    const/16 v11, 0x3a98

    invoke-static {v7, v8, v11, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    iput v8, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:I

    .line 867
    const-string v8, "sleep_timeout"

    invoke-static {v7, v8, v13, v12}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    iput v8, p0, Lcom/android/server/power/PowerManagerService;->mSleepTimeoutSetting:I

    .line 870
    const-string v8, "stay_on_while_plugged_in"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    .line 872
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "theater_mode_on"

    invoke-static {v8, v11, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v9, :cond_e

    move v8, v9

    :goto_6
    iput-boolean v8, p0, Lcom/android/server/power/PowerManagerService;->mTheaterModeEnabled:Z

    .line 875
    iget-boolean v8, p0, Lcom/android/server/power/PowerManagerService;->mSupportsDoubleTapWakeConfig:Z

    if-eqz v8, :cond_0

    .line 876
    const-string v8, "double_tap_to_wake"

    invoke-static {v7, v8, v10, v12}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-eqz v8, :cond_f

    move v2, v9

    .line 879
    .local v2, "doubleTapWakeEnabled":Z
    :goto_7
    iget-boolean v8, p0, Lcom/android/server/power/PowerManagerService;->mDoubleTapWakeEnabled:Z

    if-eq v2, v8, :cond_0

    .line 880
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDoubleTapWakeEnabled:Z

    .line 881
    iget-boolean v8, p0, Lcom/android/server/power/PowerManagerService;->mDoubleTapWakeEnabled:Z

    if-eqz v8, :cond_10

    move v8, v9

    :goto_8
    invoke-static {v9, v8}, Lcom/android/server/power/PowerManagerService;->nativeSetFeature(II)V

    .line 885
    .end local v2    # "doubleTapWakeEnabled":Z
    :cond_0
    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    .line 886
    .local v5, "oldScreenBrightnessSetting":I
    const-string v8, "screen_brightness"

    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    invoke-static {v7, v8, v11, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    iput v8, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    .line 889
    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    if-eq v5, v8, :cond_1

    .line 890
    iput v13, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    .line 893
    :cond_1
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    .line 895
    .local v4, "oldScreenAutoBrightnessAdjustmentSetting":F
    const-string v8, "screen_auto_brightness_adj"

    const/4 v11, 0x0

    invoke-static {v7, v8, v11, v12}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v8

    iput v8, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    .line 898
    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    cmpl-float v8, v4, v8

    if-eqz v8, :cond_2

    .line 899
    const/high16 v8, 0x7fc00000    # NaNf

    iput v8, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    .line 902
    :cond_2
    const-string v8, "screen_brightness_mode"

    invoke-static {v7, v8, v10, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    iput v8, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    .line 906
    const-string v8, "low_power"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_11

    move v3, v9

    .line 908
    .local v3, "lowPowerModeEnabled":Z
    :goto_9
    const-string v8, "low_power_trigger_level"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_12

    move v0, v9

    .line 912
    .local v0, "autoLowPowerModeConfigured":Z
    :goto_a
    const-string v8, "low_power_trigger_level"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 915
    .local v1, "autoLowPowerModeTriggerLevel":I
    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mSkipLowPowerMode:Z

    .line 917
    .local v6, "prevSkipLowPowerMode":Z
    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeTriggerLevel:I

    if-eq v1, v8, :cond_4

    .line 918
    sget-boolean v8, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v8, :cond_3

    .line 919
    const-string v8, "PMS"

    const-string v9, "SO: Clear mSkipLowPowerMode"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    :cond_3
    iput-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mSkipLowPowerMode:Z

    .line 926
    :cond_4
    iget-boolean v8, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeSetting:Z

    if-ne v3, v8, :cond_5

    iget-boolean v8, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeConfigured:Z

    if-ne v0, v8, :cond_5

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->keepGoogleOriginalPowerSaverBehavior()Z

    move-result v8

    if-nez v8, :cond_6

    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeTriggerLevel:I

    if-ne v1, v8, :cond_5

    iget-boolean v8, p0, Lcom/android/server/power/PowerManagerService;->mSkipLowPowerMode:Z

    if-eq v6, v8, :cond_6

    .line 931
    :cond_5
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeSetting:Z

    .line 932
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeConfigured:Z

    .line 934
    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeTriggerLevel:I

    .line 936
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updateLowPowerModeLocked()V

    .line 939
    :cond_6
    sget-boolean v8, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v8, :cond_7

    .line 940
    const-string v8, "PMS"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SettingsObserver: mDreamsEnabledSetting="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mDreamsActivateOnSleepSetting="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnSleepSetting:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mDreamsActivateOnDockSetting="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnDockSetting:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mScreenOffTimeoutSetting="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mStayOnWhilePluggedInSetting="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mScreenBrightnessSetting="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mScreenAutoBrightnessAdjustmentSetting="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mScreenBrightnessModeSetting="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mAutoLowPowerModeTriggerLevel="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeTriggerLevel:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mLowPowerModeSetting="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeSetting:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    :cond_7
    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v8, v8, 0x20

    iput v8, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 954
    return-void

    .end local v0    # "autoLowPowerModeConfigured":Z
    .end local v1    # "autoLowPowerModeTriggerLevel":I
    .end local v3    # "lowPowerModeEnabled":Z
    .end local v4    # "oldScreenAutoBrightnessAdjustmentSetting":F
    .end local v5    # "oldScreenBrightnessSetting":I
    .end local v6    # "prevSkipLowPowerMode":Z
    :cond_8
    move v8, v10

    .line 852
    goto/16 :goto_0

    :cond_9
    move v8, v10

    goto/16 :goto_1

    :cond_a
    move v8, v10

    .line 856
    goto/16 :goto_2

    :cond_b
    move v8, v10

    goto/16 :goto_3

    :cond_c
    move v8, v10

    .line 860
    goto/16 :goto_4

    :cond_d
    move v8, v10

    goto/16 :goto_5

    :cond_e
    move v8, v10

    .line 872
    goto/16 :goto_6

    :cond_f
    move v2, v10

    .line 876
    goto/16 :goto_7

    .restart local v2    # "doubleTapWakeEnabled":Z
    :cond_10
    move v8, v10

    .line 881
    goto/16 :goto_8

    .end local v2    # "doubleTapWakeEnabled":Z
    .restart local v4    # "oldScreenAutoBrightnessAdjustmentSetting":F
    .restart local v5    # "oldScreenBrightnessSetting":I
    :cond_11
    move v3, v10

    .line 906
    goto/16 :goto_9

    .restart local v3    # "lowPowerModeEnabled":Z
    :cond_12
    move v0, v10

    .line 908
    goto/16 :goto_a
.end method

.method private updateStayOnLocked(I)V
    .locals 3
    .param p1, "dirty"    # I

    .prologue
    .line 2277
    and-int/lit16 v1, p1, 0x120

    if-eqz v1, :cond_0

    .line 2278
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    .line 2279
    .local v0, "wasStayOn":Z
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2281
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    invoke-virtual {v1, v2}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    .line 2286
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    if-eq v1, v0, :cond_0

    .line 2287
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2290
    .end local v0    # "wasStayOn":Z
    :cond_0
    return-void

    .line 2283
    .restart local v0    # "wasStayOn":Z
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    goto :goto_0
.end method

.method private updateSuspendBlockerLocked()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3084
    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_a

    move v3, v4

    .line 3085
    .local v3, "needWakeLockSuspendBlocker":Z
    :goto_0
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->needDisplaySuspendBlockerLocked()Z

    move-result v2

    .line 3086
    .local v2, "needDisplaySuspendBlocker":Z
    if-nez v2, :cond_b

    move v0, v4

    .line 3087
    .local v0, "autoSuspend":Z
    :goto_1
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v6}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isBrightOrDim()Z

    move-result v1

    .line 3092
    .local v1, "interactive":Z
    if-nez v0, :cond_0

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    if-eqz v6, :cond_0

    .line 3093
    invoke-direct {p0, v5}, Lcom/android/server/power/PowerManagerService;->setHalAutoSuspendModeLocked(Z)V

    .line 3097
    :cond_0
    if-eqz v3, :cond_1

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    if-nez v6, :cond_1

    .line 3098
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v6}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 3099
    iput-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    .line 3101
    :cond_1
    if-eqz v2, :cond_3

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    if-nez v6, :cond_3

    .line 3102
    sget-boolean v6, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v6, :cond_2

    .line 3103
    const-string v6, "PMS"

    const-string v7, "acq wl D"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3105
    :cond_2
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v6}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 3106
    iput-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    .line 3115
    :cond_3
    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    if-eqz v6, :cond_5

    .line 3120
    if-nez v1, :cond_4

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    if-eqz v6, :cond_5

    .line 3121
    :cond_4
    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService;->setHalInteractiveModeLocked(Z)V

    .line 3126
    :cond_5
    if-nez v3, :cond_6

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    if-eqz v6, :cond_6

    .line 3127
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v6}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 3128
    iput-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    .line 3130
    :cond_6
    if-nez v2, :cond_8

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    if-eqz v6, :cond_8

    .line 3131
    sget-boolean v6, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v6, :cond_7

    .line 3132
    const-string v6, "PMS"

    const-string v7, "rel wl D"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3134
    :cond_7
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v6}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 3135
    iput-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    .line 3139
    :cond_8
    if-eqz v0, :cond_9

    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    if-eqz v5, :cond_9

    .line 3140
    invoke-direct {p0, v4}, Lcom/android/server/power/PowerManagerService;->setHalAutoSuspendModeLocked(Z)V

    .line 3142
    :cond_9
    return-void

    .end local v0    # "autoSuspend":Z
    .end local v1    # "interactive":Z
    .end local v2    # "needDisplaySuspendBlocker":Z
    .end local v3    # "needWakeLockSuspendBlocker":Z
    :cond_a
    move v3, v5

    .line 3084
    goto :goto_0

    .restart local v2    # "needDisplaySuspendBlocker":Z
    .restart local v3    # "needWakeLockSuspendBlocker":Z
    :cond_b
    move v0, v5

    .line 3086
    goto :goto_1
.end method

.method private updateUserActivitySummaryLocked(JI)V
    .locals 19
    .param p1, "now"    # J
    .param p3, "dirty"    # I

    .prologue
    .line 2382
    and-int/lit8 v13, p3, 0x27

    if-eqz v13, :cond_7

    .line 2384
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeMessages(I)V

    .line 2387
    const/4 v11, 0x0

    .line 2388
    .local v11, "screenOffTimeoutLog":I
    const/4 v9, 0x0

    .line 2390
    .local v9, "screenDimDurationLog":I
    const-wide/16 v6, 0x0

    .line 2391
    .local v6, "nextTimeout":J
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v14, 0x1

    if-eq v13, v14, :cond_0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v14, 0x2

    if-eq v13, v14, :cond_0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_b

    .line 2394
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->getSleepTimeoutLocked()I

    move-result v12

    .line 2395
    .local v12, "sleepTimeout":I
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/power/PowerManagerService;->getScreenOffTimeoutLocked(I)I

    move-result v10

    .line 2396
    .local v10, "screenOffTimeout":I
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/power/PowerManagerService;->getScreenDimDurationLocked(I)I

    move-result v8

    .line 2398
    .local v8, "screenDimDuration":I
    move v11, v10

    .line 2399
    move v9, v8

    .line 2401
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    .line 2402
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    move-wide/from16 v16, v0

    cmp-long v13, v14, v16

    if-ltz v13, :cond_1

    .line 2403
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    int-to-long v0, v10

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    int-to-long v0, v8

    move-wide/from16 v16, v0

    sub-long v6, v14, v16

    .line 2405
    cmp-long v13, p1, v6

    if-gez v13, :cond_8

    .line 2406
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    .line 2414
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    if-nez v13, :cond_2

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    move-wide/from16 v16, v0

    cmp-long v13, v14, v16

    if-ltz v13, :cond_2

    .line 2416
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    int-to-long v0, v10

    move-wide/from16 v16, v0

    add-long v6, v14, v16

    .line 2417
    cmp-long v13, p1, v6

    if-gez v13, :cond_2

    .line 2418
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v13, v13, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_9

    .line 2419
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    .line 2425
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    if-nez v13, :cond_3

    .line 2426
    if-ltz v12, :cond_a

    .line 2427
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 2429
    .local v2, "anyUserActivity":J
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v13, v2, v14

    if-ltz v13, :cond_3

    .line 2430
    int-to-long v14, v12

    add-long v6, v2, v14

    .line 2431
    cmp-long v13, p1, v6

    if-gez v13, :cond_3

    .line 2432
    const/4 v13, 0x4

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    .line 2440
    .end local v2    # "anyUserActivity":J
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    if-eqz v13, :cond_4

    const-wide/16 v14, 0x0

    cmp-long v13, v6, v14

    if-ltz v13, :cond_4

    .line 2441
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 2442
    .local v5, "msg":Landroid/os/Message;
    const/4 v13, 0x1

    invoke-virtual {v5, v13}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 2443
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v13, v5, v6, v7}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 2451
    .end local v5    # "msg":Landroid/os/Message;
    .end local v8    # "screenDimDuration":I
    .end local v10    # "screenOffTimeout":I
    .end local v12    # "sleepTimeout":I
    :cond_4
    :goto_3
    const/4 v4, 0x0

    .line 2452
    .local v4, "isLoggable":Z
    sget-boolean v13, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/power/PowerManagerService;->mPreUserActivitySummary:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    if-ne v13, v14, :cond_5

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/power/PowerManagerService;->mPreWakefulness:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-ne v13, v14, :cond_5

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/power/PowerManagerService;->mPreScreenDimDuration:I

    if-ne v13, v9, :cond_5

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/power/PowerManagerService;->mPreScreenOffTimeout:I

    if-eq v13, v11, :cond_6

    .line 2457
    :cond_5
    const/4 v4, 0x1

    .line 2459
    :cond_6
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/power/PowerManagerService;->mPreUserActivitySummary:I

    .line 2460
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/power/PowerManagerService;->mPreWakefulness:I

    .line 2461
    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/server/power/PowerManagerService;->mPreScreenDimDuration:I

    .line 2462
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/power/PowerManagerService;->mPreScreenOffTimeout:I

    .line 2463
    if-eqz v4, :cond_7

    .line 2464
    const-string v13, "PMS"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "updateUserActivitySummaryLocked: mWakefulness="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    invoke-static {v15}, Landroid/os/PowerManagerInternal;->wakefulnessToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", mUserActivitySummary=0x"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    invoke-static {v15}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-wide/from16 v0, p1

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", nextTimeout="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v6, v7}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2475
    .end local v4    # "isLoggable":Z
    .end local v6    # "nextTimeout":J
    .end local v9    # "screenDimDurationLog":I
    .end local v11    # "screenOffTimeoutLog":I
    :cond_7
    return-void

    .line 2408
    .restart local v6    # "nextTimeout":J
    .restart local v8    # "screenDimDuration":I
    .restart local v9    # "screenDimDurationLog":I
    .restart local v10    # "screenOffTimeout":I
    .restart local v11    # "screenOffTimeoutLog":I
    .restart local v12    # "sleepTimeout":I
    :cond_8
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    int-to-long v0, v10

    move-wide/from16 v16, v0

    add-long v6, v14, v16

    .line 2409
    cmp-long v13, p1, v6

    if-gez v13, :cond_1

    .line 2410
    const/4 v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    goto/16 :goto_0

    .line 2420
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v13, v13, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_2

    .line 2421
    const/4 v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    goto/16 :goto_1

    .line 2436
    :cond_a
    const/4 v13, 0x4

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    .line 2437
    const-wide/16 v6, -0x1

    goto/16 :goto_2

    .line 2446
    .end local v8    # "screenDimDuration":I
    .end local v10    # "screenOffTimeout":I
    .end local v12    # "sleepTimeout":I
    :cond_b
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    goto/16 :goto_3
.end method

.method private updateWakeLockDisabledStatesLocked()V
    .locals 6

    .prologue
    .line 3403
    const/4 v0, 0x0

    .line 3404
    .local v0, "changed":Z
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3405
    .local v2, "numWakeLocks":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 3406
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 3407
    .local v3, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget v4, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v5, 0xffff

    and-int/2addr v4, v5

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 3409
    invoke-direct {p0, v3}, Lcom/android/server/power/PowerManagerService;->setWakeLockDisabledStateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3410
    const/4 v0, 0x1

    .line 3411
    iget-boolean v4, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eqz v4, :cond_1

    .line 3413
    invoke-direct {p0, v3}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 3405
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3415
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    goto :goto_1

    .line 3420
    .end local v3    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_2
    if-eqz v0, :cond_3

    .line 3421
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3422
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 3424
    :cond_3
    return-void
.end method

.method private updateWakeLockSummaryLocked(I)V
    .locals 6
    .param p1, "dirty"    # I

    .prologue
    .line 2300
    and-int/lit8 v3, p1, 0x3

    if-eqz v3, :cond_8

    .line 2301
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    .line 2303
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2304
    .local v1, "numWakeLocks":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2305
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 2306
    .local v2, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget v3, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v4, 0xffff

    and-int/2addr v3, v4

    sparse-switch v3, :sswitch_data_0

    .line 2304
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2308
    :sswitch_0
    iget-boolean v3, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-nez v3, :cond_0

    .line 2310
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    goto :goto_1

    .line 2314
    :sswitch_1
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/lit8 v3, v3, 0xa

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    goto :goto_1

    .line 2317
    :sswitch_2
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    goto :goto_1

    .line 2320
    :sswitch_3
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    goto :goto_1

    .line 2323
    :sswitch_4
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    goto :goto_1

    .line 2326
    :sswitch_5
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x40

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    goto :goto_1

    .line 2329
    :sswitch_6
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/lit16 v3, v3, 0x80

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    goto :goto_1

    .line 2335
    .end local v2    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_1
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    .line 2336
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit16 v3, v3, -0xc1

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    .line 2338
    :cond_2
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_4

    .line 2340
    :cond_3
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v3, v3, -0xf

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    .line 2342
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-nez v3, :cond_4

    .line 2343
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v3, v3, -0x11

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    .line 2348
    :cond_4
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v3, v3, 0x6

    if-eqz v3, :cond_5

    .line 2349
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_9

    .line 2350
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x21

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    .line 2355
    :cond_5
    :goto_2
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_6

    .line 2356
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    .line 2360
    :cond_6
    sget-boolean v3, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v3, :cond_8

    .line 2361
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mWakefulnessLog:I

    if-ne v3, v4, :cond_7

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummaryLog:I

    if-eq v3, v4, :cond_8

    .line 2362
    :cond_7
    const-string v3, "PMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateWakeLockSummaryLocked: mWakefulness="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    invoke-static {v5}, Landroid/os/PowerManagerInternal;->wakefulnessToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mWakeLockSummary=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2365
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulnessLog:I

    .line 2366
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummaryLog:I

    .line 2371
    .end local v0    # "i":I
    .end local v1    # "numWakeLocks":I
    :cond_8
    return-void

    .line 2351
    .restart local v0    # "i":I
    .restart local v1    # "numWakeLocks":I
    :cond_9
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 2352
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    goto :goto_2

    .line 2306
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_3
        0xa -> :sswitch_2
        0x1a -> :sswitch_1
        0x20 -> :sswitch_4
        0x40 -> :sswitch_5
        0x80 -> :sswitch_6
    .end sparse-switch
.end method

.method private updateWakeLockWorkSourceInternal(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;I)V
    .locals 11
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "ws"    # Landroid/os/WorkSource;
    .param p3, "historyTag"    # Ljava/lang/String;
    .param p4, "callingUid"    # I

    .prologue
    .line 1677
    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1678
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->findWakeLockIndexLocked(Landroid/os/IBinder;)I

    move-result v9

    .line 1679
    .local v9, "index":I
    if-gez v9, :cond_0

    .line 1684
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wake lock not active: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1701
    .end local v9    # "index":I
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1688
    .restart local v9    # "index":I
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 1694
    .local v1, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    invoke-virtual {v1, p2}, Lcom/android/server/power/PowerManagerService$WakeLock;->hasSameWorkSource(Landroid/os/WorkSource;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1695
    iget v2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iget-object v3, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    iget v5, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget v6, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    move-object v0, p0

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockChangingLocked(Lcom/android/server/power/PowerManagerService$WakeLock;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    .line 1698
    iput-object p3, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    .line 1699
    invoke-virtual {v1, p2}, Lcom/android/server/power/PowerManagerService$WakeLock;->updateWorkSource(Landroid/os/WorkSource;)V

    .line 1701
    :cond_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1702
    return-void
.end method

.method private updateWakefulnessLocked(I)Z
    .locals 7
    .param p1, "dirty"    # I

    .prologue
    const/16 v6, 0x3e8

    .line 2540
    const/4 v0, 0x0

    .line 2541
    .local v0, "changed":Z
    and-int/lit16 v1, p1, 0x697

    if-eqz v1, :cond_0

    .line 2544
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isItBedTimeYetLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2548
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 2549
    .local v2, "time":J
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->shouldNapAtBedTimeLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2550
    invoke-direct {p0, v2, v3, v6}, Lcom/android/server/power/PowerManagerService;->napNoUpdateLocked(JI)Z

    move-result v0

    .line 2557
    .end local v2    # "time":J
    :cond_0
    :goto_0
    return v0

    .line 2552
    .restart local v2    # "time":J
    :cond_1
    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->goToSleepNoUpdateLocked(JIII)Z

    move-result v0

    goto :goto_0
.end method

.method private userActivityFromNative(JII)V
    .locals 7
    .param p1, "eventTime"    # J
    .param p3, "event"    # I
    .param p4, "flags"    # I

    .prologue
    .line 1797
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 1798
    const-string v0, "PMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uAFN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1800
    :cond_0
    const/16 v6, 0x3e8

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityInternal(JIII)V

    .line 1801
    return-void
.end method

.method private userActivityInternal(JIII)V
    .locals 3
    .param p1, "eventTime"    # J
    .param p3, "event"    # I
    .param p4, "flags"    # I
    .param p5, "uid"    # I

    .prologue
    .line 1804
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1805
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1806
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1808
    :cond_0
    monitor-exit v1

    .line 1809
    return-void

    .line 1808
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private userActivityNoUpdateLocked(JIII)Z
    .locals 9
    .param p1, "eventTime"    # J
    .param p3, "event"    # I
    .param p4, "flags"    # I
    .param p5, "uid"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/32 v6, 0x20000

    .line 1814
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Once:I

    if-lez v2, :cond_1

    .line 1815
    sget-boolean v2, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v2, :cond_0

    .line 1816
    const-string v2, "PMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clear Timeout_Once("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Once:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1818
    :cond_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeMessages(I)V

    .line 1819
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mClearScreenTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1820
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Once:I

    .line 1821
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->recalculateScreenTimeout()V

    .line 1831
    :cond_1
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    cmp-long v2, p1, v2

    if-ltz v2, :cond_2

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v2, p1, v2

    if-ltz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    .line 1868
    :goto_0
    return v0

    .line 1836
    :cond_3
    const-string v2, "userActivity"

    invoke-static {v6, v7, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1838
    :try_start_0
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastInteractivePowerHintTime:J

    cmp-long v2, p1, v2

    if-lez v2, :cond_4

    .line 1839
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/server/power/PowerManagerService;->powerHintInternal(II)V

    .line 1840
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastInteractivePowerHintTime:J

    .line 1843
    :cond_4
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v2, p3, p5}, Lcom/android/server/power/Notifier;->onUserActivity(II)V

    .line 1845
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x3

    if-eq v2, v3, :cond_5

    and-int/lit8 v2, p4, 0x2

    if-eqz v2, :cond_6

    .line 1866
    :cond_5
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    move v0, v1

    goto :goto_0

    .line 1851
    :cond_6
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_7

    .line 1852
    :try_start_1
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    cmp-long v2, p1, v2

    if-lez v2, :cond_8

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    cmp-long v2, p1, v2

    if-lez v2, :cond_8

    .line 1854
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    .line 1855
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1866
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    .line 1859
    :cond_7
    :try_start_2
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    cmp-long v2, p1, v2

    if-lez v2, :cond_8

    .line 1860
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    .line 1861
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1866
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :cond_8
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    move v0, v1

    .line 1868
    goto :goto_0

    .line 1866
    :catchall_0
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private wakeUpInternal(JLjava/lang/String;ILjava/lang/String;I)V
    .locals 3
    .param p1, "eventTime"    # J
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "opPackageName"    # Ljava/lang/String;
    .param p6, "opUid"    # I

    .prologue
    .line 1873
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1874
    :try_start_0
    invoke-direct/range {p0 .. p6}, Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(JLjava/lang/String;ILjava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1875
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1877
    :cond_0
    monitor-exit v1

    .line 1878
    return-void

    .line 1877
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private wakeUpNoUpdateLocked(JLjava/lang/String;ILjava/lang/String;I)Z
    .locals 7
    .param p1, "eventTime"    # J
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "reasonUid"    # I
    .param p5, "opPackageName"    # Ljava/lang/String;
    .param p6, "opUid"    # I

    .prologue
    .line 1887
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forceScreenOnWhenNear:Z

    if-nez v0, :cond_1

    .line 1890
    const/4 v0, 0x0

    .line 1917
    :goto_0
    return v0

    .line 1894
    :cond_1
    const-wide/32 v0, 0x20000

    const-string v2, "wakeUp"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1896
    :try_start_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    packed-switch v0, :pswitch_data_0

    .line 1908
    :goto_1
    :pswitch_0
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    .line 1909
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/power/PowerManagerService;->setWakefulnessLocked(II)V

    .line 1911
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v0, p3, p4, p5, p6}, Lcom/android/server/power/Notifier;->onWakeUp(Ljava/lang/String;ILjava/lang/String;I)V

    .line 1912
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-wide v2, p1

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1915
    const-wide/32 v0, 0x20000

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1917
    const/4 v0, 0x1

    goto :goto_0

    .line 1898
    :pswitch_1
    :try_start_1
    const-string v0, "PMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Waking up from sleep (uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1915
    :catchall_0
    move-exception v0

    const-wide/32 v2, 0x20000

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    .line 1901
    :pswitch_2
    :try_start_2
    const-string v0, "PMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Waking up from dream (uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1904
    :pswitch_3
    const-string v0, "PMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Waking up from dozing (uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1896
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private wipeSystemInternal([B[B)Z
    .locals 4
    .param p1, "imei"    # [B
    .param p2, "encMsg"    # [B

    .prologue
    .line 3843
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->nativeWipeSystem([B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3844
    const/4 v1, 0x1

    .line 3850
    :goto_0
    return v1

    .line 3845
    :catch_0
    move-exception v0

    .line 3846
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    .line 3847
    const-string v1, "PMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wipeSystem: imei="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", encMsg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Exception caught: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3850
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public monitor()V
    .locals 2

    .prologue
    .line 3879
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3880
    :try_start_0
    monitor-exit v1

    .line 3881
    return-void

    .line 3880
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onBootPhase(I)V
    .locals 9
    .param p1, "phase"    # I

    .prologue
    const/16 v8, 0x3e8

    .line 641
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 642
    if-ne p1, v8, :cond_1

    .line 643
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 644
    .local v2, "now":J
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    .line 645
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 646
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    .line 648
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 651
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHtcWakeLockDetector:Lcom/android/server/power/HtcWakeLockDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 653
    :try_start_1
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHtcWakeLockDetector:Lcom/android/server/power/HtcWakeLockDetector;

    invoke-virtual {v1}, Lcom/android/server/power/HtcWakeLockDetector;->bootCompleted()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 660
    :cond_0
    :goto_0
    :try_start_2
    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v1, :cond_1

    .line 661
    const-string v1, "PMS"

    const-string v4, "BootComplete E"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    .end local v2    # "now":J
    :cond_1
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 668
    if-ne p1, v8, :cond_2

    .line 670
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHtcPowerSaver:Lcom/android/server/power/HtcPowerSaver;

    if-eqz v1, :cond_2

    .line 671
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHtcPowerSaver:Lcom/android/server/power/HtcPowerSaver;

    invoke-virtual {v1}, Lcom/android/server/power/HtcPowerSaver;->bootCompletedNotify()V

    .line 676
    :cond_2
    return-void

    .line 654
    .restart local v2    # "now":J
    :catch_0
    move-exception v0

    .line 655
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v1, "PMS"

    const-string v4, "[HtcWLD] bootCompleted Exception : "

    invoke-static {v1, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 665
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "now":J
    :catchall_0
    move-exception v1

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public onStart()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 617
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 618
    const-string v0, "PMS"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    :cond_0
    const-string v0, "power"

    new-instance v1, Lcom/android/server/power/PowerManagerService$BinderService;

    invoke-direct {v1, p0, v2}, Lcom/android/server/power/PowerManagerService$BinderService;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/PowerManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 621
    const-class v0, Landroid/os/PowerManagerInternal;

    new-instance v1, Lcom/android/server/power/PowerManagerService$LocalService;

    invoke-direct {v1, p0, v2}, Lcom/android/server/power/PowerManagerService$LocalService;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/PowerManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 623
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 624
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;)V

    .line 627
    new-instance v0, Lcom/android/server/power/HtcPMSExtension;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/power/HtcPMSExtension;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/power/PowerManagerService;->mHtcPMSExtension:Lcom/android/server/power/HtcPMSExtension;

    .line 630
    sget-object v0, Lcom/android/server/power/PowerManagerService;->mHtcPMSExtension:Lcom/android/server/power/HtcPMSExtension;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/power/HtcPMSExtension;->writeScreenState(Z)V

    .line 633
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v0, :cond_1

    .line 634
    const-string v0, "PMS"

    const-string v1, "onStart E"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :cond_1
    return-void
.end method

.method setDeviceIdleModeInternal(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 3353
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3354
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    if-eq v0, p1, :cond_0

    .line 3355
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    .line 3356
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    .line 3357
    if-eqz p1, :cond_1

    .line 3358
    const-string v0, "power"

    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeDeviceIdleOnPhase(Ljava/lang/String;)V

    .line 3363
    :cond_0
    :goto_0
    monitor-exit v1

    .line 3364
    return-void

    .line 3360
    :cond_1
    const-string v0, "power"

    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffPhase(Ljava/lang/String;)V

    goto :goto_0

    .line 3363
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setDeviceIdleTempWhitelistInternal([I)V
    .locals 2
    .param p1, "appids"    # [I

    .prologue
    .line 3376
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3377
    :try_start_0
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleTempWhitelist:[I

    .line 3378
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    if-eqz v0, :cond_0

    .line 3379
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    .line 3381
    :cond_0
    monitor-exit v1

    .line 3382
    return-void

    .line 3381
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setDeviceIdleWhitelistInternal([I)V
    .locals 2
    .param p1, "appids"    # [I

    .prologue
    .line 3367
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3368
    :try_start_0
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleWhitelist:[I

    .line 3369
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    if-eqz v0, :cond_0

    .line 3370
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    .line 3372
    :cond_0
    monitor-exit v1

    .line 3373
    return-void

    .line 3372
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setMaximumScreenOffTimeoutFromDeviceAdminInternal(I)V
    .locals 2
    .param p1, "timeMs"    # I

    .prologue
    .line 3345
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3346
    :try_start_0
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    .line 3347
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3348
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 3349
    monitor-exit v1

    .line 3350
    return-void

    .line 3349
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setStayOnSettingInternal(I)V
    .locals 2
    .param p1, "val"    # I

    .prologue
    .line 3340
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "stay_on_while_plugged_in"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3342
    return-void
.end method

.method public systemReady(Lcom/android/internal/app/IAppOpsService;)V
    .locals 13
    .param p1, "appOps"    # Lcom/android/internal/app/IAppOpsService;

    .prologue
    const/4 v12, 0x1

    .line 679
    iget-object v11, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 680
    :try_start_0
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 681
    const-string v0, "PMS"

    const-string v1, "systemReady"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    .line 685
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    .line 686
    const-class v0, Landroid/service/dreams/DreamManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/power/PowerManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/dreams/DreamManagerInternal;

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    .line 687
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/power/PowerManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 688
    const-class v0, Landroid/view/WindowManagerPolicy;

    invoke-virtual {p0, v0}, Lcom/android/server/power/PowerManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManagerPolicy;

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 689
    const-class v0, Landroid/os/BatteryManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/power/PowerManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManagerInternal;

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    .line 691
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/PowerManager;

    .line 692
    .local v8, "pm":Landroid/os/PowerManager;
    invoke-virtual {v8}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v0

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMinimum:I

    .line 693
    invoke-virtual {v8}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v0

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMaximum:I

    .line 694
    invoke-virtual {v8}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v0

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    .line 696
    new-instance v10, Landroid/hardware/SystemSensorManager;

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v1}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v10, v0, v1}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 700
    .local v10, "sensorManager":Landroid/hardware/SensorManager;
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 701
    new-instance v0, Lcom/android/server/power/Notifier;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    const-string v5, "PowerManagerService.Broadcasts"

    invoke-direct {p0, v5}, Lcom/android/server/power/PowerManagerService;->createSuspendBlockerLocked(Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-direct/range {v0 .. v6}, Lcom/android/server/power/Notifier;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;Lcom/android/internal/app/IAppOpsService;Lcom/android/server/power/SuspendBlocker;Landroid/view/WindowManagerPolicy;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    .line 705
    new-instance v0, Lcom/android/server/power/WirelessChargerDetector;

    const-string v1, "PowerManagerService.WirelessChargerDetector"

    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService;->createSuspendBlockerLocked(Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-direct {v0, v10, v1, v2}, Lcom/android/server/power/WirelessChargerDetector;-><init>(Landroid/hardware/SensorManager;Lcom/android/server/power/SuspendBlocker;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

    .line 708
    new-instance v0, Lcom/android/server/power/PowerManagerService$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/PowerManagerService$SettingsObserver;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    .line 710
    const-class v0, Lcom/android/server/lights/LightsManager;

    invoke-virtual {p0, v0}, Lcom/android/server/power/PowerManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/lights/LightsManager;

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLightsManager:Lcom/android/server/lights/LightsManager;

    .line 711
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLightsManager:Lcom/android/server/lights/LightsManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mAttentionLight:Lcom/android/server/lights/Light;

    .line 714
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v0, v1, v2, v10}, Landroid/hardware/display/DisplayManagerInternal;->initPowerManagement(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;)V

    .line 718
    const-string v0, "sense_version"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/htc/customization/HtcCustomizationSystemReaderImpl;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 719
    new-instance v0, Lcom/android/server/power/HtcWakeLockDetector;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/power/HtcWakeLockDetector;-><init>(Landroid/content/Context;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;I)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHtcWakeLockDetector:Lcom/android/server/power/HtcWakeLockDetector;

    .line 725
    :cond_1
    new-instance v0, Lcom/android/server/power/HtcPowerSaver;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/HtcPowerSaver;-><init>(Landroid/content/Context;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHtcPowerSaver:Lcom/android/server/power/HtcPowerSaver;

    .line 726
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mPowerSaverHandler:Landroid/os/Handler;

    .line 730
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 731
    .local v7, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 732
    const/16 v0, 0x3e8

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 733
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/power/PowerManagerService$BatteryReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/power/PowerManagerService$BatteryReceiver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v0, v1, v7, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 735
    new-instance v7, Landroid/content/IntentFilter;

    .end local v7    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 736
    .restart local v7    # "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 737
    const-string v0, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 738
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/power/PowerManagerService$DreamReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/power/PowerManagerService$DreamReceiver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v0, v1, v7, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 740
    new-instance v7, Landroid/content/IntentFilter;

    .end local v7    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 741
    .restart local v7    # "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 742
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/power/PowerManagerService$UserSwitchedReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/power/PowerManagerService$UserSwitchedReceiver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v0, v1, v7, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 744
    new-instance v7, Landroid/content/IntentFilter;

    .end local v7    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 745
    .restart local v7    # "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 746
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/power/PowerManagerService$DockReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/power/PowerManagerService$DockReceiver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v0, v1, v7, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 749
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 750
    .local v9, "resolver":Landroid/content/ContentResolver;
    const-string v0, "screensaver_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 753
    const-string v0, "screensaver_activate_on_sleep"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 756
    const-string v0, "screensaver_activate_on_dock"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 759
    const-string v0, "screen_off_timeout"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 762
    const-string v0, "sleep_timeout"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 765
    const-string v0, "stay_on_while_plugged_in"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 768
    const-string v0, "screen_brightness"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 771
    const-string v0, "screen_brightness_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 774
    const-string v0, "screen_auto_brightness_adj"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 777
    const-string v0, "low_power"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 780
    const-string v0, "low_power_trigger_level"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 783
    const-string v0, "theater_mode_on"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 786
    const-string v0, "double_tap_to_wake"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 790
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->readConfigurationLocked()V

    .line 791
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateSettingsLocked()V

    .line 792
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 793
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 794
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 797
    iput-boolean v12, p0, Lcom/android/server/power/PowerManagerService;->mSystemReadyDone:Z

    .line 800
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v0, :cond_2

    .line 801
    const-string v0, "PMS"

    const-string v1, "systemReady E"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    :cond_2
    return-void

    .line 794
    .end local v7    # "filter":Landroid/content/IntentFilter;
    .end local v8    # "pm":Landroid/os/PowerManager;
    .end local v9    # "resolver":Landroid/content/ContentResolver;
    .end local v10    # "sensorManager":Landroid/hardware/SensorManager;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method uidGoneInternal(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 3394
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3395
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 3396
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    if-eqz v0, :cond_0

    .line 3397
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    .line 3399
    :cond_0
    monitor-exit v1

    .line 3400
    return-void

    .line 3399
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method updateLowPowerModeLocked()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 964
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->keepGoogleOriginalPowerSaverBehavior()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 965
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeSetting:Z

    if-eqz v4, :cond_1

    .line 966
    sget-boolean v4, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v4, :cond_0

    .line 967
    const-string v4, "PMS"

    const-string v5, "updateLowPowerModeLocked: powered, turning setting off"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    :cond_0
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "low_power"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 972
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeSetting:Z

    .line 974
    :cond_1
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-nez v4, :cond_6

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeConfigured:Z

    if-eqz v4, :cond_6

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeSnoozing:Z

    if-nez v4, :cond_6

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    if-eqz v4, :cond_6

    move v0, v2

    .line 986
    .local v0, "autoLowPowerModeEnabled":Z
    :goto_0
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeSetting:Z

    if-nez v4, :cond_2

    if-eqz v0, :cond_9

    :cond_2
    move v1, v2

    .line 989
    .local v1, "lowPowerModeEnabled":Z
    :goto_1
    sget-boolean v4, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v4, :cond_3

    .line 990
    const-string v4, "PMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateLowPowerModeLocked, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeSetting:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeConfigured:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeTriggerLevel:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeSnoozing:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mSkipLowPowerMode:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    :cond_3
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeEnabled:Z

    if-eq v4, v1, :cond_5

    .line 1002
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeEnabled:Z

    .line 1003
    const/4 v4, 0x5

    if-eqz v1, :cond_a

    :goto_2
    invoke-direct {p0, v4, v2}, Lcom/android/server/power/PowerManagerService;->powerHintInternal(II)V

    .line 1005
    sget-boolean v2, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v2, :cond_4

    .line 1006
    const-string v2, "PMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "powerHintInternal, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    :cond_4
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/power/PowerManagerService$2;

    invoke-direct {v3, p0, v1}, Lcom/android/server/power/PowerManagerService$2;-><init>(Lcom/android/server/power/PowerManagerService;Z)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1051
    :cond_5
    return-void

    .end local v0    # "autoLowPowerModeEnabled":Z
    .end local v1    # "lowPowerModeEnabled":Z
    :cond_6
    move v0, v3

    .line 974
    goto/16 :goto_0

    .line 977
    :cond_7
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeConfigured:Z

    if-eqz v4, :cond_8

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeSnoozing:Z

    if-nez v4, :cond_8

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeTriggerLevel:I

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    if-lt v4, v5, :cond_8

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mSkipLowPowerMode:Z

    if-nez v4, :cond_8

    move v0, v2

    .line 980
    .restart local v0    # "autoLowPowerModeEnabled":Z
    :goto_3
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mCurAutoLowPowerModeEnabled:Z

    goto/16 :goto_0

    .end local v0    # "autoLowPowerModeEnabled":Z
    :cond_8
    move v0, v3

    .line 977
    goto :goto_3

    .restart local v0    # "autoLowPowerModeEnabled":Z
    :cond_9
    move v1, v3

    .line 986
    goto/16 :goto_1

    .restart local v1    # "lowPowerModeEnabled":Z
    :cond_a
    move v2, v3

    .line 1003
    goto :goto_2
.end method

.method updateUidProcStateInternal(II)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "procState"    # I

    .prologue
    .line 3385
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3386
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 3387
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    if-eqz v0, :cond_0

    .line 3388
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    .line 3390
    :cond_0
    monitor-exit v1

    .line 3391
    return-void

    .line 3390
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
