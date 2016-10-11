.class Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;
.super Ljava/lang/Object;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiPerfLock"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mDualCpuCoreWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

.field private mHighCpuFrequencyWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

.field private mHighestCpuFrequencyWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

.field private mMediumCpuFrequencyWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

.field private mQuadCpuCoreWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

.field private perfLockEventPattern:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/PowerManager;)V
    .locals 5
    .param p2, "pm"    # Landroid/os/PowerManager;

    .prologue
    const v4, 0x8000

    const/4 v3, 0x5

    const/16 v2, 0x2000

    const/4 v1, 0x0

    .line 12580
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12563
    const-string v0, "WifiPerfLock"

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;->TAG:Ljava/lang/String;

    .line 12570
    const-string v0, "PERF_LOCK(?:\\s+freq=(\\w+))?(?:\\s+cpu=(\\d+))?"

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;->perfLockEventPattern:Ljava/lang/String;

    .line 12573
    iput-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;->mHighestCpuFrequencyWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    .line 12574
    iput-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;->mHighCpuFrequencyWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    .line 12575
    iput-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;->mMediumCpuFrequencyWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    .line 12577
    iput-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;->mDualCpuCoreWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    .line 12578
    iput-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;->mQuadCpuCoreWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    .line 12581
    const-string v0, "WifiPerfLock"

    invoke-virtual {p2, v2, v3, v0}, Landroid/os/PowerManager;->newHtcCpuCtrl(IILjava/lang/String;)Landroid/os/PowerManager$HtcCpuCtrl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;->mHighestCpuFrequencyWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    .line 12582
    const-string v0, "WifiPerfLock"

    invoke-virtual {p2, v2, v3, v0}, Landroid/os/PowerManager;->newHtcCpuCtrl(IILjava/lang/String;)Landroid/os/PowerManager$HtcCpuCtrl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;->mHighCpuFrequencyWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    .line 12583
    const/4 v0, 0x3

    const-string v1, "WifiPerfLock"

    invoke-virtual {p2, v2, v0, v1}, Landroid/os/PowerManager;->newHtcCpuCtrl(IILjava/lang/String;)Landroid/os/PowerManager$HtcCpuCtrl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;->mMediumCpuFrequencyWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    .line 12585
    const/4 v0, 0x2

    const-string v1, "WifiPerfLock"

    invoke-virtual {p2, v4, v0, v1}, Landroid/os/PowerManager;->newHtcCpuCtrl(IILjava/lang/String;)Landroid/os/PowerManager$HtcCpuCtrl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;->mDualCpuCoreWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    .line 12586
    const/4 v0, 0x4

    const-string v1, "WifiPerfLock"

    invoke-virtual {p2, v4, v0, v1}, Landroid/os/PowerManager;->newHtcCpuCtrl(IILjava/lang/String;)Landroid/os/PowerManager$HtcCpuCtrl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;->mQuadCpuCoreWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    .line 12587
    return-void
.end method


