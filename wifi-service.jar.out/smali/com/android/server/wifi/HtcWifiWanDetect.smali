.class public Lcom/android/server/wifi/HtcWifiWanDetect;
.super Ljava/lang/Object;
.source "HtcWifiWanDetect.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Messenger;)Lcom/android/server/wifi/HtcWifiWanDetect;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wifiStateMachine"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p2, "dstMessenger"    # Landroid/os/Messenger;

    .prologue
    .line 48
    const/4 v0, 0x0

    .line 49
    .local v0, "wanDetect":Lcom/android/server/wifi/HtcWifiWanDetect;
    invoke-static {}, Landroid/net/wifi/HtcWifiCustomizeReader;->getSenseVersion()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 50
    new-instance v0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;

    .end local v0    # "wanDetect":Lcom/android/server/wifi/HtcWifiWanDetect;
    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/wifi/HtcWifiWanDetectImpl;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Messenger;)V

    .line 51
    .restart local v0    # "wanDetect":Lcom/android/server/wifi/HtcWifiWanDetect;
    const-string v1, "HtcWifiWanDetect"

    const-string v2, "create HtcWifiWanDetectImpl"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :goto_0
    return-object v0

    .line 54
    :cond_0
    new-instance v0, Lcom/android/server/wifi/HtcWifiWanDetect;

    .end local v0    # "wanDetect":Lcom/android/server/wifi/HtcWifiWanDetect;
    invoke-direct {v0}, Lcom/android/server/wifi/HtcWifiWanDetect;-><init>()V

    .line 55
    .restart local v0    # "wanDetect":Lcom/android/server/wifi/HtcWifiWanDetect;
    const-string v1, "HtcWifiWanDetect"

    const-string v2, "create HtcWifiWanDetect"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getVzwAvoidBadConnectionEnabled()Z
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public getWanDetectionEnabled()Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public isVzwAvoidBadConnection()Z
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public retryLanDetection()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public retryWanDetection()Z
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public setVzwAvoidBadConnectionDialogEnabled(Z)Z
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public setVzwAvoidBadConnectionEnabled(Z)Z
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public setWanDetectionDialogEnabled(Z)Z
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public setWanDetectionEnabled(Z)Z
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public setWanErrorNotification()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method
