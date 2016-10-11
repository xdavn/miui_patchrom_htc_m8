.class Lcom/android/server/wifi/HtcLteCoexQca$1;
.super Landroid/content/BroadcastReceiver;
.source "HtcLteCoex.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/HtcLteCoexQca;->registerLteCoexReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/HtcLteCoexQca;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/HtcLteCoexQca;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/server/wifi/HtcLteCoexQca$1;->this$0:Lcom/android/server/wifi/HtcLteCoexQca;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, -0x1

    const/16 v9, 0xb

    .line 157
    const-string v6, "HtcLteCoex"

    const-string v7, "Received WIFI_CHANNELS_CHANGED broadcast--HtcLteCoex"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v6, p0, Lcom/android/server/wifi/HtcLteCoexQca$1;->this$0:Lcom/android/server/wifi/HtcLteCoexQca;

    # invokes: Lcom/android/server/wifi/HtcLteCoexQca;->isQcaOldFrameworkLteCoex()Z
    invoke-static {v6}, Lcom/android/server/wifi/HtcLteCoexQca;->access$000(Lcom/android/server/wifi/HtcLteCoexQca;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    const-string v6, "start_safe_channel"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 164
    .local v4, "startSafeChannel":I
    const-string v6, "end_safe_channel"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 166
    .local v3, "endSafeChannel":I
    iget-object v6, p0, Lcom/android/server/wifi/HtcLteCoexQca$1;->this$0:Lcom/android/server/wifi/HtcLteCoexQca;

    iput v4, v6, Lcom/android/server/wifi/HtcLteCoexQca;->mStartChannel:I

    .line 167
    iget-object v6, p0, Lcom/android/server/wifi/HtcLteCoexQca$1;->this$0:Lcom/android/server/wifi/HtcLteCoexQca;

    iput v3, v6, Lcom/android/server/wifi/HtcLteCoexQca;->mEndChannel:I

    .line 169
    const-string v6, "HtcLteCoex"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "start_safe_ch:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", end_safe_ch:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const-string v6, "wifi.hotspot.coex.preferCH11"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 176
    if-gt v4, v9, :cond_2

    if-lt v3, v9, :cond_2

    .line 177
    iget-object v6, p0, Lcom/android/server/wifi/HtcLteCoexQca$1;->this$0:Lcom/android/server/wifi/HtcLteCoexQca;

    iput v9, v6, Lcom/android/server/wifi/HtcLteCoexQca;->mStartChannel:I

    .line 181
    :cond_2
    iget-object v6, p0, Lcom/android/server/wifi/HtcLteCoexQca$1;->this$0:Lcom/android/server/wifi/HtcLteCoexQca;

    iget-object v6, v6, Lcom/android/server/wifi/HtcLteCoexQca;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v5

    .line 183
    .local v5, "wifiApState":I
    const-string v6, "HtcLteCoex"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Restarting soft ap if needed. WifiAp state is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const/16 v6, 0xd

    if-ne v5, v6, :cond_0

    .line 188
    iget-object v6, p0, Lcom/android/server/wifi/HtcLteCoexQca$1;->this$0:Lcom/android/server/wifi/HtcLteCoexQca;

    # invokes: Lcom/android/server/wifi/HtcLteCoexQca;->getSapAutoChannelSelection()I
    invoke-static {v6}, Lcom/android/server/wifi/HtcLteCoexQca;->access$100(Lcom/android/server/wifi/HtcLteCoexQca;)I

    move-result v0

    .line 189
    .local v0, "autochannel":I
    const-string v6, "HtcLteCoex"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "autochannel="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v6, p0, Lcom/android/server/wifi/HtcLteCoexQca$1;->this$0:Lcom/android/server/wifi/HtcLteCoexQca;

    iget-object v6, v6, Lcom/android/server/wifi/HtcLteCoexQca;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiStateMachine;->syncGetHtcWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 191
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v6, p0, Lcom/android/server/wifi/HtcLteCoexQca$1;->this$0:Lcom/android/server/wifi/HtcLteCoexQca;

    invoke-virtual {v6, v1}, Lcom/android/server/wifi/HtcLteCoexQca;->isAutoChannel(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 192
    iget-object v6, p0, Lcom/android/server/wifi/HtcLteCoexQca$1;->this$0:Lcom/android/server/wifi/HtcLteCoexQca;

    # invokes: Lcom/android/server/wifi/HtcLteCoexQca;->getSapOperatingChannel()I
    invoke-static {v6}, Lcom/android/server/wifi/HtcLteCoexQca;->access$200(Lcom/android/server/wifi/HtcLteCoexQca;)I

    move-result v2

    .line 193
    .local v2, "currentChannel":I
    const-string v6, "HtcLteCoex"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "currentChannel="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    if-ltz v2, :cond_0

    if-lt v2, v4, :cond_3

    if-le v2, v3, :cond_0

    .line 199
    :cond_3
    const/4 v6, 0x1

    if-lt v2, v6, :cond_0

    const/16 v6, 0xe

    if-gt v2, v6, :cond_0

    .line 200
    const-string v6, "HtcLteCoex"

    const-string v7, "Operating on restricted channel. Restarting softAp--wifiStateMachine"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v6, p0, Lcom/android/server/wifi/HtcLteCoexQca$1;->this$0:Lcom/android/server/wifi/HtcLteCoexQca;

    invoke-virtual {v6, v1}, Lcom/android/server/wifi/HtcLteCoexQca;->restartSoftApIfOn(Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_0
.end method
