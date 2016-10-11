.class final Lcom/android/server/Watchdog$FinalizeTimeoutReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Watchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/Watchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FinalizeTimeoutReceiver"
.end annotation


# static fields
.field static final ACTION:Ljava/lang/String; = "com.htc.intent.WATCHDOG_FINALIZE_TIMEOUT"

.field static final EXTRA_PID:Ljava/lang/String; = "pid"


# instance fields
.field final mTaskRunning:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 589
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 592
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/Watchdog$FinalizeTimeoutReceiver;->mTaskRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/Watchdog$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/Watchdog$1;

    .prologue
    .line 589
    invoke-direct {p0}, Lcom/android/server/Watchdog$FinalizeTimeoutReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 597
    iget-object v2, p0, Lcom/android/server/Watchdog$FinalizeTimeoutReceiver;->mTaskRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 599
    :try_start_0
    const-string v2, "pid"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 600
    .local v1, "pid":I
    new-instance v2, Lcom/android/server/Watchdog$FinalizeTimeoutTask;

    iget-object v3, p0, Lcom/android/server/Watchdog$FinalizeTimeoutReceiver;->mTaskRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, p1, v1, v3}, Lcom/android/server/Watchdog$FinalizeTimeoutTask;-><init>(Landroid/content/Context;ILjava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v2}, Lcom/android/server/Watchdog$FinalizeTimeoutTask;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 608
    .end local v1    # "pid":I
    :goto_0
    return-void

    .line 601
    :catch_0
    move-exception v0

    .line 602
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Watchdog"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 603
    iget-object v2, p0, Lcom/android/server/Watchdog$FinalizeTimeoutReceiver;->mTaskRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 606
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v2, "Watchdog"

    const-string v3, "Skip finalize timeout task"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
