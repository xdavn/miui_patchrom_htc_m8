.class public Lcom/htc/server/report/ub/HtcDeviceInfoAmsListener;
.super Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
.source "HtcDeviceInfoAmsListener.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "HtcDeviceInfoManager"

.field private static sInit:Z

.field private static sSenseVersion:Ljava/lang/String;


# instance fields
.field private mActivityLaunchRecord:Lcom/htc/server/report/ub/ActivityLaunchRecord;

.field private mContext:Landroid/content/Context;

.field private mDIMWrapper:Lcom/htc/server/report/ub/HtcDeviceInfoManagerWrapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;-><init>()V

    return-void
.end method

.method private static isSenseFeatureROM()Z
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 88
    sget-boolean v5, Lcom/htc/server/report/ub/HtcDeviceInfoAmsListener;->sInit:Z

    if-nez v5, :cond_2

    .line 89
    const-class v5, Lcom/htc/server/report/ub/HtcDeviceInfoAmsListener;

    monitor-enter v5

    .line 90
    :try_start_0
    sget-boolean v6, Lcom/htc/server/report/ub/HtcDeviceInfoAmsListener;->sInit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_1

    .line 92
    :try_start_1
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v1

    .line 93
    .local v1, "manager":Lcom/htc/customization/HtcCustomizationManager;
    if-eqz v1, :cond_0

    .line 94
    const-string v6, "system"

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v1, v6, v7, v8}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v2

    .line 95
    .local v2, "reader":Lcom/htc/customization/HtcCustomizationReader;
    if-eqz v2, :cond_0

    .line 96
    const-string v6, "sense_version"

    const/4 v7, 0x0

    invoke-interface {v2, v6, v7}, Lcom/htc/customization/HtcCustomizationReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/htc/server/report/ub/HtcDeviceInfoAmsListener;->sSenseVersion:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    .end local v2    # "reader":Lcom/htc/customization/HtcCustomizationReader;
    :cond_0
    :goto_0
    const/4 v6, 0x1

    :try_start_2
    sput-boolean v6, Lcom/htc/server/report/ub/HtcDeviceInfoAmsListener;->sInit:Z

    .line 104
    :cond_1
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 106
    :cond_2
    sget-object v5, Lcom/htc/server/report/ub/HtcDeviceInfoAmsListener;->sSenseVersion:Ljava/lang/String;

    if-eqz v5, :cond_3

    :goto_1
    return v3

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v6, "HtcDeviceInfoManager"

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

    sget-object v8, Lcom/htc/server/report/ub/HtcDeviceInfoAmsListener;->sSenseVersion:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 104
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    :cond_3
    move v3, v4

    .line 106
    goto :goto_1
.end method


