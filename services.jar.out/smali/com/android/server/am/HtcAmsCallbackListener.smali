.class public Lcom/android/server/am/HtcAmsCallbackListener;
.super Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
.source "HtcAmsCallbackListener.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method notifyVzwLogger(Landroid/content/pm/ApplicationInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 36
    :try_start_0
    iget v3, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    iget v3, p1, Landroid/content/pm/ApplicationInfo;->HTCFlags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 38
    .local v2, "isPreLoaded":Z
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.htc.intent.action.VZW_LOGGER"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 39
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "com.htc.vzwqualitylogger"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    const-string v4, "event_code"

    if-eqz v2, :cond_2

    const-string v3, "Q004"

    :goto_1
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    iget-object v3, p0, Lcom/android/server/am/HtcAmsCallbackListener;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 45
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "isPreLoaded":Z
    :goto_2
    return-void

    .line 36
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 40
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "isPreLoaded":Z
    :cond_2
    const-string v3, "Q006"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 42
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "isPreLoaded":Z
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "HtcAmsUtil"

    const-string v4, "Failed to notify VzwLogger"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public onCrashApplication(Lcom/android/server/am/HtcWrapProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    .locals 1
    .param p1, "process"    # Lcom/android/server/am/HtcWrapProcessRecord;
    .param p2, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;

    .prologue
    .line 22
    sget-boolean v0, Lcom/android/server/am/HtcAmsUtil;->hasVzwLogger:Z

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p1, Lcom/android/server/am/HtcWrapProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v0}, Lcom/android/server/am/HtcAmsCallbackListener;->notifyVzwLogger(Landroid/content/pm/ApplicationInfo;)V

    .line 25
    :cond_0
    return-void
.end method

.method public onMain(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    iput-object p2, p0, Lcom/android/server/am/HtcAmsCallbackListener;->mContext:Landroid/content/Context;

    .line 17
    return-void
.end method

.method public onRealAppNotResponding(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 1
    .param p1, "process"    # Lcom/android/server/am/HtcWrapProcessRecord;

    .prologue
    .line 29
    sget-boolean v0, Lcom/android/server/am/HtcAmsUtil;->hasVzwLogger:Z

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p1, Lcom/android/server/am/HtcWrapProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v0}, Lcom/android/server/am/HtcAmsCallbackListener;->notifyVzwLogger(Landroid/content/pm/ApplicationInfo;)V

    .line 32
    :cond_0
    return-void
.end method
