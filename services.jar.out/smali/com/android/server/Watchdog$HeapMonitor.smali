.class final Lcom/android/server/Watchdog$HeapMonitor;
.super Landroid/os/Handler;
.source "Watchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/Watchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HeapMonitor"
.end annotation


# static fields
.field static final MESSAGE_MONITOR:I = 0xc8

.field static final PER_MONITOR_MS:I = 0x493e0

.field static final THRESHOLD_INCREMENTAL:J = 0x3200000L


# instance fields
.field THRESHOLD:J


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 730
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 727
    const-wide/32 v0, 0x6e00000

    iput-wide v0, p0, Lcom/android/server/Watchdog$HeapMonitor;->THRESHOLD:J

    .line 731
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 735
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 742
    :goto_0
    return-void

    .line 737
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/Watchdog$HeapMonitor;->handleMonitor()V

    goto :goto_0

    .line 735
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
    .end packed-switch
.end method

.method handleMonitor()V
    .locals 8

    .prologue
    .line 745
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v4

    .line 746
    .local v4, "totalMemory":J
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    .line 747
    .local v2, "freeMemory":J
    sub-long v0, v4, v2

    .line 748
    .local v0, "allocMemory":J
    iget-wide v6, p0, Lcom/android/server/Watchdog$HeapMonitor;->THRESHOLD:J

    cmp-long v6, v0, v6

    if-lez v6, :cond_1

    .line 750
    const-wide/32 v6, 0x3200000

    add-long/2addr v6, v0

    iput-wide v6, p0, Lcom/android/server/Watchdog$HeapMonitor;->THRESHOLD:J

    .line 751
    invoke-virtual {p0, v4, v5}, Lcom/android/server/Watchdog$HeapMonitor;->startDumpHeapTask(J)Z

    move-result v6

    if-nez v6, :cond_0

    .line 753
    invoke-virtual {p0}, Lcom/android/server/Watchdog$HeapMonitor;->monitor()V

    .line 759
    :cond_0
    :goto_0
    return-void

    .line 757
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/Watchdog$HeapMonitor;->monitor()V

    goto :goto_0
.end method

.method monitor()V
    .locals 4

    .prologue
    .line 772
    const/16 v0, 0xc8

    const-wide/32 v2, 0x493e0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/Watchdog$HeapMonitor;->sendEmptyMessageDelayed(IJ)Z

    .line 773
    return-void
.end method

.method startDumpHeapTask(J)Z
    .locals 3
    .param p1, "alloc"    # J

    .prologue
    .line 763
    :try_start_0
    new-instance v1, Lcom/android/server/Watchdog$DumpHeapTask;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/Watchdog$DumpHeapTask;-><init>(Lcom/android/server/Watchdog$HeapMonitor;J)V

    invoke-virtual {v1}, Lcom/android/server/Watchdog$DumpHeapTask;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 768
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 764
    :catch_0
    move-exception v0

    .line 765
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Watchdog"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 766
    const/4 v1, 0x0

    goto :goto_0
.end method
