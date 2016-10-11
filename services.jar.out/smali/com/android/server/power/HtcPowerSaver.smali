.class public Lcom/android/server/power/HtcPowerSaver;
.super Ljava/lang/Object;
.source "HtcPowerSaver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/HtcPowerSaver$SettingsObserver;
    }
.end annotation


# static fields
.field private static final DEBUG_ON:Z

.field private static final TAG:Ljava/lang/String; = "HtcPowerSaver"

.field protected static final TAG_PREFIX:Ljava/lang/String; = "HtcPowerSaver-"


# instance fields
.field private final ACTION_AUTOMOTIVE_MODE_CHANGE:Ljava/lang/String;

.field private final AUTOMOTIVE_DISABLED:I

.field private final AUTOMOTIVE_ENABLED:I

.field private final AUTOMOTIVE_RECEIVER_PERMISSION:Ljava/lang/String;

.field private final DEFAULT_HTC_EXTREME_POWER_SAVER_AUTO:I

.field private final DEFAULT_HTC_EXTREME_POWER_SAVER_BATTERY_LEVEL:I

.field private final DEFAULT_HTC_EXTREME_POWER_SAVER_STATE:I

.field private final DEFAULT_HTC_PERFORMANCE_MODE_STATE:I

.field private final HTC_CPU_EXTREME_POWERSAVER_MODE:I

.field private final HTC_CPU_NORMAL_MODE:I

.field private final HTC_CPU_PERFORMANCE_MODE:I

.field private final HTC_CPU_POWERSAVER_MODE:I

.field private final HTC_EXTREME_POWER_SAVER_AUTO_DISABLE:I

.field private final HTC_EXTREME_POWER_SAVER_AUTO_ENABLE:I

.field private final HTC_EXTREME_POWER_SAVER_STATE_DISABLE:I

.field private final HTC_EXTREME_POWER_SAVER_STATE_ENABLE:I

.field private final HTC_PERFORMANCE_MODE_STATE_DISABLE:I

.field private final HTC_PERFORMANCE_MODE_STATE_ENABLE:I

.field private final KEY_AUTOMOTIVE_CURRENT_MODE:Ljava/lang/String;

.field private final KEY_EXTREME_AUTO_MODE_BATTERY_LEVEL:Ljava/lang/String;

.field private final KEY_EXTREME_AUTO_MODE_ON:Ljava/lang/String;

.field private final KEY_HTC_EXTREME_POWER_SAVER_AUTO:Ljava/lang/String;

.field private final KEY_HTC_EXTREME_POWER_SAVER_BATTERY_LEVEL:Ljava/lang/String;

.field private final KEY_HTC_EXTREME_POWER_SAVER_STATE:Ljava/lang/String;

.field private final KEY_HTC_PERFORMANCE_MODE_STATE:Ljava/lang/String;

.field private mAutoMotiveMode:Z

.field private mBatteryInfoUpdated:Z

.field private mBatteryLevel:I

.field private mBootCompleted:Z

.field private mBootNotify:Z

.field private final mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

.field private mCarMode:Z

.field private mContext:Landroid/content/Context;

.field private mExtremeAutoModeOn:Z

.field private mExtremePowerSaverAuto:I

.field private mExtremePowerSaverBatteryLevel:I

.field private mExtremePowerSaverState:I

.field private mGoogleLowPowerModeEnabled:Z

.field private final mHandler:Landroid/os/Handler;

.field private mIsStockUI:Z

.field private mLastExtremePowerSaverState:I

.field private mLastOOBEState:I

.field private mLastPerformanceModeState:I

.field private mOOBEState:I

.field private mPerformanceModeState:I

.field private mProvisioned:Z

