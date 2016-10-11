.class Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;
.super Landroid/os/Handler;
.source "HtcAmsCallbackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/HtcAmsCallbackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkingHandler"
.end annotation


# instance fields
.field mIsServiceGone:Z

.field final synthetic this$0:Lcom/android/server/am/HtcAmsCallbackManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/HtcAmsCallbackManager;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->this$0:Lcom/android/server/am/HtcAmsCallbackManager;

    .line 254
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 251
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->mIsServiceGone:Z

    .line 255
    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 258
    const-wide/16 v2, 0x1f4

    .line 260
    .local v2, "timeout":J
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->this$0:Lcom/android/server/am/HtcAmsCallbackManager;

    # getter for: Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;
    invoke-static {v1}, Lcom/android/server/am/HtcAmsCallbackManager;->access$000(Lcom/android/server/am/HtcAmsCallbackManager;)Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->startMsg(Landroid/os/Message;)V

    .line 262
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v1, :pswitch_data_0

    .line 277
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->this$0:Lcom/android/server/am/HtcAmsCallbackManager;

    # getter for: Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;
    invoke-static {v1}, Lcom/android/server/am/HtcAmsCallbackManager;->access$000(Lcom/android/server/am/HtcAmsCallbackManager;)Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    move-result-object v1

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->finishMsg(Landroid/os/Message;J)V

    .line 279
    :goto_1
    return-void

    .line 264
    :pswitch_0
    :try_start_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    sparse-switch v1, :sswitch_data_0

    .line 268
    :goto_2
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->this$0:Lcom/android/server/am/HtcAmsCallbackManager;

    # invokes: Lcom/android/server/am/HtcAmsCallbackManager;->handleAmsCallback(Landroid/os/Message;)V
    invoke-static {v1, p1}, Lcom/android/server/am/HtcAmsCallbackManager;->access$100(Lcom/android/server/am/HtcAmsCallbackManager;Landroid/os/Message;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 274
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v1, "HtcAmsCallbackManager"

    const-string v4, "Unhandled exception "

    invoke-static {v1, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 277
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->this$0:Lcom/android/server/am/HtcAmsCallbackManager;

    # getter for: Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;
    invoke-static {v1}, Lcom/android/server/am/HtcAmsCallbackManager;->access$000(Lcom/android/server/am/HtcAmsCallbackManager;)Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    move-result-object v1

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->finishMsg(Landroid/os/Message;J)V

    goto :goto_1

    .line 265
    .end local v0    # "e":Ljava/lang/Exception;
    :sswitch_0
    const-wide/16 v2, 0xbb8

    goto :goto_2

    .line 266
    :sswitch_1
    const-wide/16 v2, 0x1388

    goto :goto_2

    .line 271
    :pswitch_1
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->this$0:Lcom/android/server/am/HtcAmsCallbackManager;

    # getter for: Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;
    invoke-static {v1}, Lcom/android/server/am/HtcAmsCallbackManager;->access$000(Lcom/android/server/am/HtcAmsCallbackManager;)Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->responseFromWorkingThread()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 277
    :catchall_0
    move-exception v1

    iget-object v4, p0, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->this$0:Lcom/android/server/am/HtcAmsCallbackManager;

    # getter for: Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;
    invoke-static {v4}, Lcom/android/server/am/HtcAmsCallbackManager;->access$000(Lcom/android/server/am/HtcAmsCallbackManager;)Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    move-result-object v4

    invoke-virtual {v4, p1, v2, v3}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->finishMsg(Landroid/os/Message;J)V

    throw v1

    .line 262
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 264
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x14 -> :sswitch_1
    .end sparse-switch
.end method
