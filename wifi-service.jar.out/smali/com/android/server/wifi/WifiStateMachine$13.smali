.class Lcom/android/server/wifi/WifiStateMachine$13;
.super Ljava/lang/Object;
.source "WifiStateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiStateMachine;->startSoftApWithConfig(Landroid/net/wifi/WifiConfiguration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;

.field final synthetic val$config:Landroid/net/wifi/WifiConfiguration;

.field final synthetic val$isCoex:Z


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;Z)V
    .locals 0

    .prologue
    .line 6822
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$13;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iput-object p2, p0, Lcom/android/server/wifi/WifiStateMachine$13;->val$config:Landroid/net/wifi/WifiConfiguration;

    iput-boolean p3, p0, Lcom/android/server/wifi/WifiStateMachine$13;->val$isCoex:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 6827
    :try_start_0
    sget-object v2, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;->HOTSPOT_LAN_SETTING:Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

    invoke-static {v2}, Landroid/net/wifi/HtcWifiCustomizeReader;->support(Landroid/net/wifi/HtcWifiCustomizeReader$Feature;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 6828
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$13;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v5

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$13;->val$config:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpEnable:I

    if-ne v2, v3, :cond_3

    move v2, v3

    :goto_0
    invoke-interface {v5, v2}, Landroid/os/INetworkManagementService;->setTetheringDhcpEnabled(Z)V

    .line 6843
    :goto_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$13;->val$config:Landroid/net/wifi/WifiConfiguration;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$13;->val$config:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->hotspotType:I

    if-ne v2, v3, :cond_8

    .line 6844
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$13;->val$config:Landroid/net/wifi/WifiConfiguration;

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->apBand:I

    if-ne v2, v3, :cond_7

    .line 6845
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$13;->val$config:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->channel_5g:I

    if-eqz v2, :cond_0

    .line 6846
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$13;->val$config:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$13;->val$config:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v5

    iget v5, v5, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->channel_5g:I

    iput v5, v2, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    .line 6856
    :cond_0
    :goto_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$13;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$13;->val$config:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v2, v5}, Lcom/android/server/wifi/WifiStateMachine;->setCurrentApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 6860
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiStateMachine$13;->val$isCoex:Z

    if-eqz v2, :cond_1

    .line 6861
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$13;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mHtcLteCoex:Lcom/android/server/wifi/HtcLteCoex;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/HtcLteCoex;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$13;->val$config:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v2, v5}, Lcom/android/server/wifi/HtcLteCoex;->setApChannel(Landroid/net/wifi/WifiConfiguration;)V

    .line 6863
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$13;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$13;->val$config:Landroid/net/wifi/WifiConfiguration;

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$13;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$800(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Landroid/os/INetworkManagementService;->startAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6913
    :goto_3
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$13;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v3, "Soft AP start successful"

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 6914
    :cond_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$13;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v3, 0x20016

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 6915
    :goto_4
    return-void

    :cond_3
    move v2, v4

    .line 6828
    goto :goto_0

    .line 6832
    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$13;->val$config:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpEnable:I

    if-nez v2, :cond_5

    .line 6833
    const-string v2, "WifiStateMachine"

    const-string v5, "Hit DhcpEnable init issue, reset to default"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6834
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$13;->val$config:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    const/4 v5, 0x1

    iput v5, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpEnable:I

    .line 6835
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$13;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$13;->val$config:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v2, v5}, Lcom/android/server/wifi/WifiStateMachine;->setHtcWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 6838
    :cond_5
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$13;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v2

    const/4 v5, 0x1

    invoke-interface {v2, v5}, Landroid/os/INetworkManagementService;->setTetheringDhcpEnabled(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 6864
    :catch_0
    move-exception v0

    .line 6865
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$13;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in softap start "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6867
    :try_start_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$13;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$13;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$800(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/os/INetworkManagementService;->stopAccessPoint(Ljava/lang/String;)V

    .line 6870
    sget-object v2, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;->HOTSPOT_LAN_SETTING:Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

    invoke-static {v2}, Landroid/net/wifi/HtcWifiCustomizeReader;->support(Landroid/net/wifi/HtcWifiCustomizeReader$Feature;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 6871
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$13;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v5

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$13;->val$config:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpEnable:I

    if-ne v2, v3, :cond_9

    move v2, v3

    :goto_5
    invoke-interface {v5, v2}, Landroid/os/INetworkManagementService;->setTetheringDhcpEnabled(Z)V

    .line 6886
    :goto_6
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$13;->val$config:Landroid/net/wifi/WifiConfiguration;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$13;->val$config:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->hotspotType:I

    if-ne v2, v3, :cond_d

    .line 6887
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$13;->val$config:Landroid/net/wifi/WifiConfiguration;

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->apBand:I

    if-ne v2, v3, :cond_c

    .line 6888
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$13;->val$config:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$13;->val$config:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->channel_5g:I

    iput v3, v2, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    .line 6897
    :goto_7
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$13;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$13;->val$config:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->setCurrentApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 6903
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiStateMachine$13;->val$isCoex:Z

    if-eqz v2, :cond_6

    .line 6904
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$13;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mHtcLteCoex:Lcom/android/server/wifi/HtcLteCoex;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/HtcLteCoex;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$13;->val$config:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/HtcLteCoex;->setApChannel(Landroid/net/wifi/WifiConfiguration;)V

    .line 6906
    :cond_6
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$13;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$13;->val$config:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$13;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$800(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Landroid/os/INetworkManagementService;->startAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_3

    .line 6907
    :catch_1
    move-exception v1

    .line 6908
    .local v1, "e1":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$13;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in softap re-start "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6909
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$13;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v3, 0x20017

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(II)V

    goto/16 :goto_4

    .line 6848
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "e1":Ljava/lang/Exception;
    :cond_7
    :try_start_3
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$13;->val$config:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$13;->val$config:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v5

    iget v5, v5, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->channel:I

    iput v5, v2, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    goto/16 :goto_2

    .line 6850
    :cond_8
    const-string v2, "WifiStateMachine"

    const-string v5, "3rd-party application enable Hotspot"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_9
    move v2, v4

    .line 6871
    goto/16 :goto_5

    .line 6875
    :cond_a
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$13;->val$config:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpEnable:I

    if-nez v2, :cond_b

    .line 6876
    const-string v2, "WifiStateMachine"

    const-string v5, "Hit DhcpEnable init issue, reset to default"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6877
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$13;->val$config:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    const/4 v5, 0x1

    iput v5, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpEnable:I

    .line 6878
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$13;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$13;->val$config:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v2, v5}, Lcom/android/server/wifi/WifiStateMachine;->setHtcWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 6881
    :cond_b
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$13;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v2

    const/4 v5, 0x1

    invoke-interface {v2, v5}, Landroid/os/INetworkManagementService;->setTetheringDhcpEnabled(Z)V

    goto/16 :goto_6

    .line 6890
    :cond_c
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$13;->val$config:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$13;->val$config:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->channel:I

    iput v3, v2, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    goto/16 :goto_7

    .line 6892
    :cond_d
    const-string v2, "WifiStateMachine"

    const-string v3, "3rd-party application enable Hotspot"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_7
.end method
