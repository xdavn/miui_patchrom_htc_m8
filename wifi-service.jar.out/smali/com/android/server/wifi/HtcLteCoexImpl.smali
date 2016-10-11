.class abstract Lcom/android/server/wifi/HtcLteCoexImpl;
.super Lcom/android/server/wifi/HtcLteCoex;
.source "HtcLteCoex.java"


# static fields
.field protected static final ACTION_SAFE_WIFI_CHANNELS_CHANGED:Ljava/lang/String; = "qualcomm.intent.action.SAFE_WIFI_CHANNELS_CHANGED"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mEndChannel:I

.field protected mNwService:Landroid/os/INetworkManagementService;

.field protected mStartChannel:I

.field protected mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "state"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Lcom/android/server/wifi/HtcLteCoex;-><init>()V

    .line 63
    iput v1, p0, Lcom/android/server/wifi/HtcLteCoexImpl;->mStartChannel:I

    .line 64
    iput v1, p0, Lcom/android/server/wifi/HtcLteCoexImpl;->mEndChannel:I

    .line 67
    iput-object p1, p0, Lcom/android/server/wifi/HtcLteCoexImpl;->mContext:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/android/server/wifi/HtcLteCoexImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 70
    const-string v1, "network_management"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 71
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/HtcLteCoexImpl;->mNwService:Landroid/os/INetworkManagementService;

    .line 73
    invoke-virtual {p0}, Lcom/android/server/wifi/HtcLteCoexImpl;->registerLteCoexReceiver()V

    .line 74
    return-void
.end method


# virtual methods
.method protected abstract checkCoex()Z
.end method

.method protected isAutoChannel(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 5
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v1, 0x1

    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, "apChannel":I
    if-eqz p1, :cond_0

    .line 101
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->hotspotType:I

    if-ne v2, v1, :cond_1

    .line 102
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iget v0, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->channel:I

    .line 103
    const-string v2, "HtcLteCoex"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HTC apChannel="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    :goto_1
    return v1

    .line 106
    :cond_1
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    .line 107
    const-string v2, "HtcLteCoex"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apChannel="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 110
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isCoexistence(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 3
    .param p1, "configuration"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, "isCoex":Z
    if-eqz p1, :cond_0

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->apBand:I

    if-nez v1, :cond_0

    .line 78
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v1

    iget v1, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->hotspotType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 79
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v1

    iget v1, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->channel:I

    if-nez v1, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/android/server/wifi/HtcLteCoexImpl;->checkCoex()Z

    move-result v0

    .line 85
    :cond_0
    :goto_0
    return v0

    .line 82
    :cond_1
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    if-nez v1, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/android/server/wifi/HtcLteCoexImpl;->checkCoex()Z

    move-result v0

    goto :goto_0
.end method

.method protected abstract registerLteCoexReceiver()V
.end method

.method protected restartSoftApIfOn(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 91
    const-string v0, "HtcLteCoex"

    const-string v1, "LTE coex - Disabling wifi ap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/android/server/wifi/HtcLteCoexImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wifi/WifiStateMachine;->setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 93
    const-string v0, "HtcLteCoex"

    const-string v1, "LTE coex - Enabling wifi ap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v0, p0, Lcom/android/server/wifi/HtcLteCoexImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wifi/WifiStateMachine;->setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 95
    const-string v0, "HtcLteCoex"

    const-string v1, "LTE coex - Restart softap Done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-void
.end method
