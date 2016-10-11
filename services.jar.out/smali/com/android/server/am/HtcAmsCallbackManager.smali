.class public Lcom/android/server/am/HtcAmsCallbackManager;
.super Ljava/lang/Object;
.source "HtcAmsCallbackManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/HtcAmsCallbackManager$CallbackChecker;,
        Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase;,
        Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;,
        Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;,
        Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;,
        Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;,
        Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    }
.end annotation


# static fields
.field private static final DEEP_DEBUG:Z = false

.field private static final FUNCID_ACTIVITY_PAUSED:I = 0x13

.field private static final FUNCID_ACTIVITY_RESUMED:I = 0x12

.field private static final FUNCID_ADD_RECENT_TASK:I = 0xb

.field private static final FUNCID_AFTER_START_ACTIVITY:I = 0x16

.field private static final FUNCID_AMS_SLEEPING:I = 0x1a

.field private static final FUNCID_APPLICATION_CRASH:I = 0xd

.field private static final FUNCID_APP_DIED:I = 0xe

.field private static final FUNCID_APP_DIED_V2:I = 0x19

.field private static final FUNCID_ATTACH_APPLICATION:I = 0x9

.field private static final FUNCID_BEFORE_START_ACTIVITY:I = 0x15

.field private static final FUNCID_BROADCAST_INTENT:I = 0xc

.field private static final FUNCID_CLEAN_UP_APPLICATION_RECORD:I = 0x10

.field private static final FUNCID_CRASH_APPLICATION:I = 0xf

.field private static final FUNCID_FINISH_BOOTING:I = 0x2

.field private static final FUNCID_GENERATE_APPLICATION_PROVIDERS:I = 0xa

.field private static final FUNCID_GENERATE_PROCESS_ERROR:I = 0x18

.field private static final FUNCID_GOING_TO_SLEEP:I = 0x3

.field private static final FUNCID_MAIN:I = 0x1

.field private static final FUNCID_MAX:I = 0x1b

.field private static final FUNCID_MIN:I = 0x1

.field private static final FUNCID_REAL_APP_NOT_RESPONDING:I = 0x7

.field private static final FUNCID_REMOVE_PROCESS:I = 0x8

.field private static final FUNCID_SHUTDOWN:I = 0x14

.field private static final FUNCID_START_ACTIVITY_NEW_INTENT:I = 0x17

.field private static final FUNCID_START_PROCESS:I = 0x6

.field private static final FUNCID_START_PROCESS_NEW_PACKAGE:I = 0x5

.field private static final FUNCID_TOP_APP_CHANGED:I = 0x11

.field private static final FUNCID_WAKING_UP:I = 0x4

.field private static final HTC_DEBUG:Z

.field private static final MAIN_TIMEOUT:J = 0xbb8L

.field private static final MESSAGE_TIMEOUT:J = 0x1f4L

.field private static final MSG_AMS_CALLBACK:I = 0x1

.field private static final MSG_WATCHDOG_CHECK_WORKING_THREAD:I = 0x2

.field private static final SHUTDOWN_TIMEOUT:J = 0x1388L

.field private static final TAG:Ljava/lang/String; = "HtcAmsCallbackManager"

.field private static final WATCHDOG_CHECK_WORKING_THREAD_DELAY:J = 0x2710L

.field private static final WATCHDOG_TIMEOUT:J = 0x7530L


