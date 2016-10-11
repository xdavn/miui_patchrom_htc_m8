.class Lcom/android/server/ConnectivityService$InternalHandler;
.super Landroid/os/Handler;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method public constructor <init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2776
    iput-object p1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    .line 2777
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2778
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2782
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 2872
    :cond_0
    :goto_0
    return-void

    .line 2785
    :sswitch_0
    const/4 v0, 0x0

    .line 2786
    .local v0, "causedBy":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    monitor-enter v6

    .line 2787
    :try_start_0
    iget v5, p1, Landroid/os/Message;->arg1:I

    iget-object v7, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockSerialNumber:I
    invoke-static {v7}, Lcom/android/server/ConnectivityService;->access$2900(Lcom/android/server/ConnectivityService;)I

    move-result v7

    if-ne v5, v7, :cond_1

    iget-object v5, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->access$3000(Lcom/android/server/ConnectivityService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2789
    iget-object v5, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->access$3000(Lcom/android/server/ConnectivityService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2790
    iget-object v5, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->access$3100(Lcom/android/server/ConnectivityService;)Ljava/lang/String;

    move-result-object v0

    .line 2794
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2795
    iget v5, p1, Landroid/os/Message;->what:I

    const/16 v6, 0x18

    if-ne v5, v6, :cond_2

    .line 2796
    const-string v5, "Failed to find a new network - expiring NetTransition Wakelock"

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->access$1600(Ljava/lang/String;)V

    goto :goto_0

    .line 2792
    :cond_1
    :try_start_1
    monitor-exit v6

    goto :goto_0

    .line 2794
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 2798
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NetTransition Wakelock ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v0, :cond_3

    const-string v0, "unknown"

    .end local v0    # "causedBy":Ljava/lang/String;
    :cond_3
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " cleared because we found a replacement network"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->access$1600(Ljava/lang/String;)V

    goto :goto_0

    .line 2804
    :sswitch_1
    iget-object v5, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->handleDeprecatedGlobalHttpProxy()V
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->access$3200(Lcom/android/server/ConnectivityService;)V

    goto :goto_0

    .line 2808
    :sswitch_2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/content/Intent;

    .line 2809
    .local v3, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V
    invoke-static {v5, v3}, Lcom/android/server/ConnectivityService;->access$3300(Lcom/android/server/ConnectivityService;Landroid/content/Intent;)V

    goto :goto_0

    .line 2813
    .end local v3    # "intent":Landroid/content/Intent;
    :sswitch_3
    iget-object v6, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/ProxyInfo;

    # invokes: Lcom/android/server/ConnectivityService;->handleApplyDefaultProxy(Landroid/net/ProxyInfo;)V
    invoke-static {v6, v5}, Lcom/android/server/ConnectivityService;->access$3400(Lcom/android/server/ConnectivityService;Landroid/net/ProxyInfo;)V

    goto :goto_0

    .line 2817
    :sswitch_4
    iget-object v6, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    # invokes: Lcom/android/server/ConnectivityService;->handleRegisterNetworkFactory(Lcom/android/server/ConnectivityService$NetworkFactoryInfo;)V
    invoke-static {v6, v5}, Lcom/android/server/ConnectivityService;->access$3500(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$NetworkFactoryInfo;)V

    goto :goto_0

    .line 2821
    :sswitch_5
    iget-object v6, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/Messenger;

    # invokes: Lcom/android/server/ConnectivityService;->handleUnregisterNetworkFactory(Landroid/os/Messenger;)V
    invoke-static {v6, v5}, Lcom/android/server/ConnectivityService;->access$3600(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;)V

    goto/16 :goto_0

    .line 2825
    :sswitch_6
    iget-object v6, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/connectivity/NetworkAgentInfo;

    # invokes: Lcom/android/server/ConnectivityService;->handleRegisterNetworkAgent(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    invoke-static {v6, v5}, Lcom/android/server/ConnectivityService;->access$3700(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    goto/16 :goto_0

    .line 2830
    :sswitch_7
    iget-object v6, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    # invokes: Lcom/android/server/ConnectivityService;->handleRegisterNetworkRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V
    invoke-static {v6, v5}, Lcom/android/server/ConnectivityService;->access$3800(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    goto/16 :goto_0

    .line 2835
    :sswitch_8
    iget-object v5, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->handleRegisterNetworkRequestWithIntent(Landroid/os/Message;)V
    invoke-static {v5, p1}, Lcom/android/server/ConnectivityService;->access$3900(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2839
    :sswitch_9
    iget-object v6, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/app/PendingIntent;

    iget v7, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/ConnectivityService;->handleReleaseNetworkRequestWithIntent(Landroid/app/PendingIntent;I)V
    invoke-static {v6, v5, v7}, Lcom/android/server/ConnectivityService;->access$4000(Lcom/android/server/ConnectivityService;Landroid/app/PendingIntent;I)V

    goto/16 :goto_0

    .line 2843
    :sswitch_a
    iget-object v6, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/NetworkRequest;

    iget v7, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/ConnectivityService;->handleReleaseNetworkRequest(Landroid/net/NetworkRequest;I)V
    invoke-static {v6, v5, v7}, Lcom/android/server/ConnectivityService;->access$4100(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;I)V

    goto/16 :goto_0

    .line 2847
    :sswitch_b
    iget-object v9, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/Network;

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-eqz v6, :cond_4

    move v6, v7

    :goto_1
    iget v10, p1, Landroid/os/Message;->arg2:I

    if-eqz v10, :cond_5

    :goto_2
    # invokes: Lcom/android/server/ConnectivityService;->handleSetAcceptUnvalidated(Landroid/net/Network;ZZ)V
    invoke-static {v9, v5, v6, v7}, Lcom/android/server/ConnectivityService;->access$4200(Lcom/android/server/ConnectivityService;Landroid/net/Network;ZZ)V

    goto/16 :goto_0

    :cond_4
    move v6, v8

    goto :goto_1

    :cond_5
    move v7, v8

    goto :goto_2

    .line 2851
    :sswitch_c
    iget-object v6, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/Network;

    # invokes: Lcom/android/server/ConnectivityService;->handlePromptUnvalidated(Landroid/net/Network;)V
    invoke-static {v6, v5}, Lcom/android/server/ConnectivityService;->access$4300(Lcom/android/server/ConnectivityService;Landroid/net/Network;)V

    goto/16 :goto_0

    .line 2855
    :sswitch_d
    iget-object v5, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->handleMobileDataAlwaysOn()V
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->access$4400(Lcom/android/server/ConnectivityService;)V

    goto/16 :goto_0

    .line 2859
    :sswitch_e
    iget-object v5, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->access$1100(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2860
    .local v4, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-object v5, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor:Lcom/android/server/connectivity/NetworkMonitor;

    iput-boolean v7, v5, Lcom/android/server/connectivity/NetworkMonitor;->systemReady:Z

    goto :goto_3

    .line 2866
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :sswitch_f
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v7, :cond_6

    move v1, v7

    .line 2867
    .local v1, "enable":Z
    :goto_4
    iget-object v5, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->access$4500(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/Tethering;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/server/connectivity/Tethering;->setUsbTetheringRestricted(Z)V

    goto/16 :goto_0

    .end local v1    # "enable":Z
    :cond_6
    move v1, v8

    .line 2866
    goto :goto_4

    .line 2782
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x9 -> :sswitch_1
        0xb -> :sswitch_2
        0x10 -> :sswitch_3
        0x11 -> :sswitch_4
        0x12 -> :sswitch_6
        0x13 -> :sswitch_7
        0x15 -> :sswitch_7
        0x16 -> :sswitch_a
        0x17 -> :sswitch_5
        0x18 -> :sswitch_0
        0x19 -> :sswitch_e
        0x1a -> :sswitch_8
        0x1b -> :sswitch_9
        0x1c -> :sswitch_b
        0x1d -> :sswitch_c
        0x1e -> :sswitch_d
        0x1f -> :sswitch_8
        0x65 -> :sswitch_f
    .end sparse-switch
.end method