# virtual methods
.method public declared-synchronized acquire(II)V
    .locals 3
    .param p1, "frequency"    # I
    .param p2, "cpu"    # I

    .prologue
    .line 12621
    monitor-enter p0

    :try_start_0
    const-string v0, "WifiPerfLock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lock CPU freq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cpu="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12622
    packed-switch p1, :pswitch_data_0

    .line 12658
    :cond_0
    :goto_0
    :pswitch_0
    packed-switch p2, :pswitch_data_1

    .line 12680
    :cond_1
    :goto_1
    :pswitch_1
    monitor-exit p0

    return-void

    .line 12624
    :pswitch_2
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;->mMediumCpuFrequencyWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12625
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;->mMediumCpuFrequencyWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->release()V

    .line 12626
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;->mHighCpuFrequencyWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12627
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;->mHighCpuFrequencyWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->release()V

    .line 12628
    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;->mHighestCpuFrequencyWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12629
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;->mHighestCpuFrequencyWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 12621
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 12632
    :pswitch_3
    :try_start_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;->mMediumCpuFrequencyWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->isHeld()Z

    move-result v0

    if-nez v0, :cond_4

    .line 12633
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;->mMediumCpuFrequencyWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->acquire()V

    .line 12634
    :cond_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;->mHighCpuFrequencyWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12635
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;->mHighCpuFrequencyWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->release()V

    .line 12636
    :cond_5
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;->mHighestCpuFrequencyWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12637
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;->mHighestCpuFrequencyWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->release()V

    goto :goto_0

    .line 12640
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;->mHighCpuFrequencyWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->isHeld()Z

    move-result v0

    if-nez v0, :cond_6

    .line 12641
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;->mHighCpuFrequencyWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->acquire()V

    .line 12642
    :cond_6
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;->mMediumCpuFrequencyWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 12643
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;->mMediumCpuFrequencyWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->release()V

    .line 12644
    :cond_7
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;->mHighestCpuFrequencyWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12645
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;->mHighestCpuFrequencyWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->release()V

    goto :goto_0

    .line 12648
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;->mHighestCpuFrequencyWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->isHeld()Z

    move-result v0

    if-nez v0, :cond_8

    .line 12649
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;->mHighestCpuFrequencyWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->acquire()V

    .line 12650
    :cond_8
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;->mMediumCpuFrequencyWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 12651
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;->mMediumCpuFrequencyWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->release()V

    .line 12652
    :cond_9
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;->mHighCpuFrequencyWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12653
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;->mHighCpuFrequencyWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->release()V

    goto/16 :goto_0

    .line 12660
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;->mQuadCpuCoreWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 12661
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;->mQuadCpuCoreWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->release()V

    .line 12662
    :cond_a
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;->mDualCpuCoreWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12663
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;->mDualCpuCoreWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->release()V

    goto/16 :goto_1

    .line 12666
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;->mDualCpuCoreWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->isHeld()Z

    move-result v0

    if-nez v0, :cond_b

    .line 12667
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;->mDualCpuCoreWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->acquire()V

    .line 12668
    :cond_b
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;->mQuadCpuCoreWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12669
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;->mQuadCpuCoreWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->release()V

    goto/16 :goto_1

    .line 12672
    :pswitch_8
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;->mQuadCpuCoreWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->isHeld()Z

    move-result v0

    if-nez v0, :cond_c

    .line 12673
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;->mQuadCpuCoreWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->acquire()V

    .line 12674
    :cond_c
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;->mDualCpuCoreWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12675
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;->mDualCpuCoreWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 12622
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 12658
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_1
        :pswitch_8
    .end packed-switch
.end method

.method public acquire(Ljava/lang/String;)V
    .locals 9
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    .line 12590
    const/4 v3, 0x0

    .line 12591
    .local v3, "frequency":I
    const/4 v0, 0x0

    .line 12593
    .local v0, "cpu":I
    const-string v6, "WifiPerfLock"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "acquire(): request="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12594
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;->perfLockEventPattern:Ljava/lang/String;

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 12595
    .local v5, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 12596
    .local v4, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 12597
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 12598
    .local v2, "freqStr":Ljava/lang/String;
    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 12599
    .local v1, "cpuStr":Ljava/lang/String;
    const-string v6, "WifiPerfLock"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "acquire(): parsed str freq="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " cpu="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12600
    if-eqz v2, :cond_0

    .line 12601
    const-string v6, "highest"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 12602
    const/4 v3, 0x5

    .line 12610
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 12611
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 12617
    .end local v1    # "cpuStr":Ljava/lang/String;
    .end local v2    # "freqStr":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-virtual {p0, v3, v0}, Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;->acquire(II)V

    .line 12618
    return-void

    .line 12603
    .restart local v1    # "cpuStr":Ljava/lang/String;
    .restart local v2    # "freqStr":Ljava/lang/String;
    :cond_2
    const-string v6, "high"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 12604
    const/4 v3, 0x4

    goto :goto_0

    .line 12605
    :cond_3
    const-string v6, "medium"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 12606
    const/4 v3, 0x3

    goto :goto_0

    .line 12607
    :cond_4
    const-string v6, "lowest"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 12608
    const/4 v3, 0x1

    goto :goto_0

    .line 12615
    .end local v1    # "cpuStr":Ljava/lang/String;
    .end local v2    # "freqStr":Ljava/lang/String;
    :cond_5
    const-string v6, "WifiPerfLock"

    const-string v7, "acquire(): request no match"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public declared-synchronized release()V
    .locals 2

    .prologue
    .line 12683
    monitor-enter p0

    :try_start_0
    const-string v0, "WifiPerfLock"

    const-string v1, "release()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12684
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;->mMediumCpuFrequencyWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12685
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;->mMediumCpuFrequencyWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->release()V

    .line 12686
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;->mHighestCpuFrequencyWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12687
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;->mHighestCpuFrequencyWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->release()V

    .line 12688
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;->mHighCpuFrequencyWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12689
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;->mHighCpuFrequencyWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->release()V

    .line 12690
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;->mQuadCpuCoreWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12691
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;->mQuadCpuCoreWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->release()V

    .line 12692
    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;->mDualCpuCoreWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12693
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;->mDualCpuCoreWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12694
    :cond_4
    monitor-exit p0

    return-void

    .line 12683
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