# instance fields
.field private mCallbacks:[Ljava/util/ArrayList;

.field private volatile mIsMainFinished:Z

.field private volatile mIsShutdownFinished:Z

.field private mMainFinishSignal:Ljava/lang/Object;

.field private mShutdownFinishSignal:Ljava/lang/Object;

.field private mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

.field private mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

.field private mWorkingThread:Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/server/am/HtcAmsCallbackManager;->HTC_DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;)V
    .locals 5
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    const/16 v4, 0x1b

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingThread:Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;

    .line 73
    iput-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    .line 74
    new-array v1, v4, [Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    .line 76
    iput-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    .line 393
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mMainFinishSignal:Ljava/lang/Object;

    .line 394
    iput-boolean v3, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mIsMainFinished:Z

    .line 446
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mShutdownFinishSignal:Ljava/lang/Object;

    .line 447
    iput-boolean v3, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mIsShutdownFinished:Z

    .line 79
    new-instance v1, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-direct {v1, p0, p2}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;-><init>(Lcom/android/server/am/HtcAmsCallbackManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    .line 81
    const/4 v0, 0x1

    .local v0, "funcid":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 82
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    aput-object v2, v1, v0

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_0
    new-instance v1, Lcom/android/server/am/HtcAmsCallbackListener;

    invoke-direct {v1}, Lcom/android/server/am/HtcAmsCallbackListener;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/server/am/HtcAmsCallbackManager;->addCallbacks(Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;)V

    .line 91
    new-instance v1, Lcom/htc/server/report/error/HtcErrorReportAmsListener;

    invoke-direct {v1}, Lcom/htc/server/report/error/HtcErrorReportAmsListener;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/server/am/HtcAmsCallbackManager;->addCallbacks(Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;)V

    .line 94
    new-instance v1, Lcom/htc/server/report/up/HtcUPDataAMSListener;

    invoke-direct {v1}, Lcom/htc/server/report/up/HtcUPDataAMSListener;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/server/am/HtcAmsCallbackManager;->addCallbacks(Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;)V

    .line 114
    new-instance v1, Lcom/htc/server/report/ub/HtcDeviceInfoAmsListener;

    invoke-direct {v1}, Lcom/htc/server/report/ub/HtcDeviceInfoAmsListener;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/server/am/HtcAmsCallbackManager;->addCallbacks(Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;)V

    .line 118
    const-string v1, "com.htc.server.HtcMirrorLinkAmsListener"

    invoke-virtual {p0, v1}, Lcom/android/server/am/HtcAmsCallbackManager;->addCallbacks(Ljava/lang/String;)V

    .line 138
    new-instance v1, Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;

    const-string v2, "HtcAmsCallbackManager"

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;-><init>(Lcom/android/server/am/HtcAmsCallbackManager;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingThread:Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;

    .line 139
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingThread:Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;

    invoke-virtual {v1}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;->start()V

    .line 140
    new-instance v1, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingThread:Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;

    invoke-virtual {v2}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;-><init>(Lcom/android/server/am/HtcAmsCallbackManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    .line 142
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->init()V

    .line 143
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/HtcAmsCallbackManager;)Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/HtcAmsCallbackManager;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/HtcAmsCallbackManager;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/HtcAmsCallbackManager;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/server/am/HtcAmsCallbackManager;->handleAmsCallback(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/am/HtcAmsCallbackManager;)Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/HtcAmsCallbackManager;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingThread:Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/am/HtcAmsCallbackManager;)Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/HtcAmsCallbackManager;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    return-object v0
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 27
    sget-boolean v0, Lcom/android/server/am/HtcAmsCallbackManager;->HTC_DEBUG:Z

    return v0
.end method

.method private handleActivityPaused(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    .locals 8
    .param p1, "params"    # Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    .prologue
    .line 971
    iget-object v0, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcWrapActivityRecord;

    .line 972
    .local v0, "activity":Lcom/android/server/am/HtcWrapActivityRecord;
    iget-object v6, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v7, 0x13

    aget-object v1, v6, v7

    .line 974
    .local v1, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .line 976
    .local v2, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v2, v0}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onHandleActivityPaused(Lcom/android/server/am/HtcWrapActivityRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 977
    :catch_0
    move-exception v3

    .line 978
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v5

    .line 979
    .local v5, "strBuilder":Ljava/lang/StringBuilder;
    const-string v6, "Callback "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " crashed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 980
    const-string v6, "HtcAmsCallbackManager"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 983
    .end local v2    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    # invokes: Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->access$200(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    .line 984
    return-void
.end method

.method private handleActivityResumed(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    .locals 8
    .param p1, "params"    # Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    .prologue
    .line 946
    iget-object v0, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcWrapActivityRecord;

    .line 947
    .local v0, "activity":Lcom/android/server/am/HtcWrapActivityRecord;
    iget-object v6, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v7, 0x12

    aget-object v1, v6, v7

    .line 949
    .local v1, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .line 951
    .local v2, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v2, v0}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onHandleActivityResumed(Lcom/android/server/am/HtcWrapActivityRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 952
    :catch_0
    move-exception v3

    .line 953
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v5

    .line 954
    .local v5, "strBuilder":Ljava/lang/StringBuilder;
    const-string v6, "Callback "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " crashed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 955
    const-string v6, "HtcAmsCallbackManager"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 958
    .end local v2    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    # invokes: Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->access$200(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    .line 959
    return-void
.end method

.method private handleAddRecentTask(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    .locals 9
    .param p1, "params"    # Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 734
    iget-object v6, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/am/HtcWrapTaskRecord;

    .line 735
    .local v6, "task":Lcom/android/server/am/HtcWrapTaskRecord;
    iget-object v4, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param2:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/HtcWrapTaskRecord;

    .line 736
    .local v4, "prevTask":Lcom/android/server/am/HtcWrapTaskRecord;
    iget-object v7, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v8, 0xb

    aget-object v0, v7, v8

    .line 738
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .line 740
    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1, v6, v4}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onAddRecentTask(Lcom/android/server/am/HtcWrapTaskRecord;Lcom/android/server/am/HtcWrapTaskRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 741
    :catch_0
    move-exception v2

    .line 742
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v5

    .line 743
    .local v5, "strBuilder":Ljava/lang/StringBuilder;
    const-string v7, "Callback "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " crashed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    const-string v7, "HtcAmsCallbackManager"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 747
    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    # invokes: Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->access$200(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    .line 748
    return-void
.end method

.method private handleAfterStartActivity()V
    .locals 7

    .prologue
    .line 1017
    iget-object v5, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v6, 0x16

    aget-object v0, v5, v6

    .line 1019
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .line 1021
    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->afterStartActivityUncheckedLocked()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1022
    :catch_0
    move-exception v2

    .line 1023
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1024
    .local v4, "strBuilder":Ljava/lang/StringBuilder;
    const-string v5, "Callback "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " crashed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1025
    const-string v5, "HtcAmsCallbackManager"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1028
    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    return-void
.end method

.method private handleAmsCallback(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 283
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_0

    .line 390
    :goto_0
    :pswitch_0
    return-void

    .line 286
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    invoke-direct {p0, v0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleMain(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    goto :goto_0

    .line 290
    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleFinishBooting()V

    goto :goto_0

    .line 294
    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleGoingToSleep()V

    goto :goto_0

    .line 298
    :pswitch_4
    invoke-direct {p0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleWakingUp()V

    goto :goto_0

    .line 302
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    invoke-direct {p0, v0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleStartProcessNewPackage(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    goto :goto_0

    .line 306
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    invoke-direct {p0, v0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleStartProcess(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    goto :goto_0

    .line 310
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    invoke-direct {p0, v0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleRealAppNotResponding(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    goto :goto_0

    .line 314
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    invoke-direct {p0, v0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleRemoveProcess(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    goto :goto_0

    .line 318
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    invoke-direct {p0, v0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleAttachApplication(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    goto :goto_0

    .line 322
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    invoke-direct {p0, v0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleGenerateApplicationProviders(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    goto :goto_0

    .line 331
    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    invoke-direct {p0, v0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleBroadcastIntent(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    goto :goto_0

    .line 335
    :pswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    invoke-direct {p0, v0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleApplicationCrash(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    goto :goto_0

    .line 339
    :pswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    invoke-direct {p0, v0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleAppDied(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    goto :goto_0

    .line 343
    :pswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    invoke-direct {p0, v0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleCrashApplication(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    goto :goto_0

    .line 347
    :pswitch_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    invoke-direct {p0, v0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleCleanUpApplicationRecord(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    goto :goto_0

    .line 351
    :pswitch_10
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    invoke-direct {p0, v0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleTopAppChanged(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    goto :goto_0

    .line 355
    :pswitch_11
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    invoke-direct {p0, v0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleActivityResumed(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    goto :goto_0

    .line 359
    :pswitch_12
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    invoke-direct {p0, v0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleActivityPaused(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    goto/16 :goto_0

    .line 363
    :pswitch_13
    invoke-direct {p0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleShutdown()V

    goto/16 :goto_0

    .line 367
    :pswitch_14
    invoke-direct {p0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleBeforeStartActivity()V

    goto/16 :goto_0

    .line 371
    :pswitch_15
    invoke-direct {p0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleAfterStartActivity()V

    goto/16 :goto_0

    .line 375
    :pswitch_16
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    invoke-direct {p0, v0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleStartActivityNewIntent(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    goto/16 :goto_0

    .line 379
    :pswitch_17
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    invoke-direct {p0, v0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleGenerateProcessError(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    goto/16 :goto_0

    .line 383
    :pswitch_18
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    invoke-direct {p0, v0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleAppDiedV2(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    goto/16 :goto_0

    .line 387
    :pswitch_19
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    invoke-direct {p0, v0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleAmsSleeping(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    goto/16 :goto_0

    .line 283
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
    .end packed-switch
.end method

.method private handleAmsSleeping(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    .locals 8
    .param p1, "params"    # Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    .prologue
    .line 1125
    iget-object v6, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 1126
    .local v4, "sleeping":Z
    iget-object v6, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v7, 0x1a

    aget-object v0, v6, v7

    .line 1128
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .line 1130
    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1, v4}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onAmsSleeping(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1131
    :catch_0
    move-exception v2

    .line 1132
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1133
    .local v5, "strBuilder":Ljava/lang/StringBuilder;
    const-string v6, "Callback "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " crashed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1134
    const-string v6, "HtcAmsCallbackManager"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1137
    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    # invokes: Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->access$200(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    .line 1138
    return-void
.end method

.method private handleAppDied(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    .locals 8
    .param p1, "params"    # Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    .prologue
    .line 845
    iget-object v4, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/HtcWrapProcessRecord;

    .line 846
    .local v4, "process":Lcom/android/server/am/HtcWrapProcessRecord;
    iget-object v6, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v7, 0xe

    aget-object v0, v6, v7

    .line 848
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .line 850
    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1, v4}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onAppDiedLocked(Lcom/android/server/am/HtcWrapProcessRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 851
    :catch_0
    move-exception v2

    .line 852
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v5

    .line 853
    .local v5, "strBuilder":Ljava/lang/StringBuilder;
    const-string v6, "Callback "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " crashed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 854
    const-string v6, "HtcAmsCallbackManager"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 857
    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    # invokes: Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->access$200(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    .line 858
    return-void
.end method

.method private handleAppDiedV2(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    .locals 8
    .param p1, "params"    # Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    .prologue
    .line 1100
    iget-object v4, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/HtcWrapProcessRecord;

    .line 1101
    .local v4, "process":Lcom/android/server/am/HtcWrapProcessRecord;
    iget-object v6, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v7, 0x19

    aget-object v0, v6, v7

    .line 1103
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .line 1105
    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1, v4}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onAppDiedLockedV2(Lcom/android/server/am/HtcWrapProcessRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1106
    :catch_0
    move-exception v2

    .line 1107
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1108
    .local v5, "strBuilder":Ljava/lang/StringBuilder;
    const-string v6, "Callback "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " crashed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1109
    const-string v6, "HtcAmsCallbackManager"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1112
    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    # invokes: Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->access$200(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    .line 1113
    return-void
.end method

.method private handleApplicationCrash(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    .locals 9
    .param p1, "params"    # Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    .prologue
    .line 817
    iget-object v5, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/am/HtcWrapProcessRecord;

    .line 818
    .local v5, "process":Lcom/android/server/am/HtcWrapProcessRecord;
    iget-object v4, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param2:Ljava/lang/Object;

    check-cast v4, Ljava/util/HashSet;

    .line 819
    .local v4, "pkgList":Ljava/util/HashSet;
    iget-object v7, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v8, 0xd

    aget-object v0, v7, v8

    .line 821
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .line 823
    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1, v5, v4}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onHandleApplicationCrashV2(Lcom/android/server/am/HtcWrapProcessRecord;Ljava/util/HashSet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 824
    :catch_0
    move-exception v2

    .line 825
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v6

    .line 826
    .local v6, "strBuilder":Ljava/lang/StringBuilder;
    const-string v7, "Callback "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " crashed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 827
    const-string v7, "HtcAmsCallbackManager"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 830
    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v6    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    # invokes: Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->access$200(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    .line 831
    return-void
.end method

.method private handleAttachApplication(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    .locals 8
    .param p1, "params"    # Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    .prologue
    .line 677
    iget-object v4, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/HtcWrapProcessRecord;

    .line 678
    .local v4, "process":Lcom/android/server/am/HtcWrapProcessRecord;
    iget-object v6, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v7, 0x9

    aget-object v0, v6, v7

    .line 680
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .line 682
    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1, v4}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onAttachApplicationLocked(Lcom/android/server/am/HtcWrapProcessRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 683
    :catch_0
    move-exception v2

    .line 684
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v5

    .line 685
    .local v5, "strBuilder":Ljava/lang/StringBuilder;
    const-string v6, "Callback "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " crashed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    const-string v6, "HtcAmsCallbackManager"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 689
    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    # invokes: Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->access$200(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    .line 690
    return-void
.end method

.method private handleBeforeStartActivity()V
    .locals 7

    .prologue
    .line 995
    iget-object v5, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v6, 0x15

    aget-object v0, v5, v6

    .line 997
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .line 999
    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->beforeStartActivityUncheckedLocked()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1000
    :catch_0
    move-exception v2

    .line 1001
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1002
    .local v4, "strBuilder":Ljava/lang/StringBuilder;
    const-string v5, "Callback "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " crashed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1003
    const-string v5, "HtcAmsCallbackManager"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1006
    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    return-void
.end method

.method private handleBroadcastIntent(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    .locals 8
    .param p1, "params"    # Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    .prologue
    .line 786
    iget-object v4, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    check-cast v4, Landroid/content/Intent;

    .line 787
    .local v4, "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v7, 0xc

    aget-object v0, v6, v7

    .line 789
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .line 791
    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1, v4}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onBroadcastIntentLocked(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 792
    :catch_0
    move-exception v2

    .line 793
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v5

    .line 794
    .local v5, "strBuilder":Ljava/lang/StringBuilder;
    const-string v6, "Callback "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " crashed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 795
    const-string v6, "HtcAmsCallbackManager"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 798
    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    # invokes: Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->access$200(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    .line 799
    return-void
.end method

.method private handleCleanUpApplicationRecord(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    .locals 8
    .param p1, "params"    # Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    .prologue
    .line 896
    iget-object v4, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/HtcWrapProcessRecord;

    .line 897
    .local v4, "process":Lcom/android/server/am/HtcWrapProcessRecord;
    iget-object v6, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v7, 0x10

    aget-object v0, v6, v7

    .line 899
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .line 901
    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1, v4}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onCleanUpApplicationRecordLocked(Lcom/android/server/am/HtcWrapProcessRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 902
    :catch_0
    move-exception v2

    .line 903
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v5

    .line 904
    .local v5, "strBuilder":Ljava/lang/StringBuilder;
    const-string v6, "Callback "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " crashed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 905
    const-string v6, "HtcAmsCallbackManager"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 908
    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    # invokes: Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->access$200(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    .line 909
    return-void
.end method

.method private handleCrashApplication(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    .locals 9
    .param p1, "params"    # Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    .prologue
    .line 870
    iget-object v5, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/am/HtcWrapProcessRecord;

    .line 871
    .local v5, "process":Lcom/android/server/am/HtcWrapProcessRecord;
    iget-object v2, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param2:Ljava/lang/Object;

    check-cast v2, Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 872
    .local v2, "crashInfo":Landroid/app/ApplicationErrorReport$CrashInfo;
    iget-object v7, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v8, 0xf

    aget-object v0, v7, v8

    .line 874
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .line 876
    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1, v5, v2}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onCrashApplication(Lcom/android/server/am/HtcWrapProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 877
    :catch_0
    move-exception v3

    .line 878
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v6

    .line 879
    .local v6, "strBuilder":Ljava/lang/StringBuilder;
    const-string v7, "Callback "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " crashed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 880
    const-string v7, "HtcAmsCallbackManager"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 883
    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    # invokes: Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->access$200(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    .line 884
    return-void
.end method

.method private handleFinishBooting()V
    .locals 7

    .prologue
    .line 509
    iget-object v5, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/4 v6, 0x2

    aget-object v0, v5, v6

    .line 511
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .line 513
    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onFinishBooting()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 514
    :catch_0
    move-exception v2

    .line 515
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v4

    .line 516
    .local v4, "strBuilder":Ljava/lang/StringBuilder;
    const-string v5, "Callback "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " crashed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    const-string v5, "HtcAmsCallbackManager"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 520
    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    return-void
.end method

.method private handleGenerateApplicationProviders(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    .locals 9
    .param p1, "params"    # Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    .prologue
    .line 702
    iget-object v5, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/am/HtcWrapProcessRecord;

    .line 703
    .local v5, "process":Lcom/android/server/am/HtcWrapProcessRecord;
    iget-object v4, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param2:Ljava/lang/Object;

    check-cast v4, Landroid/content/pm/ProviderInfo;

    .line 704
    .local v4, "pi":Landroid/content/pm/ProviderInfo;
    iget-object v7, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v8, 0xa

    aget-object v0, v7, v8

    .line 706
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .line 708
    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1, v5, v4}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onGenerateApplicationProvidersLocked(Lcom/android/server/am/HtcWrapProcessRecord;Landroid/content/pm/ProviderInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 709
    :catch_0
    move-exception v2

    .line 710
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v6

    .line 711
    .local v6, "strBuilder":Ljava/lang/StringBuilder;
    const-string v7, "Callback "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " crashed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    const-string v7, "HtcAmsCallbackManager"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 715
    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v6    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    # invokes: Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->access$200(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    .line 716
    return-void
.end method

.method private handleGenerateProcessError(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    .locals 13
    .param p1, "params"    # Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    .prologue
    .line 1069
    iget-object v1, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/HtcWrapProcessRecord;

    .line 1070
    .local v1, "process":Lcom/android/server/am/HtcWrapProcessRecord;
    iget-object v11, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param2:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1071
    .local v2, "condition":I
    iget-object v3, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param3:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 1072
    .local v3, "activity":Ljava/lang/String;
    iget-object v4, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param4:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 1073
    .local v4, "shortMsg":Ljava/lang/String;
    iget-object v5, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param5:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 1074
    .local v5, "longMsg":Ljava/lang/String;
    iget-object v6, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param6:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 1075
    .local v6, "stackTrace":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v12, 0x18

    aget-object v7, v11, v12

    .line 1077
    .local v7, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .line 1079
    .local v0, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual/range {v0 .. v6}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onGenerateProcessError(Lcom/android/server/am/HtcWrapProcessRecord;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1080
    :catch_0
    move-exception v8

    .line 1081
    .local v8, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1082
    .local v10, "strBuilder":Ljava/lang/StringBuilder;
    const-string v11, "Callback "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " crashed"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1083
    const-string v11, "HtcAmsCallbackManager"

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1086
    .end local v0    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v10    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    # invokes: Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->access$200(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    .line 1087
    return-void
.end method

.method private handleGoingToSleep()V
    .locals 7

    .prologue
    .line 531
    iget-object v5, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/4 v6, 0x3

    aget-object v0, v5, v6

    .line 533
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .line 535
    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onGoingToSleep()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 536
    :catch_0
    move-exception v2

    .line 537
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v4

    .line 538
    .local v4, "strBuilder":Ljava/lang/StringBuilder;
    const-string v5, "Callback "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " crashed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    const-string v5, "HtcAmsCallbackManager"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 542
    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    return-void
.end method

.method private handleMain(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    .locals 10
    .param p1, "params"    # Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    .prologue
    const/4 v8, 0x1

    .line 421
    iget-object v5, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/am/ActivityManagerService;

    .line 422
    .local v5, "service":Lcom/android/server/am/ActivityManagerService;
    iget-object v2, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param2:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    .line 423
    .local v2, "context":Landroid/content/Context;
    iget-object v7, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    aget-object v0, v7, v8

    .line 425
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .line 427
    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1, v5, v2}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onMain(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 428
    :catch_0
    move-exception v3

    .line 429
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v6

    .line 430
    .local v6, "strBuilder":Ljava/lang/StringBuilder;
    const-string v7, "Callback "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " crashed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    const-string v7, "HtcAmsCallbackManager"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 434
    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    # invokes: Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->access$200(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    .line 436
    iget-object v8, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mMainFinishSignal:Ljava/lang/Object;

    monitor-enter v8

    .line 437
    const/4 v7, 0x1

    :try_start_1
    iput-boolean v7, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mIsMainFinished:Z

    .line 438
    iget-object v7, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mMainFinishSignal:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 439
    sget-boolean v7, Lcom/android/server/am/HtcAmsCallbackManager;->HTC_DEBUG:Z

    if-eqz v7, :cond_1

    const-string v7, "HtcAmsCallbackManager"

    const-string v9, "onMain finished"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :cond_1
    monitor-exit v8

    .line 441
    return-void

    .line 440
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7
.end method

.method private handleRealAppNotResponding(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    .locals 8
    .param p1, "params"    # Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    .prologue
    .line 627
    iget-object v4, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/HtcWrapProcessRecord;

    .line 628
    .local v4, "process":Lcom/android/server/am/HtcWrapProcessRecord;
    iget-object v6, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/4 v7, 0x7

    aget-object v0, v6, v7

    .line 630
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .line 632
    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1, v4}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onRealAppNotResponding(Lcom/android/server/am/HtcWrapProcessRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 633
    :catch_0
    move-exception v2

    .line 634
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v5

    .line 635
    .local v5, "strBuilder":Ljava/lang/StringBuilder;
    const-string v6, "Callback "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " crashed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    const-string v6, "HtcAmsCallbackManager"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 639
    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    # invokes: Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->access$200(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    .line 640
    return-void
.end method

.method private handleRemoveProcess(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    .locals 8
    .param p1, "params"    # Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    .prologue
    .line 652
    iget-object v4, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/HtcWrapProcessRecord;

    .line 653
    .local v4, "process":Lcom/android/server/am/HtcWrapProcessRecord;
    iget-object v6, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v7, 0x8

    aget-object v0, v6, v7

    .line 655
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .line 657
    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1, v4}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onRemoveProcessLocked(Lcom/android/server/am/HtcWrapProcessRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 658
    :catch_0
    move-exception v2

    .line 659
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v5

    .line 660
    .local v5, "strBuilder":Ljava/lang/StringBuilder;
    const-string v6, "Callback "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " crashed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    const-string v6, "HtcAmsCallbackManager"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 664
    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    # invokes: Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->access$200(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    .line 665
    return-void
.end method

.method private handleShutdown()V
    .locals 12

    .prologue
    .line 475
    iget-object v7, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v8, 0x14

    aget-object v0, v7, v8

    .line 477
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .line 479
    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 480
    .local v4, "startTime":J
    invoke-virtual {v1}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onShutdown()V

    .line 481
    sget-boolean v7, Lcom/android/server/am/HtcAmsCallbackManager;->HTC_DEBUG:Z

    if-eqz v7, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x1f4

    add-long/2addr v10, v4

    cmp-long v7, v8, v10

    if-lez v7, :cond_0

    .line 482
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v6

    .line 483
    .local v6, "strBuilder":Ljava/lang/StringBuilder;
    const-string v7, "Callback "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".onShutdown() is slow"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    const-string v7, "HtcAmsCallbackManager"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 486
    .end local v4    # "startTime":J
    .end local v6    # "strBuilder":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v2

    .line 487
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v6

    .line 488
    .restart local v6    # "strBuilder":Ljava/lang/StringBuilder;
    const-string v7, "Callback "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " crashed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    const-string v7, "HtcAmsCallbackManager"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 493
    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v6    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_1
    iget-object v8, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mShutdownFinishSignal:Ljava/lang/Object;

    monitor-enter v8

    .line 494
    const/4 v7, 0x1

    :try_start_1
    iput-boolean v7, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mIsShutdownFinished:Z

    .line 495
    iget-object v7, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mShutdownFinishSignal:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 496
    sget-boolean v7, Lcom/android/server/am/HtcAmsCallbackManager;->HTC_DEBUG:Z

    if-eqz v7, :cond_2

    const-string v7, "HtcAmsCallbackManager"

    const-string v9, "onShutdown finished"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :cond_2
    monitor-exit v8

    .line 498
    return-void

    .line 497
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7
.end method

.method private handleStartActivityNewIntent(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    .locals 9
    .param p1, "params"    # Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    .prologue
    .line 1040
    iget-object v5, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/am/HtcWrapTaskRecord;

    .line 1041
    .local v5, "prev":Lcom/android/server/am/HtcWrapTaskRecord;
    iget-object v2, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param2:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/am/HtcWrapTaskRecord;

    .line 1042
    .local v2, "curr":Lcom/android/server/am/HtcWrapTaskRecord;
    iget-object v7, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v8, 0x17

    aget-object v0, v7, v8

    .line 1044
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .line 1046
    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1, v5, v2}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onStartActivityUncheckedLockedNewIntent(Lcom/android/server/am/HtcWrapTaskRecord;Lcom/android/server/am/HtcWrapTaskRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1047
    :catch_0
    move-exception v3

    .line 1048
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1049
    .local v6, "strBuilder":Ljava/lang/StringBuilder;
    const-string v7, "Callback "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " crashed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1050
    const-string v7, "HtcAmsCallbackManager"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1053
    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    # invokes: Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->access$200(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    .line 1054
    return-void
.end method

.method private handleStartProcess(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    .locals 8
    .param p1, "params"    # Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    .prologue
    .line 602
    iget-object v4, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/HtcWrapProcessRecord;

    .line 603
    .local v4, "process":Lcom/android/server/am/HtcWrapProcessRecord;
    iget-object v6, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/4 v7, 0x6

    aget-object v0, v6, v7

    .line 605
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .line 607
    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1, v4}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onStartProcessLocked(Lcom/android/server/am/HtcWrapProcessRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 608
    :catch_0
    move-exception v2

    .line 609
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v5

    .line 610
    .local v5, "strBuilder":Ljava/lang/StringBuilder;
    const-string v6, "Callback "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " crashed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    const-string v6, "HtcAmsCallbackManager"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 614
    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    # invokes: Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->access$200(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    .line 615
    return-void
.end method

.method private handleStartProcessNewPackage(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    .locals 9
    .param p1, "params"    # Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    .prologue
    .line 576
    iget-object v5, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/am/HtcWrapProcessRecord;

    .line 577
    .local v5, "process":Lcom/android/server/am/HtcWrapProcessRecord;
    iget-object v4, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param2:Ljava/lang/Object;

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    .line 578
    .local v4, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v7, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/4 v8, 0x5

    aget-object v0, v7, v8

    .line 580
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .line 582
    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1, v5, v4}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onStartProcessLockedNewPackage(Lcom/android/server/am/HtcWrapProcessRecord;Landroid/content/pm/ApplicationInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 583
    :catch_0
    move-exception v2

    .line 584
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v6

    .line 585
    .local v6, "strBuilder":Ljava/lang/StringBuilder;
    const-string v7, "Callback "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " crashed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    const-string v7, "HtcAmsCallbackManager"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 589
    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v6    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    # invokes: Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->access$200(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    .line 590
    return-void
.end method

.method private handleTopAppChanged(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    .locals 8
    .param p1, "params"    # Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    .prologue
    .line 921
    iget-object v4, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/HtcWrapProcessRecord;

    .line 922
    .local v4, "process":Lcom/android/server/am/HtcWrapProcessRecord;
    iget-object v6, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v7, 0x11

    aget-object v0, v6, v7

    .line 924
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .line 926
    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1, v4}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onHandleTopAppChanged(Lcom/android/server/am/HtcWrapProcessRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 927
    :catch_0
    move-exception v2

    .line 928
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v5

    .line 929
    .local v5, "strBuilder":Ljava/lang/StringBuilder;
    const-string v6, "Callback "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " crashed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 930
    const-string v6, "HtcAmsCallbackManager"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 933
    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    # invokes: Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->access$200(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    .line 934
    return-void
.end method

.method private handleWakingUp()V
    .locals 7

    .prologue
    .line 553
    iget-object v5, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/4 v6, 0x4

    aget-object v0, v5, v6

    .line 555
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .line 557
    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onWakingUp()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 558
    :catch_0
    move-exception v2

    .line 559
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v4

    .line 560
    .local v4, "strBuilder":Ljava/lang/StringBuilder;
    const-string v5, "Callback "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " crashed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    const-string v5, "HtcAmsCallbackManager"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 564
    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    return-void
.end method


# virtual methods
.method public addCallbacks(Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;)V
    .locals 2
    .param p1, "callbacks"    # Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .prologue
    .line 157
    const/4 v0, 0x1

    .local v0, "funcid":I
    :goto_0
    const/16 v1, 0x1b

    if-ge v0, v1, :cond_1

    .line 158
    iget-object v1, p1, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->mIsCallbackImplemented:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 159
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 162
    :cond_1
    return-void
.end method

.method public addCallbacks(Ljava/lang/String;)V
    .locals 5
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 147
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 148
    .local v0, "callback":Ljava/lang/Object;
    instance-of v2, v0, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    if-eqz v2, :cond_0

    .line 149
    check-cast v0, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .end local v0    # "callback":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lcom/android/server/am/HtcAmsCallbackManager;->addCallbacks(Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 151
    :catch_0
    move-exception v1

    .line 152
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "HtcAmsCallbackManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to add "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public declared-synchronized onActivityPaused(Lcom/android/server/am/ActivityRecord;)V
    .locals 6
    .param p1, "activity"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 962
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 967
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 964
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v2, 0x13

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 965
    new-instance v1, Lcom/android/server/am/HtcWrapActivityRecord;

    invoke-direct {v1, p1}, Lcom/android/server/am/HtcWrapActivityRecord;-><init>(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->obtain(Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    move-result-object v0

    .line 966
    .local v0, "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v3, 0x1

    const/16 v4, 0x13

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 962
    .end local v0    # "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onActivityResumed(Lcom/android/server/am/ActivityRecord;)V
    .locals 6
    .param p1, "activity"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 937
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 942
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 939
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v2, 0x12

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 940
    new-instance v1, Lcom/android/server/am/HtcWrapActivityRecord;

    invoke-direct {v1, p1}, Lcom/android/server/am/HtcWrapActivityRecord;-><init>(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->obtain(Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    move-result-object v0

    .line 941
    .local v0, "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v3, 0x1

    const/16 v4, 0x12

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 937
    .end local v0    # "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onAddRecentTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)V
    .locals 7
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "prev"    # Lcom/android/server/am/ActivityRecord;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 720
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v2}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 729
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 722
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v3, 0xb

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 723
    const/4 v1, 0x0

    .line 724
    .local v1, "prevTask":Lcom/android/server/am/HtcWrapTaskRecord;
    if-eqz p2, :cond_2

    .line 725
    new-instance v1, Lcom/android/server/am/HtcWrapTaskRecord;

    .end local v1    # "prevTask":Lcom/android/server/am/HtcWrapTaskRecord;
    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-direct {v1, v2}, Lcom/android/server/am/HtcWrapTaskRecord;-><init>(Lcom/android/server/am/TaskRecord;)V

    .line 727
    .restart local v1    # "prevTask":Lcom/android/server/am/HtcWrapTaskRecord;
    :cond_2
    new-instance v2, Lcom/android/server/am/HtcWrapTaskRecord;

    invoke-direct {v2, p1}, Lcom/android/server/am/HtcWrapTaskRecord;-><init>(Lcom/android/server/am/TaskRecord;)V

    invoke-static {v2, v1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->obtain(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    move-result-object v0

    .line 728
    .local v0, "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v3, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v4, 0x1

    const/16 v5, 0xb

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v0}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 720
    .end local v0    # "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    .end local v1    # "prevTask":Lcom/android/server/am/HtcWrapTaskRecord;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized onAfterStartActivity()V
    .locals 5

    .prologue
    .line 1009
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v0}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 1013
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1011
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v1, 0x16

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1012
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v2, 0x1

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1009
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onAmsSleeping(Z)V
    .locals 6
    .param p1, "sleeping"    # Z

    .prologue
    .line 1116
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 1121
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1118
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v2, 0x1a

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1119
    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->obtain(Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    move-result-object v0

    .line 1120
    .local v0, "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v3, 0x1

    const/16 v4, 0x1a

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1116
    .end local v0    # "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onAppDied(Lcom/android/server/am/ProcessRecord;I)V
    .locals 7
    .param p1, "process"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "realPid"    # I

    .prologue
    .line 834
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v2}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 841
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 836
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v3, 0xe

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 837
    invoke-static {p1}, Lcom/android/server/am/HtcWrapProcessRecord;->create(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/HtcWrapProcessRecord;

    move-result-object v0

    .line 838
    .local v0, "htcApp":Lcom/android/server/am/HtcWrapProcessRecord;
    iput p2, v0, Lcom/android/server/am/HtcWrapProcessRecord;->pid:I

    .line 839
    invoke-static {v0}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->obtain(Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    move-result-object v1

    .line 840
    .local v1, "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v3, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v4, 0x1

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v1}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 834
    .end local v0    # "htcApp":Lcom/android/server/am/HtcWrapProcessRecord;
    .end local v1    # "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized onAppDiedV2(Lcom/android/server/am/ProcessRecord;)V
    .locals 7
    .param p1, "process"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 1090
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v2}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 1096
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1092
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v3, 0x19

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1093
    invoke-static {p1}, Lcom/android/server/am/HtcWrapProcessRecord;->create(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/HtcWrapProcessRecord;

    move-result-object v0

    .line 1094
    .local v0, "htcApp":Lcom/android/server/am/HtcWrapProcessRecord;
    invoke-static {v0}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->obtain(Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    move-result-object v1

    .line 1095
    .local v1, "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v3, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v4, 0x1

    const/16 v5, 0x19

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v1}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1090
    .end local v0    # "htcApp":Lcom/android/server/am/HtcWrapProcessRecord;
    .end local v1    # "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized onApplicationCrash(Lcom/android/server/am/ProcessRecord;)V
    .locals 7
    .param p1, "process"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 802
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v2}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 813
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 804
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v3, 0xd

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 805
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 806
    .local v1, "pkgListClone":Ljava/util/HashMap;
    if-eqz p1, :cond_2

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    if-eqz v2, :cond_2

    .line 807
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 809
    :cond_2
    invoke-static {p1}, Lcom/android/server/am/HtcWrapProcessRecord;->create(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/HtcWrapProcessRecord;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->obtain(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    move-result-object v0

    .line 812
    .local v0, "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v3, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v4, 0x1

    const/16 v5, 0xd

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v0}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 802
    .end local v0    # "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    .end local v1    # "pkgListClone":Ljava/util/HashMap;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized onAttachApplication(Lcom/android/server/am/ProcessRecord;)V
    .locals 6
    .param p1, "process"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 668
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 673
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 670
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 671
    invoke-static {p1}, Lcom/android/server/am/HtcWrapProcessRecord;->create(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/HtcWrapProcessRecord;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->obtain(Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    move-result-object v0

    .line 672
    .local v0, "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v3, 0x1

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 668
    .end local v0    # "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onBeforeStartActivity()V
    .locals 5

    .prologue
    .line 987
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v0}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 991
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 989
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v1, 0x15

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 990
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v2, 0x1

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 987
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onBroadcastIntent(Landroid/content/Intent;)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 751
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v6}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_1

    .line 782
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 753
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v7, 0xc

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_0

    .line 754
    const-string v6, "android.intent.action.NOTIFICATION_ADD"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "android.intent.action.NOTIFICATION_UPDATE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 756
    :cond_2
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 758
    .local v4, "newIntent":Landroid/content/Intent;
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 765
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 766
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 767
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 768
    invoke-virtual {p1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 769
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    .line 770
    .local v0, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_3

    .line 771
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 772
    .local v1, "category":Ljava/lang/String;
    invoke-virtual {v4, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 775
    .end local v0    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "category":Ljava/lang/String;
    .end local v3    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .line 776
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v6, "HtcAmsCallbackManager"

    const-string v7, "Unable to copy Intent!"

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 778
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    move-object p1, v4

    .line 780
    .end local v4    # "newIntent":Landroid/content/Intent;
    :cond_4
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->obtain(Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    move-result-object v5

    .line 781
    .local v5, "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    iget-object v6, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v7, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v8, 0x1

    const/16 v9, 0xc

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10, v5}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 751
    .end local v5    # "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public declared-synchronized onCleanUpApplicationRecord(Lcom/android/server/am/ProcessRecord;)V
    .locals 6
    .param p1, "process"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 887
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 892
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 889
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v2, 0x10

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 890
    invoke-static {p1}, Lcom/android/server/am/HtcWrapProcessRecord;->create(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/HtcWrapProcessRecord;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->obtain(Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    move-result-object v0

    .line 891
    .local v0, "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v3, 0x1

    const/16 v4, 0x10

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 887
    .end local v0    # "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onCrashApplication(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    .locals 6
    .param p1, "process"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;

    .prologue
    .line 861
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 866
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 863
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v2, 0xf

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 864
    invoke-static {p1}, Lcom/android/server/am/HtcWrapProcessRecord;->create(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/HtcWrapProcessRecord;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->obtain(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    move-result-object v0

    .line 865
    .local v0, "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v3, 0x1

    const/16 v4, 0xf

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 861
    .end local v0    # "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onFinishBooting()V
    .locals 5

    .prologue
    .line 501
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v0}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 505
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 502
    :cond_1
    :try_start_1
    sget-boolean v0, Lcom/android/server/am/HtcAmsCallbackManager;->HTC_DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "onFinishBooting()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 501
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onGenerateApplicationProviders(Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ProviderInfo;)V
    .locals 6
    .param p1, "process"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "pi"    # Landroid/content/pm/ProviderInfo;

    .prologue
    .line 693
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 698
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 695
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 696
    invoke-static {p1}, Lcom/android/server/am/HtcWrapProcessRecord;->create(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/HtcWrapProcessRecord;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->obtain(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    move-result-object v0

    .line 697
    .local v0, "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v3, 0x1

    const/16 v4, 0xa

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 693
    .end local v0    # "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onGenerateProcessError(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "process"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "condition"    # I
    .param p3, "activity"    # Ljava/lang/String;
    .param p4, "shortMsg"    # Ljava/lang/String;
    .param p5, "longMsg"    # Ljava/lang/String;
    .param p6, "stackTrace"    # Ljava/lang/String;

    .prologue
    .line 1058
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v0}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 1065
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1060
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v1, 0x18

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1061
    invoke-static {p1}, Lcom/android/server/am/HtcWrapProcessRecord;->create(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/HtcWrapProcessRecord;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->obtain(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    move-result-object v6

    .line 1064
    .local v6, "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v2, 0x1

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v6}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1058
    .end local v6    # "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onGoingToSleep()V
    .locals 5

    .prologue
    .line 523
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v0}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 527
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 525
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 523
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onMain(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .locals 10
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    .line 397
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 398
    :cond_1
    sget-boolean v1, Lcom/android/server/am/HtcAmsCallbackManager;->HTC_DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "HtcAmsCallbackManager"

    const-string v4, "onMain()"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 400
    iget-object v4, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mMainFinishSignal:Ljava/lang/Object;

    monitor-enter v4

    .line 401
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mIsMainFinished:Z

    .line 402
    invoke-static {p1, p2}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->obtain(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    move-result-object v0

    .line 403
    .local v0, "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v5, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8, v0}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 405
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 408
    .local v2, "startTime":J
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mMainFinishSignal:Ljava/lang/Object;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v1, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 411
    :goto_1
    :try_start_2
    iget-boolean v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mIsMainFinished:Z

    if-nez v1, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0xbb8

    add-long/2addr v8, v2

    cmp-long v1, v6, v8

    if-lez v1, :cond_3

    .line 412
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mIsMainFinished:Z

    if-nez v1, :cond_5

    .line 413
    const-string v1, "HtcAmsCallbackManager"

    const-string v5, "onMain timeout!"

    invoke-static {v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingThread:Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;

    invoke-virtual {v1}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;->dump()V

    .line 416
    :cond_5
    monitor-exit v4

    goto :goto_0

    .end local v0    # "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    .end local v2    # "startTime":J
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 409
    .restart local v0    # "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    .restart local v2    # "startTime":J
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public declared-synchronized onRealAppNotResponding(Lcom/android/server/am/ProcessRecord;)V
    .locals 6
    .param p1, "process"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 618
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 623
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 620
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 621
    invoke-static {p1}, Lcom/android/server/am/HtcWrapProcessRecord;->create(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/HtcWrapProcessRecord;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->obtain(Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    move-result-object v0

    .line 622
    .local v0, "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v3, 0x1

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 618
    .end local v0    # "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onRemoveProcess(Lcom/android/server/am/ProcessRecord;)V
    .locals 6
    .param p1, "process"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 643
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 648
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 645
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 646
    invoke-static {p1}, Lcom/android/server/am/HtcWrapProcessRecord;->create(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/HtcWrapProcessRecord;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->obtain(Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    move-result-object v0

    .line 647
    .local v0, "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v3, 0x1

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 643
    .end local v0    # "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onShutdown()V
    .locals 8

    .prologue
    const/16 v3, 0x14

    .line 450
    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v2}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 452
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 453
    iget-object v3, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mShutdownFinishSignal:Ljava/lang/Object;

    monitor-enter v3

    .line 454
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mIsShutdownFinished:Z

    .line 455
    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->removeMessages(I)V

    .line 456
    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v4, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v5, 0x1

    const/16 v6, 0x14

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 458
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 461
    .local v0, "startTime":J
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mShutdownFinishSignal:Ljava/lang/Object;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 464
    :goto_1
    :try_start_2
    iget-boolean v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mIsShutdownFinished:Z

    if-nez v2, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x1388

    add-long/2addr v6, v0

    cmp-long v2, v4, v6

    if-lez v2, :cond_2

    .line 465
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mIsShutdownFinished:Z

    if-nez v2, :cond_4

    .line 466
    const-string v2, "HtcAmsCallbackManager"

    const-string v4, "Shutdown timeout!"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingThread:Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;

    invoke-virtual {v2}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;->dump()V

    .line 468
    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingThread:Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;

    invoke-virtual {v2}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;->dumpAllThreads()V

    .line 470
    :cond_4
    monitor-exit v3

    goto :goto_0

    .end local v0    # "startTime":J
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 462
    .restart local v0    # "startTime":J
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public declared-synchronized onStartActivityNewIntent(Lcom/android/server/am/HtcWrapTaskRecord;Lcom/android/server/am/HtcWrapTaskRecord;)V
    .locals 6
    .param p1, "prev"    # Lcom/android/server/am/HtcWrapTaskRecord;
    .param p2, "curr"    # Lcom/android/server/am/HtcWrapTaskRecord;

    .prologue
    .line 1031
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 1036
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1033
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v2, 0x17

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1034
    invoke-static {p1, p2}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->obtain(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    move-result-object v0

    .line 1035
    .local v0, "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v3, 0x1

    const/16 v4, 0x17

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1031
    .end local v0    # "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onStartProcess(Lcom/android/server/am/ProcessRecord;)V
    .locals 6
    .param p1, "process"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 593
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 598
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 595
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 596
    invoke-static {p1}, Lcom/android/server/am/HtcWrapProcessRecord;->create(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/HtcWrapProcessRecord;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->obtain(Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    move-result-object v0

    .line 597
    .local v0, "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v3, 0x1

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 593
    .end local v0    # "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onStartProcessNewPackage(Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ApplicationInfo;)V
    .locals 6
    .param p1, "process"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 567
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 572
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 569
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 570
    invoke-static {p1}, Lcom/android/server/am/HtcWrapProcessRecord;->create(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/HtcWrapProcessRecord;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->obtain(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    move-result-object v0

    .line 571
    .local v0, "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v3, 0x1

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 567
    .end local v0    # "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onTopAppChanged(Lcom/android/server/am/ProcessRecord;)V
    .locals 6
    .param p1, "process"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 912
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 917
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 914
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v2, 0x11

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 915
    invoke-static {p1}, Lcom/android/server/am/HtcWrapProcessRecord;->create(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/HtcWrapProcessRecord;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->obtain(Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    move-result-object v0

    .line 916
    .local v0, "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v3, 0x1

    const/16 v4, 0x11

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 912
    .end local v0    # "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onWakingUp()V
    .locals 5

    .prologue
    .line 545
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v0}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 549
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 547
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v2, 0x1

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 545
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
