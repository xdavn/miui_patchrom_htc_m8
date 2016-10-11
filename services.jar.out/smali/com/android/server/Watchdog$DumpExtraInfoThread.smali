.class final Lcom/android/server/Watchdog$DumpExtraInfoThread;
.super Ljava/lang/Thread;
.source "Watchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/Watchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DumpExtraInfoThread"
.end annotation


# instance fields
.field final mDumping:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 1
    .param p1, "dumping"    # Ljava/util/concurrent/atomic/AtomicBoolean;

    .prologue
    .line 678
    const-string v0, "DumpExtraInfo"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 679
    iput-object p1, p0, Lcom/android/server/Watchdog$DumpExtraInfoThread;->mDumping:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 680
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 685
    :try_start_0
    const-string v1, "Watchdog"

    const-string v2, "Dump CPU"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->batteryNeedsCpuUpdate()V

    .line 687
    const-string v1, "dumpsys cpuinfo"

    invoke-static {v1}, Lcom/android/server/Watchdog;->shellCommand(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 691
    iget-object v1, p0, Lcom/android/server/Watchdog$DumpExtraInfoThread;->mDumping:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 693
    :goto_0
    return-void

    .line 688
    :catch_0
    move-exception v0

    .line 689
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "Watchdog"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 691
    iget-object v1, p0, Lcom/android/server/Watchdog$DumpExtraInfoThread;->mDumping:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/Watchdog$DumpExtraInfoThread;->mDumping:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v1
.end method
