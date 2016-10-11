.class Lcom/android/server/wifi/HtcLteCoexBcm$1;
.super Landroid/content/BroadcastReceiver;
.source "HtcLteCoex.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/HtcLteCoexBcm;->registerLteCoexReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/HtcLteCoexBcm;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/HtcLteCoexBcm;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/android/server/wifi/HtcLteCoexBcm$1;->this$0:Lcom/android/server/wifi/HtcLteCoexBcm;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, -0x1

    .line 291
    const-string v5, "start_safe_channel"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 292
    .local v3, "startSafeChannel":I
    const-string v5, "end_safe_channel"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 294
    .local v2, "endSafeChannel":I
    iget-object v5, p0, Lcom/android/server/wifi/HtcLteCoexBcm$1;->this$0:Lcom/android/server/wifi/HtcLteCoexBcm;

    iput v3, v5, Lcom/android/server/wifi/HtcLteCoexBcm;->mStartChannel:I

    .line 295
    iget-object v5, p0, Lcom/android/server/wifi/HtcLteCoexBcm$1;->this$0:Lcom/android/server/wifi/HtcLteCoexBcm;

    iput v2, v5, Lcom/android/server/wifi/HtcLteCoexBcm;->mEndChannel:I

    .line 297
    const-string v5, "HtcLteCoex"

    const-string v6, "Received WIFI_CHANNELS_CHANGED broadcast--HtcLteCoex"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const-string v5, "HtcLteCoex"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "start_safe_ch:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", end_safe_ch:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const-string v5, "wifi.hotspot.currentChannel"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 304
    .local v1, "currentChannel":I
    iget-object v5, p0, Lcom/android/server/wifi/HtcLteCoexBcm$1;->this$0:Lcom/android/server/wifi/HtcLteCoexBcm;

    iget-object v5, v5, Lcom/android/server/wifi/HtcLteCoexBcm;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v4

    .line 306
    .local v4, "wifiApState":I
    const-string v5, "HtcLteCoex"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Restarting soft ap if needed. WifiAp state is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v5, p0, Lcom/android/server/wifi/HtcLteCoexBcm$1;->this$0:Lcom/android/server/wifi/HtcLteCoexBcm;

    # invokes: Lcom/android/server/wifi/HtcLteCoexBcm;->setApBandwidth(II)V
    invoke-static {v5, v3, v2}, Lcom/android/server/wifi/HtcLteCoexBcm;->access$000(Lcom/android/server/wifi/HtcLteCoexBcm;II)V

    .line 312
    iget-object v5, p0, Lcom/android/server/wifi/HtcLteCoexBcm$1;->this$0:Lcom/android/server/wifi/HtcLteCoexBcm;

    iget-object v6, p0, Lcom/android/server/wifi/HtcLteCoexBcm$1;->this$0:Lcom/android/server/wifi/HtcLteCoexBcm;

    # invokes: Lcom/android/server/wifi/HtcLteCoexBcm;->manualChannelSelection(II)I
    invoke-static {v6, v3, v2}, Lcom/android/server/wifi/HtcLteCoexBcm;->access$200(Lcom/android/server/wifi/HtcLteCoexBcm;II)I

    move-result v6

    # setter for: Lcom/android/server/wifi/HtcLteCoexBcm;->mBcmManualChannel:I
    invoke-static {v5, v6}, Lcom/android/server/wifi/HtcLteCoexBcm;->access$102(Lcom/android/server/wifi/HtcLteCoexBcm;I)I

    .line 313
    const-string v5, "HtcLteCoex"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mBcmManualChannel="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/HtcLteCoexBcm$1;->this$0:Lcom/android/server/wifi/HtcLteCoexBcm;

    # getter for: Lcom/android/server/wifi/HtcLteCoexBcm;->mBcmManualChannel:I
    invoke-static {v7}, Lcom/android/server/wifi/HtcLteCoexBcm;->access$100(Lcom/android/server/wifi/HtcLteCoexBcm;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const/16 v5, 0xd

    if-ne v4, v5, :cond_1

    .line 316
    iget-object v5, p0, Lcom/android/server/wifi/HtcLteCoexBcm$1;->this$0:Lcom/android/server/wifi/HtcLteCoexBcm;

    iget-object v5, v5, Lcom/android/server/wifi/HtcLteCoexBcm;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiStateMachine;->syncGetHtcWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 317
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v5, p0, Lcom/android/server/wifi/HtcLteCoexBcm$1;->this$0:Lcom/android/server/wifi/HtcLteCoexBcm;

    invoke-virtual {v5, v0}, Lcom/android/server/wifi/HtcLteCoexBcm;->isAutoChannel(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/wifi/HtcLteCoexBcm$1;->this$0:Lcom/android/server/wifi/HtcLteCoexBcm;

    # getter for: Lcom/android/server/wifi/HtcLteCoexBcm;->mBcmManualChannel:I
    invoke-static {v5}, Lcom/android/server/wifi/HtcLteCoexBcm;->access$100(Lcom/android/server/wifi/HtcLteCoexBcm;)I

    move-result v5

    if-eqz v5, :cond_1

    .line 318
    const-string v5, "HtcLteCoex"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "currentChannel="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    if-lt v1, v3, :cond_0

    if-le v1, v2, :cond_1

    .line 321
    :cond_0
    const/4 v5, 0x1

    if-lt v1, v5, :cond_1

    const/16 v5, 0xe

    if-gt v1, v5, :cond_1

    .line 322
    const-string v5, "HtcLteCoex"

    const-string v6, "Operating on restricted channel. Restarting softAp--wifiStateMachine"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v5, p0, Lcom/android/server/wifi/HtcLteCoexBcm$1;->this$0:Lcom/android/server/wifi/HtcLteCoexBcm;

    invoke-virtual {v5, v0}, Lcom/android/server/wifi/HtcLteCoexBcm;->restartSoftApIfOn(Landroid/net/wifi/WifiConfiguration;)V

    .line 332
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    iget-object v5, p0, Lcom/android/server/wifi/HtcLteCoexBcm$1;->this$0:Lcom/android/server/wifi/HtcLteCoexBcm;

    # invokes: Lcom/android/server/wifi/HtcLteCoexBcm;->setLteCoexQmiBitmap(II)V
    invoke-static {v5, v3, v2}, Lcom/android/server/wifi/HtcLteCoexBcm;->access$300(Lcom/android/server/wifi/HtcLteCoexBcm;II)V

    .line 333
    const-string v5, "HtcLteCoex"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Setup LTE coex channel "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/HtcLteCoexBcm$1;->this$0:Lcom/android/server/wifi/HtcLteCoexBcm;

    # getter for: Lcom/android/server/wifi/HtcLteCoexBcm;->mBitmap:I
    invoke-static {v7}, Lcom/android/server/wifi/HtcLteCoexBcm;->access$400(Lcom/android/server/wifi/HtcLteCoexBcm;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v5, p0, Lcom/android/server/wifi/HtcLteCoexBcm$1;->this$0:Lcom/android/server/wifi/HtcLteCoexBcm;

    # invokes: Lcom/android/server/wifi/HtcLteCoexBcm;->enableLteCoexQmi()V
    invoke-static {v5}, Lcom/android/server/wifi/HtcLteCoexBcm;->access$500(Lcom/android/server/wifi/HtcLteCoexBcm;)V

    .line 336
    return-void
.end method
