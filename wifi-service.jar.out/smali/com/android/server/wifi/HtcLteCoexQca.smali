.class Lcom/android/server/wifi/HtcLteCoexQca;
.super Lcom/android/server/wifi/HtcLteCoexImpl;
.source "HtcLteCoex.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "state"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/HtcLteCoexImpl;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;)V

    .line 121
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifi/HtcLteCoexQca;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/HtcLteCoexQca;

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/server/wifi/HtcLteCoexQca;->isQcaOldFrameworkLteCoex()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/wifi/HtcLteCoexQca;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/HtcLteCoexQca;

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/server/wifi/HtcLteCoexQca;->getSapAutoChannelSelection()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/wifi/HtcLteCoexQca;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/HtcLteCoexQca;

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/server/wifi/HtcLteCoexQca;->getSapOperatingChannel()I

    move-result v0

    return v0
.end method

.method private getSapAutoChannelSelection()I
    .locals 3

    .prologue
    .line 234
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/HtcLteCoexQca;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->getSapAutoChannelSelection()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 237
    :goto_0
    return v1

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HtcLteCoex"

    const-string v2, "Exception in getSapAutoChannelSelection"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private getSapOperatingChannel()I
    .locals 3

    .prologue
    .line 247
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/HtcLteCoexQca;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->getSapOperatingChannel()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 250
    :goto_0
    return v1

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HtcLteCoex"

    const-string v2, "Exception in getSapOperatingChannel"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private isQcaOldFrameworkLteCoex()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v1, 0x1

    .line 133
    const-string v3, "wifi.qca.oldframeworkltecoex"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 134
    const-string v2, "HtcLteCoex"

    const-string v3, "force to use QCA old framework LTE coesistence mechanism"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :goto_0
    return v1

    .line 136
    :cond_0
    const-string v3, "wifi.qca.oldframeworkltecoex"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1

    .line 137
    const-string v1, "HtcLteCoex"

    const-string v3, "force NOT to use QCA old framework LTE coesistence mechanism"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 138
    goto :goto_0

    .line 141
    :cond_1
    const-string v3, "ro.product.board"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "board":Ljava/lang/String;
    const-string v3, "msm8939"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "msm8974"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "msm8916"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 143
    :cond_2
    const-string v2, "HtcLteCoex"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "use QCA old framework LTE coesistence mechanism for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move v1, v2

    .line 149
    goto :goto_0
.end method

.method private setChannelRange(III)V
    .locals 3
    .param p1, "startchannel"    # I
    .param p2, "endchannel"    # I
    .param p3, "band"    # I

    .prologue
    .line 222
    :try_start_0
    const-string v1, "HtcLteCoex"

    const-string v2, "setChannelRange"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v1, p0, Lcom/android/server/wifi/HtcLteCoexQca;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/INetworkManagementService;->setChannelRange(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :goto_0
    return-void

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HtcLteCoex"

    const-string v2, "Exception in setChannelRange"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected checkCoex()Z
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcom/android/server/wifi/HtcLteCoexQca;->mStartChannel:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected registerLteCoexReceiver()V
    .locals 4

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/server/wifi/HtcLteCoexQca;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/wifi/HtcLteCoexQca$1;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/HtcLteCoexQca$1;-><init>(Lcom/android/server/wifi/HtcLteCoexQca;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "qualcomm.intent.action.SAFE_WIFI_CHANNELS_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 208
    return-void
.end method

.method public setApChannel(Landroid/net/wifi/WifiConfiguration;)V
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v2, 0x0

    .line 213
    const-string v0, "HtcLteCoex"

    const-string v1, "set ap channel =0 for auto selection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iput v2, p1, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    .line 215
    const-string v0, "HtcLteCoex"

    const-string v1, "Calling setChannelRange for QCA hotspot"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget v0, p0, Lcom/android/server/wifi/HtcLteCoexQca;->mStartChannel:I

    iget v1, p0, Lcom/android/server/wifi/HtcLteCoexQca;->mEndChannel:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/wifi/HtcLteCoexQca;->setChannelRange(III)V

    .line 217
    return-void
.end method
