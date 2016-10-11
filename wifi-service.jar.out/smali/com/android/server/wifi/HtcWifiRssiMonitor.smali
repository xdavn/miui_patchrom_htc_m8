.class Lcom/android/server/wifi/HtcWifiRssiMonitor;
.super Ljava/lang/Object;
.source "HtcWifiRssiMonitor.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiNative;)Lcom/android/server/wifi/HtcWifiRssiMonitor;
    .locals 3
    .param p0, "stateMachine"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "wifiNative"    # Lcom/android/server/wifi/WifiNative;

    .prologue
    .line 16
    const/4 v0, 0x0

    .line 17
    .local v0, "rssiMonitor":Lcom/android/server/wifi/HtcWifiRssiMonitor;
    invoke-static {}, Landroid/net/wifi/HtcWifiCustomizeReader;->getSenseVersion()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 18
    new-instance v0, Lcom/android/server/wifi/HtcWifiRssiMonitorImpl;

    .end local v0    # "rssiMonitor":Lcom/android/server/wifi/HtcWifiRssiMonitor;
    invoke-direct {v0, p0, p1}, Lcom/android/server/wifi/HtcWifiRssiMonitorImpl;-><init>(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiNative;)V

    .line 19
    .restart local v0    # "rssiMonitor":Lcom/android/server/wifi/HtcWifiRssiMonitor;
    const-string v1, "HtcWifiRssiMonitor"

    const-string v2, "create HtcWifiRssiMonitorImpl"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    :goto_0
    return-object v0

    .line 22
    :cond_0
    new-instance v0, Lcom/android/server/wifi/HtcWifiRssiMonitor;

    .end local v0    # "rssiMonitor":Lcom/android/server/wifi/HtcWifiRssiMonitor;
    invoke-direct {v0}, Lcom/android/server/wifi/HtcWifiRssiMonitor;-><init>()V

    .line 23
    .restart local v0    # "rssiMonitor":Lcom/android/server/wifi/HtcWifiRssiMonitor;
    const-string v1, "HtcWifiRssiMonitor"

    const-string v2, "create HtcWifiRssiMonitor"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public resetIMSRssi()V
    .locals 0

    .prologue
    .line 31
    return-void
.end method

.method public setIMSRssi(I)V
    .locals 0
    .param p1, "newRSSI"    # I

    .prologue
    .line 33
    return-void
.end method

.method public declared-synchronized setRSSItoWifiInfo(Landroid/net/wifi/WifiInfo;II)V
    .locals 0
    .param p1, "wifiInfo"    # Landroid/net/wifi/WifiInfo;
    .param p2, "minRssi"    # I
    .param p3, "maxRssi"    # I

    .prologue
    .line 38
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public shouldBroadcastRSSIForIMS(I)Z
    .locals 1
    .param p1, "newRSSI"    # I

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method