.field private mSettingsObserver:Lcom/android/server/power/HtcPowerSaver$SettingsObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/server/power/HtcPowerSaver;->DEBUG_ON:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;)V
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "callbacks"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    .prologue
    const/16 v4, 0xa

    const/4 v3, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean v1, p0, Lcom/android/server/power/HtcPowerSaver;->mBatteryInfoUpdated:Z

    .line 41
    const-string v0, "htc_extreme_power_saver_state"

    iput-object v0, p0, Lcom/android/server/power/HtcPowerSaver;->KEY_HTC_EXTREME_POWER_SAVER_STATE:Ljava/lang/String;

    .line 42
    const-string v0, "htc_extreme_power_saver_auto"

    iput-object v0, p0, Lcom/android/server/power/HtcPowerSaver;->KEY_HTC_EXTREME_POWER_SAVER_AUTO:Ljava/lang/String;

    .line 43
    const-string v0, "htc_extreme_power_saver_battery_level"

    iput-object v0, p0, Lcom/android/server/power/HtcPowerSaver;->KEY_HTC_EXTREME_POWER_SAVER_BATTERY_LEVEL:Ljava/lang/String;

    .line 44
    const-string v0, "htc_performance_mode_state"

    iput-object v0, p0, Lcom/android/server/power/HtcPowerSaver;->KEY_HTC_PERFORMANCE_MODE_STATE:Ljava/lang/String;

    .line 46
    iput v2, p0, Lcom/android/server/power/HtcPowerSaver;->HTC_CPU_NORMAL_MODE:I

    .line 47
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/power/HtcPowerSaver;->HTC_CPU_POWERSAVER_MODE:I

    .line 48
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/power/HtcPowerSaver;->HTC_CPU_EXTREME_POWERSAVER_MODE:I

    .line 49
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/power/HtcPowerSaver;->HTC_CPU_PERFORMANCE_MODE:I

    .line 51
    iput v1, p0, Lcom/android/server/power/HtcPowerSaver;->HTC_EXTREME_POWER_SAVER_STATE_DISABLE:I

    .line 52
    iput v2, p0, Lcom/android/server/power/HtcPowerSaver;->HTC_EXTREME_POWER_SAVER_STATE_ENABLE:I

    .line 53
    iput v1, p0, Lcom/android/server/power/HtcPowerSaver;->DEFAULT_HTC_EXTREME_POWER_SAVER_STATE:I

    .line 55
    iput v1, p0, Lcom/android/server/power/HtcPowerSaver;->HTC_EXTREME_POWER_SAVER_AUTO_DISABLE:I

    .line 56
    iput v2, p0, Lcom/android/server/power/HtcPowerSaver;->HTC_EXTREME_POWER_SAVER_AUTO_ENABLE:I

    .line 57
    iput v1, p0, Lcom/android/server/power/HtcPowerSaver;->DEFAULT_HTC_EXTREME_POWER_SAVER_AUTO:I

    .line 59
    iput v4, p0, Lcom/android/server/power/HtcPowerSaver;->DEFAULT_HTC_EXTREME_POWER_SAVER_BATTERY_LEVEL:I

    .line 61
    iput v1, p0, Lcom/android/server/power/HtcPowerSaver;->HTC_PERFORMANCE_MODE_STATE_DISABLE:I

    .line 62
    iput v2, p0, Lcom/android/server/power/HtcPowerSaver;->HTC_PERFORMANCE_MODE_STATE_ENABLE:I

    .line 63
    iput v1, p0, Lcom/android/server/power/HtcPowerSaver;->DEFAULT_HTC_PERFORMANCE_MODE_STATE:I

    .line 65
    iput v1, p0, Lcom/android/server/power/HtcPowerSaver;->mExtremePowerSaverState:I

    .line 66
    iput v3, p0, Lcom/android/server/power/HtcPowerSaver;->mLastExtremePowerSaverState:I

    .line 67
    iput v1, p0, Lcom/android/server/power/HtcPowerSaver;->mExtremePowerSaverAuto:I

    .line 68
    iput v4, p0, Lcom/android/server/power/HtcPowerSaver;->mExtremePowerSaverBatteryLevel:I

    .line 70
    iput v1, p0, Lcom/android/server/power/HtcPowerSaver;->mPerformanceModeState:I

    .line 71
    iput v3, p0, Lcom/android/server/power/HtcPowerSaver;->mLastPerformanceModeState:I

    .line 73
    const-string v0, "powersaver.exautomode"

    iput-object v0, p0, Lcom/android/server/power/HtcPowerSaver;->KEY_EXTREME_AUTO_MODE_ON:Ljava/lang/String;

    .line 74
    const-string v0, "eps_battery_level"

    iput-object v0, p0, Lcom/android/server/power/HtcPowerSaver;->KEY_EXTREME_AUTO_MODE_BATTERY_LEVEL:Ljava/lang/String;

    .line 75
    iput-boolean v1, p0, Lcom/android/server/power/HtcPowerSaver;->mExtremeAutoModeOn:Z

    .line 77
    iput-boolean v1, p0, Lcom/android/server/power/HtcPowerSaver;->mBootCompleted:Z

    .line 79
    const-string v0, "com.htc.permission.APP_DEFAULT"

    iput-object v0, p0, Lcom/android/server/power/HtcPowerSaver;->AUTOMOTIVE_RECEIVER_PERMISSION:Ljava/lang/String;

    .line 80
    const-string v0, "com.htc.AutoMotive.Service.ModeChange"

    iput-object v0, p0, Lcom/android/server/power/HtcPowerSaver;->ACTION_AUTOMOTIVE_MODE_CHANGE:Ljava/lang/String;

    .line 81
    const-string v0, "AutoMotive_Current_Mode"

    iput-object v0, p0, Lcom/android/server/power/HtcPowerSaver;->KEY_AUTOMOTIVE_CURRENT_MODE:Ljava/lang/String;

    .line 82
    iput v1, p0, Lcom/android/server/power/HtcPowerSaver;->AUTOMOTIVE_ENABLED:I

    .line 83
    iput v2, p0, Lcom/android/server/power/HtcPowerSaver;->AUTOMOTIVE_DISABLED:I

    .line 84
    iput-boolean v1, p0, Lcom/android/server/power/HtcPowerSaver;->mAutoMotiveMode:Z

    .line 85
    iput-boolean v1, p0, Lcom/android/server/power/HtcPowerSaver;->mCarMode:Z

    .line 87
    iput-boolean v1, p0, Lcom/android/server/power/HtcPowerSaver;->mProvisioned:Z

    .line 88
    iput v1, p0, Lcom/android/server/power/HtcPowerSaver;->mLastOOBEState:I

    .line 89
    iput v1, p0, Lcom/android/server/power/HtcPowerSaver;->mOOBEState:I

    .line 92
    iput-boolean v1, p0, Lcom/android/server/power/HtcPowerSaver;->mGoogleLowPowerModeEnabled:Z

    .line 95
    iput-boolean v1, p0, Lcom/android/server/power/HtcPowerSaver;->mIsStockUI:Z

    .line 99
    iput-object p1, p0, Lcom/android/server/power/HtcPowerSaver;->mContext:Landroid/content/Context;

    .line 100
    iput-object p2, p0, Lcom/android/server/power/HtcPowerSaver;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    .line 101
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/power/HtcPowerSaver;->mHandler:Landroid/os/Handler;

    .line 103
    const-string v0, "sense_version"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/htc/customization/HtcCustomizationSystemReaderImpl;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 104
    iput-boolean v2, p0, Lcom/android/server/power/HtcPowerSaver;->mIsStockUI:Z

    .line 105
    const-string v0, "HtcPowerSaver"

    const-string v1, "no sense version"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_0
    invoke-direct {p0}, Lcom/android/server/power/HtcPowerSaver;->initObserver()V

    .line 109
    invoke-direct {p0}, Lcom/android/server/power/HtcPowerSaver;->updateSettingsValue()V

    .line 111
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 26
    sget-boolean v0, Lcom/android/server/power/HtcPowerSaver;->DEBUG_ON:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/power/HtcPowerSaver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/HtcPowerSaver;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/server/power/HtcPowerSaver;->updateSettingsValue()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/power/HtcPowerSaver;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcPowerSaver;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/server/power/HtcPowerSaver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private acquireCpuMode(I)V
    .locals 3
    .param p1, "modeId"    # I

    .prologue
    .line 240
    iget-boolean v1, p0, Lcom/android/server/power/HtcPowerSaver;->mIsStockUI:Z

    if-eqz v1, :cond_1

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/HtcPowerSaver;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    if-eqz v1, :cond_0

    .line 246
    iget-object v1, p0, Lcom/android/server/power/HtcPowerSaver;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v1, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->nativeAcquireCpuMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "HtcPowerSaver"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private buildHomeIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 497
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 498
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 499
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 500
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 501
    return-object v0
