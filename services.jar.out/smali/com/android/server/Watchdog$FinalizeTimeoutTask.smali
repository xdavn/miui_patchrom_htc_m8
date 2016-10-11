.class final Lcom/android/server/Watchdog$FinalizeTimeoutTask;
.super Ljava/lang/Thread;
.source "Watchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/Watchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FinalizeTimeoutTask"
.end annotation


# static fields
.field static final ACTION_WRITE_TRACEPOINT:Ljava/lang/String; = "com.htc.intent.action.WRITE_TRACEPOINT"


# instance fields
.field mContext:Landroid/content/Context;

.field final mDumping:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final mPid:I


# direct methods
.method constructor <init>(Landroid/content/Context;ILjava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pid"    # I
    .param p3, "dumping"    # Ljava/util/concurrent/atomic/AtomicBoolean;

    .prologue
    .line 619
    const-string v0, "FinalizeTimeout"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 620
    iput-object p1, p0, Lcom/android/server/Watchdog$FinalizeTimeoutTask;->mContext:Landroid/content/Context;

    .line 621
    iput-object p3, p0, Lcom/android/server/Watchdog$FinalizeTimeoutTask;->mDumping:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 622
    iput p2, p0, Lcom/android/server/Watchdog$FinalizeTimeoutTask;->mPid:I

    .line 623
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 628
    :try_start_0
    const-string v3, "Watchdog"

    const-string v4, "Dump CPU"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->batteryNeedsCpuUpdate()V

    .line 630
    const-string v3, "dumpsys cpuinfo"

    invoke-static {v3}, Lcom/android/server/Watchdog;->shellCommand(Ljava/lang/String;)V

    .line 632
    const-string v3, "Watchdog"

    const-string v4, "Dump call stack"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 634
    .local v2, "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget v3, p0, Lcom/android/server/Watchdog$FinalizeTimeoutTask;->mPid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 635
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v2, v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(ZLjava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;[Ljava/lang/String;)Ljava/io/File;

    .line 637
    const-string v3, "Watchdog"

    const-string v4, "Dump /proc/sysrq-trigger w"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    const/16 v4, 0x77

    # invokes: Lcom/android/server/Watchdog;->doSysRq(C)V
    invoke-static {v3, v4}, Lcom/android/server/Watchdog;->access$200(Lcom/android/server/Watchdog;C)V

    .line 640
    const-string v3, "Watchdog"

    const-string v4, "Dump tracepoint"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.htc.intent.action.WRITE_TRACEPOINT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 642
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/Watchdog$FinalizeTimeoutTask;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v5, "android.permission.DUMP"

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 648
    iget-object v3, p0, Lcom/android/server/Watchdog$FinalizeTimeoutTask;->mDumping:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 649
    iput-object v7, p0, Lcom/android/server/Watchdog$FinalizeTimeoutTask;->mContext:Landroid/content/Context;

    .line 651
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_0
    return-void

    .line 645
    :catch_0
    move-exception v0

    .line 646
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "Watchdog"

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 648
    iget-object v3, p0, Lcom/android/server/Watchdog$FinalizeTimeoutTask;->mDumping:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 649
    iput-object v7, p0, Lcom/android/server/Watchdog$FinalizeTimeoutTask;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 648
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/android/server/Watchdog$FinalizeTimeoutTask;->mDumping:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 649
    iput-object v7, p0, Lcom/android/server/Watchdog$FinalizeTimeoutTask;->mContext:Landroid/content/Context;

    throw v3
.end method
