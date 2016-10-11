.class public Lcom/android/server/wifi/HtcLteCoex;
.super Ljava/lang/Object;
.source "HtcLteCoex.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "HtcLteCoex"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/HtcHotspotManager;Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/HtcLteCoex;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wn"    # Lcom/android/server/wifi/WifiNative;
    .param p2, "manager"    # Lcom/android/server/wifi/HtcHotspotManager;
    .param p3, "state"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 37
    invoke-static {}, Landroid/net/wifi/HtcWifiCustomizeReader;->getWlanSolution()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 38
    new-instance v0, Lcom/android/server/wifi/HtcLteCoexQca;

    invoke-direct {v0, p0, p3}, Lcom/android/server/wifi/HtcLteCoexQca;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;)V

    .line 46
    .local v0, "lteCoex":Lcom/android/server/wifi/HtcLteCoex;
    :goto_0
    return-object v0

    .line 39
    .end local v0    # "lteCoex":Lcom/android/server/wifi/HtcLteCoex;
    :cond_0
    invoke-static {}, Landroid/net/wifi/HtcWifiCustomizeReader;->getWlanSolution()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 40
    new-instance v0, Lcom/android/server/wifi/HtcLteCoexBcm;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/wifi/HtcLteCoexBcm;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/HtcHotspotManager;Lcom/android/server/wifi/WifiStateMachine;)V

    .restart local v0    # "lteCoex":Lcom/android/server/wifi/HtcLteCoex;
    goto :goto_0

    .line 43
    .end local v0    # "lteCoex":Lcom/android/server/wifi/HtcLteCoex;
    :cond_1
    new-instance v0, Lcom/android/server/wifi/HtcLteCoex;

    invoke-direct {v0}, Lcom/android/server/wifi/HtcLteCoex;-><init>()V

    .restart local v0    # "lteCoex":Lcom/android/server/wifi/HtcLteCoex;
    goto :goto_0
.end method


# virtual methods
.method public isCoexistence(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public setApChannel(Landroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 54
    return-void
.end method
