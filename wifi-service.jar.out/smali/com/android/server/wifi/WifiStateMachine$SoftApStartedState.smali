.class Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SoftApStartedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 11909
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public exit()V
    .locals 2

    .prologue
    .line 11961
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mPerfLock:Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$2400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;->release()V

    .line 11962
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v1, "PerfLock released for exiting SoftApStartedState"

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 11963
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 11912
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logStateAndMessage(Landroid/os/Message;Ljava/lang/String;)V
    invoke-static {v3, p1, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$1100(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    .line 11914
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 11955
    :goto_0
    return v2

    .line 11916
    :sswitch_0
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v4, "Stopping Soft AP"

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 11921
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v3, v2}, Lcom/android/server/wifi/WifiStateMachine;->setHtcSoftapMonitorStarted(Z)V

    .line 11923
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/WifiStateMachine;->mHtcHotspotAllowUserOnly:Lcom/android/server/wifi/HtcHotspotAllowUserOnly;

    invoke-virtual {v3, v2}, Lcom/android/server/wifi/HtcHotspotAllowUserOnly;->setConnectionReqNotificationVisible(Z)V

    .line 11927
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$800(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/os/INetworkManagementService;->stopAccessPoint(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11931
    :goto_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/16 v4, 0xb

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setWifiApState(II)V
    invoke-static {v3, v4, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$5300(Lcom/android/server/wifi/WifiStateMachine;II)V

    .line 11933
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mPerfLock:Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$2400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;->release()V

    .line 11934
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v3, "PerfLock released for CMD_STOP_AP in SoftApStartedState"

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 11936
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mInitialState:Lcom/android/internal/util/State;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$5600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$28400(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 11955
    :cond_1
    :goto_2
    :sswitch_1
    const/4 v2, 0x1

    goto :goto_0

    .line 11928
    :catch_0
    move-exception v0

    .line 11929
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v4, "Exception in stopAccessPoint()"

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 11943
    .end local v0    # "e":Ljava/lang/Exception;
    :sswitch_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v3, "Cannot start supplicant with a running soft AP"

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 11944
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v3, 0x4

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setWifiState(I)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4900(Lcom/android/server/wifi/WifiStateMachine;I)V

    goto :goto_2

    .line 11947
    :sswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wifi/WifiStateMachine$TetherStateChange;

    .line 11948
    .local v1, "stateChange":Lcom/android/server/wifi/WifiStateMachine$TetherStateChange;
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v3, v1, Lcom/android/server/wifi/WifiStateMachine$TetherStateChange;->available:Ljava/util/ArrayList;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->startTethering(Ljava/util/ArrayList;)Z
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$28500(Lcom/android/server/wifi/WifiStateMachine;Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 11949
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mTetheringState:Lcom/android/internal/util/State;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$28600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$28700(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_2

    .line 11914
    nop

    :sswitch_data_0
    .sparse-switch
        0x2000b -> :sswitch_2
        0x20015 -> :sswitch_1
        0x20018 -> :sswitch_0
        0x2001d -> :sswitch_3
    .end sparse-switch
.end method
