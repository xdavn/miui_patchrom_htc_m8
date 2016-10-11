.class final Lcom/android/server/UiModeManagerService;
.super Lcom/android/server/SystemService;
.source "UiModeManagerService.java"


# static fields
.field private static final ENABLE_LAUNCH_CAR_DOCK_APP:Z = true

.field private static final ENABLE_LAUNCH_DESK_DOCK_APP:Z = true

.field private static final LOG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private mCarModeEnableFlags:I

.field private mCarModeEnabled:Z

.field private mCarModeKeepsScreenOn:Z

.field private mCharging:Z

.field private mComputedNightMode:Z

.field private mConfiguration:Landroid/content/res/Configuration;

.field mCurUiMode:I

.field private mDefaultUiModeType:I

.field private mDeskModeKeepsScreenOn:Z

.field private final mDockModeReceiver:Landroid/content/BroadcastReceiver;

.field private mDockState:I

.field private final mHandler:Landroid/os/Handler;

.field private mHoldingConfiguration:Z

.field mHtcCustomizeMgr:Lcom/htc/customization/HtcCustomizationManager;

.field mHtcCustomizeReader:Lcom/htc/customization/HtcCustomizationReader;

.field private mLastBroadcastState:I

.field final mLock:Ljava/lang/Object;

.field private mNightMode:I

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private final mResultReceiver:Landroid/content/BroadcastReceiver;

.field private final mService:Landroid/os/IBinder;

.field private mSetUiMode:I

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field mSystemReady:Z

.field private mTelevision:Z

.field private final mTwilightListener:Lcom/android/server/twilight/TwilightListener;

.field private mTwilightManager:Lcom/android/server/twilight/TwilightManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWatch:Z

.field private mbKeepScreenOnWhenCharing:Z

