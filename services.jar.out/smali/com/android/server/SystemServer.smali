.class public final Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "SystemServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SystemServer$ProcessListThread;
    }
.end annotation


# static fields
.field private static final APPWIDGET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.appwidget.AppWidgetService"

.field private static final BACKUP_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.backup.BackupManagerService$Lifecycle"

.field private static final EARLIEST_SUPPORTED_TIME:J = 0x5265c00L

.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final ETHERNET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.ethernet.EthernetService"

.field private static final JOB_SCHEDULER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.job.JobSchedulerService"

.field private static final MIDI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.midi.MidiService$Lifecycle"

.field private static final MOUNT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.MountService$Lifecycle"

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final PRINT_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.print.PrintManagerService"

.field private static final SNAPSHOT_INTERVAL:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field private static final USB_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usb.UsbService$Lifecycle"

.field private static final VOICE_RECOGNITION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.voiceinteraction.VoiceInteractionManagerService"

.field private static final WIFI_P2P_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.p2p.WifiP2pService"

.field private static final WIFI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.WifiService"


# instance fields
.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

.field private final mFactoryTestMode:I

.field private mFirstBoot:Z

.field private mOnlyCore:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private mPowerManagerService:Lcom/android/server/power/PowerManagerService;

.field private mProfilerSnapshotTimer:Ljava/util/Timer;

.field private mSystemContext:Landroid/content/Context;

