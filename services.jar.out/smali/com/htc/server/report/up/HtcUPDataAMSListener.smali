.class public Lcom/htc/server/report/up/HtcUPDataAMSListener;
.super Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
.source "HtcUPDataAMSListener.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HtcUPDataAMSListener"

.field private static sInit:Z

.field private static sSenseVersion:Ljava/lang/String;


# instance fields
.field private activityLaunchRecord:Lcom/htc/server/report/up/ActivityLaunchRecord;

.field private mContext:Landroid/content/Context;

.field private mService:Lcom/android/server/am/ActivityManagerService;

.field private mSystemUPWrapper:Lcom/htc/server/report/up/HtcSystemUPWrapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;-><init>()V

    return-void
.end method

.method private static isSenseFeatureROM()Z
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 210
    sget-boolean v5, Lcom/htc/server/report/up/HtcUPDataAMSListener;->sInit:Z

    if-nez v5, :cond_2

    .line 211
    const-class v5, Lcom/htc/server/report/up/HtcUPDataAMSListener;

    monitor-enter v5

    .line 212
    :try_start_0
    sget-boolean v6, Lcom/htc/server/report/up/HtcUPDataAMSListener;->sInit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_1

    .line 214
    :try_start_1
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v1

    .line 215
    .local v1, "manager":Lcom/htc/customization/HtcCustomizationManager;
    if-eqz v1, :cond_0

    .line 216
    const-string v6, "system"

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v1, v6, v7, v8}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v2

    .line 217
    .local v2, "reader":Lcom/htc/customization/HtcCustomizationReader;
    if-eqz v2, :cond_0

    .line 218
    const-string v6, "sense_version"

    const/4 v7, 0x0

    invoke-interface {v2, v6, v7}, Lcom/htc/customization/HtcCustomizationReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/htc/server/report/up/HtcUPDataAMSListener;->sSenseVersion:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    .end local v2    # "reader":Lcom/htc/customization/HtcCustomizationReader;
    :cond_0
    :goto_0
    const/4 v6, 0x1

    :try_start_2
    sput-boolean v6, Lcom/htc/server/report/up/HtcUPDataAMSListener;->sInit:Z

    .line 226
    :cond_1
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 228
    :cond_2
    sget-object v5, Lcom/htc/server/report/up/HtcUPDataAMSListener;->sSenseVersion:Ljava/lang/String;

    if-eqz v5, :cond_3

    :goto_1
    return v3

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v6, "HtcUPDataAMSListener"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "version parse error"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", sense: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/htc/server/report/up/HtcUPDataAMSListener;->sSenseVersion:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 226
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    :cond_3
    move v3, v4

    .line 228
    goto :goto_1
.end method

