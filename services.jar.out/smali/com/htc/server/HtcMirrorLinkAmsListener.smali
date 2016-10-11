.class public Lcom/htc/server/HtcMirrorLinkAmsListener;
.super Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
.source "HtcMirrorLinkAmsListener.java"


# static fields
.field private static final ACTION_HTC_MIRRORLINK:Ljava/lang/String; = "com.htc.intent.action.TOP_APP_CHANGED"

.field private static final EXTRA_TOP_APP_PACKAGE_NAME:Ljava/lang/String; = "TopAppPackageName"

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.htc.mirrorlinkserver"

.field private static final PERMISSION:Ljava/lang/String; = "com.htc.permission.APP_DEFAULT"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsAppExist:Z

.field private mIsSendingTopAppEnable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/htc/server/HtcMirrorLinkAmsListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/server/HtcMirrorLinkAmsListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;-><init>()V

    .line 25
    iput-boolean v0, p0, Lcom/htc/server/HtcMirrorLinkAmsListener;->mIsAppExist:Z

    .line 26
    iput-boolean v0, p0, Lcom/htc/server/HtcMirrorLinkAmsListener;->mIsSendingTopAppEnable:Z

    return-void
.end method

.method private isHtcApp(Landroid/content/pm/IPackageManager;)Z
    .locals 6
    .param p1, "packageManager"    # Landroid/content/pm/IPackageManager;

    .prologue
    const/4 v2, 0x0

    .line 135
    const/4 v1, 0x0

    .line 137
    .local v1, "isPermissionGranted":Z
    :try_start_0
    const-string v3, "com.htc.permission.APP_DEFAULT"

    const-string v4, "com.htc.mirrorlinkserver"

    const/4 v5, 0x0

    invoke-interface {p1, v3, v4, v5}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x1

    .line 141
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 137
    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private isProcessDataValid(Lcom/android/server/am/HtcWrapProcessRecord;)Z
    .locals 1
    .param p1, "process"    # Lcom/android/server/am/HtcWrapProcessRecord;

    .prologue
    .line 129
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/am/HtcWrapProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/HtcWrapProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 130
    const/4 v0, 0x1

    .line 131
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onAppDiedLocked(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 4
    .param p1, "process"    # Lcom/android/server/am/HtcWrapProcessRecord;

    .prologue
    .line 94
    iget-boolean v1, p0, Lcom/htc/server/HtcMirrorLinkAmsListener;->mIsAppExist:Z

    if-nez v1, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/server/HtcMirrorLinkAmsListener;->isProcessDataValid(Lcom/android/server/am/HtcWrapProcessRecord;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 98
    sget-object v1, Lcom/htc/server/HtcMirrorLinkAmsListener;->TAG:Ljava/lang/String;

    const-string v2, "onAppDiedLocked, process data is invalid"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 102
    :cond_2
    iget-object v1, p1, Lcom/android/server/am/HtcWrapProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 103
    .local v0, "packageName":Ljava/lang/String;
    const-string v1, "com.htc.mirrorlinkserver"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/server/HtcMirrorLinkAmsListener;->mIsSendingTopAppEnable:Z

    .line 105
    sget-object v1, Lcom/htc/server/HtcMirrorLinkAmsListener;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAppDiedLocked : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/server/HtcMirrorLinkAmsListener;->mIsSendingTopAppEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onFinishBooting()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 39
    iput-boolean v3, p0, Lcom/htc/server/HtcMirrorLinkAmsListener;->mIsAppExist:Z

    .line 41
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 42
    .local v2, "packageManager":Landroid/content/pm/IPackageManager;
    if-nez v2, :cond_0

    .line 43
    sget-object v3, Lcom/htc/server/HtcMirrorLinkAmsListener;->TAG:Ljava/lang/String;

    const-string v4, "onFinishBooting, failed to get PackageManager"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .end local v2    # "packageManager":Landroid/content/pm/IPackageManager;
    :goto_0
    return-void

    .line 47
    .restart local v2    # "packageManager":Landroid/content/pm/IPackageManager;
    :cond_0
    const-string v3, "com.htc.mirrorlinkserver"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 48
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_1

    invoke-direct {p0, v2}, Lcom/htc/server/HtcMirrorLinkAmsListener;->isHtcApp(Landroid/content/pm/IPackageManager;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 49
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/server/HtcMirrorLinkAmsListener;->mIsAppExist:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 53
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "packageManager":Landroid/content/pm/IPackageManager;
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/htc/server/HtcMirrorLinkAmsListener;->TAG:Ljava/lang/String;

    const-string v4, "Failed to get AppplicationInfo of com.htc.mirrorlinkserver"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 52
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "packageManager":Landroid/content/pm/IPackageManager;
    :cond_1
    :try_start_1
    sget-object v3, Lcom/htc/server/HtcMirrorLinkAmsListener;->TAG:Ljava/lang/String;

    const-string v4, "MirrorLinkServer not found"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onHandleTopAppChanged(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 4
    .param p1, "process"    # Lcom/android/server/am/HtcWrapProcessRecord;

    .prologue
    .line 111
    iget-boolean v1, p0, Lcom/htc/server/HtcMirrorLinkAmsListener;->mIsAppExist:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/server/HtcMirrorLinkAmsListener;->mIsSendingTopAppEnable:Z

    if-eqz v1, :cond_0

    .line 112
    invoke-direct {p0, p1}, Lcom/htc/server/HtcMirrorLinkAmsListener;->isProcessDataValid(Lcom/android/server/am/HtcWrapProcessRecord;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 113
    sget-object v1, Lcom/htc/server/HtcMirrorLinkAmsListener;->TAG:Ljava/lang/String;

    const-string v2, "onHandleTopAppChanged, process data is invalid"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    iget-object v1, p0, Lcom/htc/server/HtcMirrorLinkAmsListener;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 118
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.intent.action.TOP_APP_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 119
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.htc.mirrorlinkserver"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 121
    const-string v1, "TopAppPackageName"

    iget-object v2, p1, Lcom/android/server/am/HtcWrapProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    iget-object v1, p0, Lcom/htc/server/HtcMirrorLinkAmsListener;->mContext:Landroid/content/Context;

    const-string v2, "com.htc.permission.APP_DEFAULT"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 123
    sget-object v1, Lcom/htc/server/HtcMirrorLinkAmsListener;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onHandleTopAppChanged, sendBroadcast : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/HtcWrapProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onMain(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    if-nez p2, :cond_0

    .line 31
    sget-object v0, Lcom/htc/server/HtcMirrorLinkAmsListener;->TAG:Ljava/lang/String;

    const-string v1, "onMain, context is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :goto_0
    return-void

    .line 34
    :cond_0
    iput-object p2, p0, Lcom/htc/server/HtcMirrorLinkAmsListener;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public onRemoveProcessLocked(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 4
    .param p1, "process"    # Lcom/android/server/am/HtcWrapProcessRecord;

    .prologue
    .line 77
    iget-boolean v1, p0, Lcom/htc/server/HtcMirrorLinkAmsListener;->mIsAppExist:Z

    if-nez v1, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/server/HtcMirrorLinkAmsListener;->isProcessDataValid(Lcom/android/server/am/HtcWrapProcessRecord;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 81
    sget-object v1, Lcom/htc/server/HtcMirrorLinkAmsListener;->TAG:Ljava/lang/String;

    const-string v2, "onRemoveProcessLocked, process data is invalid"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 85
    :cond_2
    iget-object v1, p1, Lcom/android/server/am/HtcWrapProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 86
    .local v0, "packageName":Ljava/lang/String;
    const-string v1, "com.htc.mirrorlinkserver"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/server/HtcMirrorLinkAmsListener;->mIsSendingTopAppEnable:Z

    .line 88
    sget-object v1, Lcom/htc/server/HtcMirrorLinkAmsListener;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRemoveProcessLocked : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/server/HtcMirrorLinkAmsListener;->mIsSendingTopAppEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onStartProcessLocked(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 4
    .param p1, "process"    # Lcom/android/server/am/HtcWrapProcessRecord;

    .prologue
    .line 60
    iget-boolean v1, p0, Lcom/htc/server/HtcMirrorLinkAmsListener;->mIsAppExist:Z

    if-nez v1, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/server/HtcMirrorLinkAmsListener;->isProcessDataValid(Lcom/android/server/am/HtcWrapProcessRecord;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 64
    sget-object v1, Lcom/htc/server/HtcMirrorLinkAmsListener;->TAG:Ljava/lang/String;

    const-string v2, "onStartProcessLocked, process data is invalid"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 68
    :cond_2
    iget-object v1, p1, Lcom/android/server/am/HtcWrapProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 69
    .local v0, "packageName":Ljava/lang/String;
    const-string v1, "com.htc.mirrorlinkserver"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/server/HtcMirrorLinkAmsListener;->mIsSendingTopAppEnable:Z

    .line 71
    sget-object v1, Lcom/htc/server/HtcMirrorLinkAmsListener;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStartProcessLocked : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/server/HtcMirrorLinkAmsListener;->mIsSendingTopAppEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
