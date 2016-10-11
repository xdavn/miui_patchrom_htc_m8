.class public Lcom/android/server/wifi/HtcPreferredAp;
.super Ljava/lang/Object;
.source "HtcPreferredAp.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiInfo;)Lcom/android/server/wifi/HtcPreferredAp;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wifiStateMachine"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p2, "wifiInfo"    # Landroid/net/wifi/WifiInfo;

    .prologue
    .line 31
    const/4 v0, 0x0

    .line 32
    .local v0, "preferredAp":Lcom/android/server/wifi/HtcPreferredAp;
    sget-object v1, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;->WIFI_PREFERRED_AP:Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

    invoke-static {v1}, Landroid/net/wifi/HtcWifiCustomizeReader;->support(Landroid/net/wifi/HtcWifiCustomizeReader$Feature;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 33
    new-instance v0, Lcom/android/server/wifi/HtcPreferredApImpl;

    .end local v0    # "preferredAp":Lcom/android/server/wifi/HtcPreferredAp;
    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/wifi/HtcPreferredApImpl;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiInfo;)V

    .line 34
    .restart local v0    # "preferredAp":Lcom/android/server/wifi/HtcPreferredAp;
    const-string v1, "HtcPreferredAp"

    const-string v2, "create HtcPreferredApImpl"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :goto_0
    return-object v0

    .line 37
    :cond_0
    new-instance v0, Lcom/android/server/wifi/HtcPreferredAp;

    .end local v0    # "preferredAp":Lcom/android/server/wifi/HtcPreferredAp;
    invoke-direct {v0}, Lcom/android/server/wifi/HtcPreferredAp;-><init>()V

    .line 38
    .restart local v0    # "preferredAp":Lcom/android/server/wifi/HtcPreferredAp;
    const-string v1, "HtcPreferredAp"

    const-string v2, "create HtcPreferredAp"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getMostPreferredNetwork()I
    .locals 1

    .prologue
    .line 46
    const/4 v0, -0x1

    return v0
.end method

.method public setMostPreferredNetwork(I)Z
    .locals 1
    .param p1, "networkId"    # I

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public setUserConnection(Z)V
    .locals 0
    .param p1, "userConnection"    # Z

    .prologue
    .line 58
    return-void
.end method

.method public usePreferredNetwork()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method
