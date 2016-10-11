.class public Lcom/android/server/wifi/HtcWifiEnableNotification;
.super Ljava/lang/Object;
.source "HtcWifiEnableNotification.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/HtcWifiEnableNotification;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wifiService"    # Lcom/android/server/wifi/WifiServiceImpl;

    .prologue
    .line 25
    const/4 v0, 0x0

    .line 26
    .local v0, "wifiEnableNotification":Lcom/android/server/wifi/HtcWifiEnableNotification;
    sget-object v1, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;->WIFI_ENABLE_NOTIFICATION:Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

    invoke-static {v1}, Landroid/net/wifi/HtcWifiCustomizeReader;->support(Landroid/net/wifi/HtcWifiCustomizeReader$Feature;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 27
    new-instance v0, Lcom/android/server/wifi/HtcWifiEnableNotificationImpl;

    .end local v0    # "wifiEnableNotification":Lcom/android/server/wifi/HtcWifiEnableNotification;
    invoke-direct {v0, p0, p1}, Lcom/android/server/wifi/HtcWifiEnableNotificationImpl;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiServiceImpl;)V

    .line 28
    .restart local v0    # "wifiEnableNotification":Lcom/android/server/wifi/HtcWifiEnableNotification;
    const-string v1, "HtcWifiEnableNotification"

    const-string v2, "create HtcWifiEnableNotificationImpl"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    new-instance v0, Lcom/android/server/wifi/HtcWifiEnableNotification;

    .end local v0    # "wifiEnableNotification":Lcom/android/server/wifi/HtcWifiEnableNotification;
    invoke-direct {v0}, Lcom/android/server/wifi/HtcWifiEnableNotification;-><init>()V

    .line 32
    .restart local v0    # "wifiEnableNotification":Lcom/android/server/wifi/HtcWifiEnableNotification;
    const-string v1, "HtcWifiEnableNotification"

    const-string v2, "create HtcWifiEnableNotification"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized isWifiEnableNotifyPackageName(Ljava/lang/String;)Z
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 44
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized setWifiEnableNotify(Lcom/android/server/wifi/WifiController;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "wifiController"    # Lcom/android/server/wifi/WifiController;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "labelStr"    # Ljava/lang/String;

    .prologue
    .line 48
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return v0
.end method

.method public showAlertDialog()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method
