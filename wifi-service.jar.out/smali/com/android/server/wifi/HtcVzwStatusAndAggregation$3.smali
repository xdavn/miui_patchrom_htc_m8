.class Lcom/android/server/wifi/HtcVzwStatusAndAggregation$3;
.super Landroid/content/BroadcastReceiver;
.source "HtcVzwStatusAndAggregation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->setVzwWifiAggregationReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/HtcVzwStatusAndAggregation;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/HtcVzwStatusAndAggregation;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/server/wifi/HtcVzwStatusAndAggregation$3;->this$0:Lcom/android/server/wifi/HtcVzwStatusAndAggregation;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, -0x1

    .line 102
    iget-object v3, p0, Lcom/android/server/wifi/HtcVzwStatusAndAggregation$3;->this$0:Lcom/android/server/wifi/HtcVzwStatusAndAggregation;

    const-string v4, "Receive ACTION_PICK_VERIZON_WIFI_NETWORK"

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->loge(Ljava/lang/String;)V

    .line 103
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 104
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/HtcVzwStatusAndAggregation$3;->this$0:Lcom/android/server/wifi/HtcVzwStatusAndAggregation;

    # getter for: Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->mVzwWifiString:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->access$000(Lcom/android/server/wifi/HtcVzwStatusAndAggregation;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 105
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->set(I)V

    .line 107
    iget-object v3, p0, Lcom/android/server/wifi/HtcVzwStatusAndAggregation$3;->this$0:Lcom/android/server/wifi/HtcVzwStatusAndAggregation;

    # getter for: Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v3}, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->access$100(Lcom/android/server/wifi/HtcVzwStatusAndAggregation;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v3

    invoke-virtual {v3, v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->saveNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    move-result-object v2

    .line 108
    .local v2, "result":Lcom/android/server/wifi/NetworkUpdateResult;
    invoke-virtual {v2}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v1

    .line 109
    .local v1, "netId":I
    iget-object v3, p0, Lcom/android/server/wifi/HtcVzwStatusAndAggregation$3;->this$0:Lcom/android/server/wifi/HtcVzwStatusAndAggregation;

    # getter for: Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v3}, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->access$100(Lcom/android/server/wifi/HtcVzwStatusAndAggregation;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 111
    iget-object v3, p0, Lcom/android/server/wifi/HtcVzwStatusAndAggregation$3;->this$0:Lcom/android/server/wifi/HtcVzwStatusAndAggregation;

    # getter for: Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v3}, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->access$100(Lcom/android/server/wifi/HtcVzwStatusAndAggregation;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/wifi/WifiConfigStore;->selectNetwork(Landroid/net/wifi/WifiConfiguration;ZI)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wifi/HtcVzwStatusAndAggregation$3;->this$0:Lcom/android/server/wifi/HtcVzwStatusAndAggregation;

    # getter for: Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v3}, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->access$200(Lcom/android/server/wifi/HtcVzwStatusAndAggregation;)Lcom/android/server/wifi/WifiNative;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 113
    iget-object v3, p0, Lcom/android/server/wifi/HtcVzwStatusAndAggregation$3;->this$0:Lcom/android/server/wifi/HtcVzwStatusAndAggregation;

    const-string v4, "Connect to Verizon Wifi"

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->loge(Ljava/lang/String;)V

    .line 117
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/HtcVzwStatusAndAggregation$3;->this$0:Lcom/android/server/wifi/HtcVzwStatusAndAggregation;

    const-string v4, "Fail to connect to Verizon Wifi"

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method
