.class Lcom/android/server/wifi/HtcWifiEmergency;
.super Ljava/lang/Object;
.source "HtcWifiEmergency.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/HtcWifiEmergency;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "service"    # Lcom/android/server/wifi/WifiServiceImpl;

    .prologue
    .line 27
    const/4 v0, 0x0

    .line 28
    .local v0, "wifiEmergency":Lcom/android/server/wifi/HtcWifiEmergency;
    invoke-static {}, Landroid/net/wifi/HtcWifiCustomizeReader;->getSenseVersion()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 29
    new-instance v0, Lcom/android/server/wifi/HtcWifiEmergencyImpl;

    .end local v0    # "wifiEmergency":Lcom/android/server/wifi/HtcWifiEmergency;
    invoke-direct {v0, p0, p1}, Lcom/android/server/wifi/HtcWifiEmergencyImpl;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiServiceImpl;)V

    .line 30
    .restart local v0    # "wifiEmergency":Lcom/android/server/wifi/HtcWifiEmergency;
    const-string v1, "HtcWifiEmergency"

    const-string v2, "create HtcWifiEmergencyImpl"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :goto_0
    return-object v0

    .line 33
    :cond_0
    new-instance v0, Lcom/android/server/wifi/HtcWifiEmergency;

    .end local v0    # "wifiEmergency":Lcom/android/server/wifi/HtcWifiEmergency;
    invoke-direct {v0}, Lcom/android/server/wifi/HtcWifiEmergency;-><init>()V

    .line 34
    .restart local v0    # "wifiEmergency":Lcom/android/server/wifi/HtcWifiEmergency;
    const-string v1, "HtcWifiEmergency"

    const-string v2, "create HtcWifiEmergency"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public isEmergencyMode()Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportWifiCalling()Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method
