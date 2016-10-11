.class public Lcom/android/server/wifi/HtcConnectionFailNotification;
.super Ljava/lang/Object;
.source "HtcConnectionFailNotification.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/android/server/wifi/HtcConnectionFailNotification;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    const/4 v0, 0x0

    .line 42
    .local v0, "cfNotification":Lcom/android/server/wifi/HtcConnectionFailNotification;
    sget-object v1, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;->CONNECTION_FAIL_NOTIFICATION:Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

    invoke-static {v1}, Landroid/net/wifi/HtcWifiCustomizeReader;->support(Landroid/net/wifi/HtcWifiCustomizeReader$Feature;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 43
    new-instance v0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;

    .end local v0    # "cfNotification":Lcom/android/server/wifi/HtcConnectionFailNotification;
    invoke-direct {v0, p0}, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;-><init>(Landroid/content/Context;)V

    .line 44
    .restart local v0    # "cfNotification":Lcom/android/server/wifi/HtcConnectionFailNotification;
    const-string v1, "HtcConnectionFailNotification"

    const-string v2, "create HtcConnectionFailNotificationImpl"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :goto_0
    return-object v0

    .line 47
    :cond_0
    new-instance v0, Lcom/android/server/wifi/HtcConnectionFailNotification;

    .end local v0    # "cfNotification":Lcom/android/server/wifi/HtcConnectionFailNotification;
    invoke-direct {v0}, Lcom/android/server/wifi/HtcConnectionFailNotification;-><init>()V

    .line 48
    .restart local v0    # "cfNotification":Lcom/android/server/wifi/HtcConnectionFailNotification;
    const-string v1, "HtcConnectionFailNotification"

    const-string v2, "create HtcConnectionFailNotification"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public addAuthenticationFailuresNotificationCount()V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method public checkNetworkProblem(ILandroid/net/wifi/SupplicantState;I)Z
    .locals 1
    .param p1, "netId"    # I
    .param p2, "state"    # Landroid/net/wifi/SupplicantState;
    .param p3, "reason"    # I

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public clearWepErrorNotification()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method public getAuthenticationErrorRetry()I
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public getAuthenticationFailuresFlag()Z
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public handleHtcIdpwMsg(I)V
    .locals 0
    .param p1, "msg"    # I

    .prologue
    .line 55
    return-void
.end method

.method public handleSupplicantStateChange(Landroid/net/wifi/SupplicantState;)V
    .locals 0
    .param p1, "supState"    # Landroid/net/wifi/SupplicantState;

    .prologue
    .line 97
    return-void
.end method

.method public initHtcConnectionFailNotification(Landroid/net/wifi/WifiInfo;Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/SupplicantStateTracker;)V
    .locals 0
    .param p1, "wifiInfo"    # Landroid/net/wifi/WifiInfo;
    .param p2, "wifiNative"    # Lcom/android/server/wifi/WifiNative;
    .param p3, "supplicantStateTracker"    # Lcom/android/server/wifi/SupplicantStateTracker;

    .prologue
    .line 59
    return-void
.end method

.method public isWEPNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public sendWepErrorNotification()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public setAuthErrorNotificationVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 100
    return-void
.end method

.method public setAuthenticationFailuresFlag(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 79
    return-void
.end method

.method public setNetworkProblemInSupplicantBroadcast(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 87
    return-void
.end method

.method public showAuthErrorNotification(I)V
    .locals 0
    .param p1, "disableReason"    # I

    .prologue
    .line 69
    return-void
.end method

.method public updateNetworkProblemCount()Z
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method
