.class public Lcom/android/server/Watchdog;
.super Ljava/lang/Thread;
.source "Watchdog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/Watchdog$DumpHeapTask;,
        Lcom/android/server/Watchdog$HeapMonitor;,
        Lcom/android/server/Watchdog$DumpExtraInfoThread;,
        Lcom/android/server/Watchdog$FinalizeTimeoutTask;,
        Lcom/android/server/Watchdog$FinalizeTimeoutReceiver;,
        Lcom/android/server/Watchdog$Monitor;,
        Lcom/android/server/Watchdog$BinderThreadMonitor;,
        Lcom/android/server/Watchdog$RebootRequestReceiver;,
        Lcom/android/server/Watchdog$HandlerChecker;
    }
.end annotation


# static fields
.field static final CHECK_INTERVAL:J = 0x7530L

.field static final COMPLETED:I = 0x0

.field static final DB:Z = false

.field static final DEFAULT_TIMEOUT:J = 0xea60L

.field public static final NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

.field static final OVERDUE:I = 0x3

.field static final RECORD_KERNEL_THREADS:Z = true

.field static final TAG:Ljava/lang/String; = "Watchdog"

.field static final WAITED_HALF:I = 0x2

.field static final WAITING:I = 0x1

.field static sWatchdog:Lcom/android/server/Watchdog;


# instance fields
.field mActivity:Lcom/android/server/am/ActivityManagerService;

.field mAllowRestart:Z

.field mController:Landroid/app/IActivityController;

.field private final mDumpExtraRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final mHandlerCheckers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;"
        }
    .end annotation
.end field

.field private mHeapMonitor:Lcom/android/server/Watchdog$HeapMonitor;

.field final mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

.field mPhonePid:I

.field mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 66
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/system/bin/mediaserver"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "/system/bin/sdcard"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "/system/bin/surfaceflinger"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "/system/bin/mm-qcamera-daemon"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "zygote64"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "zygote"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    .prologue
    const-wide/32 v4, 0xea60

    .line 222
    const-string v0, "watchdog"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/Watchdog;->mAllowRestart:Z

    .line 658
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mDumpExtraRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 230
    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const-string v3, "foreground thread"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    .line 232
    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    iget-object v6, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-string v3, "main thread"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    iget-object v6, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const-string v3, "ui thread"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    iget-object v6, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const-string v3, "i/o thread"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    iget-object v6, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/DisplayThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const-string v3, "display thread"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    new-instance v0, Lcom/android/server/Watchdog$BinderThreadMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/Watchdog$BinderThreadMonitor;-><init>(Lcom/android/server/Watchdog$1;)V

    invoke-virtual {p0, v0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 249
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/Watchdog;C)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/Watchdog;
    .param p1, "x1"    # C

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/server/Watchdog;->doSysRq(C)V

    return-void
.end method

.method private describeCheckersLocked(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 350
    .local p1, "checkers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/Watchdog$HandlerChecker;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 351
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 352
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 353
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v2}, Lcom/android/server/Watchdog$HandlerChecker;->describeBlockedStateLocked()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 357
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private doSysRq(C)V
    .locals 4
    .param p1, "c"    # C

    .prologue
    .line 568
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    const-string v2, "/proc/sysrq-trigger"

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 569
    .local v1, "sysrq_trigger":Ljava/io/FileWriter;
    invoke-virtual {v1, p1}, Ljava/io/FileWriter;->write(I)V

    .line 570
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 574
    .end local v1    # "sysrq_trigger":Ljava/io/FileWriter;
    :goto_0
    return-void

    .line 571
    :catch_0
    move-exception v0

    .line 572
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "Watchdog"

    const-string v3, "Failed to write to /proc/sysrq-trigger"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private dumpExtraInfo()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 662
    iget-object v1, p0, Lcom/android/server/Watchdog;->mDumpExtraRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 664
    :try_start_0
    new-instance v1, Lcom/android/server/Watchdog$DumpExtraInfoThread;

    iget-object v2, p0, Lcom/android/server/Watchdog;->mDumpExtraRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2}, Lcom/android/server/Watchdog$DumpExtraInfoThread;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v1}, Lcom/android/server/Watchdog$DumpExtraInfoThread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 672
    :goto_0
    return-void

    .line 665
    :catch_0
    move-exception v0

    .line 666
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Watchdog"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 667
    iget-object v1, p0, Lcom/android/server/Watchdog;->mDumpExtraRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 670
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v1, "Watchdog"

    const-string v2, "Skip dumpExtraInfo"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private dumpKernelStackTraces()Ljava/io/File;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 577
    const-string v2, "dalvik.vm.stack-trace-file"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 578
    .local v0, "tracesPath":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 583
    :cond_0
    :goto_0
    return-object v1

    .line 582
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/Watchdog;->native_dumpKernelStacks(Ljava/lang/String;)V

    .line 583
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private evaluateCheckerCompletionLocked()I
    .locals 4

    .prologue
    .line 330
    const/4 v2, 0x0

    .line 331
    .local v2, "state":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 332
    iget-object v3, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/Watchdog$HandlerChecker;

    .line 333
    .local v0, "hc":Lcom/android/server/Watchdog$HandlerChecker;
    invoke-virtual {v0}, Lcom/android/server/Watchdog$HandlerChecker;->getCompletionStateLocked()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 331
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 335
    .end local v0    # "hc":Lcom/android/server/Watchdog$HandlerChecker;
    :cond_0
    return v2
