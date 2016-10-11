.class Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;
.super Ljava/lang/Object;
.source "HtcAmsCallbackManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/HtcAmsCallbackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Watchdog"
.end annotation


# static fields
.field private static final DUMP_ALL_THREADS_CYCLE:I = 0x4

.field private static final MSG_DUMP_WORKING_MESSAGES:I = 0xbb8


# instance fields
.field private mAmsHandler:Landroid/os/Handler;

.field private mCurMsgStartTime:J

.field private mDumpAllThreadsCount:I

.field private mIsRunning:Z

.field private mIsWorkingThreadBlocked:Z

.field private mWorkingHandlerResponseTime:J

.field final synthetic this$0:Lcom/android/server/am/HtcAmsCallbackManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/HtcAmsCallbackManager;Landroid/os/Looper;)V
    .locals 4
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 1153
    iput-object p1, p0, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->this$0:Lcom/android/server/am/HtcAmsCallbackManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->mAmsHandler:Landroid/os/Handler;

    .line 1143
    iput-wide v2, p0, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->mCurMsgStartTime:J

    .line 1144
    iput-boolean v1, p0, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->mIsRunning:Z

    .line 1145
    iput-wide v2, p0, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->mWorkingHandlerResponseTime:J

    .line 1150
    iput v1, p0, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->mDumpAllThreadsCount:I

    .line 1151
    iput-boolean v1, p0, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->mIsWorkingThreadBlocked:Z

    .line 1154
    new-instance v0, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog$1;-><init>(Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;Landroid/os/Looper;Lcom/android/server/am/HtcAmsCallbackManager;)V

    iput-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->mAmsHandler:Landroid/os/Handler;

    .line 1162
    return-void
.end method


# virtual methods
.method public finishMsg(Landroid/os/Message;J)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "timeout"    # J

    .prologue
    .line 1182
    # getter for: Lcom/android/server/am/HtcAmsCallbackManager;->HTC_DEBUG:Z
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1183
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1184
    .local v0, "curTime":J
    iget-wide v4, p0, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->mCurMsgStartTime:J

    add-long/2addr v4, p2

    cmp-long v3, v0, v4

    if-lez v3, :cond_0

    .line 1185
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1186
    .local v2, "strBuilder":Ljava/lang/StringBuilder;
    const-string v3, "Slow operation for msg ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->mCurMsgStartTime:J

    sub-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1189
    const-string v3, "HtcAmsCallbackManager"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    .end local v0    # "curTime":J
    .end local v2    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->mCurMsgStartTime:J

    .line 1193
    return-void
.end method

.method public init()V
    .locals 4

    .prologue
    .line 1165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->mIsRunning:Z

    .line 1166
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->this$0:Lcom/android/server/am/HtcAmsCallbackManager;

    # getter for: Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;
    invoke-static {v0}, Lcom/android/server/am/HtcAmsCallbackManager;->access$400(Lcom/android/server/am/HtcAmsCallbackManager;)Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->this$0:Lcom/android/server/am/HtcAmsCallbackManager;

    # getter for: Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;
    invoke-static {v1}, Lcom/android/server/am/HtcAmsCallbackManager;->access$400(Lcom/android/server/am/HtcAmsCallbackManager;)Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1169
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->mAmsHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1170
    return-void
.end method

.method public isWorkingThreadBlocked()Z
    .locals 1

    .prologue
    .line 1201
    iget-boolean v0, p0, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->mIsWorkingThreadBlocked:Z

    return v0
.end method

.method public responseFromWorkingThread()V
    .locals 2

    .prologue
    .line 1196
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->mWorkingHandlerResponseTime:J

    .line 1198
    return-void
.end method

.method public run()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x7530

    .line 1205
    iget-boolean v4, p0, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->mIsRunning:Z

    if-nez v4, :cond_0

    .line 1233
    :goto_0
    return-void

    .line 1208
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1209
    .local v0, "curTime":J
    iget-wide v4, p0, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->mWorkingHandlerResponseTime:J

    add-long/2addr v4, v6

    cmp-long v4, v0, v4

    if-lez v4, :cond_3

    .line 1210
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1211
    .local v3, "strBuilder":Ljava/lang/StringBuilder;
    const-string v4, "Working thread was blocked by an external module! ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->mWorkingHandlerResponseTime:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1213
    const-string v4, "HtcAmsCallbackManager"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    iget-object v4, p0, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->this$0:Lcom/android/server/am/HtcAmsCallbackManager;

    # getter for: Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingThread:Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;
    invoke-static {v4}, Lcom/android/server/am/HtcAmsCallbackManager;->access$300(Lcom/android/server/am/HtcAmsCallbackManager;)Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;->dump()V

    .line 1215
    iget v4, p0, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->mDumpAllThreadsCount:I

    if-nez v4, :cond_1

    .line 1216
    iget-object v4, p0, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->this$0:Lcom/android/server/am/HtcAmsCallbackManager;

    # getter for: Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingThread:Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;
    invoke-static {v4}, Lcom/android/server/am/HtcAmsCallbackManager;->access$300(Lcom/android/server/am/HtcAmsCallbackManager;)Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;->dumpAllThreads()V

    .line 1217
    :cond_1
    iget v4, p0, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->mDumpAllThreadsCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->mDumpAllThreadsCount:I

    .line 1218
    iget v4, p0, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->mDumpAllThreadsCount:I

    const/4 v5, 0x4

    if-le v4, v5, :cond_2

    .line 1219
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->mDumpAllThreadsCount:I

    .line 1220
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->mIsWorkingThreadBlocked:Z

    .line 1226
    .end local v3    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->this$0:Lcom/android/server/am/HtcAmsCallbackManager;

    # getter for: Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;
    invoke-static {v4}, Lcom/android/server/am/HtcAmsCallbackManager;->access$400(Lcom/android/server/am/HtcAmsCallbackManager;)Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->this$0:Lcom/android/server/am/HtcAmsCallbackManager;

    # getter for: Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;
    invoke-static {v5}, Lcom/android/server/am/HtcAmsCallbackManager;->access$400(Lcom/android/server/am/HtcAmsCallbackManager;)Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x2710

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1229
    iget-object v4, p0, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->mAmsHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x7530

    invoke-virtual {v4, p0, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1230
    .end local v0    # "curTime":J
    :catch_0
    move-exception v2

    .line 1231
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "HtcAmsCallbackManager"

    const-string v5, "Failed to dump log"

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1223
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "curTime":J
    :cond_3
    const/4 v4, 0x0

    :try_start_1
    iput v4, p0, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->mDumpAllThreadsCount:I

    .line 1224
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->mIsWorkingThreadBlocked:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public startMsg(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1178
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->mCurMsgStartTime:J

    .line 1179
    return-void
.end method
