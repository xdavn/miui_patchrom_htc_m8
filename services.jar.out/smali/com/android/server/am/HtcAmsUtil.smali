.class final Lcom/android/server/am/HtcAmsUtil;
.super Ljava/lang/Object;
.source "HtcAmsUtil.java"


# static fields
.field static final ANR_HISTORY_DIR:Ljava/lang/String; = "/data/htcloghistory/anr_history"

.field static final ANR_HISTORY_FILE:Ljava/lang/String; = "/data/htcloghistory/anr_history/anr_history.txt"

.field private static final BY_DYING_PROC:I = 0x1

.field private static final BY_PROC_STAT:I = 0x2

.field private static final DYING_PROC:Ljava/lang/String; = "/proc/dying_processes"

.field private static final DYING_PROCESSES_COLUMN_COUNT:I = 0x14

.field private static DYING_PROCESSES_FORMAT:[I = null

.field private static final HIGH_MEM_MB_SIZE:I = 0x514

.field static HOME_APP_ADJ:I = 0x0

.field static final LOG_HISTORY_DIR:Ljava/lang/String; = "/data/htcloghistory"

.field private static PROC_STAT_FORMAT:[I = null

.field static SERVICE_ADJ:I = 0x0

.field static final TAG:Ljava/lang/String; = "HtcAmsUtil"

.field private static cpuMaxFreq:J

.field static extraSenseVersion:Ljava/lang/String;

.field static firstBgProcWhiteList:[Ljava/lang/String;

.field static hasDynamicSwitch:Z

.field static hasVzwLogger:Z

.field private static htcImportantProcesses:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static initialized:Z

.field static isGP:Z

.field static isSense:Z

.field static isStockUI:Z

.field private static sDyingProcMethod:I

.field private static final sInitDyingLock:Ljava/lang/Object;

.field static supportSRLTE:Z

.field static supportSyncCall:Z

.field private static totalMemory:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    const/4 v0, 0x6

    sput v0, Lcom/android/server/am/HtcAmsUtil;->HOME_APP_ADJ:I

    .line 36
    const/4 v0, 0x5

    sput v0, Lcom/android/server/am/HtcAmsUtil;->SERVICE_ADJ:I

    .line 40
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/server/am/HtcAmsUtil;->totalMemory:J

    .line 41
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/am/HtcAmsUtil;->cpuMaxFreq:J

    .line 47
    invoke-static {}, Lcom/android/server/am/HtcAmsUtil;->init()V

    .line 152
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/HtcAmsUtil;->sInitDyingLock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static dumpBinderTransactions()Ljava/io/File;
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v0, 0x0

    .line 351
    const-string v4, "dalvik.vm.stack-trace-file"

    invoke-static {v4, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 352
    .local v3, "tracesPath":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 377
    :cond_0
    :goto_0
    return-object v0

    .line 356
    :cond_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 357
    .local v2, "tracesDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 358
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 359
    invoke-static {v2}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 362
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1fd

    invoke-static {v4, v5, v6, v6}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 365
    :cond_2
    new-instance v0, Ljava/io/File;

    const-string v4, "binder.txt"

    invoke-direct {v0, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 367
    .local v0, "binderLog":Ljava/io/File;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 368
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 370
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 371
    const-string v4, "HtcAmsUtil"

    const-string v5, "dumpBinderTransactions begin"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    invoke-static {v0}, Lcom/android/server/am/BinderDumper;->dumpBinderTransactions(Ljava/io/File;)V

    .line 373
    const-string v4, "HtcAmsUtil"

    const-string v5, "dumpBinderTransactions end"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 374
    :catch_0
    move-exception v1

    .line 375
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "HtcAmsUtil"

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static dumpStackTraces(ZLjava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;[Ljava/lang/String;I)Ljava/io/File;
    .locals 19
    .param p0, "clearTraces"    # Z
    .param p2, "processCpuTracker"    # Lcom/android/internal/os/ProcessCpuTracker;
    .param p4, "nativeProcs"    # [Ljava/lang/String;
    .param p5, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/internal/os/ProcessCpuTracker;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;[",
            "Ljava/lang/String;",
            "I)",
            "Ljava/io/File;"
        }
    .end annotation

    .prologue
    .line 385
    .local p1, "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p3, "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    invoke-static {}, Lcom/android/server/am/HtcAmsUtil;->dumpBinderTransactions()Ljava/io/File;

    move-result-object v9

    .line 386
    .local v9, "binderLog":Ljava/io/File;
    invoke-static/range {p0 .. p4}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(ZLjava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v14

    .line 389
    .local v14, "tracesFile":Ljava/io/File;
    if-eqz v9, :cond_1

    if-eqz v14, :cond_1

    .line 390
    :try_start_0
    new-instance v13, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {v13, v14, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .local v13, "output":Ljava/io/FileOutputStream;
    const/16 v17, 0x0

    .line 391
    :try_start_1
    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .local v12, "input":Ljava/io/FileInputStream;
    const/16 v16, 0x0

    .line 392
    :try_start_2
    invoke-virtual {v12}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v13}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 393
    if-eqz v12, :cond_0

    if-eqz v16, :cond_5

    :try_start_3
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 394
    :cond_0
    :goto_0
    :try_start_4
    invoke-virtual {v9}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 395
    if-eqz v13, :cond_1

    if-eqz v17, :cond_8

    :try_start_5
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 400
    .end local v12    # "input":Ljava/io/FileInputStream;
    .end local v13    # "output":Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    if-lez p5, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 401
    const-string v3, "profiler.anr_dump_native_uid"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 402
    .local v10, "dumpUid":I
    move/from16 v0, p5

    if-eq v10, v0, :cond_2

    const/4 v3, 0x1

    if-ne v10, v3, :cond_3

    .line 403
    :cond_2
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 404
    .local v2, "anrPid":Ljava/lang/Integer;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_3

    .line 405
    const-string v3, "HtcAmsUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dump tombstone pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x6

    invoke-static {v3, v4}, Landroid/os/Process;->sendSignal(II)V

    .line 407
    const-wide/16 v4, 0x9c4

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 411
    .end local v2    # "anrPid":Ljava/lang/Integer;
    .end local v10    # "dumpUid":I
    :cond_3
    return-object v14

    .line 393
    .restart local v12    # "input":Ljava/io/FileInputStream;
    .restart local v13    # "output":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v15

    .local v15, "x2":Ljava/lang/Throwable;
    :try_start_6
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    .line 390
    .end local v12    # "input":Ljava/io/FileInputStream;
    .end local v15    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v3

    :try_start_7
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 395
    :catchall_0
    move-exception v4

    move-object/from16 v18, v4

    move-object v4, v3

    move-object/from16 v3, v18

    :goto_2
    if-eqz v13, :cond_4

    if-eqz v4, :cond_9

    :try_start_8
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    :cond_4
    :goto_3
    :try_start_9
    throw v3
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .end local v13    # "output":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v11

    .line 396
    .local v11, "e":Ljava/lang/Exception;
    const-string v3, "HtcAmsUtil"

    invoke-static {v3, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 393
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v12    # "input":Ljava/io/FileInputStream;
    .restart local v13    # "output":Ljava/io/FileOutputStream;
    :cond_5
    :try_start_a
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_0

    .line 395
    .end local v12    # "input":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v3

    move-object/from16 v4, v17

    goto :goto_2

    .line 391
    .restart local v12    # "input":Ljava/io/FileInputStream;
    :catch_3
    move-exception v3

    :try_start_b
    throw v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 393
    :catchall_2
    move-exception v4

    move-object/from16 v18, v4

    move-object v4, v3

    move-object/from16 v3, v18

    :goto_4
    if-eqz v12, :cond_6

    if-eqz v4, :cond_7

    :try_start_c
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :cond_6
    :goto_5
    :try_start_d
    throw v3

    :catch_4
    move-exception v15

    .restart local v15    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v4, v15}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    .end local v15    # "x2":Ljava/lang/Throwable;
    :cond_7
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_5

    .line 395
    :catch_5
    move-exception v15

    .restart local v15    # "x2":Ljava/lang/Throwable;
    :try_start_e
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .end local v15    # "x2":Ljava/lang/Throwable;
    :cond_8
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_1

    .end local v12    # "input":Ljava/io/FileInputStream;
    :catch_6
    move-exception v15

    .restart local v15    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v4, v15}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v15    # "x2":Ljava/lang/Throwable;
    :cond_9
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2

    goto :goto_3

    .line 393
    .restart local v12    # "input":Ljava/io/FileInputStream;
    :catchall_3
    move-exception v3

    move-object/from16 v4, v16

    goto :goto_4
.end method

.method static getCaller()Ljava/lang/String;
    .locals 1

    .prologue
    .line 473
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/am/HtcAmsUtil;->getCaller(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getCaller(I)Ljava/lang/String;
    .locals 7
    .param p0, "callingPid"    # I

    .prologue
    .line 477
    sget v5, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq p0, v5, :cond_0

    .line 478
    const-string v5, ""

    .line 492
    :goto_0
    return-object v5

    .line 480
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 481
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 482
    .local v0, "callStack":[Ljava/lang/StackTraceElement;
    const/4 v3, 0x4

    .local v3, "i":I
    :goto_1
    array-length v5, v0

    if-ge v3, v5, :cond_1

    .line 483
    aget-object v1, v0, v3

    .line 484
    .local v1, "caller":Ljava/lang/StackTraceElement;
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 485
    .local v2, "className":Ljava/lang/String;
    const-string v5, "com.android.server.am"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "android.app"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "android.content"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "java"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 488
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    .end local v1    # "caller":Ljava/lang/StackTraceElement;
    .end local v2    # "className":Ljava/lang/String;
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 482
    .restart local v1    # "caller":Ljava/lang/StackTraceElement;
    .restart local v2    # "className":Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method static getCpuMaxFreq()J
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 451
    sget-wide v2, Lcom/android/server/am/HtcAmsUtil;->cpuMaxFreq:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 452
    new-array v0, v7, [I

    const/16 v2, 0x2020

    aput v2, v0, v6

    .line 455
    .local v0, "SINGLE_LONG_FORMAT":[I
    new-array v1, v7, [J

    .line 456
    .local v1, "longOut":[J
    const-string v2, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    invoke-static {v2, v0, v8, v1, v8}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    .line 458
    aget-wide v2, v1, v6

    sput-wide v2, Lcom/android/server/am/HtcAmsUtil;->cpuMaxFreq:J

    .line 460
    :cond_0
    const-string v2, "HtcAmsUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cpuinfo_max_freq: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lcom/android/server/am/HtcAmsUtil;->cpuMaxFreq:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    sget-wide v2, Lcom/android/server/am/HtcAmsUtil;->cpuMaxFreq:J

    return-wide v2
.end method

.method static getTotalRamSize()J
    .locals 4

    .prologue
    .line 439
    sget-wide v0, Lcom/android/server/am/HtcAmsUtil;->totalMemory:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 440
    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v0

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    sput-wide v0, Lcom/android/server/am/HtcAmsUtil;->totalMemory:J

    .line 441
    const-string v0, "HtcAmsUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TotalMemory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/android/server/am/HtcAmsUtil;->totalMemory:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_0
    sget-wide v0, Lcom/android/server/am/HtcAmsUtil;->totalMemory:J

    return-wide v0
.end method

.method static init()V
    .locals 2

    .prologue
    .line 52
    :try_start_0
    sget-boolean v1, Lcom/android/server/am/HtcAmsUtil;->initialized:Z

    if-eqz v1, :cond_1

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 55
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/am/HtcAmsUtil;->initialized:Z

    .line 56
    invoke-static {}, Lcom/android/server/am/HtcAmsUtil;->loadCustomizationConfig()V

    .line 57
    sget-boolean v1, Lcom/android/server/am/HtcAmsUtil;->isStockUI:Z

    if-nez v1, :cond_0

    .line 58
    invoke-static {}, Lcom/android/server/am/HtcAmsUtil;->initHtcAdj()V

    .line 59
    invoke-static {}, Lcom/android/server/am/HtcAmsUtil;->initHtcImportantProcesses()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "HtcAmsUtil"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static initDyingMethod()V
    .locals 6

    .prologue
    const/16 v5, 0x14

    .line 158
    sget-object v2, Lcom/android/server/am/HtcAmsUtil;->sInitDyingLock:Ljava/lang/Object;

    monitor-enter v2

    .line 159
    :try_start_0
    sget v1, Lcom/android/server/am/HtcAmsUtil;->sDyingProcMethod:I

    if-eqz v1, :cond_0

    .line 160
    monitor-exit v2

    .line 179
    :goto_0
    return-void

    .line 162
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v3, "/proc/dying_processes"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    const/4 v1, 0x1

    sput v1, Lcom/android/server/am/HtcAmsUtil;->sDyingProcMethod:I

    .line 164
    const/16 v1, 0x14

    new-array v1, v1, [I

    sput-object v1, Lcom/android/server/am/HtcAmsUtil;->DYING_PROCESSES_FORMAT:[I

    .line 165
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v5, :cond_2

    .line 166
    sget-object v1, Lcom/android/server/am/HtcAmsUtil;->DYING_PROCESSES_FORMAT:[I

    const/16 v3, 0x203a

    aput v3, v1, v0

    .line 167
    sget-object v1, Lcom/android/server/am/HtcAmsUtil;->DYING_PROCESSES_FORMAT:[I

    add-int/lit8 v3, v0, 0x1

    const/16 v4, 0x200a

    aput v4, v1, v3

    .line 165
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 170
    .end local v0    # "i":I
    :cond_1
    const/4 v1, 0x2

    sput v1, Lcom/android/server/am/HtcAmsUtil;->sDyingProcMethod:I

    .line 171
    const/16 v1, 0x1f

    new-array v1, v1, [I

    sput-object v1, Lcom/android/server/am/HtcAmsUtil;->PROC_STAT_FORMAT:[I

    .line 172
    sget-object v1, Lcom/android/server/am/HtcAmsUtil;->PROC_STAT_FORMAT:[I

    const/16 v3, 0x20

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([II)V

    .line 173
    sget-object v1, Lcom/android/server/am/HtcAmsUtil;->PROC_STAT_FORMAT:[I

    const/4 v3, 0x1

    aget v4, v1, v3

    or-int/lit16 v4, v4, 0x200

    aput v4, v1, v3

    .line 174
    sget-object v1, Lcom/android/server/am/HtcAmsUtil;->PROC_STAT_FORMAT:[I

    const/4 v3, 0x2

    aget v4, v1, v3

    or-int/lit16 v4, v4, 0x1000

    aput v4, v1, v3

    .line 175
    sget-object v1, Lcom/android/server/am/HtcAmsUtil;->PROC_STAT_FORMAT:[I

    const/16 v3, 0x1e

    aget v4, v1, v3

    or-int/lit16 v4, v4, 0x1000

    aput v4, v1, v3

    .line 177
    :cond_2
    const-string v1, "HtcAmsUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dying proc method="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/server/am/HtcAmsUtil;->sDyingProcMethod:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static initHtcAdj()V
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x5

    sput v0, Lcom/android/server/am/HtcAmsUtil;->HOME_APP_ADJ:I

    .line 118
    const/4 v0, 0x6

    sput v0, Lcom/android/server/am/HtcAmsUtil;->SERVICE_ADJ:I

    .line 119
    return-void
.end method

.method static initHtcImportantProcesses()V
    .locals 6

    .prologue
    .line 417
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    sput-object v4, Lcom/android/server/am/HtcAmsUtil;->htcImportantProcesses:Landroid/util/ArraySet;

    .line 418
    sget-object v4, Lcom/android/server/am/HtcAmsUtil;->firstBgProcWhiteList:[Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 419
    sget-object v0, Lcom/android/server/am/HtcAmsUtil;->firstBgProcWhiteList:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 420
    .local v3, "procName":Ljava/lang/String;
    sget-object v4, Lcom/android/server/am/HtcAmsUtil;->htcImportantProcesses:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 419
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 425
    .end local v3    # "procName":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/android/server/am/HtcAmsUtil;->isHighMemDevice()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 426
    const-string v4, "HtcAmsUtil"

    const-string v5, "Add camera into white list"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    sget-object v4, Lcom/android/server/am/HtcAmsUtil;->htcImportantProcesses:Landroid/util/ArraySet;

    const-string v5, "com.android.camera"

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 428
    sget-object v4, Lcom/android/server/am/HtcAmsUtil;->htcImportantProcesses:Landroid/util/ArraySet;

    const-string v5, "com.htc.camera"

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 430
    sget-object v4, Lcom/android/server/am/HtcAmsUtil;->htcImportantProcesses:Landroid/util/ArraySet;

    const-string v5, "com.htc.camera2"

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 432
    :cond_1
    return-void
.end method

.method private static isDyingProcess(I)Z
    .locals 9
    .param p0, "pid"    # I

    .prologue
    const/4 v8, 0x0

    .line 182
    const/4 v0, 0x0

    .line 183
    .local v0, "dying":Z
    const/4 v6, 0x2

    new-array v1, v6, [Ljava/lang/String;

    .line 184
    .local v1, "outStats":[Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/proc/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/stat"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 185
    .local v4, "stat":Ljava/lang/String;
    sget-object v6, Lcom/android/server/am/HtcAmsUtil;->PROC_STAT_FORMAT:[I

    invoke-static {v4, v6, v1, v8, v8}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 186
    const/4 v6, 0x0

    aget-object v5, v1, v6

    .line 187
    .local v5, "state":Ljava/lang/String;
    const/4 v6, 0x1

    aget-object v2, v1, v6

    .line 188
    .local v2, "pendingSignal":Ljava/lang/String;
    const-string v6, "Z"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 189
    const-string v6, "HtcAmsUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is zombie state"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const/4 v0, 0x1

    .line 201
    .end local v2    # "pendingSignal":Ljava/lang/String;
    .end local v5    # "state":Ljava/lang/String;
    :cond_0
    :goto_0
    return v0

    .line 192
    .restart local v2    # "pendingSignal":Ljava/lang/String;
    .restart local v5    # "state":Ljava/lang/String;
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 193
    .local v3, "ps":I
    and-int/lit16 v6, v3, 0x100

    if-eqz v6, :cond_0

    .line 194
    const-string v6, "HtcAmsUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has pending signal 9"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const/4 v0, 0x1

    goto :goto_0

    .line 199
    .end local v2    # "pendingSignal":Ljava/lang/String;
    .end local v3    # "ps":I
    .end local v5    # "state":Ljava/lang/String;
    :cond_2
    const-string v6, "HtcAmsUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to read "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static isDyingProcess(IJ)Z
    .locals 19
    .param p0, "pid"    # I
    .param p1, "lastStartTime"    # J

    .prologue
    .line 206
    :try_start_0
    sget v13, Lcom/android/server/am/HtcAmsUtil;->sDyingProcMethod:I

    if-nez v13, :cond_0

    .line 207
    invoke-static {}, Lcom/android/server/am/HtcAmsUtil;->initDyingMethod()V

    .line 209
    :cond_0
    sget v13, Lcom/android/server/am/HtcAmsUtil;->sDyingProcMethod:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_1

    .line 210
    invoke-static/range {p0 .. p0}, Lcom/android/server/am/HtcAmsUtil;->isDyingProcess(I)Z

    move-result v13

    .line 242
    :goto_0
    return v13

    .line 212
    :cond_1
    const/16 v13, 0x14

    new-array v12, v13, [J

    .line 213
    .local v12, "outLongs":[J
    const-string v13, "/proc/dying_processes"

    sget-object v14, Lcom/android/server/am/HtcAmsUtil;->DYING_PROCESSES_FORMAT:[I

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-static {v13, v14, v15, v12, v0}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v13

    if-nez v13, :cond_2

    .line 214
    const-string v13, "HtcAmsUtil"

    const-string v14, "/proc/dying_processes not available"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const/4 v13, 0x0

    goto :goto_0

    .line 217
    :cond_2
    const/4 v13, 0x0

    aget-wide v14, v12, v13

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-nez v13, :cond_3

    .line 218
    const-string v13, "HtcAmsUtil"

    const-string v14, "/proc/dying_processes no record"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const/4 v13, 0x0

    goto :goto_0

    .line 221
    :cond_3
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    const/16 v13, 0x14

    if-ge v7, v13, :cond_6

    .line 222
    aget-wide v4, v12, v7

    .line 223
    .local v4, "dpid":J
    move/from16 v0, p0

    int-to-long v14, v0

    cmp-long v13, v14, v4

    if-nez v13, :cond_5

    .line 224
    add-int/lit8 v13, v7, 0x1

    aget-wide v8, v12, v13

    .line 225
    .local v8, "jiffyFromSignalTime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 226
    .local v10, "now":J
    const-wide/16 v14, 0xa

    mul-long/2addr v14, v8

    sub-long v2, v10, v14

    .line 227
    .local v2, "deadTime":J
    const-string v13, "HtcAmsUtil"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "isDyingProcess: deadTime="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " lastStartTime="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-wide/from16 v0, p1

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    cmp-long v13, v2, p1

    if-lez v13, :cond_4

    .line 230
    const-string v13, "HtcAmsUtil"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "isDyingProcess: dying proc="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 234
    :cond_4
    const-string v13, "HtcAmsUtil"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "isDyingProcess: dead past proc="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    .end local v2    # "deadTime":J
    .end local v8    # "jiffyFromSignalTime":J
    .end local v10    # "now":J
    :cond_5
    add-int/lit8 v7, v7, 0x2

    goto/16 :goto_1

    .line 239
    .end local v4    # "dpid":J
    .end local v7    # "i":I
    .end local v12    # "outLongs":[J
    :catch_0
    move-exception v6

    .line 240
    .local v6, "e":Ljava/lang/Exception;
    const-string v13, "HtcAmsUtil"

    invoke-static {v13, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 242
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_6
    const/4 v13, 0x0

    goto/16 :goto_0
.end method

.method static isHighMemDevice()Z
    .locals 4

    .prologue
    .line 447
    invoke-static {}, Lcom/android/server/am/HtcAmsUtil;->getTotalRamSize()J

    move-result-wide v0

    const-wide/16 v2, 0x514

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isHtcImportantProcesses(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 435
    sget-object v0, Lcom/android/server/am/HtcAmsUtil;->htcImportantProcesses:Landroid/util/ArraySet;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/HtcAmsUtil;->htcImportantProcesses:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static loadCustomizationConfig()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 67
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v0

    .line 68
    .local v0, "manager":Lcom/htc/customization/HtcCustomizationManager;
    if-nez v0, :cond_0

    .line 69
    const-string v2, "HtcAmsUtil"

    const-string v3, "Cannot get HtcCustomizationManager instance"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :goto_0
    return-void

    .line 73
    :cond_0
    const-string v2, "Android_App_Framework"

    invoke-virtual {v0, v2, v4, v5}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    .line 75
    .local v1, "reader":Lcom/htc/customization/HtcCustomizationReader;
    if-eqz v1, :cond_1

    .line 76
    const-string v2, "AMS_feature_FirstBackgroundProcess_white_list"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/htc/customization/HtcCustomizationReader;->readStringArray(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/am/HtcAmsUtil;->firstBgProcWhiteList:[Ljava/lang/String;

    .line 81
    :goto_1
    const-string v2, "System"

    invoke-virtual {v0, v2, v4, v5}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    .line 82
    if-eqz v1, :cond_4

    .line 83
    const-string v2, "extra_sense_version"

    sget-object v3, Lcom/android/server/am/HtcAmsUtil;->extraSenseVersion:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/customization/HtcCustomizationReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/am/HtcAmsUtil;->extraSenseVersion:Ljava/lang/String;

    .line 84
    sget-object v2, Lcom/android/server/am/HtcAmsUtil;->extraSenseVersion:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 85
    sput-boolean v4, Lcom/android/server/am/HtcAmsUtil;->isStockUI:Z

    .line 91
    :goto_2
    const-string v2, "support_SRLTE"

    sget-boolean v3, Lcom/android/server/am/HtcAmsUtil;->supportSRLTE:Z

    invoke-interface {v1, v2, v3}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/am/HtcAmsUtil;->supportSRLTE:Z

    .line 92
    const-string v2, "support_synccall"

    sget-boolean v3, Lcom/android/server/am/HtcAmsUtil;->supportSyncCall:Z

    invoke-interface {v1, v2, v3}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/am/HtcAmsUtil;->supportSyncCall:Z

    .line 97
    :goto_3
    const-string v2, "Android_Kernel"

    invoke-virtual {v0, v2, v4, v5}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    .line 98
    if-eqz v1, :cond_5

    .line 99
    const-string v2, "support_dynamic_switch"

    sget-boolean v3, Lcom/android/server/am/HtcAmsUtil;->hasDynamicSwitch:Z

    invoke-interface {v1, v2, v3}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/am/HtcAmsUtil;->hasDynamicSwitch:Z

    .line 104
    :goto_4
    const-string v2, "VZWQualityLogger"

    invoke-virtual {v0, v2, v4, v5}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    .line 105
    if-eqz v1, :cond_6

    .line 106
    const-string v2, "support_quality_logger"

    invoke-interface {v1, v2, v5}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/am/HtcAmsUtil;->hasVzwLogger:Z

    .line 111
    :goto_5
    const-string v2, "HtcAmsUtil"

    const-string v3, "loadCustomizationConfig completed"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 78
    :cond_1
    const-string v2, "HtcAmsUtil"

    const-string v3, "Cannot get Android_App_Framework customization reader"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 86
    :cond_2
    sget-object v2, Lcom/android/server/am/HtcAmsUtil;->extraSenseVersion:Ljava/lang/String;

    const-string v3, "gp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 87
    sput-boolean v4, Lcom/android/server/am/HtcAmsUtil;->isGP:Z

    goto :goto_2

    .line 89
    :cond_3
    sput-boolean v4, Lcom/android/server/am/HtcAmsUtil;->isSense:Z

    goto :goto_2

    .line 94
    :cond_4
    const-string v2, "HtcAmsUtil"

    const-string v3, "Cannot get System customization reader"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 101
    :cond_5
    const-string v2, "HtcAmsUtil"

    const-string v3, "Cannot get Android_Kernel customization reader"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 108
    :cond_6
    const-string v2, "HtcAmsUtil"

    const-string v3, "Cannot get VZWQualityLogger reader"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method static printCpuInfo(Lcom/android/internal/os/ProcessCpuTracker;Ljava/lang/String;Ljava/lang/StringBuilder;JZ)Ljava/lang/String;
    .locals 5
    .param p0, "cpuTracker"    # Lcom/android/internal/os/ProcessCpuTracker;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "anrInfo"    # Ljava/lang/StringBuilder;
    .param p3, "anrTime"    # J
    .param p5, "current"    # Z

    .prologue
    .line 332
    monitor-enter p0

    .line 333
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentLoad()Ljava/lang/String;

    move-result-object v1

    .line 334
    .local v1, "currentLoad":Ljava/lang/String;
    invoke-virtual {p0, p3, p4}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(J)Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, "cpuInfo":Ljava/lang/String;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    if-eqz p5, :cond_0

    .line 340
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 345
    .local v2, "info":Ljava/lang/String;
    :goto_0
    invoke-static {p1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const/4 v3, 0x6

    invoke-static {v3, p1, v2}, Lcom/android/server/am/HtcAmsUtil;->printLastLineIfTruncated(ILjava/lang/String;Ljava/lang/String;)V

    .line 347
    return-object v0

    .line 335
    .end local v0    # "cpuInfo":Ljava/lang/String;
    .end local v1    # "currentLoad":Ljava/lang/String;
    .end local v2    # "info":Ljava/lang/String;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 342
    .restart local v0    # "cpuInfo":Ljava/lang/String;
    .restart local v1    # "currentLoad":Ljava/lang/String;
    :cond_0
    move-object v2, v0

    .line 343
    .restart local v2    # "info":Ljava/lang/String;
    invoke-static {p1, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static printLastLineIfTruncated(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "level"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/lang/String;

    .prologue
    .line 319
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 320
    .local v0, "infoLength":I
    const/16 v2, 0xfa0

    if-le v0, v2, :cond_0

    .line 321
    const-string v2, "\n"

    add-int/lit8 v3, v0, -0x10

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 322
    .local v1, "lastLineStart":I
    if-lez v1, :cond_0

    .line 323
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1, v2}, Landroid/util/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 326
    .end local v1    # "lastLineStart":I
    :cond_0
    return-void
.end method

.method static setAccessiblePermissions(Ljava/lang/String;Z)V
    .locals 4
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "isDir"    # Z

    .prologue
    const/4 v3, -0x1

    .line 251
    const/16 v1, 0x1a4

    .line 252
    .local v1, "filePermission":I
    const/16 v0, 0x1ed

    .line 253
    .local v0, "dirPermission":I
    if-eqz p1, :cond_0

    const/16 v2, 0x1ed

    :goto_0
    invoke-static {p0, v2, v3, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 254
    return-void

    .line 253
    :cond_0
    const/16 v2, 0x1a4

    goto :goto_0
.end method

.method static swapAdjLabel()V
    .locals 8

    .prologue
    const/16 v7, 0xa

    .line 123
    sget-boolean v3, Lcom/android/server/am/HtcAmsUtil;->isStockUI:Z

    if-eqz v3, :cond_1

    .line 145
    .local v1, "serviceAdj":I
    :cond_0
    :goto_0
    return-void

    .line 127
    .end local v1    # "serviceAdj":I
    :cond_1
    :try_start_0
    sget-object v3, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_ADJ:[I

    array-length v3, v3

    if-le v3, v7, :cond_2

    .line 128
    sget-object v3, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_ADJ:[I

    const/16 v4, 0x9

    aget v1, v3, v4

    .line 129
    .restart local v1    # "serviceAdj":I
    sget-object v3, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_ADJ:[I

    const/16 v4, 0x9

    sget-object v5, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_ADJ:[I

    const/16 v6, 0xa

    aget v5, v5, v6

    aput v5, v3, v4

    .line 130
    sget-object v3, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_ADJ:[I

    const/16 v4, 0xa

    aput v1, v3, v4

    .line 132
    :cond_2
    sget-object v3, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_LABEL:[Ljava/lang/String;

    array-length v3, v3

    if-le v3, v7, :cond_3

    .line 133
    sget-object v3, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_LABEL:[Ljava/lang/String;

    const/16 v4, 0x9

    aget-object v2, v3, v4

    .line 134
    .local v2, "serviceLabel":Ljava/lang/String;
    sget-object v3, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_LABEL:[Ljava/lang/String;

    const/16 v4, 0x9

    sget-object v5, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_LABEL:[Ljava/lang/String;

    const/16 v6, 0xa

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    .line 135
    sget-object v3, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_LABEL:[Ljava/lang/String;

    const/16 v4, 0xa

    aput-object v2, v3, v4

    .line 137
    .end local v2    # "serviceLabel":Ljava/lang/String;
    :cond_3
    sget-object v3, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_COMPACT_LABEL:[Ljava/lang/String;

    array-length v3, v3

    if-le v3, v7, :cond_0

    .line 138
    sget-object v3, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_COMPACT_LABEL:[Ljava/lang/String;

    const/16 v4, 0x9

    aget-object v2, v3, v4

    .line 139
    .restart local v2    # "serviceLabel":Ljava/lang/String;
    sget-object v3, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_COMPACT_LABEL:[Ljava/lang/String;

    const/16 v4, 0x9

    sget-object v5, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_COMPACT_LABEL:[Ljava/lang/String;

    const/16 v6, 0xa

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    .line 140
    sget-object v3, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_COMPACT_LABEL:[Ljava/lang/String;

    const/16 v4, 0xa

    aput-object v2, v3, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 142
    .end local v2    # "serviceLabel":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "HtcAmsUtil"

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static writeAnrHistory(Ljava/lang/String;Ljava/io/File;)V
    .locals 24
    .param p0, "info"    # Ljava/lang/String;
    .param p1, "traces"    # Ljava/io/File;

    .prologue
    .line 257
    const-string v3, "persist.sys.anr_history_count"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 259
    .local v14, "historyLimit":I
    if-lez v14, :cond_6

    .line 260
    const/16 v3, 0x1e

    invoke-static {v14, v3}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 261
    const-string v3, "HtcAmsUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ANR history separated limit "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const-string v18, "ah_"

    .line 263
    .local v18, "prefix":Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    const-string v3, "/data/htcloghistory/anr_history"

    invoke-direct {v12, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 264
    .local v12, "historyDir":Ljava/io/File;
    new-instance v3, Lcom/android/server/am/HtcAmsUtil$1;

    invoke-direct {v3}, Lcom/android/server/am/HtcAmsUtil$1;-><init>()V

    invoke-virtual {v12, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v11

    .line 270
    .local v11, "files":[Ljava/io/File;
    if-eqz v11, :cond_0

    array-length v3, v11

    if-lez v3, :cond_0

    .line 271
    new-instance v3, Lcom/android/server/am/HtcAmsUtil$2;

    invoke-direct {v3}, Lcom/android/server/am/HtcAmsUtil$2;-><init>()V

    invoke-static {v11, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 277
    array-length v10, v11

    .line 278
    .local v10, "fileCount":I
    :goto_0
    if-lt v10, v14, :cond_0

    .line 279
    add-int/lit8 v10, v10, -0x1

    aget-object v3, v11, v10

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 282
    .end local v10    # "fileCount":I
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ah_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy_MMdd_HHmmss"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".txt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 284
    .local v16, "name":Ljava/lang/String;
    new-instance v13, Ljava/io/File;

    const-string v3, "/data/htcloghistory/anr_history"

    move-object/from16 v0, v16

    invoke-direct {v13, v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    .end local v11    # "files":[Ljava/io/File;
    .end local v12    # "historyDir":Ljava/io/File;
    .end local v16    # "name":Ljava/lang/String;
    .end local v18    # "prefix":Ljava/lang/String;
    .local v13, "historyFile":Ljava/io/File;
    :goto_1
    const-string v3, "HtcAmsUtil"

    const-string v4, "Writing traces to ANR history"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/htcloghistory/anr_history"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 290
    .local v2, "dir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 291
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v19

    .line 292
    .local v19, "success":Z
    const-string v3, "/data/htcloghistory"

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/server/am/HtcAmsUtil;->setAccessiblePermissions(Ljava/lang/String;Z)V

    .line 293
    const-string v3, "/data/htcloghistory/anr_history"

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/server/am/HtcAmsUtil;->setAccessiblePermissions(Ljava/lang/String;Z)V

    .line 294
    const-string v3, "HtcAmsUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Create dir /data/htcloghistory/anr_history:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    .end local v19    # "success":Z
    :cond_1
    if-eqz p1, :cond_7

    .line 297
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/server/am/HtcAmsUtil;->setAccessiblePermissions(Ljava/lang/String;Z)V

    .line 301
    :goto_2
    :try_start_0
    new-instance v17, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-direct {v0, v13, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .local v17, "output":Ljava/io/FileOutputStream;
    const/16 v22, 0x0

    .line 302
    if-eqz p0, :cond_2

    .line 303
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 305
    :cond_2
    if-eqz p1, :cond_3

    .line 306
    new-instance v15, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .local v15, "input":Ljava/io/FileInputStream;
    const/16 v21, 0x0

    .line 307
    :try_start_2
    invoke-virtual {v15}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 308
    if-eqz v15, :cond_3

    if-eqz v21, :cond_9

    :try_start_3
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 310
    .end local v15    # "input":Ljava/io/FileInputStream;
    :cond_3
    :goto_3
    const/4 v3, 0x1

    if-ge v14, v3, :cond_4

    .line 311
    :try_start_4
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/server/am/HtcAmsUtil;->setAccessiblePermissions(Ljava/lang/String;Z)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 313
    :cond_4
    if-eqz v17, :cond_5

    if-eqz v22, :cond_c

    :try_start_5
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 316
    .end local v17    # "output":Ljava/io/FileOutputStream;
    :cond_5
    :goto_4
    return-void

    .line 286
    .end local v2    # "dir":Ljava/io/File;
    .end local v13    # "historyFile":Ljava/io/File;
    :cond_6
    new-instance v13, Ljava/io/File;

    const-string v3, "/data/htcloghistory/anr_history/anr_history.txt"

    invoke-direct {v13, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v13    # "historyFile":Ljava/io/File;
    goto/16 :goto_1

    .line 299
    .restart local v2    # "dir":Ljava/io/File;
    :cond_7
    const-string v3, "HtcAmsUtil"

    const-string v4, "writeAnrHistory(), traces file is null"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 308
    .restart local v15    # "input":Ljava/io/FileInputStream;
    .restart local v17    # "output":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v20

    .local v20, "x2":Ljava/lang/Throwable;
    :try_start_6
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3

    .line 301
    .end local v15    # "input":Ljava/io/FileInputStream;
    .end local v20    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v3

    :try_start_7
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 313
    :catchall_0
    move-exception v4

    move-object/from16 v23, v4

    move-object v4, v3

    move-object/from16 v3, v23

    :goto_5
    if-eqz v17, :cond_8

    if-eqz v4, :cond_d

    :try_start_8
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    :cond_8
    :goto_6
    :try_start_9
    throw v3
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .end local v17    # "output":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v9

    .line 314
    .local v9, "e":Ljava/lang/Exception;
    const-string v3, "HtcAmsUtil"

    const-string v4, "Unable to write ANR history"

    invoke-static {v3, v4, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 308
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v15    # "input":Ljava/io/FileInputStream;
    .restart local v17    # "output":Ljava/io/FileOutputStream;
    :cond_9
    :try_start_a
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_3

    .line 313
    .end local v15    # "input":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v3

    move-object/from16 v4, v22

    goto :goto_5

    .line 306
    .restart local v15    # "input":Ljava/io/FileInputStream;
    :catch_3
    move-exception v3

    :try_start_b
    throw v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 308
    :catchall_2
    move-exception v4

    move-object/from16 v23, v4

    move-object v4, v3

    move-object/from16 v3, v23

    :goto_7
    if-eqz v15, :cond_a

    if-eqz v4, :cond_b

    :try_start_c
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :cond_a
    :goto_8
    :try_start_d
    throw v3

    :catch_4
    move-exception v20

    .restart local v20    # "x2":Ljava/lang/Throwable;
    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_8

    .end local v20    # "x2":Ljava/lang/Throwable;
    :cond_b
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_8

    .line 313
    .end local v15    # "input":Ljava/io/FileInputStream;
    :catch_5
    move-exception v20

    .restart local v20    # "x2":Ljava/lang/Throwable;
    :try_start_e
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    .end local v20    # "x2":Ljava/lang/Throwable;
    :cond_c
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V

    goto :goto_4

    :catch_6
    move-exception v20

    .restart local v20    # "x2":Ljava/lang/Throwable;
    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    .end local v20    # "x2":Ljava/lang/Throwable;
    :cond_d
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2

    goto :goto_6

    .line 308
    .restart local v15    # "input":Ljava/io/FileInputStream;
    :catchall_3
    move-exception v3

    move-object/from16 v4, v21

    goto :goto_7
.end method