.end method

.method private getBlockedCheckersLocked()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 339
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 340
    .local v0, "checkers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/Watchdog$HandlerChecker;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 341
    iget-object v3, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/Watchdog$HandlerChecker;

    .line 342
    .local v1, "hc":Lcom/android/server/Watchdog$HandlerChecker;
    invoke-virtual {v1}, Lcom/android/server/Watchdog$HandlerChecker;->isOverdueLocked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 343
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 346
    .end local v1    # "hc":Lcom/android/server/Watchdog$HandlerChecker;
    :cond_1
    return-object v0
.end method

.method public static getInstance()Lcom/android/server/Watchdog;
    .locals 1

    .prologue
    .line 214
    sget-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    if-nez v0, :cond_0

    .line 215
    new-instance v0, Lcom/android/server/Watchdog;

    invoke-direct {v0}, Lcom/android/server/Watchdog;-><init>()V

    sput-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    .line 218
    :cond_0
    sget-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    return-object v0
.end method

.method private native native_dumpKernelStacks(Ljava/lang/String;)V
.end method

.method static shellCommand(Ljava/lang/String;)V
    .locals 11
    .param p0, "cmd"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 698
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    const-string v8, "/system/bin/sh"

    invoke-virtual {v6, v8}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 700
    .local v4, "process":Ljava/lang/Process;
    :try_start_1
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {v4}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .local v3, "out":Ljava/io/DataOutputStream;
    const/4 v6, 0x0

    .line 702
    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\nexit\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 703
    if-eqz v3, :cond_0

    if-eqz v7, :cond_2

    :try_start_3
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 704
    :cond_0
    :goto_0
    :try_start_4
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 707
    :goto_1
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "line":Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 708
    const-string v8, "Watchdog"

    invoke-static {v8, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_1

    .line 704
    .end local v2    # "line":Ljava/lang/String;
    :catch_0
    move-exception v6

    :try_start_6
    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 710
    :catchall_0
    move-exception v7

    move-object v10, v7

    move-object v7, v6

    move-object v6, v10

    :goto_2
    if-eqz v0, :cond_1

    if-eqz v7, :cond_8

    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_1
    :goto_3
    :try_start_8
    throw v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 712
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "out":Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v6

    :try_start_9
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V

    throw v6
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 714
    .end local v4    # "process":Ljava/lang/Process;
    :catch_1
    move-exception v1

    .line 715
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "Watchdog"

    const-string v7, "shellCommand failed"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 717
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_4
    return-void

    .line 703
    .restart local v3    # "out":Ljava/io/DataOutputStream;
    .restart local v4    # "process":Ljava/lang/Process;
    :catch_2
    move-exception v5

    .local v5, "x2":Ljava/lang/Throwable;
    :try_start_a
    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v5    # "x2":Ljava/lang/Throwable;
    :cond_2
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_0

    .line 700
    :catch_3
    move-exception v6

    :try_start_b
    throw v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 703
    :catchall_2
    move-exception v7

    move-object v10, v7

    move-object v7, v6

    move-object v6, v10

    :goto_5
    if-eqz v3, :cond_3

    if-eqz v7, :cond_4

    :try_start_c
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :cond_3
    :goto_6
    :try_start_d
    throw v6

    :catch_4
    move-exception v5

    .restart local v5    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v7, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    .end local v5    # "x2":Ljava/lang/Throwable;
    :cond_4
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_6

    .line 710
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "line":Ljava/lang/String;
    :cond_5
    if-eqz v0, :cond_6

    if-eqz v7, :cond_7

    :try_start_e
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 712
    :cond_6
    :goto_7
    :try_start_f
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1

    goto :goto_4

    .line 710
    :catch_5
    move-exception v5

    .restart local v5    # "x2":Ljava/lang/Throwable;
    :try_start_10
    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7

    .end local v5    # "x2":Ljava/lang/Throwable;
    :cond_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    goto :goto_7

    .end local v2    # "line":Ljava/lang/String;
    :catch_6
    move-exception v5

    .restart local v5    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v7, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v5    # "x2":Ljava/lang/Throwable;
    :cond_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto :goto_3

    :catchall_3
    move-exception v6

    goto :goto_2

    .line 703
    .end local v0    # "br":Ljava/io/BufferedReader;
    :catchall_4
    move-exception v6

    goto :goto_5
.end method

.method private static startDropboxThread(Ljava/lang/Thread;J)V
    .locals 1
    .param p0, "thread"    # Ljava/lang/Thread;
    .param p1, "dropboxWaitTime"    # J

    .prologue
    .line 559
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 561
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 563
    :goto_0
    return-void

    .line 562
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public addMonitor(Lcom/android/server/Watchdog$Monitor;)V
    .locals 2
    .param p1, "monitor"    # Lcom/android/server/Watchdog$Monitor;

    .prologue
    .line 295
    monitor-enter p0

    .line 296
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/Watchdog;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Monitors can\'t be added once the Watchdog is running"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 300
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 299
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v0, p1}, Lcom/android/server/Watchdog$HandlerChecker;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 300
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 301
    return-void
