.class public Lcom/android/internal/os/ZygoteInit;
.super Ljava/lang/Object;
.source "ZygoteInit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
    }
.end annotation


# static fields
.field private static final ABI_LIST_ARG:Ljava/lang/String; = "--abi-list="

.field private static final ANDROID_SOCKET_PREFIX:Ljava/lang/String; = "ANDROID_SOCKET_"

.field static final FIRST_INIT:I

.field private static final LOG_BOOT_PROGRESS_PRELOAD_END:I = 0xbd6

.field private static final LOG_BOOT_PROGRESS_PRELOAD_START:I = 0xbcc

.field static final OEM_MFG_MODE:I

.field static final OEM_MFG_MODE_PKG:Ljava/lang/String; = "com.android.cci"

.field private static final PRELOADED_CLASSES:Ljava/lang/String; = "/system/etc/preloaded-classes"

.field private static final PRELOAD_GC_THRESHOLD:I = 0xc350

.field private static final PRELOAD_RESOURCES:Z = true

.field static final PREV_SHUTDOWN_STATE:I

.field private static final PROPERTY_DISABLE_OPENGL_PRELOADING:Ljava/lang/String; = "ro.zygote.disable_gl_preload"

.field private static final ROOT_GID:I = 0x0

.field private static final ROOT_UID:I = 0x0

.field private static final SOCKET_NAME_ARG:Ljava/lang/String; = "--socket-name="

.field private static final TAG:Ljava/lang/String; = "Zygote"

.field private static final UNPRIVILEGED_GID:I = 0x270f

.field private static final UNPRIVILEGED_UID:I = 0x270f

.field private static mResources:Landroid/content/res/Resources;

.field private static sServerSocket:Landroid/net/LocalServerSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 77
    const-string v0, "sys.zygote.first.init"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/internal/os/ZygoteInit;->FIRST_INIT:I

    .line 81
    const-string v0, "ro.boot.ftm"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/internal/os/ZygoteInit;->OEM_MFG_MODE:I

    .line 89
    const-string v0, "persist.sys.prev.powerdown"

    const/16 v1, 0x9

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/internal/os/ZygoteInit;->PREV_SHUTDOWN_STATE:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 774
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 775
    return-void
.end method

.method private static acceptCommandPeer(Ljava/lang/String;)Lcom/android/internal/os/ZygoteConnection;
    .locals 3
    .param p0, "abiList"    # Ljava/lang/String;

    .prologue
    .line 155
    :try_start_0
    new-instance v1, Lcom/android/internal/os/ZygoteConnection;

    sget-object v2, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v2}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/internal/os/ZygoteConnection;-><init>(Landroid/net/LocalSocket;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "IOException during accept()"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static closeServerSocket()V
    .locals 4

    .prologue
    .line 168
    :try_start_0
    sget-object v2, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    if-eqz v2, :cond_0

    .line 169
    sget-object v2, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v2}, Landroid/net/LocalServerSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 170
    .local v1, "fd":Ljava/io/FileDescriptor;
    sget-object v2, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v2}, Landroid/net/LocalServerSocket;->close()V

    .line 171
    if-eqz v1, :cond_0

    .line 172
    invoke-static {v1}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1

    .line 181
    :cond_0
    :goto_0
    const/4 v2, 0x0

    sput-object v2, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    .line 182
    return-void

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "ex":Ljava/io/IOException;
    const-string v2, "Zygote"

    const-string v3, "Zygote:  error closing sockets"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 177
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 178
    .local v0, "ex":Landroid/system/ErrnoException;
    const-string v2, "Zygote"

    const-string v3, "Zygote:  error closing descriptor"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static gcAndFinalize()V
    .locals 1

    .prologue
    .line 445
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    .line 450
    .local v0, "runtime":Ldalvik/system/VMRuntime;
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 451
    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 452
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 453
    return-void
.end method