.end method

.method private handleSettingsValue()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 222
    sget-boolean v0, Lcom/android/server/power/HtcPowerSaver;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 223
    const-string v0, "HtcPowerSaver"

    const-string v1, "handleSettingsValue()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_0
    iget v0, p0, Lcom/android/server/power/HtcPowerSaver;->mPerformanceModeState:I

    if-ne v0, v2, :cond_1

    .line 227
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/server/power/HtcPowerSaver;->acquireCpuMode(I)V

    .line 236
    :goto_0
    return-void

    .line 228
    :cond_1
    iget v0, p0, Lcom/android/server/power/HtcPowerSaver;->mExtremePowerSaverState:I

    if-ne v0, v2, :cond_2

    .line 229
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/power/HtcPowerSaver;->acquireCpuMode(I)V

    goto :goto_0

    .line 230
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/power/HtcPowerSaver;->mGoogleLowPowerModeEnabled:Z

    if-eqz v0, :cond_3

    .line 231
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/power/HtcPowerSaver;->acquireCpuMode(I)V

    goto :goto_0

    .line 233
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/server/power/HtcPowerSaver;->acquireCpuMode(I)V

    goto :goto_0
.end method

.method private initObserver()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 115
    sget-boolean v1, Lcom/android/server/power/HtcPowerSaver;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    .line 116
    const-string v1, "HtcPowerSaver"

    const-string v2, "initObserver()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_0
    new-instance v1, Lcom/android/server/power/HtcPowerSaver$SettingsObserver;

    iget-object v2, p0, Lcom/android/server/power/HtcPowerSaver;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/power/HtcPowerSaver$SettingsObserver;-><init>(Lcom/android/server/power/HtcPowerSaver;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/power/HtcPowerSaver;->mSettingsObserver:Lcom/android/server/power/HtcPowerSaver$SettingsObserver;

    .line 121
    iget-object v1, p0, Lcom/android/server/power/HtcPowerSaver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 123
    .local v0, "resolver":Landroid/content/ContentResolver;
    if-nez v0, :cond_1

    .line 124
    const-string v1, "HtcPowerSaver"

    const-string v2, "init resolver = null"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :goto_0
    return-void

    .line 128
    :cond_1
    const-string v1, "htc_extreme_power_saver_state"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/HtcPowerSaver;->mSettingsObserver:Lcom/android/server/power/HtcPowerSaver$SettingsObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 132
    const-string v1, "htc_extreme_power_saver_auto"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/HtcPowerSaver;->mSettingsObserver:Lcom/android/server/power/HtcPowerSaver$SettingsObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 136
    const-string v1, "htc_extreme_power_saver_battery_level"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/HtcPowerSaver;->mSettingsObserver:Lcom/android/server/power/HtcPowerSaver$SettingsObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 140
    const-string v1, "htc_performance_mode_state"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/HtcPowerSaver;->mSettingsObserver:Lcom/android/server/power/HtcPowerSaver$SettingsObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 144
    const-string v1, "device_provisioned"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/HtcPowerSaver;->mSettingsObserver:Lcom/android/server/power/HtcPowerSaver$SettingsObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 148
    const-string v1, "setup_wizard_has_run"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/HtcPowerSaver;->mSettingsObserver:Lcom/android/server/power/HtcPowerSaver$SettingsObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_0
.end method

.method private isForbidEnterAutoEPSMode()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 453
    iget-boolean v1, p0, Lcom/android/server/power/HtcPowerSaver;->mIsStockUI:Z

    if-eqz v1, :cond_1

    .line 468
    :cond_0
    :goto_0
    return v0

    .line 457
    :cond_1
    invoke-direct {p0}, Lcom/android/server/power/HtcPowerSaver;->isKidModeChildLockActive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 458
    sget-boolean v1, Lcom/android/server/power/HtcPowerSaver;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    .line 459
    const-string v1, "HtcPowerSaver"

    const-string v2, "in Kid mode"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 462
    :cond_2
    invoke-direct {p0}, Lcom/android/server/power/HtcPowerSaver;->isOOBEDone()Z

    move-result v1

    if-nez v1, :cond_3

    .line 463
    sget-boolean v1, Lcom/android/server/power/HtcPowerSaver;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    .line 464
    const-string v1, "HtcPowerSaver"

    const-string v2, "in OOBE mode"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 468
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isKidModeChildLockActive()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 481
    iget-object v4, p0, Lcom/android/server/power/HtcPowerSaver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 482
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-nez v2, :cond_1

    .line 493
    :cond_0
    :goto_0
    return v3

    .line 485
    :cond_1
    invoke-direct {p0}, Lcom/android/server/power/HtcPowerSaver;->buildHomeIntent()Landroid/content/Intent;

    move-result-object v4

    const/high16 v5, 0x10000

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 486
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_0

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_0

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_0

    .line 489
    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 490
    .local v0, "appPackageName":Ljava/lang/CharSequence;
    const-string v4, "com.zoodles.kidmode"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 491
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private isOOBEDone()Z
    .locals 1

    .prologue
    .line 473
    iget-boolean v0, p0, Lcom/android/server/power/HtcPowerSaver;->mProvisioned:Z

    return v0
.end method

.method private notifyHtcPowerManager()V
    .locals 3

    .prologue
    .line 368
    iget-boolean v1, p0, Lcom/android/server/power/HtcPowerSaver;->mIsStockUI:Z

    if-eqz v1, :cond_0

    .line 380
    :goto_0
    return-void

    .line 372
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/power/HtcPowerSaver;->mBootCompleted:Z

    if-nez v1, :cond_1

    .line 373
    const-string v1, "HtcPowerSaver"

    const-string v2, "not boot complete yet. skip."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 376
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.intent.action.GooglePowerSaver.Changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 377
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 378
    const-string v1, "mode"

    iget-boolean v2, p0, Lcom/android/server/power/HtcPowerSaver;->mGoogleLowPowerModeEnabled:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 379
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/power/HtcPowerSaver;->sendBroadcastHelperWithPermission(Landroid/content/Intent;Z)V

    goto :goto_0
.end method

.method private restoreExtremeAutoModeOn()V
    .locals 6

    .prologue
    .line 436
    iget-object v3, p0, Lcom/android/server/power/HtcPowerSaver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 437
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-boolean v2, p0, Lcom/android/server/power/HtcPowerSaver;->mExtremeAutoModeOn:Z

    .line 440
    .local v2, "prev_ex_auto_mode_on":Z
    :try_start_0
    const-string v3, "powersaver.exautomode"

    iget-boolean v4, p0, Lcom/android/server/power/HtcPowerSaver;->mExtremeAutoModeOn:Z

    invoke-static {v0, v3, v4}, Landroid/provider/HtcISettingsSecure$Agent;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/power/HtcPowerSaver;->mExtremeAutoModeOn:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    :goto_0
    sget-boolean v3, Lcom/android/server/power/HtcPowerSaver;->DEBUG_ON:Z

    if-eqz v3, :cond_0

    .line 446
    const-string v3, "HtcPowerSaver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restoreExtremeAutoModeOn: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/power/HtcPowerSaver;->mExtremeAutoModeOn:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_0
    return-void

    .line 441
    :catch_0
    move-exception v1

    .line 442
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "HtcPowerSaver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restoreExtremeAutoModeOn: Unable to get Settings: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private saveExtremeAutoModeOn()V
    .locals 5

    .prologue
    .line 421
    iget-object v2, p0, Lcom/android/server/power/HtcPowerSaver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 424
    .local v0, "cr":Landroid/content/ContentResolver;
    :try_start_0
    const-string v2, "powersaver.exautomode"

    iget-boolean v3, p0, Lcom/android/server/power/HtcPowerSaver;->mExtremeAutoModeOn:Z

    invoke-static {v0, v2, v3}, Landroid/provider/HtcISettingsSecure$Agent;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    :goto_0
    sget-boolean v2, Lcom/android/server/power/HtcPowerSaver;->DEBUG_ON:Z

    if-eqz v2, :cond_0

    .line 430
    const-string v2, "HtcPowerSaver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveExtremeAutoModeOn: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/power/HtcPowerSaver;->mExtremeAutoModeOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_0
    return-void

    .line 425
    :catch_0
    move-exception v1

    .line 426
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "HtcPowerSaver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveExtremeAutoModeOn: Unable to set Settings: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendBroadcastHelper(Landroid/content/Intent;)V
    .locals 2
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/server/power/HtcPowerSaver;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/power/HtcPowerSaver$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/power/HtcPowerSaver$1;-><init>(Lcom/android/server/power/HtcPowerSaver;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 267
    return-void
.end method

.method private sendBroadcastHelperWithPermission(Landroid/content/Intent;Z)V
    .locals 2
    .param p1, "i"    # Landroid/content/Intent;
    .param p2, "forCurrent"    # Z

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/server/power/HtcPowerSaver;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/power/HtcPowerSaver$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/power/HtcPowerSaver$2;-><init>(Lcom/android/server/power/HtcPowerSaver;ZLandroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 417
    return-void
.end method

.method private updateSettingsValue()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 171
    sget-boolean v6, Lcom/android/server/power/HtcPowerSaver;->DEBUG_ON:Z

    if-eqz v6, :cond_0

    .line 172
    const-string v6, "HtcPowerSaver"

    const-string v7, "updateSettingsValue()"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_0
    iget-object v6, p0, Lcom/android/server/power/HtcPowerSaver;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 177
    .local v2, "resolver":Landroid/content/ContentResolver;
    if-nez v2, :cond_1

    .line 178
    const-string v4, "HtcPowerSaver"

    const-string v5, "update resolver = null"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :goto_0
    return-void

    .line 182
    :cond_1
    iget v6, p0, Lcom/android/server/power/HtcPowerSaver;->mExtremePowerSaverState:I

    iput v6, p0, Lcom/android/server/power/HtcPowerSaver;->mLastExtremePowerSaverState:I

    .line 183
    const-string v6, "htc_extreme_power_saver_state"

    invoke-static {v2, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/server/power/HtcPowerSaver;->mExtremePowerSaverState:I

    .line 186
    iget v0, p0, Lcom/android/server/power/HtcPowerSaver;->mExtremePowerSaverAuto:I

    .line 187
    .local v0, "oldExtremePowerSaverAuto":I
    const-string v6, "htc_extreme_power_saver_auto"

    invoke-static {v2, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/server/power/HtcPowerSaver;->mExtremePowerSaverAuto:I

    .line 190
    iget v1, p0, Lcom/android/server/power/HtcPowerSaver;->mExtremePowerSaverBatteryLevel:I

    .line 191
    .local v1, "oldExtremePowerSaverBatteryLevel":I
    const-string v6, "htc_extreme_power_saver_battery_level"

    const/16 v7, 0xa

    invoke-static {v2, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/server/power/HtcPowerSaver;->mExtremePowerSaverBatteryLevel:I

    .line 194
    iget v6, p0, Lcom/android/server/power/HtcPowerSaver;->mPerformanceModeState:I

    iput v6, p0, Lcom/android/server/power/HtcPowerSaver;->mLastPerformanceModeState:I

    .line 195
    const-string v6, "htc_performance_mode_state"

    invoke-static {v2, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/server/power/HtcPowerSaver;->mPerformanceModeState:I

    .line 198
    iget-boolean v3, p0, Lcom/android/server/power/HtcPowerSaver;->mProvisioned:Z

    .line 199
    .local v3, "wasProvisioned":Z
    const-string v6, "device_provisioned"

    invoke-static {v2, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_3

    :goto_1
    iput-boolean v4, p0, Lcom/android/server/power/HtcPowerSaver;->mProvisioned:Z

    .line 202
    iget v4, p0, Lcom/android/server/power/HtcPowerSaver;->mOOBEState:I

    iput v4, p0, Lcom/android/server/power/HtcPowerSaver;->mLastOOBEState:I

    .line 203
    const-string v4, "setup_wizard_has_run"

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/server/power/HtcPowerSaver;->mOOBEState:I

    .line 206
    sget-boolean v4, Lcom/android/server/power/HtcPowerSaver;->DEBUG_ON:Z

    if-eqz v4, :cond_2

    .line 207
    const-string v4, "HtcPowerSaver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SettingsObserver:, mPerformanceModeState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/HtcPowerSaver;->mLastPerformanceModeState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/HtcPowerSaver;->mPerformanceModeState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mExtremePowerSaverState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/HtcPowerSaver;->mLastExtremePowerSaverState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/HtcPowerSaver;->mExtremePowerSaverState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mExtremePowerSaverAuto="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/HtcPowerSaver;->mExtremePowerSaverAuto:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mExtremePowerSaverBatteryLevel="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/HtcPowerSaver;->mExtremePowerSaverBatteryLevel:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mProvisioned="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/power/HtcPowerSaver;->mProvisioned:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mOOBEState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/HtcPowerSaver;->mLastOOBEState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/HtcPowerSaver;->mOOBEState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_2
    invoke-direct {p0}, Lcom/android/server/power/HtcPowerSaver;->handleSettingsValue()V

    goto/16 :goto_0

    :cond_3
    move v4, v5

    .line 199
    goto/16 :goto_1
.end method

.method private updateStatusLocked(I)V
    .locals 7
    .param p1, "currentLevel"    # I

    .prologue
    const/high16 v6, 0x10000000

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 303
    const-string v2, "HtcPowerSaver"

    const-string v3, ">> updateStatus"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget v2, p0, Lcom/android/server/power/HtcPowerSaver;->mPerformanceModeState:I

    if-eq v2, v4, :cond_2

    invoke-direct {p0}, Lcom/android/server/power/HtcPowerSaver;->isForbidEnterAutoEPSMode()Z

    move-result v2

    if-nez v2, :cond_2

    .line 307
    iget v2, p0, Lcom/android/server/power/HtcPowerSaver;->mExtremePowerSaverAuto:I

    if-ne v2, v4, :cond_5

    .line 309
    iget-boolean v1, p0, Lcom/android/server/power/HtcPowerSaver;->mExtremeAutoModeOn:Z

    .line 311
    .local v1, "prev_ex_auto_mode_on":Z
    iget v2, p0, Lcom/android/server/power/HtcPowerSaver;->mExtremePowerSaverBatteryLevel:I

    if-ge p1, v2, :cond_3

    iget-boolean v2, p0, Lcom/android/server/power/HtcPowerSaver;->mExtremeAutoModeOn:Z

    if-nez v2, :cond_3

    .line 312
    sget-boolean v2, Lcom/android/server/power/HtcPowerSaver;->DEBUG_ON:Z

    if-eqz v2, :cond_0

    .line 313
    const-string v2, "HtcPowerSaver"

    const-string v3, "send EPS Auto on"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.intent.action.HtcPowerSaver.ExtremeAutoModeOn"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 316
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 317
    invoke-direct {p0, v0, v4}, Lcom/android/server/power/HtcPowerSaver;->sendBroadcastHelperWithPermission(Landroid/content/Intent;Z)V

    .line 318
    iput-boolean v4, p0, Lcom/android/server/power/HtcPowerSaver;->mExtremeAutoModeOn:Z

    .line 328
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/power/HtcPowerSaver;->mExtremeAutoModeOn:Z

    if-eq v1, v2, :cond_2

    .line 329
    invoke-direct {p0}, Lcom/android/server/power/HtcPowerSaver;->saveExtremeAutoModeOn()V

    .line 345
    .end local v1    # "prev_ex_auto_mode_on":Z
    :cond_2
    :goto_1
    iget v2, p0, Lcom/android/server/power/HtcPowerSaver;->mExtremePowerSaverState:I

    iput v2, p0, Lcom/android/server/power/HtcPowerSaver;->mLastExtremePowerSaverState:I

    .line 347
    iput-boolean v5, p0, Lcom/android/server/power/HtcPowerSaver;->mBootNotify:Z

    .line 349
    const-string v2, "HtcPowerSaver"

    const-string v3, "<< updateStatus"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    return-void

    .line 319
    .restart local v1    # "prev_ex_auto_mode_on":Z
    :cond_3
    iget v2, p0, Lcom/android/server/power/HtcPowerSaver;->mExtremePowerSaverBatteryLevel:I

    if-lt p1, v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/power/HtcPowerSaver;->mExtremeAutoModeOn:Z

    if-eqz v2, :cond_1

    .line 320
    sget-boolean v2, Lcom/android/server/power/HtcPowerSaver;->DEBUG_ON:Z

    if-eqz v2, :cond_4

    .line 321
    const-string v2, "HtcPowerSaver"

    const-string v3, "send EPS Auto off"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.intent.action.HtcPowerSaver.ExtremeAutoModeOff"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 324
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 325
    invoke-direct {p0, v0, v4}, Lcom/android/server/power/HtcPowerSaver;->sendBroadcastHelperWithPermission(Landroid/content/Intent;Z)V

    .line 326
    iput-boolean v5, p0, Lcom/android/server/power/HtcPowerSaver;->mExtremeAutoModeOn:Z

    goto :goto_0

    .line 332
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "prev_ex_auto_mode_on":Z
    :cond_5
    iget-boolean v2, p0, Lcom/android/server/power/HtcPowerSaver;->mExtremeAutoModeOn:Z

    if-eqz v2, :cond_2

    .line 333
    iput-boolean v5, p0, Lcom/android/server/power/HtcPowerSaver;->mExtremeAutoModeOn:Z

    .line 334
    invoke-direct {p0}, Lcom/android/server/power/HtcPowerSaver;->saveExtremeAutoModeOn()V

    .line 335
    sget-boolean v2, Lcom/android/server/power/HtcPowerSaver;->DEBUG_ON:Z

    if-eqz v2, :cond_6

    .line 336
    const-string v2, "HtcPowerSaver"

    const-string v3, "else send EPS Auto off"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_6
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.intent.action.HtcPowerSaver.ExtremeAutoModeOff"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 339
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 340
    invoke-direct {p0, v0, v4}, Lcom/android/server/power/HtcPowerSaver;->sendBroadcastHelperWithPermission(Landroid/content/Intent;Z)V

    goto :goto_1
.end method


# virtual methods
.method public bootCompletedNotify()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 385
    const-string v0, "HtcPowerSaver"

    const-string v1, "bootCompletedNotify"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iput-boolean v2, p0, Lcom/android/server/power/HtcPowerSaver;->mBootCompleted:Z

    .line 388
    iput-boolean v2, p0, Lcom/android/server/power/HtcPowerSaver;->mBootNotify:Z

    .line 389
    invoke-direct {p0}, Lcom/android/server/power/HtcPowerSaver;->restoreExtremeAutoModeOn()V

    .line 391
    invoke-direct {p0}, Lcom/android/server/power/HtcPowerSaver;->notifyHtcPowerManager()V

    .line 394
    iget-boolean v0, p0, Lcom/android/server/power/HtcPowerSaver;->mBatteryInfoUpdated:Z

    if-eqz v0, :cond_0

    .line 395
    invoke-virtual {p0}, Lcom/android/server/power/HtcPowerSaver;->check()V

    .line 398
    :cond_0
    return-void
.end method

.method public check()V
    .locals 2

    .prologue
    .line 288
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    const-string v0, "HtcPowerSaver"

    const-string v1, "System is not ready. Skipping PowerSaver update."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :goto_0
    return-void

    .line 293
    :cond_0
    const-string v0, "HtcPowerSaver"

    const-string v1, "Checking..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    monitor-enter p0

    .line 296
    :try_start_0
    iget v0, p0, Lcom/android/server/power/HtcPowerSaver;->mBatteryLevel:I

    invoke-direct {p0, v0}, Lcom/android/server/power/HtcPowerSaver;->updateStatusLocked(I)V

    .line 297
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected notifyGoogleLowPowerMode(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 354
    iget-boolean v0, p0, Lcom/android/server/power/HtcPowerSaver;->mGoogleLowPowerModeEnabled:Z

    if-ne v0, p1, :cond_0

    .line 364
    :goto_0
    return-void

    .line 358
    :cond_0
    const-string v0, "HtcPowerSaver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyGPS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/power/HtcPowerSaver;->mGoogleLowPowerModeEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iput-boolean p1, p0, Lcom/android/server/power/HtcPowerSaver;->mGoogleLowPowerModeEnabled:Z

    .line 362
    invoke-direct {p0}, Lcom/android/server/power/HtcPowerSaver;->handleSettingsValue()V

    .line 363
    invoke-direct {p0}, Lcom/android/server/power/HtcPowerSaver;->notifyHtcPowerManager()V

    goto :goto_0
.end method

.method public updateBatteryInfo(Landroid/content/Intent;)V
    .locals 4
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    .line 271
    const-string v1, "HtcPowerSaver"

    const-string v2, "updateBatteryInfo"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const-string v1, "level"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 274
    .local v0, "batteryLevel":I
    if-ne v0, v3, :cond_0

    .line 275
    const-string v1, "HtcPowerSaver"

    const-string v2, "Not found BatteryManager.EXTRA_LEVEL. Call with wrong Intent?"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :goto_0
    return-void

    .line 279
    :cond_0
    monitor-enter p0

    .line 280
    :try_start_0
    iput v0, p0, Lcom/android/server/power/HtcPowerSaver;->mBatteryLevel:I

    .line 281
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/HtcPowerSaver;->mBatteryInfoUpdated:Z

    .line 282
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