# virtual methods
.method public onAppDiedLocked(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 3
    .param p1, "process"    # Lcom/android/server/am/HtcWrapProcessRecord;

    .prologue
    .line 74
    :try_start_0
    iget-object v1, p0, Lcom/htc/server/report/ub/HtcDeviceInfoAmsListener;->mActivityLaunchRecord:Lcom/htc/server/report/ub/ActivityLaunchRecord;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/htc/server/report/ub/HtcDeviceInfoAmsListener;->mActivityLaunchRecord:Lcom/htc/server/report/ub/ActivityLaunchRecord;

    iget v2, p1, Lcom/android/server/am/HtcWrapProcessRecord;->pid:I

    invoke-virtual {v1, v2}, Lcom/htc/server/report/ub/ActivityLaunchRecord;->noteAppDied(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HtcDeviceInfoManager"

    const-string v2, "Failed in onAppDiedLocked"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onFinishBooting()V
    .locals 3

    .prologue
    .line 27
    :try_start_0
    iget-object v1, p0, Lcom/htc/server/report/ub/HtcDeviceInfoAmsListener;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/htc/server/report/ub/HtcDeviceInfoAmsListener;->isSenseFeatureROM()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/app/ReportConfig;->isShippingRom()Z

    move-result v1

    if-nez v1, :cond_0

    .line 28
    new-instance v1, Lcom/htc/server/report/ub/HtcDeviceInfoManagerWrapper;

    iget-object v2, p0, Lcom/htc/server/report/ub/HtcDeviceInfoAmsListener;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/htc/server/report/ub/HtcDeviceInfoManagerWrapper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/server/report/ub/HtcDeviceInfoAmsListener;->mDIMWrapper:Lcom/htc/server/report/ub/HtcDeviceInfoManagerWrapper;

    .line 29
    new-instance v1, Lcom/htc/server/report/ub/ActivityLaunchRecord;

    iget-object v2, p0, Lcom/htc/server/report/ub/HtcDeviceInfoAmsListener;->mDIMWrapper:Lcom/htc/server/report/ub/HtcDeviceInfoManagerWrapper;

    invoke-direct {v1, v2}, Lcom/htc/server/report/ub/ActivityLaunchRecord;-><init>(Lcom/htc/server/report/ub/HtcDeviceInfoManagerWrapper;)V

    iput-object v1, p0, Lcom/htc/server/report/ub/HtcDeviceInfoAmsListener;->mActivityLaunchRecord:Lcom/htc/server/report/ub/ActivityLaunchRecord;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/htc/server/report/ub/HtcDeviceInfoAmsListener;->mDIMWrapper:Lcom/htc/server/report/ub/HtcDeviceInfoManagerWrapper;

    if-eqz v1, :cond_1

    .line 37
    iget-object v1, p0, Lcom/htc/server/report/ub/HtcDeviceInfoAmsListener;->mDIMWrapper:Lcom/htc/server/report/ub/HtcDeviceInfoManagerWrapper;

    invoke-virtual {v1}, Lcom/htc/server/report/ub/HtcDeviceInfoManagerWrapper;->init()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 41
    :cond_1
    :goto_1
    return-void

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HtcDeviceInfoManager"

    const-string v2, "Failed in onFinishBooting"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 38
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 39
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "HtcDeviceInfoManager"

    const-string v2, "Failed in onFinishBooting"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onHandleActivityPaused(Lcom/android/server/am/HtcWrapActivityRecord;)V
    .locals 3
    .param p1, "activity"    # Lcom/android/server/am/HtcWrapActivityRecord;

    .prologue
    .line 65
    :try_start_0
    iget-object v1, p0, Lcom/htc/server/report/ub/HtcDeviceInfoAmsListener;->mActivityLaunchRecord:Lcom/htc/server/report/ub/ActivityLaunchRecord;

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/htc/server/report/ub/HtcDeviceInfoAmsListener;->mActivityLaunchRecord:Lcom/htc/server/report/ub/ActivityLaunchRecord;

    invoke-virtual {v1, p1}, Lcom/htc/server/report/ub/ActivityLaunchRecord;->onHandleActivityPaused(Lcom/android/server/am/HtcWrapActivityRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HtcDeviceInfoManager"

    const-string v2, "Failed in onHandleActivityPaused"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onHandleActivityResumed(Lcom/android/server/am/HtcWrapActivityRecord;)V
    .locals 3
    .param p1, "activity"    # Lcom/android/server/am/HtcWrapActivityRecord;

    .prologue
    .line 56
    :try_start_0
    iget-object v1, p0, Lcom/htc/server/report/ub/HtcDeviceInfoAmsListener;->mActivityLaunchRecord:Lcom/htc/server/report/ub/ActivityLaunchRecord;

    if-eqz v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/htc/server/report/ub/HtcDeviceInfoAmsListener;->mActivityLaunchRecord:Lcom/htc/server/report/ub/ActivityLaunchRecord;

    invoke-virtual {v1, p1}, Lcom/htc/server/report/ub/ActivityLaunchRecord;->onHandleActivityResumed(Lcom/android/server/am/HtcWrapActivityRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HtcDeviceInfoManager"

    const-string v2, "Failed in onHandleActivityResumed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onMain(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    iput-object p2, p0, Lcom/htc/server/report/ub/HtcDeviceInfoAmsListener;->mContext:Landroid/content/Context;

    .line 22
    return-void
.end method

.method public onShutdown()V
    .locals 3

    .prologue
    .line 46
    :try_start_0
    iget-object v1, p0, Lcom/htc/server/report/ub/HtcDeviceInfoAmsListener;->mDIMWrapper:Lcom/htc/server/report/ub/HtcDeviceInfoManagerWrapper;

    if-eqz v1, :cond_0

    .line 47
    iget-object v1, p0, Lcom/htc/server/report/ub/HtcDeviceInfoAmsListener;->mDIMWrapper:Lcom/htc/server/report/ub/HtcDeviceInfoManagerWrapper;

    invoke-virtual {v1}, Lcom/htc/server/report/ub/HtcDeviceInfoManagerWrapper;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HtcDeviceInfoManager"

    const-string v2, "Failed in onShutdown"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