.method private sendMarketAppIssueData(Lcom/android/server/am/HtcWrapProcessRecord;Ljava/lang/String;)V
    .locals 11
    .param p1, "process"    # Lcom/android/server/am/HtcWrapProcessRecord;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 173
    invoke-static {}, Lcom/htc/server/report/error/ReportConfig;->isShippingRom()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 181
    if-eqz p1, :cond_0

    iget-object v4, p1, Lcom/android/server/am/HtcWrapProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_0

    iget v4, p1, Lcom/android/server/am/HtcWrapProcessRecord;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    if-eq v4, v5, :cond_0

    .line 185
    iget-object v4, p0, Lcom/htc/server/report/up/HtcUPDataAMSListener;->mContext:Landroid/content/Context;

    iget-object v5, p1, Lcom/android/server/am/HtcWrapProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {v4, v5}, Lcom/android/server/am/HtcErrorReportManager;->isHtcApp(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 189
    iget-object v4, p1, Lcom/android/server/am/HtcWrapProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 190
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 192
    .local v3, "pm":Landroid/content/pm/IPackageManager;
    const/4 v4, 0x0

    :try_start_0
    iget v5, p1, Lcom/android/server/am/HtcWrapProcessRecord;->userId:I

    invoke-interface {v3, v1, v4, v5}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 195
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_0

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 196
    const-string v4, "UTD_BI"

    const-string v5, "C0007"

    const/4 v6, 0x0

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "package"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "version"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "type"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    const/4 v9, 0x1

    iget-object v10, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    aput-object p2, v8, v9

    invoke-static {v4, v5, v6, v7, v8}, Lcom/htc/server/report/up/HtcSystemUPLogger;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 198
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "HtcUPDataAMSListener"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fail to get info from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public onAppDiedLocked(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 3
    .param p1, "process"    # Lcom/android/server/am/HtcWrapProcessRecord;

    .prologue
    .line 79
    invoke-static {}, Lcom/htc/server/report/up/HtcUPDataAMSListener;->isSenseFeatureROM()Z

    move-result v1

    if-nez v1, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/server/report/up/HtcUPDataAMSListener;->activityLaunchRecord:Lcom/htc/server/report/up/ActivityLaunchRecord;

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/htc/server/report/up/HtcUPDataAMSListener;->activityLaunchRecord:Lcom/htc/server/report/up/ActivityLaunchRecord;

    iget v2, p1, Lcom/android/server/am/HtcWrapProcessRecord;->pid:I

    invoke-virtual {v1, v2}, Lcom/htc/server/report/up/ActivityLaunchRecord;->noteAppDied(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HtcUPDataAMSListener"

    const-string v2, "[onAppDiedLocked] Exception occurs."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onCrashApplication(Lcom/android/server/am/HtcWrapProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    .locals 5
    .param p1, "process"    # Lcom/android/server/am/HtcWrapProcessRecord;
    .param p2, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;

    .prologue
    .line 132
    invoke-static {}, Lcom/htc/server/report/up/HtcUPDataAMSListener;->isSenseFeatureROM()Z

    move-result v3

    if-nez v3, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    :try_start_0
    const-string v2, "JavaCrash"

    .line 138
    .local v2, "type":Ljava/lang/String;
    if-eqz p2, :cond_2

    const-string v3, "Native crash"

    iget-object v4, p2, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 139
    const-string v2, "NativeCrash"

    .line 140
    :cond_2
    invoke-direct {p0, p1, v2}, Lcom/htc/server/report/up/HtcUPDataAMSListener;->sendMarketAppIssueData(Lcom/android/server/am/HtcWrapProcessRecord;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 147
    .end local v2    # "type":Ljava/lang/String;
    :goto_1
    :try_start_1
    invoke-static {}, Lcom/htc/server/report/error/HtcErrorReportUtils;->isDashboardBuild()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p1, :cond_0

    iget v3, p1, Lcom/android/server/am/HtcWrapProcessRecord;->userId:I

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/htc/server/report/up/HtcUPDataAMSListener;->mContext:Landroid/content/Context;

    iget-object v4, p1, Lcom/android/server/am/HtcWrapProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {v3, v4}, Lcom/android/server/am/HtcErrorReportManager;->isHtcApp(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 151
    const/4 v1, 0x0

    .line 152
    .local v1, "tag":Ljava/lang/String;
    const-string v3, "com.htc.launcher"

    iget-object v4, p1, Lcom/android/server/am/HtcWrapProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 153
    const-string v1, "HTC_HOME_RESTART"

    .line 159
    :goto_2
    invoke-static {v1}, Lcom/htc/server/report/up/HtcSystemUPLogger;->addErrorCount(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 161
    .end local v1    # "tag":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "HtcUPDataAMSListener"

    const-string v4, "[onCrashApplication] Exception occurs."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 141
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 142
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v3, "HtcUPDataAMSListener"

    const-string v4, "[onCrashApplication] Exception occurs."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 154
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "tag":Ljava/lang/String;
    :cond_3
    :try_start_2
    const-string v3, "Native crash"

    iget-object v4, p2, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 155
    const-string v1, "HTC_APP_NATIVE_CRASH"

    goto :goto_2

    .line 157
    :cond_4
    const-string v1, "HTC_APP_CRASH"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method

.method public onHandleActivityPaused(Lcom/android/server/am/HtcWrapActivityRecord;)V
    .locals 3
    .param p1, "activity"    # Lcom/android/server/am/HtcWrapActivityRecord;

    .prologue
    .line 66
    invoke-static {}, Lcom/htc/server/report/up/HtcUPDataAMSListener;->isSenseFeatureROM()Z

    move-result v1

    if-nez v1, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/server/report/up/HtcUPDataAMSListener;->activityLaunchRecord:Lcom/htc/server/report/up/ActivityLaunchRecord;

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/htc/server/report/up/HtcUPDataAMSListener;->activityLaunchRecord:Lcom/htc/server/report/up/ActivityLaunchRecord;

    invoke-virtual {v1, p1}, Lcom/htc/server/report/up/ActivityLaunchRecord;->onHandleActivityPaused(Lcom/android/server/am/HtcWrapActivityRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HtcUPDataAMSListener"

    const-string v2, "[onHandleActivityPaused] Exception occurs."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onHandleActivityResumed(Lcom/android/server/am/HtcWrapActivityRecord;)V
    .locals 3
    .param p1, "activity"    # Lcom/android/server/am/HtcWrapActivityRecord;

    .prologue
    .line 43
    invoke-static {}, Lcom/htc/server/report/up/HtcUPDataAMSListener;->isSenseFeatureROM()Z

    move-result v1

    if-nez v1, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/server/report/up/HtcUPDataAMSListener;->activityLaunchRecord:Lcom/htc/server/report/up/ActivityLaunchRecord;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/htc/server/report/up/HtcUPDataAMSListener;->mSystemUPWrapper:Lcom/htc/server/report/up/HtcSystemUPWrapper;

    if-nez v1, :cond_2

    .line 51
    const-string v1, "HtcUPDataAMSListener"

    const-string v2, "Lazy initialization for HtcSystemUPManager"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-static {}, Lcom/htc/server/report/up/HtcSystemUPWrapper;->getInstance()Lcom/htc/server/report/up/HtcSystemUPWrapper;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/server/report/up/HtcUPDataAMSListener;->mSystemUPWrapper:Lcom/htc/server/report/up/HtcSystemUPWrapper;

    .line 53
    iget-object v1, p0, Lcom/htc/server/report/up/HtcUPDataAMSListener;->mSystemUPWrapper:Lcom/htc/server/report/up/HtcSystemUPWrapper;

    iget-object v2, p0, Lcom/htc/server/report/up/HtcUPDataAMSListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/htc/server/report/up/HtcSystemUPWrapper;->init(Landroid/content/Context;)V

    .line 54
    new-instance v1, Lcom/htc/server/report/up/ActivityLaunchRecord;

    invoke-direct {v1}, Lcom/htc/server/report/up/ActivityLaunchRecord;-><init>()V

    iput-object v1, p0, Lcom/htc/server/report/up/HtcUPDataAMSListener;->activityLaunchRecord:Lcom/htc/server/report/up/ActivityLaunchRecord;

    .line 57
    :cond_2
    iget-object v1, p0, Lcom/htc/server/report/up/HtcUPDataAMSListener;->activityLaunchRecord:Lcom/htc/server/report/up/ActivityLaunchRecord;

    if-eqz v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/htc/server/report/up/HtcUPDataAMSListener;->activityLaunchRecord:Lcom/htc/server/report/up/ActivityLaunchRecord;

    invoke-virtual {v1, p1}, Lcom/htc/server/report/up/ActivityLaunchRecord;->onHandleActivityResumed(Lcom/android/server/am/HtcWrapActivityRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HtcUPDataAMSListener"

    const-string v2, "[onHandleActivityResumed] Exception occurs."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onMain(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-static {}, Lcom/htc/server/report/up/HtcUPDataAMSListener;->isSenseFeatureROM()Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    :goto_0
    return-void

    .line 37
    :cond_0
    iput-object p2, p0, Lcom/htc/server/report/up/HtcUPDataAMSListener;->mContext:Landroid/content/Context;

    .line 38
    iput-object p1, p0, Lcom/htc/server/report/up/HtcUPDataAMSListener;->mService:Lcom/android/server/am/ActivityManagerService;

    goto :goto_0
.end method

.method public onRealAppNotResponding(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 3
    .param p1, "process"    # Lcom/android/server/am/HtcWrapProcessRecord;

    .prologue
    .line 105
    invoke-static {}, Lcom/htc/server/report/up/HtcUPDataAMSListener;->isSenseFeatureROM()Z

    move-result v1

    if-nez v1, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    :try_start_0
    const-string v1, "ANR"

    invoke-direct {p0, p1, v1}, Lcom/htc/server/report/up/HtcUPDataAMSListener;->sendMarketAppIssueData(Lcom/android/server/am/HtcWrapProcessRecord;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 117
    :goto_1
    :try_start_1
    invoke-static {}, Lcom/htc/server/report/error/HtcErrorReportUtils;->isDashboardBuild()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    iget v1, p1, Lcom/android/server/am/HtcWrapProcessRecord;->userId:I

    if-nez v1, :cond_0

    iget v1, p1, Lcom/android/server/am/HtcWrapProcessRecord;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/server/report/up/HtcUPDataAMSListener;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/android/server/am/HtcWrapProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {v1, v2}, Lcom/android/server/am/HtcErrorReportManager;->isHtcApp(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    const-string v1, "HTC_APP_ANR"

    invoke-static {v1}, Lcom/htc/server/report/up/HtcSystemUPLogger;->addErrorCount(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HtcUPDataAMSListener"

    const-string v2, "[onRealAppNotResponding] Exception occurs."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 111
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 112
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "HtcUPDataAMSListener"

    const-string v2, "[onRealAppNotResponding] Exception occurs."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onShutdown()V
    .locals 3

    .prologue
    .line 92
    invoke-static {}, Lcom/htc/server/report/up/HtcUPDataAMSListener;->isSenseFeatureROM()Z

    move-result v1

    if-nez v1, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/server/report/up/HtcUPDataAMSListener;->mSystemUPWrapper:Lcom/htc/server/report/up/HtcSystemUPWrapper;

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/htc/server/report/up/HtcUPDataAMSListener;->mSystemUPWrapper:Lcom/htc/server/report/up/HtcSystemUPWrapper;

    invoke-virtual {v1}, Lcom/htc/server/report/up/HtcSystemUPWrapper;->onShutdown()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HtcUPDataAMSListener"

    const-string v2, "[onShutdown] Exception occurs."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