.method static getServerSocketFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1

    .prologue
    .line 191
    sget-object v0, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method private static handleSystemServerProcess(Lcom/android/internal/os/ZygoteConnection$Arguments;)V
    .locals 9
    .param p0, "parsedArgs"    # Lcom/android/internal/os/ZygoteConnection$Arguments;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 462
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->closeServerSocket()V

    .line 465
    sget v0, Landroid/system/OsConstants;->S_IRWXG:I

    sget v1, Landroid/system/OsConstants;->S_IRWXO:I

    or-int/2addr v0, v1

    invoke-static {v0}, Landroid/system/Os;->umask(I)I

    .line 467
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    .line 471
    :cond_0
    const-string v0, "SYSTEMSERVERCLASSPATH"

    invoke-static {v0}, Landroid/system/Os;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 472
    .local v8, "systemServerClasspath":Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 473
    invoke-static {v8}, Lcom/android/internal/os/ZygoteInit;->performSystemServerDexOpt(Ljava/lang/String;)V

    .line 476
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 477
    iget-object v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    .line 481
    .local v5, "args":[Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 482
    array-length v0, v5

    add-int/lit8 v0, v0, 0x2

    new-array v6, v0, [Ljava/lang/String;

    .line 483
    .local v6, "amendedArgs":[Ljava/lang/String;
    const-string v0, "-cp"

    aput-object v0, v6, v3

    .line 484
    const/4 v0, 0x1

    aput-object v8, v6, v0

    .line 485
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    array-length v2, v2

    invoke-static {v0, v3, v6, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 488
    .end local v6    # "amendedArgs":[Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersion:I

    invoke-static {}, Ldalvik/system/VMRuntime;->getCurrentInstructionSet()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/internal/os/WrapperInit;->execApplication(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 505
    .end local v5    # "args":[Ljava/lang/String;
    :goto_0
    return-void

    .line 492
    :cond_3
    const/4 v7, 0x0

    .line 493
    .local v7, "cl":Ljava/lang/ClassLoader;
    if-eqz v8, :cond_4

    .line 494
    new-instance v7, Ldalvik/system/PathClassLoader;

    .end local v7    # "cl":Ljava/lang/ClassLoader;
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {v7, v8, v0}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 495
    .restart local v7    # "cl":Ljava/lang/ClassLoader;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 501
    :cond_4
    iget v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersion:I

    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    invoke-static {v0, v1, v7}, Lcom/android/internal/os/RuntimeInit;->zygoteInit(I[Ljava/lang/String;Ljava/lang/ClassLoader;)V

    goto :goto_0
.end method

.method private static hasSecondZygote(Ljava/lang/String;)Z
    .locals 1
    .param p0, "abiList"    # Ljava/lang/String;

    .prologue
    .line 703
    const-string v0, "ro.product.cpu.abilist"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static initCustomizationManager()V
    .locals 4

    .prologue
    .line 203
    :try_start_0
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 205
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 206
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "Zygote"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot initialize HtcCustomizationManager, reason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 11
    .param p0, "argv"    # [Ljava/lang/String;

    .prologue
    const/16 v10, 0x9

    .line 610
    :try_start_0
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->enableDdms()V

    .line 612
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->start()V

    .line 614
    const/4 v6, 0x0

    .line 615
    .local v6, "startSystemServer":Z
    const-string v5, "zygote"

    .line 616
    .local v5, "socketName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 617
    .local v1, "abiList":Ljava/lang/String;
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    array-length v7, p0

    if-ge v4, v7, :cond_3

    .line 618
    const-string v7, "start-system-server"

    aget-object v8, p0, v4

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 619
    const/4 v6, 0x1

    .line 617
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 620
    :cond_0
    aget-object v7, p0, v4

    const-string v8, "--abi-list="

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 621
    aget-object v7, p0, v4

    const-string v8, "--abi-list="

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 622
    :cond_1
    aget-object v7, p0, v4

    const-string v8, "--socket-name="

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 623
    aget-object v7, p0, v4

    const-string v8, "--socket-name="

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 625
    :cond_2
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown command line argument: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, p0, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 686
    .end local v1    # "abiList":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "socketName":Ljava/lang/String;
    .end local v6    # "startSystemServer":Z
    :catch_0
    move-exception v2

    .line 687
    .local v2, "caller":Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
    invoke-virtual {v2}, Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;->run()V

    .line 693
    .end local v2    # "caller":Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
    :goto_2
    return-void

    .line 629
    .restart local v1    # "abiList":Ljava/lang/String;
    .restart local v4    # "i":I
    .restart local v5    # "socketName":Ljava/lang/String;
    .restart local v6    # "startSystemServer":Z
    :cond_3
    if-nez v1, :cond_4

    .line 630
    :try_start_1
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "No ABI list supplied."

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catch Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 688
    .end local v1    # "abiList":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "socketName":Ljava/lang/String;
    .end local v6    # "startSystemServer":Z
    :catch_1
    move-exception v3

    .line 689
    .local v3, "ex":Ljava/lang/RuntimeException;
    const-string v7, "Zygote"

    const-string v8, "Zygote died with exception"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 690
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->closeServerSocket()V

    .line 691
    throw v3

    .line 633
    .end local v3    # "ex":Ljava/lang/RuntimeException;
    .restart local v1    # "abiList":Ljava/lang/String;
    .restart local v4    # "i":I
    .restart local v5    # "socketName":Ljava/lang/String;
    .restart local v6    # "startSystemServer":Z
    :cond_4
    :try_start_2
    invoke-static {v5}, Lcom/android/internal/os/ZygoteInit;->registerZygoteSocket(Ljava/lang/String;)V

    .line 634
    const/16 v7, 0xbcc

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 636
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preload()V

    .line 637
    const/16 v7, 0xbd6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 641
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->writeZygoteSnapshot()V

    .line 645
    const-string v0, "persist.sys.vzwlogger.zygote"

    .line 646
    .local v0, "VZW_LOGGER_PROPERTY":Ljava/lang/String;
    sget v7, Lcom/android/internal/os/ZygoteInit;->FIRST_INIT:I

    if-nez v7, :cond_9

    .line 648
    const-string v7, "Zygote"

    const-string v8, "FIRST_INIT is default value, FIRST_INIT = 0"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    const-string v7, "sys.zygote.first.init"

    const-string v8, "1"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    sget v7, Lcom/android/internal/os/ZygoteInit;->PREV_SHUTDOWN_STATE:I

    if-eq v7, v10, :cond_5

    sget v7, Lcom/android/internal/os/ZygoteInit;->PREV_SHUTDOWN_STATE:I

    if-nez v7, :cond_6

    .line 653
    :cond_5
    const-string v7, "persist.sys.prev.powerdown"

    const-string v8, "1"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    :cond_6
    sget v7, Lcom/android/internal/os/ZygoteInit;->PREV_SHUTDOWN_STATE:I

    if-eq v7, v10, :cond_8

    sget v7, Lcom/android/internal/os/ZygoteInit;->PREV_SHUTDOWN_STATE:I

    if-eqz v7, :cond_8

    .line 656
    const-string v7, "persist.sys.vzwlogger.zygote"

    const-string v8, "Q022"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    :goto_3
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->gcAndFinalize()V

    .line 676
    const/4 v7, 0x0

    invoke-static {v7}, Landroid/os/Trace;->setTracingEnabled(Z)V

    .line 678
    if-eqz v6, :cond_7

    .line 679
    invoke-static {v1, v5}, Lcom/android/internal/os/ZygoteInit;->startSystemServer(Ljava/lang/String;Ljava/lang/String;)Z

    .line 682
    :cond_7
    const-string v7, "Zygote"

    const-string v8, "Accepting command socket connections"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    invoke-static {v1}, Lcom/android/internal/os/ZygoteInit;->runSelectLoop(Ljava/lang/String;)V

    .line 685
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->closeServerSocket()V

    goto :goto_2

    .line 658
    :cond_8
    const-string v7, "persist.sys.vzwlogger.zygote"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 663
    :cond_9
    const-string v7, "Zygote"

    const-string v8, "FIRST_INIT is not default value, FIRST_INIT = 1"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    const-string v7, "persist.sys.vzwlogger.zygote"

    const-string v8, "Q001"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3
.end method

.method private static performSystemServerDexOpt(Ljava/lang/String;)V
    .locals 11
    .param p0, "classPath"    # Ljava/lang/String;

    .prologue
    .line 512
    const-string v2, ":"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 513
    .local v7, "classPathElements":[Ljava/lang/String;
    new-instance v0, Lcom/android/internal/os/InstallerConnection;

    invoke-direct {v0}, Lcom/android/internal/os/InstallerConnection;-><init>()V

    .line 514
    .local v0, "installer":Lcom/android/internal/os/InstallerConnection;
    invoke-virtual {v0}, Lcom/android/internal/os/InstallerConnection;->waitForConnection()V

    .line 515
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    invoke-virtual {v2}, Ldalvik/system/VMRuntime;->vmInstructionSet()Ljava/lang/String;

    move-result-object v4

    .line 518
    .local v4, "instructionSet":Ljava/lang/String;
    move-object v6, v7

    .local v6, "arr$":[Ljava/lang/String;
    :try_start_0
    array-length v10, v6

    .local v10, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_0
    if-ge v8, v10, :cond_1

    aget-object v1, v6, v8

    .line 519
    .local v1, "classPathElement":Ljava/lang/String;
    const-string v2, "*"

    const/4 v3, 0x0

    invoke-static {v1, v2, v4, v3}, Ldalvik/system/DexFile;->getDexOptNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v5

    .line 521
    .local v5, "dexoptNeeded":I
    if-eqz v5, :cond_0

    .line 522
    const/16 v2, 0x3e8

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/InstallerConnection;->dexopt(Ljava/lang/String;IZLjava/lang/String;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 518
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 529
    .end local v1    # "classPathElement":Ljava/lang/String;
    .end local v5    # "dexoptNeeded":I
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/os/InstallerConnection;->disconnect()V

    .line 531
    return-void

    .line 526
    .end local v8    # "i$":I
    .end local v10    # "len$":I
    :catch_0
    move-exception v9

    .line 527
    .local v9, "ioe":Ljava/io/IOException;
    :try_start_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error starting system_server"

    invoke-direct {v2, v3, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 529
    .end local v9    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Lcom/android/internal/os/InstallerConnection;->disconnect()V

    throw v2
.end method

.method private static varargs posixCapabilitiesAsBits([I)J
    .locals 8
    .param p0, "capabilities"    # [I

    .prologue
    .line 598
    const-wide/16 v4, 0x0

    .line 599
    .local v4, "result":J
    move-object v0, p0

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget v1, v0, v2

    .line 600
    .local v1, "capability":I
    if-ltz v1, :cond_0

    sget v6, Landroid/system/OsConstants;->CAP_LAST_CAP:I

    if-le v1, v6, :cond_1

    .line 601
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 603
    :cond_1
    const-wide/16 v6, 0x1

    shl-long/2addr v6, v1

    or-long/2addr v4, v6

    .line 599
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 605
    .end local v1    # "capability":I
    :cond_2
    return-wide v4
.end method

.method static preload()V
    .locals 2

    .prologue
    .line 212
    const-string v0, "Zygote"

    const-string v1, "begin preload"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadClasses()V

    .line 214
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadResources()V

    .line 215
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadOpenGL()V

    .line 216
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadSharedLibraries()V

    .line 217
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadTextResources()V

    .line 220
    invoke-static {}, Landroid/webkit/WebViewFactory;->prepareWebViewInZygote()V

    .line 223
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->initCustomizationManager()V

    .line 225
    const-string v0, "Zygote"

    const-string v1, "end preload"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    return-void
.end method

.method private static preloadClasses()V
    .locals 18

    .prologue
    .line 253
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v10

    .line 256
    .local v10, "runtime":Ldalvik/system/VMRuntime;
    sget v14, Lcom/android/internal/os/ZygoteInit;->OEM_MFG_MODE:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_1

    .line 258
    const-string v14, "Zygote"

    const-string v15, "OEM MFG mode, skip preload classes..."

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    const-string v14, "/system/etc/preloaded-classes"

    invoke-direct {v6, v14}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    .local v6, "is":Ljava/io/InputStream;
    const-string v14, "Zygote"

    const-string v15, "Preloading classes..."

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 275
    .local v12, "startTime":J
    invoke-static {}, Landroid/system/Os;->getuid()I

    move-result v9

    .line 276
    .local v9, "reuid":I
    invoke-static {}, Landroid/system/Os;->getgid()I

    move-result v8

    .line 281
    .local v8, "regid":I
    const/4 v3, 0x0

    .line 282
    .local v3, "droppedPriviliges":Z
    if-nez v9, :cond_2

    if-nez v8, :cond_2

    .line 284
    const/4 v14, 0x0

    const/16 v15, 0x270f

    :try_start_1
    invoke-static {v14, v15}, Landroid/system/Os;->setregid(II)V

    .line 285
    const/4 v14, 0x0

    const/16 v15, 0x270f

    invoke-static {v14, v15}, Landroid/system/Os;->setreuid(II)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_1

    .line 290
    const/4 v3, 0x1

    .line 295
    :cond_2
    invoke-virtual {v10}, Ldalvik/system/VMRuntime;->getTargetHeapUtilization()F

    move-result v2

    .line 296
    .local v2, "defaultUtilization":F
    const v14, 0x3f4ccccd    # 0.8f

    invoke-virtual {v10, v14}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 299
    :try_start_2
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/InputStreamReader;

    invoke-direct {v14, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v15, 0x100

    invoke-direct {v0, v14, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 302
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 304
    .local v1, "count":I
    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, "line":Ljava/lang/String;
    if-eqz v7, :cond_7

    .line 306
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 307
    const-string v14, "#"

    invoke-virtual {v7, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_3

    const-string v14, ""

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v14

    if-nez v14, :cond_3

    .line 320
    const/4 v14, 0x1

    const/4 v15, 0x0

    :try_start_3
    invoke-static {v7, v14, v15}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 321
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 266
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "count":I
    .end local v2    # "defaultUtilization":F
    .end local v3    # "droppedPriviliges":Z
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v7    # "line":Ljava/lang/String;
    .end local v8    # "regid":I
    .end local v9    # "reuid":I
    .end local v12    # "startTime":J
    :catch_0
    move-exception v4

    .line 267
    .local v4, "e":Ljava/io/FileNotFoundException;
    const-string v14, "Zygote"

    const-string v15, "Couldn\'t find /system/etc/preloaded-classes."

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 286
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "droppedPriviliges":Z
    .restart local v6    # "is":Ljava/io/InputStream;
    .restart local v8    # "regid":I
    .restart local v9    # "reuid":I
    .restart local v12    # "startTime":J
    :catch_1
    move-exception v5

    .line 287
    .local v5, "ex":Landroid/system/ErrnoException;
    new-instance v14, Ljava/lang/RuntimeException;

    const-string v15, "Failed to drop root"

    invoke-direct {v14, v15, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14

    .line 322
    .end local v5    # "ex":Landroid/system/ErrnoException;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "count":I
    .restart local v2    # "defaultUtilization":F
    .restart local v7    # "line":Ljava/lang/String;
    :catch_2
    move-exception v4

    .line 323
    .local v4, "e":Ljava/lang/ClassNotFoundException;
    :try_start_4
    const-string v14, "Zygote"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Class not found for preloading: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 340
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "count":I
    .end local v4    # "e":Ljava/lang/ClassNotFoundException;
    .end local v7    # "line":Ljava/lang/String;
    :catch_3
    move-exception v4

    .line 341
    .local v4, "e":Ljava/io/IOException;
    :try_start_5
    const-string v14, "Zygote"

    const-string v15, "Error reading /system/etc/preloaded-classes."

    invoke-static {v14, v15, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 343
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 345
    invoke-virtual {v10, v2}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 348
    invoke-virtual {v10}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    .line 351
    if-eqz v3, :cond_0

    .line 353
    const/4 v14, 0x0

    const/4 v15, 0x0

    :try_start_6
    invoke-static {v14, v15}, Landroid/system/Os;->setreuid(II)V

    .line 354
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v14, v15}, Landroid/system/Os;->setregid(II)V
    :try_end_6
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    .line 355
    :catch_4
    move-exception v5

    .line 356
    .restart local v5    # "ex":Landroid/system/ErrnoException;
    new-instance v14, Ljava/lang/RuntimeException;

    const-string v15, "Failed to restore root"

    invoke-direct {v14, v15, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14

    .line 324
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "ex":Landroid/system/ErrnoException;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "count":I
    .restart local v7    # "line":Ljava/lang/String;
    :catch_5
    move-exception v4

    .line 325
    .local v4, "e":Ljava/lang/UnsatisfiedLinkError;
    :try_start_7
    const-string v14, "Zygote"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Problem preloading "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ": "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    .line 343
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "count":I
    .end local v4    # "e":Ljava/lang/UnsatisfiedLinkError;
    .end local v7    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v14

    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 345
    invoke-virtual {v10, v2}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 348
    invoke-virtual {v10}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    .line 351
    if-eqz v3, :cond_4

    .line 353
    const/4 v15, 0x0

    const/16 v16, 0x0

    :try_start_8
    invoke-static/range {v15 .. v16}, Landroid/system/Os;->setreuid(II)V

    .line 354
    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Landroid/system/Os;->setregid(II)V
    :try_end_8
    .catch Landroid/system/ErrnoException; {:try_start_8 .. :try_end_8} :catch_8

    .line 356
    :cond_4
    throw v14

    .line 326
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "count":I
    .restart local v7    # "line":Ljava/lang/String;
    :catch_6
    move-exception v11

    .line 327
    .local v11, "t":Ljava/lang/Throwable;
    :try_start_9
    const-string v14, "Zygote"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Error preloading "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 328
    instance-of v14, v11, Ljava/lang/Error;

    if-eqz v14, :cond_5

    .line 329
    check-cast v11, Ljava/lang/Error;

    .end local v11    # "t":Ljava/lang/Throwable;
    throw v11

    .line 331
    .restart local v11    # "t":Ljava/lang/Throwable;
    :cond_5
    instance-of v14, v11, Ljava/lang/RuntimeException;

    if-eqz v14, :cond_6

    .line 332
    check-cast v11, Ljava/lang/RuntimeException;

    .end local v11    # "t":Ljava/lang/Throwable;
    throw v11

    .line 334
    .restart local v11    # "t":Ljava/lang/Throwable;
    :cond_6
    new-instance v14, Ljava/lang/RuntimeException;

    invoke-direct {v14, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v14

    .line 338
    .end local v11    # "t":Ljava/lang/Throwable;
    :cond_7
    const-string v14, "Zygote"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "...preloaded "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " classes in "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v12

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "ms."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 343
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 345
    invoke-virtual {v10, v2}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 348
    invoke-virtual {v10}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    .line 351
    if-eqz v3, :cond_0

    .line 353
    const/4 v14, 0x0

    const/4 v15, 0x0

    :try_start_a
    invoke-static {v14, v15}, Landroid/system/Os;->setreuid(II)V

    .line 354
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v14, v15}, Landroid/system/Os;->setregid(II)V
    :try_end_a
    .catch Landroid/system/ErrnoException; {:try_start_a .. :try_end_a} :catch_7

    goto/16 :goto_0

    .line 355
    :catch_7
    move-exception v5

    .line 356
    .restart local v5    # "ex":Landroid/system/ErrnoException;
    new-instance v14, Ljava/lang/RuntimeException;

    const-string v15, "Failed to restore root"

    invoke-direct {v14, v15, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14

    .line 355
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "count":I
    .end local v5    # "ex":Landroid/system/ErrnoException;
    .end local v7    # "line":Ljava/lang/String;
    :catch_8
    move-exception v5

    .line 356
    .restart local v5    # "ex":Landroid/system/ErrnoException;
    new-instance v14, Ljava/lang/RuntimeException;

    const-string v15, "Failed to restore root"

    invoke-direct {v14, v15, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14
.end method

.method private static preloadColorStateLists(Ldalvik/system/VMRuntime;Landroid/content/res/TypedArray;)I
    .locals 6
    .param p0, "runtime"    # Ldalvik/system/VMRuntime;
    .param p1, "ar"    # Landroid/content/res/TypedArray;

    .prologue
    .line 401
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 402
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 403
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 407
    .local v2, "id":I
    if-eqz v2, :cond_0

    .line 408
    sget-object v3, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v3

    if-nez v3, :cond_0

    .line 409
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find preloaded color resource #0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 402
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 416
    .end local v2    # "id":I
    :cond_1
    return v0
.end method

.method private static preloadDrawables(Ldalvik/system/VMRuntime;Landroid/content/res/TypedArray;)I
    .locals 6
    .param p0, "runtime"    # Ldalvik/system/VMRuntime;
    .param p1, "ar"    # Landroid/content/res/TypedArray;

    .prologue
    .line 421
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 422
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 423
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 427
    .local v2, "id":I
    if-eqz v2, :cond_0

    .line 428
    sget-object v3, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_0

    .line 429
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find preloaded drawable resource #0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 422
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 436
    .end local v2    # "id":I
    :cond_1
    return v0
.end method

.method private static preloadOpenGL()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 236
    const-string v0, "ro.zygote.disable_gl_preload"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    invoke-static {v1}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    .line 239
    :cond_0
    return-void
.end method

.method private static preloadResources()V
    .locals 10

    .prologue
    .line 370
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    .line 373
    .local v3, "runtime":Ldalvik/system/VMRuntime;
    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    sput-object v6, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    .line 374
    sget-object v6, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v6}, Landroid/content/res/Resources;->startPreloading()V

    .line 376
    const-string v6, "Zygote"

    const-string v7, "Preloading resources..."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 379
    .local v4, "startTime":J
    sget-object v6, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    const v7, 0x1070006

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 381
    .local v1, "ar":Landroid/content/res/TypedArray;
    invoke-static {v3, v1}, Lcom/android/internal/os/ZygoteInit;->preloadDrawables(Ldalvik/system/VMRuntime;Landroid/content/res/TypedArray;)I

    move-result v0

    .line 382
    .local v0, "N":I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 383
    const-string v6, "Zygote"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "...preloaded "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " resources in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 387
    sget-object v6, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    const v7, 0x1070007

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 389
    invoke-static {v3, v1}, Lcom/android/internal/os/ZygoteInit;->preloadColorStateLists(Ldalvik/system/VMRuntime;Landroid/content/res/TypedArray;)I

    move-result v0

    .line 390
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 391
    const-string v6, "Zygote"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "...preloaded "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " resources in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    sget-object v6, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v6}, Landroid/content/res/Resources;->finishPreloading()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    .end local v0    # "N":I
    .end local v1    # "ar":Landroid/content/res/TypedArray;
    .end local v4    # "startTime":J
    :goto_0
    return-void

    .line 395
    :catch_0
    move-exception v2

    .line 396
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v6, "Zygote"

    const-string v7, "Failure preloading resources"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static preloadSharedLibraries()V
    .locals 2

    .prologue
    .line 229
    const-string v0, "Zygote"

    const-string v1, "Preloading shared libraries..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const-string v0, "android"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 231
    const-string v0, "compiler_rt"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 232
    const-string v0, "jnigraphics"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method private static preloadTextResources()V
    .locals 0

    .prologue
    .line 242
    invoke-static {}, Landroid/text/Hyphenator;->init()V

    .line 243
    return-void
.end method

.method private static registerZygoteSocket(Ljava/lang/String;)V
    .locals 8
    .param p0, "socketName"    # Ljava/lang/String;

    .prologue
    .line 128
    sget-object v5, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    if-nez v5, :cond_0

    .line 130
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ANDROID_SOCKET_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 132
    .local v4, "fullSocketName":Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "env":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 139
    .local v3, "fileDesc":I
    :try_start_1
    new-instance v2, Ljava/io/FileDescriptor;

    invoke-direct {v2}, Ljava/io/FileDescriptor;-><init>()V

    .line 140
    .local v2, "fd":Ljava/io/FileDescriptor;
    invoke-virtual {v2, v3}, Ljava/io/FileDescriptor;->setInt$(I)V

    .line 141
    new-instance v5, Landroid/net/LocalServerSocket;

    invoke-direct {v5, v2}, Landroid/net/LocalServerSocket;-><init>(Ljava/io/FileDescriptor;)V

    sput-object v5, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 147
    .end local v0    # "env":Ljava/lang/String;
    .end local v2    # "fd":Ljava/io/FileDescriptor;
    .end local v3    # "fileDesc":I
    .end local v4    # "fullSocketName":Ljava/lang/String;
    :cond_0
    return-void

    .line 134
    .restart local v4    # "fullSocketName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 135
    .local v1, "ex":Ljava/lang/RuntimeException;
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " unset or invalid"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 142
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    .restart local v0    # "env":Ljava/lang/String;
    .restart local v3    # "fileDesc":I
    :catch_1
    move-exception v1

    .line 143
    .local v1, "ex":Ljava/io/IOException;
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error binding to local socket \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method private static runSelectLoop(Ljava/lang/String;)V
    .locals 9
    .param p0, "abiList"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
        }
    .end annotation

    .prologue
    .line 734
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 735
    .local v2, "fds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/FileDescriptor;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 737
    .local v5, "peers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/ZygoteConnection;>;"
    sget-object v7, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v7}, Landroid/net/LocalServerSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 738
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 741
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v6, v7, [Landroid/system/StructPollfd;

    .line 742
    .local v6, "pollFds":[Landroid/system/StructPollfd;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v7, v6

    if-ge v3, v7, :cond_1

    .line 743
    new-instance v7, Landroid/system/StructPollfd;

    invoke-direct {v7}, Landroid/system/StructPollfd;-><init>()V

    aput-object v7, v6, v3

    .line 744
    aget-object v8, v6, v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/FileDescriptor;

    iput-object v7, v8, Landroid/system/StructPollfd;->fd:Ljava/io/FileDescriptor;

    .line 745
    aget-object v7, v6, v3

    sget v8, Landroid/system/OsConstants;->POLLIN:I

    int-to-short v8, v8

    iput-short v8, v7, Landroid/system/StructPollfd;->events:S

    .line 742
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 748
    :cond_1
    const/4 v7, -0x1

    :try_start_0
    invoke-static {v6, v7}, Landroid/system/Os;->poll([Landroid/system/StructPollfd;I)I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 752
    array-length v7, v6

    add-int/lit8 v3, v7, -0x1

    :goto_1
    if-ltz v3, :cond_0

    .line 753
    aget-object v7, v6, v3

    iget-short v7, v7, Landroid/system/StructPollfd;->revents:S

    sget v8, Landroid/system/OsConstants;->POLLIN:I

    and-int/2addr v7, v8

    if-nez v7, :cond_3

    .line 752
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 749
    :catch_0
    move-exception v1

    .line 750
    .local v1, "ex":Landroid/system/ErrnoException;
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "poll failed"

    invoke-direct {v7, v8, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 756
    .end local v1    # "ex":Landroid/system/ErrnoException;
    :cond_3
    if-nez v3, :cond_4

    .line 757
    invoke-static {p0}, Lcom/android/internal/os/ZygoteInit;->acceptCommandPeer(Ljava/lang/String;)Lcom/android/internal/os/ZygoteConnection;

    move-result-object v4

    .line 758
    .local v4, "newPeer":Lcom/android/internal/os/ZygoteConnection;
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 759
    invoke-virtual {v4}, Lcom/android/internal/os/ZygoteConnection;->getFileDesciptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 761
    .end local v4    # "newPeer":Lcom/android/internal/os/ZygoteConnection;
    :cond_4
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/os/ZygoteConnection;

    invoke-virtual {v7}, Lcom/android/internal/os/ZygoteConnection;->runOnce()Z

    move-result v0

    .line 762
    .local v0, "done":Z
    if-eqz v0, :cond_2

    .line 763
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 764
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2
.end method

.method private static startSystemServer(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 16
    .param p0, "abiList"    # Ljava/lang/String;
    .param p1, "socketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 538
    const/16 v1, 0xb

    new-array v1, v1, [I

    const/4 v2, 0x0

    sget v3, Landroid/system/OsConstants;->CAP_BLOCK_SUSPEND:I

    aput v3, v1, v2

    const/4 v2, 0x1

    sget v3, Landroid/system/OsConstants;->CAP_KILL:I

    aput v3, v1, v2

    const/4 v2, 0x2

    sget v3, Landroid/system/OsConstants;->CAP_NET_ADMIN:I

    aput v3, v1, v2

    const/4 v2, 0x3

    sget v3, Landroid/system/OsConstants;->CAP_NET_BIND_SERVICE:I

    aput v3, v1, v2

    const/4 v2, 0x4

    sget v3, Landroid/system/OsConstants;->CAP_NET_BROADCAST:I

    aput v3, v1, v2

    const/4 v2, 0x5

    sget v3, Landroid/system/OsConstants;->CAP_NET_RAW:I

    aput v3, v1, v2

    const/4 v2, 0x6

    sget v3, Landroid/system/OsConstants;->CAP_SYS_MODULE:I

    aput v3, v1, v2

    const/4 v2, 0x7

    sget v3, Landroid/system/OsConstants;->CAP_SYS_NICE:I

    aput v3, v1, v2

    const/16 v2, 0x8

    sget v3, Landroid/system/OsConstants;->CAP_SYS_RESOURCE:I

    aput v3, v1, v2

    const/16 v2, 0x9

    sget v3, Landroid/system/OsConstants;->CAP_SYS_TIME:I

    aput v3, v1, v2

    const/16 v2, 0xa

    sget v3, Landroid/system/OsConstants;->CAP_SYS_TTY_CONFIG:I

    aput v3, v1, v2

    invoke-static {v1}, Lcom/android/internal/os/ZygoteInit;->posixCapabilitiesAsBits([I)J

    move-result-wide v10

    .line 552
    .local v10, "capabilities":J
    const/4 v1, 0x7

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "--setuid=1000"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "--setgid=1000"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "--setgroups=1001,1002,1003,1004,1005,1006,1007,1008,1009,1010,1018,1021,1032,3001,3002,3003,3006,3007,5001,5011"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--capabilities="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "--nice-name=system_server"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "--runtime-args"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.android.server.SystemServer"

    aput-object v2, v0, v1

    .line 561
    .local v0, "args":[Ljava/lang/String;
    const/4 v13, 0x0

    .line 566
    .local v13, "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    :try_start_0
    new-instance v14, Lcom/android/internal/os/ZygoteConnection$Arguments;

    invoke-direct {v14, v0}, Lcom/android/internal/os/ZygoteConnection$Arguments;-><init>([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 567
    .end local v13    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    .local v14, "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    :try_start_1
    invoke-static {v14}, Lcom/android/internal/os/ZygoteConnection;->applyDebuggerSystemProperty(Lcom/android/internal/os/ZygoteConnection$Arguments;)V

    .line 568
    invoke-static {v14}, Lcom/android/internal/os/ZygoteConnection;->applyInvokeWithSystemProperty(Lcom/android/internal/os/ZygoteConnection$Arguments;)V

    .line 571
    iget v1, v14, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    iget v2, v14, Lcom/android/internal/os/ZygoteConnection$Arguments;->gid:I

    iget-object v3, v14, Lcom/android/internal/os/ZygoteConnection$Arguments;->gids:[I

    iget v4, v14, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    invoke-static {}, Lmiui/patchrom/ClassHook;->initCoreHook()V

    const/4 v5, 0x0

    check-cast v5, [[I

    iget-wide v6, v14, Lcom/android/internal/os/ZygoteConnection$Arguments;->permittedCapabilities:J

    iget-wide v8, v14, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J

    invoke-static/range {v1 .. v9}, Lcom/android/internal/os/Zygote;->forkSystemServer(II[II[[IJJ)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v15

    .line 583
    .local v15, "pid":I
    if-nez v15, :cond_1

    .line 584
    invoke-static/range {p0 .. p0}, Lcom/android/internal/os/ZygoteInit;->hasSecondZygote(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 585
    invoke-static/range {p1 .. p1}, Lcom/android/internal/os/ZygoteInit;->waitForSecondaryZygote(Ljava/lang/String;)V

    .line 588
    :cond_0
    invoke-static {v14}, Lcom/android/internal/os/ZygoteInit;->handleSystemServerProcess(Lcom/android/internal/os/ZygoteConnection$Arguments;)V

    .line 591
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 578
    .end local v14    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    .end local v15    # "pid":I
    .restart local v13    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    :catch_0
    move-exception v12

    .line 579
    .local v12, "ex":Ljava/lang/IllegalArgumentException;
    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 578
    .end local v12    # "ex":Ljava/lang/IllegalArgumentException;
    .end local v13    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    .restart local v14    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    :catch_1
    move-exception v12

    move-object v13, v14

    .end local v14    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    .restart local v13    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    goto :goto_0
.end method

.method private static waitForSecondaryZygote(Ljava/lang/String;)V
    .locals 6
    .param p0, "socketName"    # Ljava/lang/String;

    .prologue
    .line 707
    const-string v3, "zygote"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v1, "zygote_secondary"

    .line 711
    .local v1, "otherZygoteName":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-static {v1}, Landroid/os/Process$ZygoteState;->connect(Ljava/lang/String;)Landroid/os/Process$ZygoteState;

    move-result-object v2

    .line 712
    .local v2, "zs":Landroid/os/Process$ZygoteState;
    invoke-virtual {v2}, Landroid/os/Process$ZygoteState;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 723
    return-void

    .line 707
    .end local v1    # "otherZygoteName":Ljava/lang/String;
    .end local v2    # "zs":Landroid/os/Process$ZygoteState;
    :cond_0
    const-string v1, "zygote"

    goto :goto_0

    .line 714
    .restart local v1    # "otherZygoteName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 715
    .local v0, "ioe":Ljava/io/IOException;
    const-string v3, "Zygote"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got error connecting to zygote, retrying. msg= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    const-wide/16 v4, 0x3e8

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 720
    :catch_1
    move-exception v3

    goto :goto_0
.end method
