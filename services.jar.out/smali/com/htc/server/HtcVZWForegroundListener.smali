.class public Lcom/htc/server/HtcVZWForegroundListener;
.super Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
.source "HtcVZWForegroundListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/server/HtcVZWForegroundListener$Report;
    }
.end annotation


# static fields
.field private static final EVENT_CHECK_FILTER:I = 0x3

.field private static final EVENT_DELIVER_REPORT:I = 0x4

.field private static final EVENT_INIT:I = 0x1

.field private static final EVENT_REPORT_UPDATE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "HtcVzwFgListener"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mReportHandler:Landroid/os/Handler;

.field private mReportThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;-><init>()V

    .line 49
    return-void
.end method

.method static synthetic access$300(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-static {p0}, Lcom/htc/server/HtcVZWForegroundListener;->logException(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-static {p0, p1, p2}, Lcom/htc/server/HtcVZWForegroundListener;->sendIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private createReportHandler(Landroid/content/Context;Landroid/os/Looper;)Landroid/os/Handler;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 63
    move-object v0, p2

    .line 64
    .local v0, "l":Landroid/os/Looper;
    if-nez v0, :cond_0

    .line 65
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 67
    :cond_0
    new-instance v1, Lcom/htc/server/HtcVZWForegroundListener$1;

    invoke-direct {v1, p0, v0}, Lcom/htc/server/HtcVZWForegroundListener$1;-><init>(Lcom/htc/server/HtcVZWForegroundListener;Landroid/os/Looper;)V

    .line 130
    .local v1, "result":Landroid/os/Handler;
    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 131
    return-object v1
.end method

.method private static final developmentDebugOn()Z
    .locals 1

    .prologue
    .line 155
    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->DEBUG_AM:Z

    return v0
.end method

.method private static final logException(Ljava/lang/String;)V
    .locals 1
    .param p0, "error"    # Ljava/lang/String;

    .prologue
    .line 149
    invoke-static {}, Lcom/htc/server/HtcVZWForegroundListener;->developmentDebugOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    const-string v0, "HtcVzwFgListener"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_0
    return-void
.end method

.method private static sendIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "componentName"    # Ljava/lang/String;

    .prologue
    .line 135
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 136
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.htc.intent.action.FOREGROUND_AP_INFO"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    const-string v2, "foregroundApp"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    const-string v2, "foregroundAppCName"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    const-string v2, "com.htc.mobiledata"

    const-string v3, "com.htc.mobiledata.services.SRLteDialogService$ForegroundAPInfoBroadcastReceiver"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notify "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/server/HtcVZWForegroundListener;->logException(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onHandleActivityResumed(Lcom/android/server/am/HtcWrapActivityRecord;)V
    .locals 5
    .param p1, "activity"    # Lcom/android/server/am/HtcWrapActivityRecord;

    .prologue
    const/4 v4, 0x0

    .line 26
    iget-object v2, p0, Lcom/htc/server/HtcVZWForegroundListener;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_2

    if-eqz p1, :cond_2

    .line 27
    iget-object v2, p0, Lcom/htc/server/HtcVZWForegroundListener;->mReportThread:Landroid/os/HandlerThread;

    if-nez v2, :cond_0

    .line 29
    :try_start_0
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "HtcVzwFgListener"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/htc/server/HtcVZWForegroundListener;->mReportThread:Landroid/os/HandlerThread;

    .line 30
    iget-object v2, p0, Lcom/htc/server/HtcVZWForegroundListener;->mReportThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/htc/server/HtcVZWForegroundListener;->mReportThread:Landroid/os/HandlerThread;

    if-eqz v2, :cond_2

    .line 36
    iget-object v2, p0, Lcom/htc/server/HtcVZWForegroundListener;->mReportHandler:Landroid/os/Handler;

    if-nez v2, :cond_1

    .line 37
    iget-object v2, p0, Lcom/htc/server/HtcVZWForegroundListener;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/server/HtcVZWForegroundListener;->mReportThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/htc/server/HtcVZWForegroundListener;->createReportHandler(Landroid/content/Context;Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/server/HtcVZWForegroundListener;->mReportHandler:Landroid/os/Handler;

    .line 39
    :cond_1
    new-instance v1, Lcom/htc/server/HtcVZWForegroundListener$Report;

    invoke-direct {v1, v4}, Lcom/htc/server/HtcVZWForegroundListener$Report;-><init>(Lcom/htc/server/HtcVZWForegroundListener$1;)V

    .line 40
    .local v1, "report":Lcom/htc/server/HtcVZWForegroundListener$Report;
    iget-object v2, p1, Lcom/android/server/am/HtcWrapActivityRecord;->shortComponentName:Ljava/lang/String;

    # setter for: Lcom/htc/server/HtcVZWForegroundListener$Report;->componentName:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/htc/server/HtcVZWForegroundListener$Report;->access$102(Lcom/htc/server/HtcVZWForegroundListener$Report;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    iget-object v2, p1, Lcom/android/server/am/HtcWrapActivityRecord;->packageName:Ljava/lang/String;

    # setter for: Lcom/htc/server/HtcVZWForegroundListener$Report;->packageName:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/htc/server/HtcVZWForegroundListener$Report;->access$202(Lcom/htc/server/HtcVZWForegroundListener$Report;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    :try_start_1
    iget-object v2, p0, Lcom/htc/server/HtcVZWForegroundListener;->mReportHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/htc/server/HtcVZWForegroundListener;->mReportHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 47
    .end local v1    # "report":Lcom/htc/server/HtcVZWForegroundListener$Report;
    :cond_2
    :goto_1
    return-void

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, "ex":Ljava/lang/Throwable;
    iput-object v4, p0, Lcom/htc/server/HtcVZWForegroundListener;->mReportThread:Landroid/os/HandlerThread;

    goto :goto_0

    .line 44
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v1    # "report":Lcom/htc/server/HtcVZWForegroundListener$Report;
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public onMain(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    iput-object p2, p0, Lcom/htc/server/HtcVZWForegroundListener;->mContext:Landroid/content/Context;

    .line 22
    return-void
.end method
