.class final Lcom/android/server/display/HtcAutoBrightnessCtrl;
.super Ljava/lang/Object;
.source "HtcAutoBrightnessCtrl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;,
        Lcom/android/server/display/HtcAutoBrightnessCtrl$BrighterOnlyOffTimeoutTask;
    }
.end annotation


# instance fields
.field private final BRIGHTER_ONLY_INITIAL_BRIGHTNESS:I

.field private final BRIGHTER_ONLY_TIMEOUT:I

.field private final DEBUG_ON:Z

.field private final DEFAULT_APP_ENTERING_TRANSITION_DELAY:I

.field private final DEFAULT_APP_LEAVING_TRANSITION_DELAY:I

.field private final DEFAULT_TRANSITION_DELAY:I

.field private final DURATION_BLOCK_BRIGHTNESS_TO_LOWER_TARGET:I

.field private final SUPPORT_BACKLIGHT_DURATION:Z

.field private final TAG:Ljava/lang/String;

.field private final VALID_MAX_TRANSITION_DELAY:I

.field private final VALID_MIN_TRANSITION_DELAY:I

.field private mBrighterOnlyOffCallbacks:Lcom/android/server/display/HtcAutoBrightnessCtrl$BrighterOnlyOffTimeoutTask;

.field private final mBrighterOnlyReceiver:Landroid/content/BroadcastReceiver;

.field private final mBrighterOnlyTimeoutTask:Ljava/lang/Runnable;

.field private final mCallbacks:Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;

.field private mCameraEnteringDelay:I

.field private mCameraForceUpdateBrightness:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mEnableBrighterOnly:Z

.field private mEnteringLcdValue:I

.field private mGoogleLowPowerMode:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsStockUI:Z

.field private final mPowerSaverReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenBrightnessRangeMinimum:I

.field private mScreenState:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callbacks"    # Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;
    .param p3, "screenBrightnessRangeMinimum"    # I

    .prologue
    const/16 v6, 0x7f

    const/16 v5, 0x14

    const/16 v4, 0x10

    const/4 v3, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v2, "HABCtrl"

    iput-object v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->TAG:Ljava/lang/String;

    .line 25
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    iput-boolean v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    .line 27
    iput-boolean v3, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->SUPPORT_BACKLIGHT_DURATION:Z

    .line 29
    const v2, 0xea60

    iput v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->BRIGHTER_ONLY_TIMEOUT:I

    .line 31
    iput v6, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->BRIGHTER_ONLY_INITIAL_BRIGHTNESS:I

    .line 33
    iput v4, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->DEFAULT_TRANSITION_DELAY:I

    .line 35
    iput v5, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->DEFAULT_APP_ENTERING_TRANSITION_DELAY:I

    .line 36
    const/16 v2, 0x28

    iput v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->DEFAULT_APP_LEAVING_TRANSITION_DELAY:I

    .line 38
    const/16 v2, 0xfa

    iput v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->VALID_MAX_TRANSITION_DELAY:I

    .line 39
    iput v4, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->VALID_MIN_TRANSITION_DELAY:I

    .line 45
    iput-boolean v3, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mScreenState:Z

    .line 48
    iput-boolean v3, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mGoogleLowPowerMode:Z

    .line 49
    iput v5, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mScreenBrightnessRangeMinimum:I

    .line 53
    iput-boolean v3, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mCameraForceUpdateBrightness:Z

    .line 54
    iput v3, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mCameraEnteringDelay:I

    .line 56
    iput-boolean v3, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    .line 57
    iput v6, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mEnteringLcdValue:I

    .line 60
    const/16 v2, 0x1f40

    iput v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->DURATION_BLOCK_BRIGHTNESS_TO_LOWER_TARGET:I

    .line 64
    iput-boolean v3, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mIsStockUI:Z

    .line 240
    new-instance v2, Lcom/android/server/display/HtcAutoBrightnessCtrl$1;

    invoke-direct {v2, p0}, Lcom/android/server/display/HtcAutoBrightnessCtrl$1;-><init>(Lcom/android/server/display/HtcAutoBrightnessCtrl;)V

    iput-object v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mPowerSaverReceiver:Landroid/content/BroadcastReceiver;

    .line 266
    new-instance v2, Lcom/android/server/display/HtcAutoBrightnessCtrl$2;

    invoke-direct {v2, p0}, Lcom/android/server/display/HtcAutoBrightnessCtrl$2;-><init>(Lcom/android/server/display/HtcAutoBrightnessCtrl;)V

    iput-object v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mBrighterOnlyReceiver:Landroid/content/BroadcastReceiver;

    .line 401
    new-instance v2, Lcom/android/server/display/HtcAutoBrightnessCtrl$3;

    invoke-direct {v2, p0}, Lcom/android/server/display/HtcAutoBrightnessCtrl$3;-><init>(Lcom/android/server/display/HtcAutoBrightnessCtrl;)V

    iput-object v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mBrighterOnlyTimeoutTask:Ljava/lang/Runnable;

    .line 67
    iget-boolean v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v2, :cond_0

    .line 68
    const-string v2, "HABCtrl"

    const-string v3, "Constructor: HtcAutoBrightnessCtrl"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_0
    iput-object p1, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mContext:Landroid/content/Context;

    .line 71
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;

    .line 72
    iget-object v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mContentResolver:Landroid/content/ContentResolver;

    .line 73
    iput-object p2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mCallbacks:Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;

    .line 75
    iput p3, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mScreenBrightnessRangeMinimum:I

    .line 78
    const-string v2, "sense_version"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/htc/customization/HtcCustomizationSystemReaderImpl;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 79
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mIsStockUI:Z

    .line 80
    const-string v2, "HABCtrl"

    const-string v3, "no sense version"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mIsStockUI:Z

    if-nez v2, :cond_2

    .line 84
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 85
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "com.htc.intent.action.CAMERA_BRIGHTER_ONLY_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    const-string v2, "com.htc.intent.action.CAMERA_BRIGHTER_ONLY_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    iget-object v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mBrighterOnlyReceiver:Landroid/content/BroadcastReceiver;

    const-string v4, "com.htc.permission.APP_PLATFORM"

    iget-object v5, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 91
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_2
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 92
    .local v1, "filterPowerSaverMode":Landroid/content/IntentFilter;
    const-string v2, "android.os.action.POWER_SAVE_MODE_CHANGING"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    iget-object v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mPowerSaverReceiver:Landroid/content/BroadcastReceiver;

    const-string v4, "android.permission.DEVICE_POWER"

    iget-object v5, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HtcAutoBrightnessCtrl;

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/display/HtcAutoBrightnessCtrl;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/HtcAutoBrightnessCtrl;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->setGoogleLowPowerMode(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HtcAutoBrightnessCtrl;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->getAutoBrightnessEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HtcAutoBrightnessCtrl;

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mCameraForceUpdateBrightness:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/server/display/HtcAutoBrightnessCtrl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/HtcAutoBrightnessCtrl;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mCameraForceUpdateBrightness:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/display/HtcAutoBrightnessCtrl;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HtcAutoBrightnessCtrl;
    .param p1, "x1"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->getBrighterOnlyLcdValue(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/display/HtcAutoBrightnessCtrl;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/HtcAutoBrightnessCtrl;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->setBacklight(II)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/display/HtcAutoBrightnessCtrl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/HtcAutoBrightnessCtrl;
    .param p1, "x1"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->reset(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Lcom/android/server/display/HtcAutoBrightnessCtrl$BrighterOnlyOffTimeoutTask;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HtcAutoBrightnessCtrl;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mBrighterOnlyOffCallbacks:Lcom/android/server/display/HtcAutoBrightnessCtrl$BrighterOnlyOffTimeoutTask;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/display/HtcAutoBrightnessCtrl;Lcom/android/server/display/HtcAutoBrightnessCtrl$BrighterOnlyOffTimeoutTask;)Lcom/android/server/display/HtcAutoBrightnessCtrl$BrighterOnlyOffTimeoutTask;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/HtcAutoBrightnessCtrl;
    .param p1, "x1"    # Lcom/android/server/display/HtcAutoBrightnessCtrl$BrighterOnlyOffTimeoutTask;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mBrighterOnlyOffCallbacks:Lcom/android/server/display/HtcAutoBrightnessCtrl$BrighterOnlyOffTimeoutTask;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HtcAutoBrightnessCtrl;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HtcAutoBrightnessCtrl;

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/display/HtcAutoBrightnessCtrl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/HtcAutoBrightnessCtrl;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HtcAutoBrightnessCtrl;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mBrighterOnlyTimeoutTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/display/HtcAutoBrightnessCtrl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HtcAutoBrightnessCtrl;

    .prologue
    .line 23
    iget v0, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mEnteringLcdValue:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/display/HtcAutoBrightnessCtrl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/HtcAutoBrightnessCtrl;
    .param p1, "x1"    # I

    .prologue
    .line 23
    iput p1, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mEnteringLcdValue:I

    return p1
.end method

.method static synthetic access$702(Lcom/android/server/display/HtcAutoBrightnessCtrl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/HtcAutoBrightnessCtrl;
    .param p1, "x1"    # I

    .prologue
    .line 23
    iput p1, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mCameraEnteringDelay:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HtcAutoBrightnessCtrl;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mCallbacks:Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HtcAutoBrightnessCtrl;

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mScreenState:Z

    return v0
.end method

.method private getAutoBrightnessEnabled()Z
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 518
    const/4 v0, 0x0

    .line 519
    .local v0, "autoBrightnessMode":I
    const/4 v2, 0x1

    .line 521
    .local v2, "isAutoBrightnessAvailable":Z
    :try_start_0
    iget-object v5, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "screen_brightness_mode"

    const/4 v7, 0x0

    const/4 v8, -0x2

    invoke-static {v5, v6, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 523
    iget-object v5, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1120021

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 527
    :goto_0
    if-ne v0, v3, :cond_0

    if-eqz v2, :cond_0

    :goto_1
    return v3

    .line 524
    :catch_0
    move-exception v1

    .line 525
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "HABCtrl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getAutoBrightnessEnabled: Exception caught: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    move v3, v4

    .line 527
    goto :goto_1
.end method

.method private getBrighterOnlyLcdValue(I)I
    .locals 4
    .param p1, "lcdValue"    # I

    .prologue
    .line 223
    move v0, p1

    .line 225
    .local v0, "newLcdValue":I
    iget-boolean v1, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    if-eqz v1, :cond_1

    .line 227
    iget v1, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mEnteringLcdValue:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mEnteringLcdValue:I

    .line 229
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v1, :cond_1

    .line 230
    const-string v1, "HABCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBrighterOnly:("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mEnteringLcdValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_1
    return v0
.end method

.method private getCustomizedBrightness(I)I
    .locals 4
    .param p1, "lcdValue"    # I

    .prologue
    .line 102
    move v0, p1

    .line 103
    .local v0, "newLcdValue":I
    const/16 v1, 0xff

    if-le v0, v1, :cond_0

    .line 104
    const/16 v0, 0xff

    .line 107
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    if-eqz v1, :cond_3

    .line 108
    invoke-direct {p0, v0}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->getBrighterOnlyLcdValue(I)I

    move-result v0

    .line 115
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v1, :cond_2

    if-eq p1, v0, :cond_2

    .line 116
    const-string v1, "HABCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCB:("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mGoogleLowPowerMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->getValidLcdValue(I)I

    move-result v1

    return v1

    .line 110
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mGoogleLowPowerMode:Z

    if-eqz v1, :cond_1

    .line 111
    invoke-direct {p0, v0}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->getGoogleLowPowerLcdValue(I)I

    move-result v0

    goto :goto_0
.end method

.method private getGoogleLowPowerLcdValue(I)I
    .locals 5
    .param p1, "lcdValue"    # I

    .prologue
    .line 198
    move v1, p1

    .line 200
    .local v1, "newLcdValue":I
    iget-boolean v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mGoogleLowPowerMode:Z

    if-eqz v2, :cond_1

    .line 202
    :try_start_0
    iget v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mScreenBrightnessRangeMinimum:I

    if-le v1, v2, :cond_0

    .line 203
    div-int/lit8 v2, v1, 0x2

    iget v3, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mScreenBrightnessRangeMinimum:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 212
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v2, :cond_1

    .line 213
    const-string v2, "HABCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getGLP: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_1
    return v1

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, "e":Ljava/lang/Exception;
    iget-boolean v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v2, :cond_2

    .line 207
    const-string v2, "HABCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getGLP: Exception caught. lcdValue="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_2
    move v1, p1

    goto :goto_0
.end method

.method private getManualBrightness()I
    .locals 7

    .prologue
    .line 531
    const/16 v0, 0x7f

    .line 533
    .local v0, "currentLcdValue":I
    :try_start_0
    iget-object v4, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mContext:Landroid/content/Context;

    const-string v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 534
    .local v2, "pm":Landroid/os/PowerManager;
    invoke-virtual {v2}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v3

    .line 536
    .local v3, "screenBrightnessSettingDefault":I
    iget-object v4, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "screen_brightness"

    const/4 v6, -0x2

    invoke-static {v4, v5, v3, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 542
    .end local v2    # "pm":Landroid/os/PowerManager;
    .end local v3    # "screenBrightnessSettingDefault":I
    :goto_0
    return v0

    .line 538
    :catch_0
    move-exception v1

    .line 539
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "HABCtrl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getManualBrightness: Exception caught: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getValidDelay(I)I
    .locals 2
    .param p1, "delay"    # I

    .prologue
    const/16 v0, 0xfa

    const/16 v1, 0x10

    .line 552
    if-ge p1, v1, :cond_0

    move p1, v1

    .line 553
    :cond_0
    if-le p1, v0, :cond_1

    move p1, v0

    .line 554
    :cond_1
    return p1
.end method

.method private getValidLcdValue(I)I
    .locals 2
    .param p1, "lcdValue"    # I

    .prologue
    const/16 v1, 0xff

    const/16 v0, 0x14

    .line 546
    if-le p1, v1, :cond_0

    move p1, v1

    .line 547
    :cond_0
    if-ge p1, v0, :cond_1

    move p1, v0

    .line 548
    :cond_1
    return p1
.end method

.method private reset(I)V
    .locals 5
    .param p1, "delay"    # I

    .prologue
    const/4 v4, 0x0

    .line 414
    invoke-direct {p0}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->getAutoBrightnessEnabled()Z

    move-result v0

    .line 415
    .local v0, "AUTO_BRIGHTNESS_MODE":Z
    iget-object v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mBrighterOnlyTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 417
    if-nez v0, :cond_0

    .line 419
    iget-object v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mCallbacks:Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;

    invoke-interface {v2, v4}, Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;->setScreenBrightnessMode(I)V

    .line 423
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    if-nez v2, :cond_2

    .line 449
    :cond_1
    :goto_0
    return-void

    .line 427
    :cond_2
    iput-boolean v4, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    .line 429
    const/4 v1, 0x0

    .line 430
    .local v1, "manualBrightness":I
    if-eqz v0, :cond_3

    .line 431
    iget-object v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mCallbacks:Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;

    mul-int/lit8 v3, p1, 0x28

    invoke-interface {v2, v3}, Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;->forceBrightnessUpdate(I)V

    .line 443
    :goto_1
    iget-boolean v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v2, :cond_1

    .line 444
    const-string v2, "HABCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reset:("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 433
    :cond_3
    invoke-direct {p0}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->getManualBrightness()I

    move-result v1

    .line 435
    iget-boolean v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mGoogleLowPowerMode:Z

    if-eqz v2, :cond_4

    .line 436
    invoke-direct {p0, v1}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->getGoogleLowPowerLcdValue(I)I

    move-result v1

    .line 439
    :cond_4
    invoke-direct {p0, v1, p1}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->setBacklightForCamera(II)V

    goto :goto_1
.end method

.method private setBacklight(II)V
    .locals 5
    .param p1, "targetLcdValue"    # I
    .param p2, "delay"    # I

    .prologue
    const/4 v1, 0x0

    .line 486
    const/16 v2, 0x10

    if-ge p2, v2, :cond_1

    const/4 v0, 0x1

    .line 488
    .local v0, "noTransition":Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mScreenState:Z

    if-nez v2, :cond_2

    .line 489
    iget-boolean v1, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    .line 490
    const-string v1, "HABCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBacklight: screen off. Skip.("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :cond_0
    :goto_1
    return-void

    .end local v0    # "noTransition":Z
    :cond_1
    move v0, v1

    .line 486
    goto :goto_0

    .line 498
    .restart local v0    # "noTransition":Z
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v2, :cond_3

    .line 499
    const-string v2, "HABCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setBacklight:("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :cond_3
    if-lez p1, :cond_0

    .line 509
    if-eqz v0, :cond_4

    .line 510
    iget-object v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mCallbacks:Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;

    invoke-interface {v2, p1, v1}, Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;->setSmoothBacklight(II)V

    goto :goto_1

    .line 512
    :cond_4
    invoke-direct {p0, p2}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->getValidDelay(I)I

    move-result p2

    .line 513
    iget-object v1, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mCallbacks:Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;

    mul-int/lit8 v2, p2, 0x28

    invoke-interface {v1, p1, v2}, Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;->setSmoothBacklight(II)V

    goto :goto_1
.end method

.method private setBacklightForCamera(II)V
    .locals 5
    .param p1, "targetLcdValue"    # I
    .param p2, "delay"    # I

    .prologue
    const/4 v1, 0x0

    .line 453
    const/16 v2, 0x10

    if-ge p2, v2, :cond_1

    const/4 v0, 0x1

    .line 455
    .local v0, "noTransition":Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mScreenState:Z

    if-nez v2, :cond_2

    .line 456
    iget-boolean v1, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    .line 457
    const-string v1, "HABCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBacklightForCamera: screen off. Skip.("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    :cond_0
    :goto_1
    return-void

    .end local v0    # "noTransition":Z
    :cond_1
    move v0, v1

    .line 453
    goto :goto_0

    .line 465
    .restart local v0    # "noTransition":Z
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v2, :cond_3

    .line 466
    const-string v2, "HABCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setBacklightForCamera:("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_3
    if-lez p1, :cond_0

    .line 476
    if-eqz v0, :cond_4

    .line 477
    iget-object v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mCallbacks:Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;

    invoke-interface {v2, p1, v1}, Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;->setSmoothBacklight(II)V

    goto :goto_1

    .line 479
    :cond_4
    invoke-direct {p0, p2}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->getValidDelay(I)I

    move-result p2

    .line 480
    iget-object v1, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mCallbacks:Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;

    mul-int/lit8 v2, p2, 0x28

    invoke-interface {v1, p1, v2}, Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;->setSmoothBacklightForCamera(II)V

    goto :goto_1
.end method

.method private setGoogleLowPowerMode(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    .line 162
    iget-boolean v1, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mGoogleLowPowerMode:Z

    .line 163
    .local v1, "PREV_POWER_MODE":Z
    invoke-direct {p0}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->getAutoBrightnessEnabled()Z

    move-result v0

    .line 164
    .local v0, "AUTO_BRIGHTNESS_MODE":Z
    const/4 v2, -0x1

    .line 165
    .local v2, "newLcdValue":I
    iput-boolean p1, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mGoogleLowPowerMode:Z

    .line 167
    iget-boolean v3, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mScreenState:Z

    if-nez v3, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    iget-boolean v3, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    if-nez v3, :cond_0

    .line 173
    if-nez v1, :cond_4

    iget-boolean v3, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mGoogleLowPowerMode:Z

    if-eqz v3, :cond_4

    .line 174
    iget-object v3, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mCallbacks:Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;

    invoke-interface {v3}, Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;->getCurrentBrightness()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->getGoogleLowPowerLcdValue(I)I

    move-result v2

    .line 182
    :cond_2
    :goto_1
    iget-boolean v3, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mGoogleLowPowerMode:Z

    if-eq v3, v1, :cond_0

    .line 183
    iget-boolean v3, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v3, :cond_3

    .line 184
    const-string v3, "HABCtrl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setGLPM:("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_3
    iput-boolean p1, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mGoogleLowPowerMode:Z

    .line 191
    if-lez v2, :cond_0

    .line 192
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->setBacklight(II)V

    goto :goto_0

    .line 175
    :cond_4
    if-eqz v1, :cond_2

    iget-boolean v3, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mGoogleLowPowerMode:Z

    if-nez v3, :cond_2

    .line 176
    if-eqz v0, :cond_5

    .line 177
    iget-object v3, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mCallbacks:Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;

    const/4 v4, -0x1

    invoke-interface {v3, v4}, Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;->forceBrightnessUpdate(I)V

    goto :goto_1

    .line 179
    :cond_5
    invoke-direct {p0}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->getManualBrightness()I

    move-result v2

    goto :goto_1
.end method


# virtual methods
.method protected getCtrlBrightnessValue(I)I
    .locals 1
    .param p1, "lcdValue"    # I

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->getCustomizedBrightness(I)I

    move-result v0

    return v0
.end method

.method protected notifyHABCScreenState(Z)V
    .locals 7
    .param p1, "on"    # Z

    .prologue
    const/4 v6, 0x0

    .line 126
    iput-boolean p1, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mScreenState:Z

    .line 128
    if-nez p1, :cond_1

    .line 130
    iget-object v4, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mBrighterOnlyOffCallbacks:Lcom/android/server/display/HtcAutoBrightnessCtrl$BrighterOnlyOffTimeoutTask;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 132
    iput-boolean v6, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    .line 133
    invoke-direct {p0, v6}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->reset(I)V

    .line 157
    :cond_0
    :goto_0
    iput-boolean v6, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mCameraForceUpdateBrightness:Z

    .line 158
    return-void

    .line 137
    :cond_1
    iget-boolean v4, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mCameraForceUpdateBrightness:Z

    if-eqz v4, :cond_0

    .line 138
    iget-object v4, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mCallbacks:Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;

    if-eqz v4, :cond_5

    .line 139
    iget-boolean v4, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v4, :cond_2

    const-string v4, "HABCtrl"

    const-string v5, "CFUB"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_2
    iget-object v4, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mCallbacks:Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;

    invoke-interface {v4}, Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;->getCurrentBrightness()I

    move-result v0

    .line 141
    .local v0, "curLcdValue":I
    iget-object v4, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mCallbacks:Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;

    invoke-interface {v4}, Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;->getTargetBrightness()I

    move-result v1

    .line 144
    .local v1, "endLcdValue":I
    iget v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mEnteringLcdValue:I

    .line 145
    .local v2, "newLcdValue":I
    if-le v2, v0, :cond_3

    .line 146
    :goto_1
    if-le v2, v1, :cond_4

    .line 148
    :goto_2
    invoke-direct {p0, v2}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->getBrighterOnlyLcdValue(I)I

    move-result v3

    .line 149
    .local v3, "target":I
    iget v4, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mCameraEnteringDelay:I

    invoke-direct {p0, v3, v4}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->setBacklight(II)V

    goto :goto_0

    .end local v3    # "target":I
    :cond_3
    move v2, v0

    .line 145
    goto :goto_1

    :cond_4
    move v2, v1

    .line 146
    goto :goto_2

    .line 151
    .end local v0    # "curLcdValue":I
    .end local v1    # "endLcdValue":I
    .end local v2    # "newLcdValue":I
    :cond_5
    iget-boolean v4, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v4, :cond_0

    const-string v4, "HABCtrl"

    const-string v5, "CFUB, mCallbacks null"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
