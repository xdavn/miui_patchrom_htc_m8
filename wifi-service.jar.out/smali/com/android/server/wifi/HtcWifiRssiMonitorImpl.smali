.class Lcom/android/server/wifi/HtcWifiRssiMonitorImpl;
.super Lcom/android/server/wifi/HtcWifiRssiMonitor;
.source "HtcWifiRssiMonitor.java"


# static fields
.field private static DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "HtcWifiRssiMonitor"


# instance fields
.field private mLastRssi:I

.field private mWifiNative:Lcom/android/server/wifi/WifiNative;

.field private mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/server/wifi/HtcWifiRssiMonitorImpl;->DBG:Z

    return-void
.end method

.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiNative;)V
    .locals 1
    .param p1, "stateMachine"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p2, "wifiNative"    # Lcom/android/server/wifi/WifiNative;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/server/wifi/HtcWifiRssiMonitor;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/server/wifi/HtcWifiRssiMonitorImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 53
    iput-object p2, p0, Lcom/android/server/wifi/HtcWifiRssiMonitorImpl;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    .line 54
    const/16 v0, -0xc8

    iput v0, p0, Lcom/android/server/wifi/HtcWifiRssiMonitorImpl;->mLastRssi:I

    .line 55
    return-void
.end method


# virtual methods
.method public resetIMSRssi()V
    .locals 1

    .prologue
    .line 59
    const/16 v0, -0xc8

    iput v0, p0, Lcom/android/server/wifi/HtcWifiRssiMonitorImpl;->mLastRssi:I

    .line 60
    return-void
.end method

.method public setIMSRssi(I)V
    .locals 3
    .param p1, "newRSSI"    # I

    .prologue
    .line 62
    const-string v0, "HtcWifiRssiMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newrssi ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , oldRssi= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wifi/HtcWifiRssiMonitorImpl;->mLastRssi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iput p1, p0, Lcom/android/server/wifi/HtcWifiRssiMonitorImpl;->mLastRssi:I

    .line 64
    return-void
.end method

.method public declared-synchronized setRSSItoWifiInfo(Landroid/net/wifi/WifiInfo;II)V
    .locals 12
    .param p1, "wifiInfo"    # Landroid/net/wifi/WifiInfo;
    .param p2, "minRssi"    # I
    .param p3, "maxRssi"    # I

    .prologue
    .line 87
    monitor-enter p0

    const/4 v6, -0x1

    .line 88
    .local v6, "newRssi":I
    const/4 v5, -0x1

    .line 97
    .local v5, "newLinkSpeed":I
    :try_start_0
    iget-object v9, p0, Lcom/android/server/wifi/HtcWifiRssiMonitorImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v9}, Lcom/android/server/wifi/WifiStateMachine;->getNetworkDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v9

    sget-object v10, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v9, v10, :cond_0

    .line 98
    invoke-virtual {p1, p2}, Landroid/net/wifi/WifiInfo;->setRssi(I)V

    .line 99
    const-string v9, "HtcWifiRssiMonitor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setRSSItoWifiInfo: NetworkDetailedState="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wifi/HtcWifiRssiMonitorImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v11}, Lcom/android/server/wifi/WifiStateMachine;->getNetworkDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    :goto_0
    monitor-exit p0

    return-void

    .line 102
    :cond_0
    :try_start_1
    iget-object v9, p0, Lcom/android/server/wifi/HtcWifiRssiMonitorImpl;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v9}, Lcom/android/server/wifi/WifiNative;->signalPoll()Ljava/lang/String;

    move-result-object v8

    .line 104
    .local v8, "signalPoll":Ljava/lang/String;
    if-eqz v8, :cond_4

    .line 105
    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 106
    .local v4, "lines":[Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_4

    aget-object v3, v0, v1

    .line 107
    .local v3, "line":Ljava/lang/String;
    const-string v9, "="

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 108
    .local v7, "prop":[Ljava/lang/String;
    array-length v9, v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v10, 0x2

    if-ge v9, v10, :cond_2

    .line 106
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 110
    :cond_2
    const/4 v9, 0x0

    :try_start_2
    aget-object v9, v7, v9

    const-string v10, "RSSI"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 111
    const/4 v9, 0x1

    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_2

    .line 112
    :cond_3
    const/4 v9, 0x0

    aget-object v9, v7, v9

    const-string v10, "LINKSPEED"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 113
    const/4 v9, 0x1

    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v5

    goto :goto_2

    .line 121
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "lines":[Ljava/lang/String;
    .end local v7    # "prop":[Ljava/lang/String;
    :cond_4
    const/4 v9, -0x1

    if-eq v6, v9, :cond_6

    if-ge p2, v6, :cond_6

    if-ge v6, p3, :cond_6

    .line 125
    if-lez v6, :cond_5

    add-int/lit16 v6, v6, -0x100

    .line 126
    :cond_5
    :try_start_3
    invoke-virtual {p1, v6}, Landroid/net/wifi/WifiInfo;->setRssi(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 87
    .end local v8    # "signalPoll":Ljava/lang/String;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 129
    .restart local v8    # "signalPoll":Ljava/lang/String;
    :cond_6
    :try_start_4
    const-string v9, "HtcWifiRssiMonitor"

    const-string v10, "setRSSItoWifiInfo: Don\'t get new RSSI"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 115
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v4    # "lines":[Ljava/lang/String;
    .restart local v7    # "prop":[Ljava/lang/String;
    :catch_0
    move-exception v9

    goto :goto_2
.end method

.method public shouldBroadcastRSSIForIMS(I)Z
    .locals 6
    .param p1, "newRSSI"    # I

    .prologue
    const/16 v5, -0x4b

    const/16 v4, -0x50

    const/16 v3, -0x55

    .line 66
    const/4 v0, 0x0

    .line 67
    .local v0, "needBroadcast":Z
    iget v1, p0, Lcom/android/server/wifi/HtcWifiRssiMonitorImpl;->mLastRssi:I

    if-eq p1, v1, :cond_0

    .line 68
    iget v1, p0, Lcom/android/server/wifi/HtcWifiRssiMonitorImpl;->mLastRssi:I

    const/16 v2, -0xc8

    if-ne v1, v2, :cond_2

    .line 69
    const/4 v0, 0x1

    .line 77
    :cond_0
    :goto_0
    sget-boolean v1, Lcom/android/server/wifi/HtcWifiRssiMonitorImpl;->DBG:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 78
    const-string v1, "HtcWifiRssiMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BroadcastRSSIForIMS, newrssi ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , oldRssi= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wifi/HtcWifiRssiMonitorImpl;->mLastRssi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_1
    return v0

    .line 70
    :cond_2
    if-le p1, v5, :cond_3

    iget v1, p0, Lcom/android/server/wifi/HtcWifiRssiMonitorImpl;->mLastRssi:I

    if-gt v1, v5, :cond_3

    .line 71
    const/4 v0, 0x1

    goto :goto_0

    .line 72
    :cond_3
    if-gt p1, v4, :cond_4

    iget v1, p0, Lcom/android/server/wifi/HtcWifiRssiMonitorImpl;->mLastRssi:I

    if-le v1, v4, :cond_4

    .line 73
    const/4 v0, 0x1

    goto :goto_0

    .line 74
    :cond_4
    if-gt p1, v3, :cond_0

    iget v1, p0, Lcom/android/server/wifi/HtcWifiRssiMonitorImpl;->mLastRssi:I

    if-le v1, v3, :cond_0

    .line 75
    const/4 v0, 0x1

    goto :goto_0
.end method
