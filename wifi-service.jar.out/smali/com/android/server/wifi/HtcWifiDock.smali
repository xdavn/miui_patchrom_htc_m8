.class public Lcom/android/server/wifi/HtcWifiDock;
.super Ljava/lang/Object;
.source "HtcWifiDock.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/android/server/wifi/WifiServiceImpl;Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/HtcWifiDock;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wifiService"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p2, "wifiStateMachine"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 29
    const/4 v0, 0x0

    .line 30
    .local v0, "wifiDock":Lcom/android/server/wifi/HtcWifiDock;
    sget-object v1, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;->WIFI_DOCK:Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

    invoke-static {v1}, Landroid/net/wifi/HtcWifiCustomizeReader;->support(Landroid/net/wifi/HtcWifiCustomizeReader$Feature;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 31
    new-instance v0, Lcom/android/server/wifi/HtcWifiDockImpl;

    .end local v0    # "wifiDock":Lcom/android/server/wifi/HtcWifiDock;
    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/wifi/HtcWifiDockImpl;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiServiceImpl;Lcom/android/server/wifi/WifiStateMachine;)V

    .line 32
    .restart local v0    # "wifiDock":Lcom/android/server/wifi/HtcWifiDock;
    const-string v1, "HtcWifiDock"

    const-string v2, "create HtcWifiDockImpl"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :goto_0
    return-object v0

    .line 35
    :cond_0
    new-instance v0, Lcom/android/server/wifi/HtcWifiDock;

    .end local v0    # "wifiDock":Lcom/android/server/wifi/HtcWifiDock;
    invoke-direct {v0}, Lcom/android/server/wifi/HtcWifiDock;-><init>()V

    .line 36
    .restart local v0    # "wifiDock":Lcom/android/server/wifi/HtcWifiDock;
    const-string v1, "HtcWifiDock"

    const-string v2, "create HtcWifiDock"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getDockWifiApAutoEnabled()Z
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public getDockWifiAutoEnabled()Z
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public setDockWifiApAutoEnabled(Z)Z
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public setDockWifiAutoEnabled(Z)Z
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method
