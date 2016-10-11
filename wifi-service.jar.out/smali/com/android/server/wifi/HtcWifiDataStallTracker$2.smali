.class Lcom/android/server/wifi/HtcWifiDataStallTracker$2;
.super Ljava/lang/Object;
.source "HtcWifiDataStallTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/HtcWifiDataStallTracker;->onDataStallAlarm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/HtcWifiDataStallTracker;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/HtcWifiDataStallTracker;)V
    .locals 0

    .prologue
    .line 382
    iput-object p1, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker$2;->this$0:Lcom/android/server/wifi/HtcWifiDataStallTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/16 v8, 0xfa0

    .line 385
    iget-object v3, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker$2;->this$0:Lcom/android/server/wifi/HtcWifiDataStallTracker;

    # invokes: Lcom/android/server/wifi/HtcWifiDataStallTracker;->updateDataStallInfo()V
    invoke-static {v3}, Lcom/android/server/wifi/HtcWifiDataStallTracker;->access$700(Lcom/android/server/wifi/HtcWifiDataStallTracker;)V

    .line 387
    const/4 v2, 0x5

    .line 389
    .local v2, "hangWatchdogTrigger":I
    iget-object v3, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker$2;->this$0:Lcom/android/server/wifi/HtcWifiDataStallTracker;

    # invokes: Lcom/android/server/wifi/HtcWifiDataStallTracker;->isAllowRecover()Z
    invoke-static {v3}, Lcom/android/server/wifi/HtcWifiDataStallTracker;->access$800(Lcom/android/server/wifi/HtcWifiDataStallTracker;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 390
    iget-object v3, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker$2;->this$0:Lcom/android/server/wifi/HtcWifiDataStallTracker;

    # getter for: Lcom/android/server/wifi/HtcWifiDataStallTracker;->mSentSinceLastRecv:J
    invoke-static {v3}, Lcom/android/server/wifi/HtcWifiDataStallTracker;->access$500(Lcom/android/server/wifi/HtcWifiDataStallTracker;)J

    move-result-wide v4

    int-to-long v6, v2

    cmp-long v3, v4, v6

    if-ltz v3, :cond_9

    .line 391
    # getter for: Lcom/android/server/wifi/HtcWifiDataStallTracker;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/HtcWifiDataStallTracker;->access$200()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "HtcWifiDataStallTracker"

    const-string v4, "datastall detect!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker$2;->this$0:Lcom/android/server/wifi/HtcWifiDataStallTracker;

    # getter for: Lcom/android/server/wifi/HtcWifiDataStallTracker;->mRecoverRecently:Z
    invoke-static {v3}, Lcom/android/server/wifi/HtcWifiDataStallTracker;->access$900(Lcom/android/server/wifi/HtcWifiDataStallTracker;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker$2;->this$0:Lcom/android/server/wifi/HtcWifiDataStallTracker;

    # getter for: Lcom/android/server/wifi/HtcWifiDataStallTracker;->mPingIsGo:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v3}, Lcom/android/server/wifi/HtcWifiDataStallTracker;->access$1000(Lcom/android/server/wifi/HtcWifiDataStallTracker;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_8

    .line 393
    const/4 v1, -0x1

    .line 394
    .local v1, "curRssi":I
    const/4 v0, -0x1

    .line 395
    .local v0, "curFreq":I
    iget-object v3, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker$2;->this$0:Lcom/android/server/wifi/HtcWifiDataStallTracker;

    # getter for: Lcom/android/server/wifi/HtcWifiDataStallTracker;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v3}, Lcom/android/server/wifi/HtcWifiDataStallTracker;->access$1100(Lcom/android/server/wifi/HtcWifiDataStallTracker;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiStateMachine;->syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    .line 396
    iget-object v3, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker$2;->this$0:Lcom/android/server/wifi/HtcWifiDataStallTracker;

    # getter for: Lcom/android/server/wifi/HtcWifiDataStallTracker;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v3}, Lcom/android/server/wifi/HtcWifiDataStallTracker;->access$1100(Lcom/android/server/wifi/HtcWifiDataStallTracker;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiStateMachine;->syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v0

    .line 397
    # getter for: Lcom/android/server/wifi/HtcWifiDataStallTracker;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/HtcWifiDataStallTracker;->access$200()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "HtcWifiDataStallTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "datastall detect when RSSI is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :cond_1
    # getter for: Lcom/android/server/wifi/HtcWifiDataStallTracker;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/HtcWifiDataStallTracker;->access$200()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "HtcWifiDataStallTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "datastall detect when FREQ is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_2
    const/16 v3, -0x56

    if-le v1, v3, :cond_3

    if-le v0, v8, :cond_4

    :cond_3
    const/16 v3, -0x51

    if-le v1, v3, :cond_7

    if-le v0, v8, :cond_7

    .line 402
    :cond_4
    # getter for: Lcom/android/server/wifi/HtcWifiDataStallTracker;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/HtcWifiDataStallTracker;->access$200()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "HtcWifiDataStallTracker"

    const-string v4, "datastall detect, ping gateway first"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_5
    iget-object v3, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker$2;->this$0:Lcom/android/server/wifi/HtcWifiDataStallTracker;

    # invokes: Lcom/android/server/wifi/HtcWifiDataStallTracker;->pingGateway()Z
    invoke-static {v3}, Lcom/android/server/wifi/HtcWifiDataStallTracker;->access$1200(Lcom/android/server/wifi/HtcWifiDataStallTracker;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 405
    const-string v3, "HtcWifiDataStallTracker"

    const-string v4, "datastall detect and ping gateway fail, recover now!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object v3, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker$2;->this$0:Lcom/android/server/wifi/HtcWifiDataStallTracker;

    iget-object v4, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker$2;->this$0:Lcom/android/server/wifi/HtcWifiDataStallTracker;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/HtcWifiDataStallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/HtcWifiDataStallTracker;->sendMessage(Landroid/os/Message;)Z

    .line 422
    .end local v0    # "curFreq":I
    .end local v1    # "curRssi":I
    :cond_6
    :goto_0
    return-void

    .line 409
    .restart local v0    # "curFreq":I
    .restart local v1    # "curRssi":I
    :cond_7
    # getter for: Lcom/android/server/wifi/HtcWifiDataStallTracker;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/HtcWifiDataStallTracker;->access$200()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "HtcWifiDataStallTracker"

    const-string v4, "The signal is poor(<-85), it would impact perf, do nothing here"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 412
    .end local v0    # "curFreq":I
    .end local v1    # "curRssi":I
    :cond_8
    iget-object v3, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker$2;->this$0:Lcom/android/server/wifi/HtcWifiDataStallTracker;

    # getter for: Lcom/android/server/wifi/HtcWifiDataStallTracker;->mRecoverRecently:Z
    invoke-static {v3}, Lcom/android/server/wifi/HtcWifiDataStallTracker;->access$900(Lcom/android/server/wifi/HtcWifiDataStallTracker;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 413
    # getter for: Lcom/android/server/wifi/HtcWifiDataStallTracker;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/HtcWifiDataStallTracker;->access$200()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "HtcWifiDataStallTracker"

    const-string v4, "not recover again, datastall recover recently within 3600 secs"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 416
    :cond_9
    # getter for: Lcom/android/server/wifi/HtcWifiDataStallTracker;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/HtcWifiDataStallTracker;->access$200()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "HtcWifiDataStallTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDataStallAlarm: Sent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker$2;->this$0:Lcom/android/server/wifi/HtcWifiDataStallTracker;

    # getter for: Lcom/android/server/wifi/HtcWifiDataStallTracker;->mSentSinceLastRecv:J
    invoke-static {v5}, Lcom/android/server/wifi/HtcWifiDataStallTracker;->access$500(Lcom/android/server/wifi/HtcWifiDataStallTracker;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " pkts since last received, < watchdogTrigger="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 420
    :cond_a
    # getter for: Lcom/android/server/wifi/HtcWifiDataStallTracker;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/HtcWifiDataStallTracker;->access$200()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "HtcWifiDataStallTracker"

    const-string v4, "onDataStallAlarm: not allow to run recover"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