.end method

.method public addThread(Landroid/os/Handler;)V
    .locals 2
    .param p1, "thread"    # Landroid/os/Handler;

    .prologue
    .line 304
    const-wide/32 v0, 0xea60

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;J)V

    .line 305
    return-void
.end method

.method public addThread(Landroid/os/Handler;J)V
    .locals 8
    .param p1, "thread"    # Landroid/os/Handler;
    .param p2, "timeoutMillis"    # J

    .prologue
    .line 308
    monitor-enter p0

    .line 309
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/Watchdog;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Threads can\'t be added once the Watchdog is running"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 312
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    .line 313
    .local v3, "name":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 315
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activity"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    const/4 v4, 0x0

    .line 252
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/Watchdog;->mResolver:Landroid/content/ContentResolver;

    .line 253
    iput-object p2, p0, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    .line 255
    new-instance v0, Lcom/android/server/Watchdog$RebootRequestReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/Watchdog$RebootRequestReceiver;-><init>(Lcom/android/server/Watchdog;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.REBOOT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "android.permission.REBOOT"

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 259
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->HtcDebug:Z

    if-eqz v0, :cond_0

    .line 260
    new-instance v1, Lcom/android/server/Watchdog$FinalizeTimeoutReceiver;

    invoke-direct {v1, v4}, Lcom/android/server/Watchdog$FinalizeTimeoutReceiver;-><init>(Lcom/android/server/Watchdog$1;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "com.htc.intent.WATCHDOG_FINALIZE_TIMEOUT"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v0, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 267
    :cond_0
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->HtcDebug:Z

    if-eqz v0, :cond_1

    .line 268
    new-instance v0, Lcom/android/server/Watchdog$HeapMonitor;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/Watchdog$HeapMonitor;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mHeapMonitor:Lcom/android/server/Watchdog$HeapMonitor;

    .line 269
    iget-object v0, p0, Lcom/android/server/Watchdog;->mHeapMonitor:Lcom/android/server/Watchdog$HeapMonitor;

    invoke-virtual {v0}, Lcom/android/server/Watchdog$HeapMonitor;->monitor()V

    .line 272
    :cond_1
    return-void
.end method

.method public processStarted(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "pid"    # I

    .prologue
    .line 275
    monitor-enter p0

    .line 276
    :try_start_0
    const-string v0, "com.android.phone"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    iput p2, p0, Lcom/android/server/Watchdog;->mPhonePid:I

    .line 279
    :cond_0
    monitor-exit p0

    .line 280
    return-void

    .line 279
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method rebootSystem(Ljava/lang/String;)V
    .locals 4
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 321
    const-string v1, "Watchdog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rebooting system because: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/os/IPowerManager;

    .line 324
    .local v0, "pms":Landroid/os/IPowerManager;
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v0, v1, p1, v2}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    :goto_0
    return-void

    .line 325
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public run()V
    .locals 36

    .prologue
    .line 362
    const/16 v30, 0x0

    .line 367
    .local v30, "waitedHalf":Z
    :goto_0
    const/4 v10, 0x0

    .line 368
    .local v10, "debuggerWasConnected":I
    monitor-enter p0

    .line 369
    const-wide/16 v28, 0x7530

    .line 372
    .local v28, "timeout":J
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    move/from16 v0, v17

    move/from16 v1, v31

    if-ge v0, v1, :cond_0

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/Watchdog$HandlerChecker;

    .line 374
    .local v16, "hc":Lcom/android/server/Watchdog$HandlerChecker;
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/Watchdog$HandlerChecker;->scheduleCheckLocked()V

    .line 372
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 377
    .end local v16    # "hc":Lcom/android/server/Watchdog$HandlerChecker;
    :cond_0
    if-lez v10, :cond_1

    .line 378
    add-int/lit8 v10, v10, -0x1

    .line 385
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    .line 386
    .local v24, "start":J
    :goto_2
    const-wide/16 v32, 0x0

    cmp-long v31, v28, v32

    if-lez v31, :cond_4

    .line 387
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v31

    if-eqz v31, :cond_2

    .line 388
    const/4 v10, 0x2

    .line 391
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 395
    :goto_3
    :try_start_2
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v31

    if-eqz v31, :cond_3

    .line 396
    const/4 v10, 0x2

    .line 398
    :cond_3
    const-wide/16 v32, 0x7530

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v34

    sub-long v34, v34, v24

    sub-long v28, v32, v34

    goto :goto_2

    .line 392
    :catch_0
    move-exception v14

    .line 393
    .local v14, "e":Ljava/lang/InterruptedException;
    const-string v31, "Watchdog"

    move-object/from16 v0, v31

    invoke-static {v0, v14}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 440
    .end local v14    # "e":Ljava/lang/InterruptedException;
    .end local v24    # "start":J
    :catchall_0
    move-exception v31

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v31

    .line 404
    .restart local v24    # "start":J
    :cond_4
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->evaluateCheckerCompletionLocked()I

    move-result v27

    .line 405
    .local v27, "waitState":I
    const/16 v31, 0x3

    move/from16 v0, v31

    move/from16 v1, v27

    if-ne v0, v1, :cond_5

    if-nez v30, :cond_5

    .line 406
    const-string v31, "Watchdog"

    const-string v32, "No waitedHalf but OVERDUE, force waitedHalf"

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    const/16 v27, 0x2

    .line 410
    :cond_5
    if-nez v27, :cond_6

    .line 412
    const/16 v30, 0x0

    .line 413
    monitor-exit p0

    goto/16 :goto_0

    .line 414
    :cond_6
    const/16 v31, 0x1

    move/from16 v0, v27

    move/from16 v1, v31

    if-ne v0, v1, :cond_7

    .line 416
    monitor-exit p0

    goto/16 :goto_0

    .line 417
    :cond_7
    const/16 v31, 0x2

    move/from16 v0, v27

    move/from16 v1, v31

    if-ne v0, v1, :cond_a

    .line 418
    if-nez v30, :cond_9

    .line 421
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 422
    .local v20, "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    const/16 v31, 0x1

    const/16 v32, 0x0

    const/16 v33, 0x0

    sget-object v34, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    move/from16 v0, v31

    move-object/from16 v1, v20

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    move-object/from16 v4, v34

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(ZLjava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;[Ljava/lang/String;)Ljava/io/File;

    .line 426
    sget-boolean v31, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v31, :cond_8

    .line 427
    const/16 v31, 0x77

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/server/Watchdog;->doSysRq(C)V

    .line 428
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->dumpExtraInfo()V

    .line 431
    :cond_8
    const/16 v30, 0x1

    .line 433
    .end local v20    # "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_9
    monitor-exit p0

    goto/16 :goto_0

    .line 437
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->getBlockedCheckersLocked()Ljava/util/ArrayList;

    move-result-object v8

    .line 438
    .local v8, "blockedCheckers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/Watchdog$HandlerChecker;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/Watchdog;->describeCheckersLocked(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v26

    .line 439
    .local v26, "subject":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/Watchdog;->mAllowRestart:Z

    .line 440
    .local v6, "allowRestart":Z
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 442
    sget-boolean v31, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v31, :cond_b

    .line 443
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->dumpExtraInfo()V

    .line 450
    :cond_b
    const/16 v31, 0xaf2

    move/from16 v0, v31

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 452
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 453
    .restart local v20    # "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/Watchdog;->mPhonePid:I

    move/from16 v31, v0

    if-lez v31, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/Watchdog;->mPhonePid:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    :cond_c
    if-nez v30, :cond_d

    const/16 v31, 0x1

    :goto_4
    const/16 v32, 0x0

    const/16 v33, 0x0

    sget-object v34, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    move/from16 v0, v31

    move-object/from16 v1, v20

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    move-object/from16 v4, v34

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(ZLjava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v22

    .line 462
    .local v22, "stack":Ljava/io/File;
    const-wide/16 v32, 0x7d0

    invoke-static/range {v32 .. v33}, Landroid/os/SystemClock;->sleep(J)V

    .line 466
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->dumpKernelStackTraces()Ljava/io/File;

    .line 470
    const/16 v31, 0x77

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/server/Watchdog;->doSysRq(C)V

    .line 471
    const/16 v31, 0x6c

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/server/Watchdog;->doSysRq(C)V

    .line 476
    new-instance v11, Lcom/android/server/Watchdog$1;

    const-string v31, "watchdogWriteToDropbox"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v26

    move-object/from16 v3, v22

    invoke-direct {v11, v0, v1, v2, v3}, Lcom/android/server/Watchdog$1;-><init>(Lcom/android/server/Watchdog;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 485
    .local v11, "dropboxThread":Ljava/lang/Thread;
    const-wide/16 v12, 0x1388

    .line 493
    .local v12, "dropboxWaitTime":J
    monitor-enter p0

    .line 494
    :try_start_4
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/Watchdog;->mController:Landroid/app/IActivityController;

    .line 495
    .local v9, "controller":Landroid/app/IActivityController;
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 496
    if-eqz v9, :cond_e

    .line 497
    const-string v31, "Watchdog"

    const-string v32, "Reporting stuck state to activity controller"

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :try_start_5
    const-string v31, "Service dumps disabled due to hung system process."

    invoke-static/range {v31 .. v31}, Landroid/os/Binder;->setDumpDisabled(Ljava/lang/String;)V

    .line 501
    move-object/from16 v0, v26

    invoke-interface {v9, v0}, Landroid/app/IActivityController;->systemNotResponding(Ljava/lang/String;)I

    move-result v21

    .line 502
    .local v21, "res":I
    if-ltz v21, :cond_e

    .line 503
    const-string v31, "Watchdog"

    const-string v32, "Activity controller requested to coninue to wait"

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 504
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 457
    .end local v9    # "controller":Landroid/app/IActivityController;
    .end local v11    # "dropboxThread":Ljava/lang/Thread;
    .end local v12    # "dropboxWaitTime":J
    .end local v21    # "res":I
    .end local v22    # "stack":Ljava/io/File;
    :cond_d
    const/16 v31, 0x0

    goto :goto_4

    .line 495
    .restart local v11    # "dropboxThread":Ljava/lang/Thread;
    .restart local v12    # "dropboxWaitTime":J
    .restart local v22    # "stack":Ljava/io/File;
    :catchall_1
    move-exception v31

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v31

    .line 507
    .restart local v9    # "controller":Landroid/app/IActivityController;
    :catch_1
    move-exception v31

    .line 512
    :cond_e
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v31

    if-eqz v31, :cond_f

    .line 513
    const/4 v10, 0x2

    .line 515
    :cond_f
    const/16 v31, 0x2

    move/from16 v0, v31

    if-lt v10, v0, :cond_10

    .line 516
    const-string v31, "Watchdog"

    const-string v32, "Debugger connected: Watchdog is *not* killing the system process"

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :goto_5
    const/16 v30, 0x0

    .line 553
    invoke-static {v11, v12, v13}, Lcom/android/server/Watchdog;->startDropboxThread(Ljava/lang/Thread;J)V

    goto/16 :goto_0

    .line 517
    :cond_10
    if-lez v10, :cond_11

    .line 518
    const-string v31, "Watchdog"

    const-string v32, "Debugger was connected: Watchdog is *not* killing the system process"

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 519
    :cond_11
    if-nez v6, :cond_12

    .line 520
    const-string v31, "Watchdog"

    const-string v32, "Restart not allowed: Watchdog is *not* killing the system process"

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 522
    :cond_12
    const-string v31, "Watchdog"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "*** WATCHDOG KILLING SYSTEM PROCESS: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    const/16 v17, 0x0

    :goto_6
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v31

    move/from16 v0, v17

    move/from16 v1, v31

    if-ge v0, v1, :cond_14

    .line 524
    const-string v32, "Watchdog"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/Watchdog$HandlerChecker;->getName()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v33, " stack trace:"

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    move/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/Watchdog$HandlerChecker;->getThread()Ljava/lang/Thread;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v23

    .line 527
    .local v23, "stackTrace":[Ljava/lang/StackTraceElement;
    move-object/from16 v7, v23

    .local v7, "arr$":[Ljava/lang/StackTraceElement;
    array-length v0, v7

    move/from16 v19, v0

    .local v19, "len$":I
    const/16 v18, 0x0

    .local v18, "i$":I
    :goto_7
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_13

    aget-object v15, v7, v18

    .line 528
    .local v15, "element":Ljava/lang/StackTraceElement;
    const-string v31, "Watchdog"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "    at "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    add-int/lit8 v18, v18, 0x1

    goto :goto_7

    .line 523
    .end local v15    # "element":Ljava/lang/StackTraceElement;
    :cond_13
    add-int/lit8 v17, v17, 0x1

    goto :goto_6

    .line 532
    .end local v7    # "arr$":[Ljava/lang/StackTraceElement;
    .end local v18    # "i$":I
    .end local v19    # "len$":I
    .end local v23    # "stackTrace":[Ljava/lang/StackTraceElement;
    :cond_14
    sget-boolean v31, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v31, :cond_16

    .line 533
    if-eqz v26, :cond_15

    const-string v31, "main thread"

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v31

    if-eqz v31, :cond_15

    .line 534
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->dumpSystemMainLooper()V

    .line 536
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v33, Ljava/text/SimpleDateFormat;

    const-string v34, "yyyy-MM-dd kk:mm:ss"

    invoke-direct/range {v33 .. v34}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v34, Ljava/util/Date;

    invoke-direct/range {v34 .. v34}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v33 .. v34}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "*** WATCHDOG KILLING SYSTEM PROCESS: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lcom/android/server/am/ActivityManagerService;->dumpAllProcessStack(Ljava/lang/String;)V

    .line 539
    const-wide/16 v12, 0x4e20

    .line 544
    :cond_16
    invoke-static {v11, v12, v13}, Lcom/android/server/Watchdog;->startDropboxThread(Ljava/lang/Thread;J)V

    .line 546
    const-string v31, "Watchdog"

    const-string v32, "*** GOODBYE!"

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v31

    invoke-static/range {v31 .. v31}, Landroid/os/Process;->killProcess(I)V

    .line 548
    const/16 v31, 0xa

    invoke-static/range {v31 .. v31}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_5
.end method

.method public setActivityController(Landroid/app/IActivityController;)V
    .locals 1
    .param p1, "controller"    # Landroid/app/IActivityController;

    .prologue
    .line 283
    monitor-enter p0

    .line 284
    :try_start_0
    iput-object p1, p0, Lcom/android/server/Watchdog;->mController:Landroid/app/IActivityController;

    .line 285
    monitor-exit p0

    .line 286
    return-void

    .line 285
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAllowRestart(Z)V
    .locals 1
    .param p1, "allowRestart"    # Z

    .prologue
    .line 289
    monitor-enter p0

    .line 290
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/Watchdog;->mAllowRestart:Z

    .line 291
    monitor-exit p0

    .line 292
    return-void

    .line 291
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