.field private mSystemServiceManager:Lcom/android/server/SystemServiceManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 206
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/SystemServer;)Lcom/android/server/SystemServiceManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SystemServer;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/SystemServer;)Lcom/android/server/am/ActivityManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SystemServer;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SystemServer;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Throwable;

    .prologue
    .line 122
    invoke-direct {p0, p1, p2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private createSystemContext()V
    .locals 3

    .prologue
    .line 360
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    .line 361
    .local v0, "activityThread":Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 362
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const v2, 0x103013f

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 363
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 189
    const-string v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "cryptState":Ljava/lang/String;
    const-string v1, "trigger_restart_min_framework"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 191
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 192
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->preParsing()V

    .line 200
    :goto_0
    invoke-static {}, Lmiui/patchrom/ClassHook;->initServerHook()V

    new-instance v1, Lcom/android/server/SystemServer;

    invoke-direct {v1}, Lcom/android/server/SystemServer;-><init>()V

    invoke-direct {v1}, Lcom/android/server/SystemServer;->run()V

    .line 201
    return-void

    .line 194
    :cond_0
    const-string v1, "SystemServer"

    const-string v2, "Device encrypted - only parsing core apps"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 197
    :cond_1
    const-string v1, "SystemServer"

    const-string v2, "Detected encryption in progress - only parsing core apps"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private performPendingShutdown()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 343
    const-string v4, "sys.shutdown.requested"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 345
    .local v2, "shutdownAction":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 346
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x31

    if-ne v4, v5, :cond_0

    move v1, v3

    .line 349
    .local v1, "reboot":Z
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v3, :cond_2

    .line 350
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 355
    .local v0, "reason":Ljava/lang/String;
    :goto_0
    const/4 v3, 0x0

    invoke-static {v3, v1, v0}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V

    .line 357
    .end local v0    # "reason":Ljava/lang/String;
    .end local v1    # "reboot":Z
    :cond_1
    return-void

    .line 352
    .restart local v1    # "reboot":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "reason":Ljava/lang/String;
    goto :goto_0
.end method

.method private reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 320
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 322
    return-void
.end method

.method private run()V
    .locals 9

    .prologue
    const-wide/32 v4, 0x5265c00

    const-wide/32 v2, 0x36ee80

    const/4 v8, 0x1

    .line 213
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    .line 214
    const-string v0, "SystemServer"

    const-string v1, "System clock is before 1970; setting to 1970."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-static {v4, v5}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 226
    :cond_0
    const-string v0, "persist.sys.language"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 227
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v7

    .line 229
    .local v7, "languageTag":Ljava/lang/String;
    const-string v0, "persist.sys.locale"

    invoke-static {v0, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v0, "persist.sys.language"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v0, "persist.sys.country"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v0, "persist.sys.localevar"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    .end local v7    # "languageTag":Ljava/lang/String;
    :cond_1
    const-string v0, "SystemServer"

    const-string v1, "Entered the Android system server!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const/16 v0, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 246
    const-string v0, "persist.sys.dalvik.vm.lib.2"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 250
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->start()V

    .line 251
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    .line 252
    iget-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/SystemServer$1;

    invoke-direct {v1, p0}, Lcom/android/server/SystemServer$1;-><init>(Lcom/android/server/SystemServer;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 261
    :cond_2
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 265
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 269
    invoke-static {}, Landroid/os/Build;->ensureFingerprintProperty()V

    .line 273
    invoke-static {v8}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 276
    invoke-static {v8}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 279
    const/4 v0, -0x2

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 281
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 282
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 285
    const-string v0, "android_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 289
    invoke-direct {p0}, Lcom/android/server/SystemServer;->performPendingShutdown()V

    .line 292
    invoke-direct {p0}, Lcom/android/server/SystemServer;->createSystemContext()V

    .line 295
    new-instance v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 296
    const-class v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 300
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startBootstrapServices()V

    .line 301
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startCoreServices()V

    .line 302
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startOtherServices()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 311
    const-string v0, "SystemServer"

    const-string v1, "Enabled StrictMode for system server main thread."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_3
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 316
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Main thread loop unexpectedly exited"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :catch_0
    move-exception v6

    .line 304
    .local v6, "ex":Ljava/lang/Throwable;
    const-string v0, "System"

    const-string v1, "******************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const-string v0, "System"

    const-string v1, "************ Failure starting system services"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 306
    throw v6
.end method

.method private startBootstrapServices()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 376
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/pm/Installer;

    invoke-virtual {v2, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/Installer;

    .line 379
    .local v1, "installer":Lcom/android/server/pm/Installer;
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v2, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->getService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 381
    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityManagerService;->setSystemServiceManager(Lcom/android/server/SystemServiceManager;)V

    .line 382
    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityManagerService;->setInstaller(Lcom/android/server/pm/Installer;)V

    .line 388
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v2, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService;

    iput-object v2, p0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    .line 392
    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->initPowerManagement()V

    .line 395
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/lights/LightsService;

    invoke-virtual {v2, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 399
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v2, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayManagerService;

    iput-object v2, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 402
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v4, 0x64

    invoke-virtual {v2, v4}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 405
    const-string v2, "vold.decrypt"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 406
    .local v0, "cryptState":Ljava/lang/String;
    const-string v2, "trigger_restart_min_framework"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 407
    const-string v2, "SystemServer"

    const-string v4, "Detected encryption in progress - only parsing core apps"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iput-boolean v3, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 415
    :cond_0
    :goto_0
    const-string v2, "SystemServer"

    const-string v4, "Package Manager"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    iget-boolean v3, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    invoke-static {v4, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Lcom/android/server/pm/PackageManagerService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 418
    iget-object v2, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    .line 419
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 421
    const-string v2, "SystemServer"

    const-string v3, "User Service"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const-string v2, "user"

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 425
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 428
    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 432
    invoke-static {}, Lcom/android/server/SystemServer;->startSensorService()V

    .line 433
    return-void

    .line 409
    :cond_1
    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 410
    const-string v2, "SystemServer"

    const-string v4, "Device encrypted - only parsing core apps"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iput-boolean v3, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    goto :goto_0

    .line 416
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private startCoreServices()V
    .locals 2

    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BatteryService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 443
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 444
    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V

    .line 447
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getUsageStatsIfNoPackageUsageInfo()V

    .line 450
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 451
    return-void
.end method

.method private startOtherServices()V
    .locals 100

    .prologue
    .line 458
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 459
    .local v3, "context":Landroid/content/Context;
    const/16 v30, 0x0

    .line 460
    .local v30, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    const/16 v47, 0x0

    .line 461
    .local v47, "contentService":Lcom/android/server/content/ContentService;
    const/16 v93, 0x0

    .line 462
    .local v93, "vibrator":Lcom/android/server/VibratorService;
    const/16 v34, 0x0

    .line 463
    .local v34, "alarm":Landroid/app/IAlarmManager;
    const/16 v73, 0x0

    .line 464
    .local v73, "mountService":Landroid/os/storage/IMountService;
    const/4 v7, 0x0

    .line 465
    .local v7, "networkManagement":Lcom/android/server/NetworkManagementService;
    const/4 v6, 0x0

    .line 466
    .local v6, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const/16 v74, 0x0

    .line 467
    .local v74, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v43, 0x0

    .line 468
    .local v43, "connectivity":Lcom/android/server/ConnectivityService;
    const/16 v75, 0x0

    .line 469
    .local v75, "networkScore":Lcom/android/server/NetworkScoreService;
    const/16 v84, 0x0

    .line 470
    .local v84, "serviceDiscovery":Lcom/android/server/NsdService;
    const/16 v99, 0x0

    .line 471
    .local v99, "wm":Lcom/android/server/wm/WindowManagerService;
    const/16 v92, 0x0

    .line 472
    .local v92, "usb":Lcom/android/server/usb/UsbService;
    const/16 v82, 0x0

    .line 473
    .local v82, "serial":Lcom/android/server/SerialService;
    const/16 v78, 0x0

    .line 474
    .local v78, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    const/16 v40, 0x0

    .line 475
    .local v40, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    const/16 v62, 0x0

    .line 476
    .local v62, "inputManager":Lcom/android/server/input/InputManagerService;
    const/16 v88, 0x0

    .line 477
    .local v88, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/16 v45, 0x0

    .line 478
    .local v45, "consumerIr":Lcom/android/server/ConsumerIrService;
    const/16 v37, 0x0

    .line 479
    .local v37, "audioService":Lcom/android/server/audio/AudioService;
    const/16 v72, 0x0

    .line 480
    .local v72, "mmsService":Lcom/android/server/MmsServiceBroker;
    const/16 v58, 0x0

    .line 481
    .local v58, "entropyMixer":Lcom/android/server/EntropyMixer;
    const/16 v39, 0x0

    .line 484
    .local v39, "cameraService":Lcom/android/server/camera/CameraService;
    const/16 v32, 0x0

    .line 487
    .local v32, "activeEngineManager":Lcom/android/server/HtcActiveEngineManager;
    const-string v4, "config.disable_storage"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v55

    .line 488
    .local v55, "disableStorage":Z
    const-string v4, "config.disable_bluetooth"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v50

    .line 489
    .local v50, "disableBluetooth":Z
    const-string v4, "config.disable_location"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v51

    .line 490
    .local v51, "disableLocation":Z
    const-string v4, "config.disable_systemui"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v56

    .line 491
    .local v56, "disableSystemUI":Z
    const-string v4, "config.disable_noncore"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v54

    .line 492
    .local v54, "disableNonCoreServices":Z
    const-string v4, "config.disable_network"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v52

    .line 493
    .local v52, "disableNetwork":Z
    const-string v4, "config.disable_networktime"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v53

    .line 494
    .local v53, "disableNetworkTime":Z
    const-string v4, "ro.kernel.qemu"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v64

    .line 497
    .local v64, "isEmulator":Z
    :try_start_0
    const-string v4, "SystemServer"

    const-string v5, "Reading configuration..."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 500
    const-string v4, "SystemServer"

    const-string v5, "Scheduling Policy"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    const-string v4, "scheduling_policy"

    new-instance v5, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v5}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 503
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/telecom/TelecomLoaderService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 505
    const-string v4, "SystemServer"

    const-string v5, "Telephony Registry"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    new-instance v89, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v89

    invoke-direct {v0, v3}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3f

    .line 507
    .end local v88    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v89, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_1
    const-string v4, "telephony.registry"

    move-object/from16 v0, v89

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 509
    const-string v4, "SystemServer"

    const-string v5, "Entropy Mixer"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    new-instance v59, Lcom/android/server/EntropyMixer;

    move-object/from16 v0, v59

    invoke-direct {v0, v3}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_40

    .line 512
    .end local v58    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .local v59, "entropyMixer":Lcom/android/server/EntropyMixer;
    :try_start_2
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    .line 514
    const-string v4, "SystemServer"

    const-string v5, "Camera Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/camera/CameraService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 520
    :try_start_3
    const-string v4, "SystemServer"

    const-string v5, "Account Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    new-instance v31, Lcom/android/server/accounts/AccountManagerService;

    move-object/from16 v0, v31

    invoke-direct {v0, v3}, Lcom/android/server/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 522
    .end local v30    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v31, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :try_start_4
    const-string v4, "account"

    move-object/from16 v0, v31

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_45
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_41

    move-object/from16 v30, v31

    .line 527
    .end local v31    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v30    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :goto_0
    :try_start_5
    const-string v4, "SystemServer"

    const-string v5, "Content Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2a

    const/4 v4, 0x1

    :goto_1
    invoke-static {v3, v4}, Lcom/android/server/content/ContentService;->main(Landroid/content/Context;Z)Lcom/android/server/content/ContentService;

    move-result-object v47

    .line 531
    const-string v4, "SystemServer"

    const-string v5, "System Content Providers"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 534
    const-string v4, "SystemServer"

    const-string v5, "Vibrator Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    new-instance v94, Lcom/android/server/VibratorService;

    move-object/from16 v0, v94

    invoke-direct {v0, v3}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    .line 536
    .end local v93    # "vibrator":Lcom/android/server/VibratorService;
    .local v94, "vibrator":Lcom/android/server/VibratorService;
    :try_start_6
    const-string v4, "vibrator"

    move-object/from16 v0, v94

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 538
    const-string v4, "SystemServer"

    const-string v5, "Consumer IR Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    new-instance v46, Lcom/android/server/ConsumerIrService;

    move-object/from16 v0, v46

    invoke-direct {v0, v3}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_42

    .line 540
    .end local v45    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v46, "consumerIr":Lcom/android/server/ConsumerIrService;
    :try_start_7
    const-string v4, "consumer_ir"

    move-object/from16 v0, v46

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 542
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/AlarmManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 543
    const-string v4, "alarm"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v34

    .line 546
    const-string v4, "SystemServer"

    const-string v5, "Init Watchdog"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v98

    .line 548
    .local v98, "watchdog":Lcom/android/server/Watchdog;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v98

    invoke-virtual {v0, v3, v4}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 550
    const-string v4, "SystemServer"

    const-string v5, "Input Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    new-instance v63, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v63

    invoke-direct {v0, v3}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_43

    .line 553
    .end local v62    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v63, "inputManager":Lcom/android/server/input/InputManagerService;
    :try_start_8
    const-string v4, "SystemServer"

    const-string v5, "Window Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2b

    const/4 v4, 0x1

    move v5, v4

    :goto_2
    sget-object v4, Landroid/content/pm/PackageManager;->SENSE_VERSION:Ljava/lang/String;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->hasDeferredDexOpt()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    if-nez v4, :cond_2c

    :cond_1
    const/4 v4, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move-object/from16 v0, v63

    invoke-static {v3, v0, v5, v4, v8}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v99

    .line 560
    const-string v4, "window"

    move-object/from16 v0, v99

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 561
    const-string v4, "input"

    move-object/from16 v0, v63

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 563
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v99

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 565
    invoke-virtual/range {v99 .. v99}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v4

    move-object/from16 v0, v63

    invoke-virtual {v0, v4}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 566
    invoke-virtual/range {v63 .. v63}, Lcom/android/server/input/InputManagerService;->start()V

    .line 569
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v4}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    .line 572
    const-string v4, "SystemServer"

    const-string v5, "Htc ActiveEngine Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    new-instance v33, Lcom/android/server/HtcActiveEngineManager;

    move-object/from16 v0, v33

    invoke-direct {v0, v3}, Lcom/android/server/HtcActiveEngineManager;-><init>(Landroid/content/Context;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_44

    .line 579
    .end local v32    # "activeEngineManager":Lcom/android/server/HtcActiveEngineManager;
    .local v33, "activeEngineManager":Lcom/android/server/HtcActiveEngineManager;
    if-eqz v64, :cond_2d

    .line 580
    :try_start_9
    const-string v4, "SystemServer"

    const-string v5, "No Bluetooh Service (emulator)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_2

    :goto_4
    move-object/from16 v32, v33

    .end local v33    # "activeEngineManager":Lcom/android/server/HtcActiveEngineManager;
    .restart local v32    # "activeEngineManager":Lcom/android/server/HtcActiveEngineManager;
    move-object/from16 v58, v59

    .end local v59    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v58    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v45, v46

    .end local v46    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v45    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v88, v89

    .end local v89    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v88    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v62, v63

    .end local v63    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v62    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v93, v94

    .line 597
    .end local v94    # "vibrator":Lcom/android/server/VibratorService;
    .end local v98    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v93    # "vibrator":Lcom/android/server/VibratorService;
    :goto_5
    const/16 v85, 0x0

    .line 598
    .local v85, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    const/16 v80, 0x0

    .line 599
    .local v80, "notification":Landroid/app/INotificationManager;
    const/16 v60, 0x0

    .line 600
    .local v60, "imm":Lcom/android/server/InputMethodManagerService;
    const/16 v96, 0x0

    .line 601
    .local v96, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    const/16 v65, 0x0

    .line 602
    .local v65, "location":Lcom/android/server/LocationManagerService;
    const/16 v48, 0x0

    .line 603
    .local v48, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/16 v90, 0x0

    .line 604
    .local v90, "tsms":Lcom/android/server/TextServicesManagerService;
    const/16 v67, 0x0

    .line 605
    .local v67, "lockSettings":Lcom/android/server/LockSettingsService;
    const/16 v35, 0x0

    .line 606
    .local v35, "atlas":Lcom/android/server/AssetAtlasService;
    const/16 v69, 0x0

    .line 609
    .local v69, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    .line 611
    :try_start_a
    const-string v4, "SystemServer"

    const-string v5, "Input Method Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    new-instance v61, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v61

    move-object/from16 v1, v99

    invoke-direct {v0, v3, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3

    .line 613
    .end local v60    # "imm":Lcom/android/server/InputMethodManagerService;
    .local v61, "imm":Lcom/android/server/InputMethodManagerService;
    :try_start_b
    const-string v4, "input_method"

    move-object/from16 v0, v61

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3e

    move-object/from16 v60, v61

    .line 619
    .end local v61    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v60    # "imm":Lcom/android/server/InputMethodManagerService;
    :goto_6
    :try_start_c
    const-string v4, "SystemServer"

    const-string v5, "Accessibility Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    const-string v4, "accessibility"

    new-instance v5, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v5, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_4

    .line 628
    :cond_2
    :goto_7
    :try_start_d
    invoke-virtual/range {v99 .. v99}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_5

    .line 633
    :goto_8
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    .line 634
    if-nez v55, :cond_3

    const-string v4, "0"

    const-string v5, "system_init.startmountservice"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 641
    :try_start_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.MountService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 642
    const-string v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_6

    move-result-object v73

    .line 652
    :cond_3
    :goto_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/UiModeManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 655
    :try_start_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->performBootDexOpt()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_7

    .line 661
    :goto_a
    :try_start_10
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x1040371

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v8, 0x0

    invoke-interface {v4, v5, v8}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_3d

    .line 668
    :goto_b
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_33

    .line 669
    if-nez v54, :cond_5

    .line 671
    :try_start_11
    const-string v4, "SystemServer"

    const-string v5, "LockSettingsService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    new-instance v68, Lcom/android/server/LockSettingsService;

    move-object/from16 v0, v68

    invoke-direct {v0, v3}, Lcom/android/server/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_8

    .line 673
    .end local v67    # "lockSettings":Lcom/android/server/LockSettingsService;
    .local v68, "lockSettings":Lcom/android/server/LockSettingsService;
    :try_start_12
    const-string v4, "lock_settings"

    move-object/from16 v0, v68

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_3c

    move-object/from16 v67, v68

    .line 678
    .end local v68    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v67    # "lockSettings":Lcom/android/server/LockSettingsService;
    :goto_c
    const-string v4, "ro.frp.pst"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 679
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/PersistentDataBlockService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 682
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/DeviceIdleController;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 686
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 689
    :cond_5
    if-nez v56, :cond_6

    .line 691
    :try_start_13
    const-string v4, "SystemServer"

    const-string v5, "Status Bar"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    new-instance v86, Lcom/android/server/statusbar/StatusBarManagerService;

    move-object/from16 v0, v86

    move-object/from16 v1, v99

    invoke-direct {v0, v3, v1}, Lcom/android/server/statusbar/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_9

    .line 693
    .end local v85    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v86, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :try_start_14
    const-string v4, "statusbar"

    move-object/from16 v0, v86

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_3b

    move-object/from16 v85, v86

    .line 699
    .end local v86    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v85    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :cond_6
    :goto_d
    if-nez v54, :cond_7

    .line 701
    :try_start_15
    const-string v4, "SystemServer"

    const-string v5, "Clipboard Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    const-string v4, "clipboard"

    new-instance v5, Lcom/android/server/clipboard/ClipboardService;

    invoke-direct {v5, v3}, Lcom/android/server/clipboard/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_a

    .line 709
    :cond_7
    :goto_e
    if-nez v52, :cond_8

    .line 711
    :try_start_16
    const-string v4, "SystemServer"

    const-string v5, "NetworkManagement Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    invoke-static {v3}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v7

    .line 713
    const-string v4, "network_management"

    invoke-static {v4, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_b

    .line 719
    :cond_8
    :goto_f
    if-nez v54, :cond_9

    .line 721
    :try_start_17
    const-string v4, "SystemServer"

    const-string v5, "Text Service Manager Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    new-instance v91, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v91

    invoke-direct {v0, v3}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_c

    .line 723
    .end local v90    # "tsms":Lcom/android/server/TextServicesManagerService;
    .local v91, "tsms":Lcom/android/server/TextServicesManagerService;
    :try_start_18
    const-string v4, "textservices"

    move-object/from16 v0, v91

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_3a

    move-object/from16 v90, v91

    .line 729
    .end local v91    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v90    # "tsms":Lcom/android/server/TextServicesManagerService;
    :cond_9
    :goto_10
    if-nez v52, :cond_32

    .line 731
    :try_start_19
    const-string v4, "SystemServer"

    const-string v5, "Network Score Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    new-instance v76, Lcom/android/server/NetworkScoreService;

    move-object/from16 v0, v76

    invoke-direct {v0, v3}, Lcom/android/server/NetworkScoreService;-><init>(Landroid/content/Context;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_d

    .line 733
    .end local v75    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v76, "networkScore":Lcom/android/server/NetworkScoreService;
    :try_start_1a
    const-string v4, "network_score"

    move-object/from16 v0, v76

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_39

    move-object/from16 v75, v76

    .line 739
    .end local v76    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v75    # "networkScore":Lcom/android/server/NetworkScoreService;
    :goto_11
    :try_start_1b
    const-string v4, "SystemServer"

    const-string v5, "NetworkStats Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    new-instance v77, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v77

    move-object/from16 v1, v34

    invoke-direct {v0, v3, v7, v1}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_e

    .line 741
    .end local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v77, "networkStats":Lcom/android/server/net/NetworkStatsService;
    :try_start_1c
    const-string v4, "netstats"

    move-object/from16 v0, v77

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_38

    move-object/from16 v6, v77

    .line 747
    .end local v77    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :goto_12
    :try_start_1d
    const-string v4, "SystemServer"

    const-string v5, "NetworkPolicy Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-string v5, "power"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    check-cast v5, Landroid/os/IPowerManager;

    invoke-direct/range {v2 .. v7}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_f

    .line 752
    .end local v74    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v2, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_1e
    const-string v4, "netpolicy"

    invoke-static {v4, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_37

    .line 757
    :goto_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wifi.p2p.WifiP2pService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 758
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wifi.WifiService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 759
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wifi.WifiScanningService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 762
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wifi.RttService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 764
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.ethernet"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.usb.host"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 766
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.ethernet.EthernetService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 770
    :cond_b
    :try_start_1f
    const-string v4, "SystemServer"

    const-string v5, "Connectivity Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    new-instance v44, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v44

    invoke-direct {v0, v3, v7, v6, v2}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_10

    .line 773
    .end local v43    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v44, "connectivity":Lcom/android/server/ConnectivityService;
    :try_start_20
    const-string v4, "connectivity"

    move-object/from16 v0, v44

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 774
    move-object/from16 v0, v44

    invoke-virtual {v6, v0}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 775
    move-object/from16 v0, v44

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_36

    move-object/from16 v43, v44

    .line 781
    .end local v44    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v43    # "connectivity":Lcom/android/server/ConnectivityService;
    :goto_14
    :try_start_21
    const-string v4, "SystemServer"

    const-string v5, "Network Service Discovery Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    invoke-static {v3}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v84

    .line 783
    const-string v4, "servicediscovery"

    move-object/from16 v0, v84

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_11

    .line 790
    :goto_15
    if-nez v54, :cond_c

    .line 792
    :try_start_22
    const-string v4, "SystemServer"

    const-string v5, "UpdateLock Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    const-string v4, "updatelock"

    new-instance v5, Lcom/android/server/UpdateLockService;

    invoke-direct {v5, v3}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_12

    .line 805
    :cond_c
    :goto_16
    if-eqz v73, :cond_d

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v4, :cond_d

    .line 807
    :try_start_23
    invoke-interface/range {v73 .. v73}, Landroid/os/storage/IMountService;->waitForAsecScan()V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_23} :catch_2d

    .line 813
    :cond_d
    :goto_17
    if-eqz v30, :cond_e

    .line 814
    :try_start_24
    invoke-virtual/range {v30 .. v30}, Lcom/android/server/accounts/AccountManagerService;->systemReady()V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_13

    .line 820
    :cond_e
    :goto_18
    if-eqz v47, :cond_f

    .line 821
    :try_start_25
    invoke-virtual/range {v47 .. v47}, Lcom/android/server/content/ContentService;->systemReady()V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_14

    .line 826
    :cond_f
    :goto_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 827
    const-string v4, "notification"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v80

    .line 829
    move-object/from16 v0, v80

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V

    .line 831
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 833
    if-nez v51, :cond_10

    .line 835
    :try_start_26
    const-string v4, "SystemServer"

    const-string v5, "Location Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    new-instance v66, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v66

    invoke-direct {v0, v3}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_15

    .line 837
    .end local v65    # "location":Lcom/android/server/LocationManagerService;
    .local v66, "location":Lcom/android/server/LocationManagerService;
    :try_start_27
    const-string v4, "location"

    move-object/from16 v0, v66

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_35

    move-object/from16 v65, v66

    .line 843
    .end local v66    # "location":Lcom/android/server/LocationManagerService;
    .restart local v65    # "location":Lcom/android/server/LocationManagerService;
    :goto_1a
    :try_start_28
    const-string v4, "SystemServer"

    const-string v5, "Country Detector"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    new-instance v49, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v49

    invoke-direct {v0, v3}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_16

    .line 845
    .end local v48    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v49, "countryDetector":Lcom/android/server/CountryDetectorService;
    :try_start_29
    const-string v4, "country_detector"

    move-object/from16 v0, v49

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_34

    move-object/from16 v48, v49

    .line 851
    .end local v49    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v48    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :cond_10
    :goto_1b
    if-nez v54, :cond_11

    .line 853
    :try_start_2a
    const-string v4, "SystemServer"

    const-string v5, "Search Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    const-string v4, "search"

    new-instance v5, Lcom/android/server/search/SearchManagerService;

    invoke-direct {v5, v3}, Lcom/android/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_17

    .line 862
    :cond_11
    :goto_1c
    :try_start_2b
    const-string v4, "SystemServer"

    const-string v5, "DropBox Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    const-string v4, "dropbox"

    new-instance v5, Lcom/android/server/DropBoxManagerService;

    new-instance v8, Ljava/io/File;

    const-string v9, "/data/system/dropbox"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v3, v8}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_18

    .line 869
    :goto_1d
    if-nez v54, :cond_12

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1120048

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 872
    :try_start_2c
    const-string v4, "SystemServer"

    const-string v5, "Wallpaper Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    new-instance v97, Lcom/android/server/wallpaper/WallpaperManagerService;

    move-object/from16 v0, v97

    invoke-direct {v0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_19

    .line 874
    .end local v96    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .local v97, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :try_start_2d
    const-string v4, "wallpaper"

    move-object/from16 v0, v97

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_33

    move-object/from16 v96, v97

    .line 881
    .end local v97    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v96    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :cond_12
    :goto_1e
    :try_start_2e
    const-string v4, "SystemServer"

    const-string v5, "Audio Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    new-instance v38, Lcom/android/server/audio/AudioService;

    move-object/from16 v0, v38

    invoke-direct {v0, v3}, Lcom/android/server/audio/AudioService;-><init>(Landroid/content/Context;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_1a

    .line 883
    .end local v37    # "audioService":Lcom/android/server/audio/AudioService;
    .local v38, "audioService":Lcom/android/server/audio/AudioService;
    :try_start_2f
    const-string v4, "audio"

    move-object/from16 v0, v38

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_32

    move-object/from16 v37, v38

    .line 888
    .end local v38    # "audioService":Lcom/android/server/audio/AudioService;
    .restart local v37    # "audioService":Lcom/android/server/audio/AudioService;
    :goto_1f
    if-nez v54, :cond_13

    .line 889
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/DockObserver;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 893
    :cond_13
    :try_start_30
    const-string v4, "SystemServer"

    const-string v5, "Wired Accessory Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    new-instance v4, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v62

    invoke-direct {v4, v3, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    move-object/from16 v0, v62

    invoke-virtual {v0, v4}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_1b

    .line 901
    :goto_20
    if-nez v54, :cond_17

    .line 902
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.midi"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 904
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.midi.MidiService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 907
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.usb.host"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.usb.accessory"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 911
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.usb.UsbService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 915
    :cond_16
    :try_start_31
    const-string v4, "SystemServer"

    const-string v5, "Serial Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    new-instance v83, Lcom/android/server/SerialService;

    move-object/from16 v0, v83

    invoke-direct {v0, v3}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_1c

    .line 918
    .end local v82    # "serial":Lcom/android/server/SerialService;
    .local v83, "serial":Lcom/android/server/SerialService;
    :try_start_32
    const-string v4, "serial"

    move-object/from16 v0, v83

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_31

    move-object/from16 v82, v83

    .line 924
    .end local v83    # "serial":Lcom/android/server/SerialService;
    .restart local v82    # "serial":Lcom/android/server/SerialService;
    :cond_17
    :goto_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 926
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 928
    if-nez v54, :cond_1a

    .line 929
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.backup"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 930
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.backup.BackupManagerService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 933
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.app_widgets"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 934
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.appwidget.AppWidgetService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 937
    :cond_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.voice_recognizers"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 938
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.voiceinteraction.VoiceInteractionManagerService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 943
    :cond_1a
    :try_start_33
    const-string v4, "SystemServer"

    const-string v5, "DiskStats Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    const-string v4, "diskstats"

    new-instance v5, Lcom/android/server/DiskStatsService;

    invoke-direct {v5, v3}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_1d

    .line 954
    :goto_22
    :try_start_34
    const-string v4, "SystemServer"

    const-string v5, "SamplingProfiler Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    const-string v4, "samplingprofiler"

    new-instance v5, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v5, v3}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_1e

    .line 961
    :goto_23
    if-nez v52, :cond_1b

    if-nez v53, :cond_1b

    .line 963
    :try_start_35
    const-string v4, "SystemServer"

    const-string v5, "NetworkTimeUpdateService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    new-instance v79, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v79

    invoke-direct {v0, v3}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_1f

    .end local v78    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v79, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v78, v79

    .line 971
    .end local v79    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v78    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :cond_1b
    :goto_24
    :try_start_36
    const-string v4, "SystemServer"

    const-string v5, "CommonTimeManagementService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    new-instance v41, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v41

    invoke-direct {v0, v3}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_20

    .line 973
    .end local v40    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v41, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :try_start_37
    const-string v4, "commontime_management"

    move-object/from16 v0, v41

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_30

    move-object/from16 v40, v41

    .line 978
    .end local v41    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v40    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :goto_25
    if-nez v52, :cond_1c

    .line 980
    :try_start_38
    const-string v4, "SystemServer"

    const-string v5, "CertBlacklister"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    new-instance v4, Lcom/android/server/CertBlacklister;

    invoke-direct {v4, v3}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_21

    .line 987
    :cond_1c
    :goto_26
    if-nez v54, :cond_1d

    .line 989
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 992
    :cond_1d
    if-nez v54, :cond_1e

    .line 994
    :try_start_39
    const-string v4, "SystemServer"

    const-string v5, "Assets Atlas Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    new-instance v36, Lcom/android/server/AssetAtlasService;

    move-object/from16 v0, v36

    invoke-direct {v0, v3}, Lcom/android/server/AssetAtlasService;-><init>(Landroid/content/Context;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_22

    .line 996
    .end local v35    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v36, "atlas":Lcom/android/server/AssetAtlasService;
    :try_start_3a
    const-string v4, "assetatlas"

    move-object/from16 v0, v36

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_2f

    move-object/from16 v35, v36

    .line 1002
    .end local v36    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v35    # "atlas":Lcom/android/server/AssetAtlasService;
    :cond_1e
    :goto_27
    if-nez v54, :cond_1f

    .line 1003
    const-string v4, "graphicsstats"

    new-instance v5, Lcom/android/server/GraphicsStatsService;

    invoke-direct {v5, v3}, Lcom/android/server/GraphicsStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1007
    :cond_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.print"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 1008
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.print.PrintManagerService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1011
    :cond_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/restrictions/RestrictionsManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1013
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1015
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.hdmi.cec"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 1016
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1019
    :cond_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.live_tv"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 1020
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1023
    :cond_22
    if-nez v54, :cond_23

    .line 1025
    :try_start_3b
    const-string v4, "SystemServer"

    const-string v5, "Media Router Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    new-instance v70, Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, v70

    invoke-direct {v0, v3}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_23

    .line 1027
    .end local v69    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v70, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :try_start_3c
    const-string v4, "media_router"

    move-object/from16 v0, v70

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_2e

    move-object/from16 v69, v70

    .line 1032
    .end local v70    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v69    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :goto_28
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1034
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1037
    :try_start_3d
    const-string v4, "SystemServer"

    const-string v5, "BackgroundDexOptService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/server/pm/BackgroundDexOptService;->schedule(Landroid/content/Context;J)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_24

    .line 1045
    :cond_23
    :goto_29
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/pm/LauncherAppsService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1048
    :goto_2a
    if-nez v54, :cond_24

    .line 1049
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1053
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemServer;->supportSprintExtensionApi()Z

    move-result v4

    if-eqz v4, :cond_25

    .line 1055
    :try_start_3e
    const-string v4, "SystemServer"

    const-string v5, "Sprint LTE Connection Service for Extension API"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    const-string v4, "lte"

    new-instance v5, Lcom/sprint/net/lte/ConnectionService;

    invoke-direct {v5, v3}, Lcom/sprint/net/lte/ConnectionService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_25

    .line 1063
    :goto_2b
    :try_start_3f
    const-string v4, "SystemServer"

    const-string v5, "Sprint CDMA Connection Service for Extension API"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    const-string v4, "cdma"

    new-instance v5, Lcom/sprint/net/cdma/ConnectionService;

    invoke-direct {v5, v3}, Lcom/sprint/net/cdma/ConnectionService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_26

    .line 1074
    :cond_25
    :goto_2c
    invoke-virtual/range {v99 .. v99}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v81

    .line 1075
    .local v81, "safeMode":Z
    if-eqz v81, :cond_31

    .line 1076
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 1078
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 1085
    :goto_2d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v72

    .end local v72    # "mmsService":Lcom/android/server/MmsServiceBroker;
    check-cast v72, Lcom/android/server/MmsServiceBroker;

    .line 1090
    .restart local v72    # "mmsService":Lcom/android/server/MmsServiceBroker;
    :try_start_40
    invoke-virtual/range {v93 .. v93}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_27

    .line 1095
    :goto_2e
    if-eqz v67, :cond_26

    .line 1097
    :try_start_41
    invoke-virtual/range {v67 .. v67}, Lcom/android/server/LockSettingsService;->systemReady()V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_28

    .line 1104
    :cond_26
    :goto_2f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x1e0

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1106
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x1f4

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1109
    :try_start_42
    invoke-virtual/range {v99 .. v99}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_29

    .line 1114
    :goto_30
    if-eqz v81, :cond_27

    .line 1115
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 1121
    :cond_27
    invoke-virtual/range {v99 .. v99}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v42

    .line 1122
    .local v42, "config":Landroid/content/res/Configuration;
    new-instance v71, Landroid/util/DisplayMetrics;

    invoke-direct/range {v71 .. v71}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1123
    .local v71, "metrics":Landroid/util/DisplayMetrics;
    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v95

    check-cast v95, Landroid/view/WindowManager;

    .line 1124
    .local v95, "w":Landroid/view/WindowManager;
    invoke-interface/range {v95 .. v95}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    move-object/from16 v0, v71

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1125
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v0, v42

    move-object/from16 v1, v71

    invoke-virtual {v4, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1128
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v87

    .line 1129
    .local v87, "systemTheme":Landroid/content/res/Resources$Theme;
    invoke-virtual/range {v87 .. v87}, Landroid/content/res/Resources$Theme;->getChangingConfigurations()I

    move-result v4

    if-eqz v4, :cond_28

    .line 1130
    invoke-virtual/range {v87 .. v87}, Landroid/content/res/Resources$Theme;->rebase()V

    .line 1151
    :cond_28
    :try_start_43
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/internal/app/IAppOpsService;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_2a

    .line 1157
    :goto_31
    :try_start_44
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->systemReady()V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_2b

    .line 1164
    :goto_32
    :try_start_45
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move/from16 v0, v81

    invoke-virtual {v4, v0, v5}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_2c

    .line 1170
    :goto_33
    move-object v12, v7

    .line 1171
    .local v12, "networkManagementF":Lcom/android/server/NetworkManagementService;
    move-object v13, v6

    .line 1172
    .local v13, "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    move-object v14, v2

    .line 1173
    .local v14, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v15, v43

    .line 1174
    .local v15, "connectivityF":Lcom/android/server/ConnectivityService;
    move-object/from16 v11, v75

    .line 1175
    .local v11, "networkScoreF":Lcom/android/server/NetworkScoreService;
    move-object/from16 v17, v96

    .line 1176
    .local v17, "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    move-object/from16 v18, v60

    .line 1177
    .local v18, "immF":Lcom/android/server/InputMethodManagerService;
    move-object/from16 v20, v65

    .line 1178
    .local v20, "locationF":Lcom/android/server/LocationManagerService;
    move-object/from16 v21, v48

    .line 1179
    .local v21, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    move-object/from16 v22, v78

    .line 1180
    .local v22, "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v23, v40

    .line 1181
    .local v23, "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v24, v90

    .line 1182
    .local v24, "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    move-object/from16 v19, v85

    .line 1183
    .local v19, "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    move-object/from16 v25, v35

    .line 1184
    .local v25, "atlasF":Lcom/android/server/AssetAtlasService;
    move-object/from16 v26, v62

    .line 1185
    .local v26, "inputManagerF":Lcom/android/server/input/InputManagerService;
    move-object/from16 v27, v88

    .line 1186
    .local v27, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v28, v69

    .line 1187
    .local v28, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v16, v37

    .line 1188
    .local v16, "audioServiceF":Lcom/android/server/audio/AudioService;
    move-object/from16 v29, v72

    .line 1195
    .local v29, "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    new-instance v8, Lcom/android/server/SystemServer$2;

    move-object/from16 v9, p0

    move-object v10, v3

    invoke-direct/range {v8 .. v29}, Lcom/android/server/SystemServer$2;-><init>(Lcom/android/server/SystemServer;Landroid/content/Context;Lcom/android/server/NetworkScoreService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/audio/AudioService;Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V

    invoke-virtual {v4, v8}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 1330
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_29

    .line 1331
    const/4 v4, 0x1

    invoke-static {v4}, Landroid/os/Binder;->logExecTransact(Z)V

    .line 1334
    :cond_29
    return-void

    .line 523
    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v11    # "networkScoreF":Lcom/android/server/NetworkScoreService;
    .end local v12    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .end local v13    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .end local v14    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v15    # "connectivityF":Lcom/android/server/ConnectivityService;
    .end local v16    # "audioServiceF":Lcom/android/server/audio/AudioService;
    .end local v17    # "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local v18    # "immF":Lcom/android/server/InputMethodManagerService;
    .end local v19    # "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v20    # "locationF":Lcom/android/server/LocationManagerService;
    .end local v21    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v22    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .end local v23    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .end local v24    # "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    .end local v25    # "atlasF":Lcom/android/server/AssetAtlasService;
    .end local v26    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v27    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v28    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v29    # "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    .end local v35    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v42    # "config":Landroid/content/res/Configuration;
    .end local v48    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v58    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v60    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v65    # "location":Lcom/android/server/LocationManagerService;
    .end local v67    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v69    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v71    # "metrics":Landroid/util/DisplayMetrics;
    .end local v80    # "notification":Landroid/app/INotificationManager;
    .end local v81    # "safeMode":Z
    .end local v85    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v87    # "systemTheme":Landroid/content/res/Resources$Theme;
    .end local v88    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v90    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v95    # "w":Landroid/view/WindowManager;
    .end local v96    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v59    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v74    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v89    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_0
    move-exception v57

    .line 524
    .local v57, "e":Ljava/lang/Throwable;
    :goto_34
    :try_start_46
    const-string v4, "SystemServer"

    const-string v5, "Failure starting Account Manager"

    move-object/from16 v0, v57

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_46
    .catch Ljava/lang/RuntimeException; {:try_start_46 .. :try_end_46} :catch_1

    goto/16 :goto_0

    .line 592
    .end local v57    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v57

    move-object/from16 v58, v59

    .end local v59    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v58    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v88, v89

    .line 593
    .end local v89    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v57, "e":Ljava/lang/RuntimeException;
    .restart local v88    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :goto_35
    const-string v4, "System"

    const-string v5, "******************************************"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    const-string v4, "System"

    const-string v5, "************ Failure starting core service"

    move-object/from16 v0, v57

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 528
    .end local v57    # "e":Ljava/lang/RuntimeException;
    .end local v58    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v88    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v59    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v89    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :cond_2a
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 554
    .end local v45    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v62    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v93    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v46    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v63    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v94    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v98    # "watchdog":Lcom/android/server/Watchdog;
    :cond_2b
    const/4 v4, 0x0

    move v5, v4

    goto/16 :goto_2

    :cond_2c
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 581
    .end local v32    # "activeEngineManager":Lcom/android/server/HtcActiveEngineManager;
    .restart local v33    # "activeEngineManager":Lcom/android/server/HtcActiveEngineManager;
    :cond_2d
    :try_start_47
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2e

    .line 582
    const-string v4, "SystemServer"

    const-string v5, "No Bluetooth Service (factory test)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 592
    :catch_2
    move-exception v57

    move-object/from16 v32, v33

    .end local v33    # "activeEngineManager":Lcom/android/server/HtcActiveEngineManager;
    .restart local v32    # "activeEngineManager":Lcom/android/server/HtcActiveEngineManager;
    move-object/from16 v58, v59

    .end local v59    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v58    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v45, v46

    .end local v46    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v45    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v88, v89

    .end local v89    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v88    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v62, v63

    .end local v63    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v62    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v93, v94

    .end local v94    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v93    # "vibrator":Lcom/android/server/VibratorService;
    goto :goto_35

    .line 583
    .end local v32    # "activeEngineManager":Lcom/android/server/HtcActiveEngineManager;
    .end local v45    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v58    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v62    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v88    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v93    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v33    # "activeEngineManager":Lcom/android/server/HtcActiveEngineManager;
    .restart local v46    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v59    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v63    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v89    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v94    # "vibrator":Lcom/android/server/VibratorService;
    :cond_2e
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.hardware.bluetooth"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2f

    .line 585
    const-string v4, "SystemServer"

    const-string v5, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 586
    :cond_2f
    if-eqz v50, :cond_30

    .line 587
    const-string v4, "SystemServer"

    const-string v5, "Bluetooth Service disabled by config"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 589
    :cond_30
    const-string v4, "SystemServer"

    const-string v5, "Bluetooth Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/BluetoothService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_47
    .catch Ljava/lang/RuntimeException; {:try_start_47 .. :try_end_47} :catch_2

    goto/16 :goto_4

    .line 614
    .end local v33    # "activeEngineManager":Lcom/android/server/HtcActiveEngineManager;
    .end local v46    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v59    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v63    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v89    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v94    # "vibrator":Lcom/android/server/VibratorService;
    .end local v98    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v32    # "activeEngineManager":Lcom/android/server/HtcActiveEngineManager;
    .restart local v35    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v45    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v48    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v58    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v60    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v62    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v65    # "location":Lcom/android/server/LocationManagerService;
    .restart local v67    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v69    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v80    # "notification":Landroid/app/INotificationManager;
    .restart local v85    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v88    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v90    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v93    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v96    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_3
    move-exception v57

    .line 615
    .local v57, "e":Ljava/lang/Throwable;
    :goto_36
    const-string v4, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 622
    .end local v57    # "e":Ljava/lang/Throwable;
    :catch_4
    move-exception v57

    .line 623
    .restart local v57    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 629
    .end local v57    # "e":Ljava/lang/Throwable;
    :catch_5
    move-exception v57

    .line 630
    .restart local v57    # "e":Ljava/lang/Throwable;
    const-string v4, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 644
    .end local v57    # "e":Ljava/lang/Throwable;
    :catch_6
    move-exception v57

    .line 645
    .restart local v57    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 656
    .end local v57    # "e":Ljava/lang/Throwable;
    :catch_7
    move-exception v57

    .line 657
    .restart local v57    # "e":Ljava/lang/Throwable;
    const-string v4, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a

    .line 674
    .end local v57    # "e":Ljava/lang/Throwable;
    :catch_8
    move-exception v57

    .line 675
    .restart local v57    # "e":Ljava/lang/Throwable;
    :goto_37
    const-string v4, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .line 694
    .end local v57    # "e":Ljava/lang/Throwable;
    :catch_9
    move-exception v57

    .line 695
    .restart local v57    # "e":Ljava/lang/Throwable;
    :goto_38
    const-string v4, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 704
    .end local v57    # "e":Ljava/lang/Throwable;
    :catch_a
    move-exception v57

    .line 705
    .restart local v57    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 714
    .end local v57    # "e":Ljava/lang/Throwable;
    :catch_b
    move-exception v57

    .line 715
    .restart local v57    # "e":Ljava/lang/Throwable;
    const-string v4, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 724
    .end local v57    # "e":Ljava/lang/Throwable;
    :catch_c
    move-exception v57

    .line 725
    .restart local v57    # "e":Ljava/lang/Throwable;
    :goto_39
    const-string v4, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 734
    .end local v57    # "e":Ljava/lang/Throwable;
    :catch_d
    move-exception v57

    .line 735
    .restart local v57    # "e":Ljava/lang/Throwable;
    :goto_3a
    const-string v4, "starting Network Score Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .line 742
    .end local v57    # "e":Ljava/lang/Throwable;
    :catch_e
    move-exception v57

    .line 743
    .restart local v57    # "e":Ljava/lang/Throwable;
    :goto_3b
    const-string v4, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 753
    .end local v57    # "e":Ljava/lang/Throwable;
    :catch_f
    move-exception v57

    move-object/from16 v2, v74

    .line 754
    .end local v74    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v57    # "e":Ljava/lang/Throwable;
    :goto_3c
    const-string v4, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 776
    .end local v57    # "e":Ljava/lang/Throwable;
    :catch_10
    move-exception v57

    .line 777
    .restart local v57    # "e":Ljava/lang/Throwable;
    :goto_3d
    const-string v4, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 785
    .end local v57    # "e":Ljava/lang/Throwable;
    :catch_11
    move-exception v57

    .line 786
    .restart local v57    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 795
    .end local v57    # "e":Ljava/lang/Throwable;
    :catch_12
    move-exception v57

    .line 796
    .restart local v57    # "e":Ljava/lang/Throwable;
    const-string v4, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 815
    .end local v57    # "e":Ljava/lang/Throwable;
    :catch_13
    move-exception v57

    .line 816
    .restart local v57    # "e":Ljava/lang/Throwable;
    const-string v4, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 822
    .end local v57    # "e":Ljava/lang/Throwable;
    :catch_14
    move-exception v57

    .line 823
    .restart local v57    # "e":Ljava/lang/Throwable;
    const-string v4, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 838
    .end local v57    # "e":Ljava/lang/Throwable;
    :catch_15
    move-exception v57

    .line 839
    .restart local v57    # "e":Ljava/lang/Throwable;
    :goto_3e
    const-string v4, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 846
    .end local v57    # "e":Ljava/lang/Throwable;
    :catch_16
    move-exception v57

    .line 847
    .restart local v57    # "e":Ljava/lang/Throwable;
    :goto_3f
    const-string v4, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 856
    .end local v57    # "e":Ljava/lang/Throwable;
    :catch_17
    move-exception v57

    .line 857
    .restart local v57    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 865
    .end local v57    # "e":Ljava/lang/Throwable;
    :catch_18
    move-exception v57

    .line 866
    .restart local v57    # "e":Ljava/lang/Throwable;
    const-string v4, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 875
    .end local v57    # "e":Ljava/lang/Throwable;
    :catch_19
    move-exception v57

    .line 876
    .restart local v57    # "e":Ljava/lang/Throwable;
    :goto_40
    const-string v4, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 884
    .end local v57    # "e":Ljava/lang/Throwable;
    :catch_1a
    move-exception v57

    .line 885
    .restart local v57    # "e":Ljava/lang/Throwable;
    :goto_41
    const-string v4, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 897
    .end local v57    # "e":Ljava/lang/Throwable;
    :catch_1b
    move-exception v57

    .line 898
    .restart local v57    # "e":Ljava/lang/Throwable;
    const-string v4, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 919
    .end local v57    # "e":Ljava/lang/Throwable;
    :catch_1c
    move-exception v57

    .line 920
    .restart local v57    # "e":Ljava/lang/Throwable;
    :goto_42
    const-string v4, "SystemServer"

    const-string v5, "Failure starting SerialService"

    move-object/from16 v0, v57

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_21

    .line 945
    .end local v57    # "e":Ljava/lang/Throwable;
    :catch_1d
    move-exception v57

    .line 946
    .restart local v57    # "e":Ljava/lang/Throwable;
    const-string v4, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 957
    .end local v57    # "e":Ljava/lang/Throwable;
    :catch_1e
    move-exception v57

    .line 958
    .restart local v57    # "e":Ljava/lang/Throwable;
    const-string v4, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 965
    .end local v57    # "e":Ljava/lang/Throwable;
    :catch_1f
    move-exception v57

    .line 966
    .restart local v57    # "e":Ljava/lang/Throwable;
    const-string v4, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 974
    .end local v57    # "e":Ljava/lang/Throwable;
    :catch_20
    move-exception v57

    .line 975
    .restart local v57    # "e":Ljava/lang/Throwable;
    :goto_43
    const-string v4, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 982
    .end local v57    # "e":Ljava/lang/Throwable;
    :catch_21
    move-exception v57

    .line 983
    .restart local v57    # "e":Ljava/lang/Throwable;
    const-string v4, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 997
    .end local v57    # "e":Ljava/lang/Throwable;
    :catch_22
    move-exception v57

    .line 998
    .restart local v57    # "e":Ljava/lang/Throwable;
    :goto_44
    const-string v4, "starting AssetAtlasService"

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 1028
    .end local v57    # "e":Ljava/lang/Throwable;
    :catch_23
    move-exception v57

    .line 1029
    .restart local v57    # "e":Ljava/lang/Throwable;
    :goto_45
    const-string v4, "starting MediaRouterService"

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 1039
    .end local v57    # "e":Ljava/lang/Throwable;
    :catch_24
    move-exception v57

    .line 1040
    .restart local v57    # "e":Ljava/lang/Throwable;
    const-string v4, "starting BackgroundDexOptService"

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 1058
    .end local v57    # "e":Ljava/lang/Throwable;
    :catch_25
    move-exception v57

    .line 1059
    .restart local v57    # "e":Ljava/lang/Throwable;
    const-string v4, "SystemServer"

    const-string v5, "Failure starting Sprint LTE Connection Service for Extension API"

    move-object/from16 v0, v57

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2b

    .line 1065
    .end local v57    # "e":Ljava/lang/Throwable;
    :catch_26
    move-exception v57

    .line 1066
    .restart local v57    # "e":Ljava/lang/Throwable;
    const-string v4, "SystemServer"

    const-string v5, "Failure starting Sprint CDMA Connection Service for Extension API"

    move-object/from16 v0, v57

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2c

    .line 1081
    .end local v57    # "e":Ljava/lang/Throwable;
    .restart local v81    # "safeMode":Z
    :cond_31
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_2d

    .line 1091
    :catch_27
    move-exception v57

    .line 1092
    .restart local v57    # "e":Ljava/lang/Throwable;
    const-string v4, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 1098
    .end local v57    # "e":Ljava/lang/Throwable;
    :catch_28
    move-exception v57

    .line 1099
    .restart local v57    # "e":Ljava/lang/Throwable;
    const-string v4, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .line 1110
    .end local v57    # "e":Ljava/lang/Throwable;
    :catch_29
    move-exception v57

    .line 1111
    .restart local v57    # "e":Ljava/lang/Throwable;
    const-string v4, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30

    .line 1152
    .end local v57    # "e":Ljava/lang/Throwable;
    .restart local v42    # "config":Landroid/content/res/Configuration;
    .restart local v71    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v87    # "systemTheme":Landroid/content/res/Resources$Theme;
    .restart local v95    # "w":Landroid/view/WindowManager;
    :catch_2a
    move-exception v57

    .line 1153
    .restart local v57    # "e":Ljava/lang/Throwable;
    const-string v4, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .line 1158
    .end local v57    # "e":Ljava/lang/Throwable;
    :catch_2b
    move-exception v57

    .line 1159
    .restart local v57    # "e":Ljava/lang/Throwable;
    const-string v4, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_32

    .line 1165
    .end local v57    # "e":Ljava/lang/Throwable;
    :catch_2c
    move-exception v57

    .line 1166
    .restart local v57    # "e":Ljava/lang/Throwable;
    const-string v4, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_33

    .line 808
    .end local v42    # "config":Landroid/content/res/Configuration;
    .end local v57    # "e":Ljava/lang/Throwable;
    .end local v71    # "metrics":Landroid/util/DisplayMetrics;
    .end local v81    # "safeMode":Z
    .end local v87    # "systemTheme":Landroid/content/res/Resources$Theme;
    .end local v95    # "w":Landroid/view/WindowManager;
    :catch_2d
    move-exception v4

    goto/16 :goto_17

    .line 1028
    .end local v69    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v70    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :catch_2e
    move-exception v57

    move-object/from16 v69, v70

    .end local v70    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v69    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    goto/16 :goto_45

    .line 997
    .end local v35    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v36    # "atlas":Lcom/android/server/AssetAtlasService;
    :catch_2f
    move-exception v57

    move-object/from16 v35, v36

    .end local v36    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v35    # "atlas":Lcom/android/server/AssetAtlasService;
    goto/16 :goto_44

    .line 974
    .end local v40    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v41    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :catch_30
    move-exception v57

    move-object/from16 v40, v41

    .end local v41    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v40    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_43

    .line 919
    .end local v82    # "serial":Lcom/android/server/SerialService;
    .restart local v83    # "serial":Lcom/android/server/SerialService;
    :catch_31
    move-exception v57

    move-object/from16 v82, v83

    .end local v83    # "serial":Lcom/android/server/SerialService;
    .restart local v82    # "serial":Lcom/android/server/SerialService;
    goto/16 :goto_42

    .line 884
    .end local v37    # "audioService":Lcom/android/server/audio/AudioService;
    .restart local v38    # "audioService":Lcom/android/server/audio/AudioService;
    :catch_32
    move-exception v57

    move-object/from16 v37, v38

    .end local v38    # "audioService":Lcom/android/server/audio/AudioService;
    .restart local v37    # "audioService":Lcom/android/server/audio/AudioService;
    goto/16 :goto_41

    .line 875
    .end local v96    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v97    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_33
    move-exception v57

    move-object/from16 v96, v97

    .end local v97    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v96    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    goto/16 :goto_40

    .line 846
    .end local v48    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v49    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :catch_34
    move-exception v57

    move-object/from16 v48, v49

    .end local v49    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v48    # "countryDetector":Lcom/android/server/CountryDetectorService;
    goto/16 :goto_3f

    .line 838
    .end local v65    # "location":Lcom/android/server/LocationManagerService;
    .restart local v66    # "location":Lcom/android/server/LocationManagerService;
    :catch_35
    move-exception v57

    move-object/from16 v65, v66

    .end local v66    # "location":Lcom/android/server/LocationManagerService;
    .restart local v65    # "location":Lcom/android/server/LocationManagerService;
    goto/16 :goto_3e

    .line 776
    .end local v43    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v44    # "connectivity":Lcom/android/server/ConnectivityService;
    :catch_36
    move-exception v57

    move-object/from16 v43, v44

    .end local v44    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v43    # "connectivity":Lcom/android/server/ConnectivityService;
    goto/16 :goto_3d

    .line 753
    :catch_37
    move-exception v57

    goto/16 :goto_3c

    .line 742
    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v74    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v77    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :catch_38
    move-exception v57

    move-object/from16 v6, v77

    .end local v77    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_3b

    .line 734
    .end local v75    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v76    # "networkScore":Lcom/android/server/NetworkScoreService;
    :catch_39
    move-exception v57

    move-object/from16 v75, v76

    .end local v76    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v75    # "networkScore":Lcom/android/server/NetworkScoreService;
    goto/16 :goto_3a

    .line 724
    .end local v90    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v91    # "tsms":Lcom/android/server/TextServicesManagerService;
    :catch_3a
    move-exception v57

    move-object/from16 v90, v91

    .end local v91    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v90    # "tsms":Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_39

    .line 694
    .end local v85    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v86    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catch_3b
    move-exception v57

    move-object/from16 v85, v86

    .end local v86    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v85    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    goto/16 :goto_38

    .line 674
    .end local v67    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v68    # "lockSettings":Lcom/android/server/LockSettingsService;
    :catch_3c
    move-exception v57

    move-object/from16 v67, v68

    .end local v68    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v67    # "lockSettings":Lcom/android/server/LockSettingsService;
    goto/16 :goto_37

    .line 665
    :catch_3d
    move-exception v4

    goto/16 :goto_b

    .line 614
    .end local v60    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v61    # "imm":Lcom/android/server/InputMethodManagerService;
    :catch_3e
    move-exception v57

    move-object/from16 v60, v61

    .end local v61    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v60    # "imm":Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_36

    .line 592
    .end local v35    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v48    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v60    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v65    # "location":Lcom/android/server/LocationManagerService;
    .end local v67    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v69    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v80    # "notification":Landroid/app/INotificationManager;
    .end local v85    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v90    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v96    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_3f
    move-exception v57

    goto/16 :goto_35

    .end local v88    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v89    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_40
    move-exception v57

    move-object/from16 v88, v89

    .end local v89    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v88    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    goto/16 :goto_35

    .end local v30    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v58    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v88    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v31    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v59    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v89    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_41
    move-exception v57

    move-object/from16 v58, v59

    .end local v59    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v58    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v88, v89

    .end local v89    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v88    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v30, v31

    .end local v31    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v30    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_35

    .end local v58    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v88    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v93    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v59    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v89    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v94    # "vibrator":Lcom/android/server/VibratorService;
    :catch_42
    move-exception v57

    move-object/from16 v58, v59

    .end local v59    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v58    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v88, v89

    .end local v89    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v88    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v93, v94

    .end local v94    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v93    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_35

    .end local v45    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v58    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v88    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v93    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v46    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v59    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v89    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v94    # "vibrator":Lcom/android/server/VibratorService;
    :catch_43
    move-exception v57

    move-object/from16 v58, v59

    .end local v59    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v58    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v45, v46

    .end local v46    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v45    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v88, v89

    .end local v89    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v88    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v93, v94

    .end local v94    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v93    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_35

    .end local v45    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v58    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v62    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v88    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v93    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v46    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v59    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v63    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v89    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v94    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v98    # "watchdog":Lcom/android/server/Watchdog;
    :catch_44
    move-exception v57

    move-object/from16 v58, v59

    .end local v59    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v58    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v45, v46

    .end local v46    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v45    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v88, v89

    .end local v89    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v88    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v62, v63

    .end local v63    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v62    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v93, v94

    .end local v94    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v93    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_35

    .line 523
    .end local v30    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v58    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v88    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v98    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v31    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v59    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v89    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_45
    move-exception v57

    move-object/from16 v30, v31

    .end local v31    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v30    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_34

    .end local v59    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v89    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v35    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v48    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v58    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v60    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v65    # "location":Lcom/android/server/LocationManagerService;
    .restart local v67    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v69    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v80    # "notification":Landroid/app/INotificationManager;
    .restart local v85    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v88    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v90    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v96    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :cond_32
    move-object/from16 v2, v74

    .end local v74    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_15

    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v74    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :cond_33
    move-object/from16 v2, v74

    .end local v74    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_2a
.end method

.method private static native startSensorService()V
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1337
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1338
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1341
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1342
    return-void
.end method


# virtual methods
.method supportSprintExtensionApi()Z
    .locals 7

    .prologue
    .line 326
    const/4 v3, 0x0

    .line 328
    .local v3, "ret":Z
    :try_start_0
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v0

    .line 329
    .local v0, "custManager":Lcom/htc/customization/HtcCustomizationManager;
    const-string v4, "Android_Kernel"

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    .line 331
    .local v1, "custReader":Lcom/htc/customization/HtcCustomizationReader;
    const-string v4, "support_extension_api"

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 332
    const-string v4, "SystemServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "support_extension_api = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    .end local v0    # "custManager":Lcom/htc/customization/HtcCustomizationManager;
    .end local v1    # "custReader":Lcom/htc/customization/HtcCustomizationReader;
    :goto_0
    return v3

    .line 333
    :catch_0
    move-exception v2

    .line 334
    .local v2, "e":Ljava/lang/Throwable;
    const-string v4, "SystemServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cannot read customization value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