.field private final strCustomizedReaderName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Landroid/app/UiModeManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 107
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    .line 69
    iput v1, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    .line 71
    iput v1, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    .line 72
    iput v2, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    .line 74
    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    .line 75
    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mCharging:Z

    .line 84
    iput v1, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    .line 85
    iput v1, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    .line 86
    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    .line 88
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    .line 91
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mHandler:Landroid/os/Handler;

    .line 100
    iput-object v3, p0, Lcom/android/server/UiModeManagerService;->mHtcCustomizeMgr:Lcom/htc/customization/HtcCustomizationManager;

    .line 101
    iput-object v3, p0, Lcom/android/server/UiModeManagerService;->mHtcCustomizeReader:Lcom/htc/customization/HtcCustomizationReader;

    .line 102
    const-string v0, "Android_Core_Framework"

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->strCustomizedReaderName:Ljava/lang/String;

    .line 103
    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mbKeepScreenOnWhenCharing:Z

    .line 122
    new-instance v0, Lcom/android/server/UiModeManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$1;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mResultReceiver:Landroid/content/BroadcastReceiver;

    .line 141
    new-instance v0, Lcom/android/server/UiModeManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$2;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mDockModeReceiver:Landroid/content/BroadcastReceiver;

    .line 150
    new-instance v0, Lcom/android/server/UiModeManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$3;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 162
    new-instance v0, Lcom/android/server/UiModeManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$4;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mTwilightListener:Lcom/android/server/twilight/TwilightListener;

    .line 221
    new-instance v0, Lcom/android/server/UiModeManagerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$5;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mService:Landroid/os/IBinder;

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/UiModeManagerService;Ljava/lang/String;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/UiModeManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/UiModeManagerService;->updateAfterBroadcastLocked(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/UiModeManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/UiModeManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/server/UiModeManagerService;->updateDockState(I)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/server/UiModeManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/UiModeManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mCharging:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/UiModeManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/UiModeManagerService;

    .prologue
    .line 60
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/UiModeManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/UiModeManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    return p1
.end method

.method private adjustStatusBarCarModeLocked()V
    .locals 11

    .prologue
    const/4 v4, 0x0

    const v10, 0x104043e

    const/4 v1, 0x0

    .line 603
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 604
    .local v0, "context":Landroid/content/Context;
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v3, :cond_0

    .line 605
    const-string v3, "statusbar"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StatusBarManager;

    iput-object v3, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 614
    :cond_0
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v3, :cond_1

    .line 615
    iget-object v5, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    iget-boolean v3, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v3, :cond_4

    const/high16 v3, 0x80000

    :goto_0
    invoke-virtual {v5, v3}, Landroid/app/StatusBarManager;->disable(I)V

    .line 620
    :cond_1
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v3, :cond_2

    .line 621
    const-string v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iput-object v3, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 625
    :cond_2
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v3, :cond_3

    .line 626
    iget-boolean v3, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v3, :cond_5

    .line 627
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/internal/app/DisableCarModeActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 629
    .local v2, "carModeOffIntent":Landroid/content/Intent;
    new-instance v3, Landroid/app/Notification$Builder;

    invoke-direct {v3, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x1080638

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    const-wide/16 v8, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    const v5, 0x1060059

    invoke-virtual {v0, v5}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const v5, 0x104043f

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move v3, v1

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 643
    .local v6, "n":Landroid/app/Notification$Builder;
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v4, v10, v3, v5}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 650
    .end local v2    # "carModeOffIntent":Landroid/content/Intent;
    .end local v6    # "n":Landroid/app/Notification$Builder;
    :cond_3
    :goto_1
    return-void

    :cond_4
    move v3, v1

    .line 615
    goto :goto_0

    .line 646
    :cond_5
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v4, v10, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_1
.end method

.method private static buildHomeIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "category"    # Ljava/lang/String;

    .prologue
    .line 111
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 112
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 115
    return-object v0
.end method

.method private static isDeskDockState(I)Z
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 369
    packed-switch p0, :pswitch_data_0

    .line 375
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 373
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 369
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private sendConfigurationAndStartDreamOrDockAppLocked(Ljava/lang/String;)V
    .locals 15
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 562
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    .line 563
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->updateConfigurationLocked()V

    .line 566
    const/4 v12, 0x0

    .line 567
    .local v12, "dockAppStarted":Z
    if-eqz p1, :cond_0

    .line 575
    invoke-static/range {p1 .. p1}, Lcom/android/server/UiModeManagerService;->buildHomeIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 576
    .local v3, "homeIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/service/dreams/Sandman;->shouldStartDockApp(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    const/4 v10, 0x0

    const/4 v11, -0x2

    invoke-interface/range {v0 .. v11}, Landroid/app/IActivityManager;->startActivityWithConfig(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/res/Configuration;Landroid/os/Bundle;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    .line 581
    .local v14, "result":I
    if-ltz v14, :cond_2

    .line 582
    const/4 v12, 0x1

    .line 594
    .end local v3    # "homeIntent":Landroid/content/Intent;
    .end local v14    # "result":I
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->sendConfigurationLocked()V

    .line 597
    if-eqz p1, :cond_1

    if-nez v12, :cond_1

    .line 598
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/service/dreams/Sandman;->startDreamWhenDockedIfAppropriate(Landroid/content/Context;)V

    .line 600
    :cond_1
    return-void

    .line 583
    .restart local v3    # "homeIntent":Landroid/content/Intent;
    .restart local v14    # "result":I
    :cond_2
    const/4 v0, -0x1

    if-eq v14, v0, :cond_0

    .line 584
    :try_start_1
    sget-object v0, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not start dock app: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", startActivityWithConfig result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 587
    .end local v14    # "result":I
    :catch_0
    move-exception v13

    .line 588
    .local v13, "ex":Landroid/os/RemoteException;
    sget-object v0, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not start dock app: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private sendConfigurationLocked()V
    .locals 3

    .prologue
    .line 414
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    if-eq v1, v2, :cond_0

    .line 415
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    iput v1, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    .line 418
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 419
    :catch_0
    move-exception v0

    .line 420
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    const-string v2, "Failure communicating with activity manager"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private updateAfterBroadcastLocked(Ljava/lang/String;II)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "enableFlags"    # I
    .param p3, "disableFlags"    # I

    .prologue
    .line 527
    const/4 v0, 0x0

    .line 528
    .local v0, "category":Ljava/lang/String;
    sget-object v1, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 531
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_0

    .line 533
    const-string v0, "android.intent.category.CAR_DOCK"

    .line 557
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/UiModeManagerService;->sendConfigurationAndStartDreamOrDockAppLocked(Ljava/lang/String;)V

    .line 558
    return-void

    .line 535
    :cond_1
    sget-object v1, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 539
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_0

    .line 541
    const-string v0, "android.intent.category.DESK_DOCK"

    goto :goto_0

    .line 545
    :cond_2
    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_0

    .line 546
    const-string v0, "android.intent.category.HOME"

    goto :goto_0
.end method

.method private updateComputedNightModeLocked()V
    .locals 2

    .prologue
    .line 662
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    if-eqz v1, :cond_0

    .line 663
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    invoke-interface {v1}, Lcom/android/server/twilight/TwilightManager;->getCurrentState()Lcom/android/server/twilight/TwilightState;

    move-result-object v0

    .line 664
    .local v0, "state":Lcom/android/server/twilight/TwilightState;
    if-eqz v0, :cond_0

    .line 665
    invoke-virtual {v0}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    .line 668
    .end local v0    # "state":Lcom/android/server/twilight/TwilightState;
    :cond_0
    return-void
.end method

.method private updateConfigurationLocked()V
    .locals 2

    .prologue
    .line 380
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mDefaultUiModeType:I

    .line 381
    .local v0, "uiMode":I
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mTelevision:Z

    if-eqz v1, :cond_2

    .line 382
    const/4 v0, 0x4

    .line 391
    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    if-nez v1, :cond_6

    .line 392
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->updateComputedNightModeLocked()V

    .line 393
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    if-eqz v1, :cond_5

    const/16 v1, 0x20

    :goto_1
    or-int/2addr v0, v1

    .line 407
    :goto_2
    iput v0, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    .line 408
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    if-nez v1, :cond_1

    .line 409
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iput v0, v1, Landroid/content/res/Configuration;->uiMode:I

    .line 411
    :cond_1
    return-void

    .line 383
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mWatch:Z

    if-eqz v1, :cond_3

    .line 384
    const/4 v0, 0x6

    goto :goto_0

    .line 385
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v1, :cond_4

    .line 386
    const/4 v0, 0x3

    goto :goto_0

    .line 387
    :cond_4
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 388
    const/4 v0, 0x2

    goto :goto_0

    .line 393
    :cond_5
    const/16 v1, 0x10

    goto :goto_1

    .line 396
    :cond_6
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    goto :goto_2
.end method

.method private updateDockState(I)V
    .locals 5
    .param p1, "newState"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 357
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 358
    :try_start_0
    iget v3, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    if-eq p1, v3, :cond_0

    .line 359
    iput p1, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    .line 360
    iget v3, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/UiModeManagerService;->setCarModeLocked(ZI)V

    .line 361
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v0, :cond_0

    .line 362
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 365
    :cond_0
    monitor-exit v2

    .line 366
    return-void

    :cond_1
    move v0, v1

    .line 360
    goto :goto_0

    .line 365
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method dumpImpl(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 313
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 314
    :try_start_0
    const-string v0, "Current UI Mode Service state:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 315
    const-string v0, "  mDockState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 316
    const-string v0, " mLastBroadcastState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 317
    const-string v0, "  mNightMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 318
    const-string v0, " mCarModeEnabled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 319
    const-string v0, " mComputedNightMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 320
    const-string v0, " mCarModeEnableFlags="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnableFlags:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 321
    const-string v0, "  mCurUiMode=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 322
    const-string v0, " mSetUiMode=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 323
    const-string v0, "  mHoldingConfiguration="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 324
    const-string v0, " mSystemReady="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 325
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    if-eqz v0, :cond_0

    .line 327
    const-string v0, "  mTwilightService.getCurrentState()="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    invoke-interface {v0}, Lcom/android/server/twilight/TwilightManager;->getCurrentState()Lcom/android/server/twilight/TwilightState;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 330
    :cond_0
    monitor-exit v1

    .line 331
    return-void

    .line 330
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onBootPhase(I)V
    .locals 6
    .param p1, "phase"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 335
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_1

    .line 336
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 337
    :try_start_0
    const-class v0, Lcom/android/server/twilight/TwilightManager;

    invoke-virtual {p0, v0}, Lcom/android/server/UiModeManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/twilight/TwilightManager;

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    .line 338
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    iget-object v4, p0, Lcom/android/server/UiModeManagerService;->mTwilightListener:Lcom/android/server/twilight/TwilightListener;

    iget-object v5, p0, Lcom/android/server/UiModeManagerService;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v4, v5}, Lcom/android/server/twilight/TwilightManager;->registerListener(Lcom/android/server/twilight/TwilightListener;Landroid/os/Handler;)V

    .line 341
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    .line 342
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    .line 343
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->updateComputedNightModeLocked()V

    .line 344
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 345
    monitor-exit v3

    .line 347
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 342
    goto :goto_0

    .line 345
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onStart()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 171
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 173
    .local v0, "context":Landroid/content/Context;
    const-string v5, "power"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 175
    .local v3, "powerManager":Landroid/os/PowerManager;
    const/16 v5, 0x1a

    sget-object v8, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v5, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 177
    iget-object v5, p0, Lcom/android/server/UiModeManagerService;->mDockModeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "android.intent.action.DOCK_EVENT"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 179
    iget-object v5, p0, Lcom/android/server/UiModeManagerService;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 182
    iget-object v5, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v5}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 184
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 185
    .local v4, "res":Landroid/content/res/Resources;
    const v5, 0x10e0046

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/android/server/UiModeManagerService;->mDefaultUiModeType:I

    .line 187
    const v5, 0x10e0044

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    if-ne v5, v6, :cond_2

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/android/server/UiModeManagerService;->mCarModeKeepsScreenOn:Z

    .line 189
    const v5, 0x10e0042

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    if-ne v5, v6, :cond_3

    move v5, v6

    :goto_1
    iput-boolean v5, p0, Lcom/android/server/UiModeManagerService;->mDeskModeKeepsScreenOn:Z

    .line 192
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 193
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const-string v5, "android.hardware.type.television"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "android.software.leanback"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_0
    move v5, v6

    :goto_2
    iput-boolean v5, p0, Lcom/android/server/UiModeManagerService;->mTelevision:Z

    .line 195
    const-string v5, "android.hardware.type.watch"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/UiModeManagerService;->mWatch:Z

    .line 197
    const v5, 0x10e0047

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 199
    .local v1, "defaultNightMode":I
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "ui_night_mode"

    invoke-static {v5, v8, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    .line 203
    monitor-enter p0

    .line 204
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->updateConfigurationLocked()V

    .line 205
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->sendConfigurationLocked()V

    .line 206
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    const-string v5, "uimode"

    iget-object v8, p0, Lcom/android/server/UiModeManagerService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, v5, v8}, Lcom/android/server/UiModeManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 211
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/UiModeManagerService;->mHtcCustomizeMgr:Lcom/htc/customization/HtcCustomizationManager;

    .line 212
    iget-object v5, p0, Lcom/android/server/UiModeManagerService;->mHtcCustomizeMgr:Lcom/htc/customization/HtcCustomizationManager;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/server/UiModeManagerService;->mHtcCustomizeMgr:Lcom/htc/customization/HtcCustomizationManager;

    const-string v8, "Android_Core_Framework"

    invoke-virtual {v5, v8, v6, v7}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v5

    :goto_3
    iput-object v5, p0, Lcom/android/server/UiModeManagerService;->mHtcCustomizeReader:Lcom/htc/customization/HtcCustomizationReader;

    .line 214
    iget-object v5, p0, Lcom/android/server/UiModeManagerService;->mHtcCustomizeReader:Lcom/htc/customization/HtcCustomizationReader;

    if-eqz v5, :cond_1

    .line 215
    iget-object v5, p0, Lcom/android/server/UiModeManagerService;->mHtcCustomizeReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v7, "uimode_keep_screenon_when_charging"

    invoke-interface {v5, v7, v6}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/UiModeManagerService;->mbKeepScreenOnWhenCharing:Z

    .line 216
    sget-object v5, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "keep screen on when charging: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/UiModeManagerService;->mbKeepScreenOnWhenCharing:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_1
    return-void

    .end local v1    # "defaultNightMode":I
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    move v5, v7

    .line 187
    goto/16 :goto_0

    :cond_3
    move v5, v7

    .line 189
    goto/16 :goto_1

    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_4
    move v5, v7

    .line 193
    goto :goto_2

    .line 206
    .restart local v1    # "defaultNightMode":I
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 212
    :cond_5
    const/4 v5, 0x0

    goto :goto_3
.end method

.method setCarModeLocked(ZI)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "flags"    # I

    .prologue
    .line 350
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eq v0, p1, :cond_0

    .line 351
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    .line 353
    :cond_0
    iput p2, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnableFlags:I

    .line 354
    return-void
.end method

.method updateLocked(II)V
    .locals 13
    .param p1, "enableFlags"    # I
    .param p2, "disableFlags"    # I

    .prologue
    .line 426
    const/4 v9, 0x0

    .line 427
    .local v9, "action":Ljava/lang/String;
    const/4 v12, 0x0

    .line 428
    .local v12, "oldAction":Ljava/lang/String;
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_6

    .line 429
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->adjustStatusBarCarModeLocked()V

    .line 430
    sget-object v12, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    .line 435
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v0, :cond_7

    .line 436
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    .line 437
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->adjustStatusBarCarModeLocked()V

    .line 439
    if-eqz v12, :cond_1

    .line 440
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 442
    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    .line 443
    sget-object v9, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    .line 458
    :cond_2
    :goto_1
    if-eqz v9, :cond_a

    .line 471
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 472
    .local v1, "intent":Landroid/content/Intent;
    const-string v0, "enableFlags"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 473
    const-string v0, "disableFlags"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 474
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/UiModeManagerService;->mResultReceiver:Landroid/content/BroadcastReceiver;

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 480
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    .line 481
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->updateConfigurationLocked()V

    .line 511
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_2
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCharging:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mbKeepScreenOnWhenCharing:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeKeepsScreenOn:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnableFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    :cond_3
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_e

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mDeskModeKeepsScreenOn:Z

    if-eqz v0, :cond_e

    :cond_4
    const/4 v11, 0x1

    .line 516
    .local v11, "keepScreenOn":Z
    :goto_3
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eq v11, v0, :cond_5

    .line 517
    if-eqz v11, :cond_f

    .line 518
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 523
    :cond_5
    :goto_4
    return-void

    .line 431
    .end local v11    # "keepScreenOn":Z
    :cond_6
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    sget-object v12, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    goto/16 :goto_0

    .line 445
    :cond_7
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 446
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 447
    if-eqz v12, :cond_8

    .line 448
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 450
    :cond_8
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    iput v0, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    .line 451
    sget-object v9, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    goto/16 :goto_1

    .line 454
    :cond_9
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    .line 455
    move-object v9, v12

    goto/16 :goto_1

    .line 483
    :cond_a
    const/4 v10, 0x0

    .line 484
    .local v10, "category":Ljava/lang/String;
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v0, :cond_c

    .line 485
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_b

    .line 487
    const-string v10, "android.intent.category.CAR_DOCK"

    .line 505
    :cond_b
    :goto_5
    invoke-direct {p0, v10}, Lcom/android/server/UiModeManagerService;->sendConfigurationAndStartDreamOrDockAppLocked(Ljava/lang/String;)V

    goto :goto_2

    .line 489
    :cond_c
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 490
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_b

    .line 492
    const-string v10, "android.intent.category.DESK_DOCK"

    goto :goto_5

    .line 495
    :cond_d
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_b

    .line 496
    const-string v10, "android.intent.category.HOME"

    goto :goto_5

    .line 511
    .end local v10    # "category":Ljava/lang/String;
    :cond_e
    const/4 v11, 0x0

    goto :goto_3

    .line 520
    .restart local v11    # "keepScreenOn":Z
    :cond_f
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_4
.end method

.method updateTwilight()V
    .locals 3

    .prologue
    .line 653
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 654
    :try_start_0
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    if-nez v0, :cond_0

    .line 655
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->updateComputedNightModeLocked()V

    .line 656
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 658
    :cond_0
    monitor-exit v1

    .line 659
    return-void

    .line 658
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
