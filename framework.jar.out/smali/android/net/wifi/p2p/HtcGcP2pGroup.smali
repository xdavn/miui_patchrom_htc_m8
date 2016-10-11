.class public Landroid/net/wifi/p2p/HtcGcP2pGroup;
.super Ljava/lang/Object;
.source "HtcGcP2pGroup.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Landroid/net/wifi/p2p/HtcGcP2pGroup;
    .locals 3

    .prologue
    .line 17
    const/4 v0, 0x0

    .line 18
    .local v0, "group":Landroid/net/wifi/p2p/HtcGcP2pGroup;
    sget-object v1, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;->P2P_GC_EXTENSION:Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

    invoke-static {v1}, Landroid/net/wifi/HtcWifiCustomizeReader;->support(Landroid/net/wifi/HtcWifiCustomizeReader$Feature;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 19
    new-instance v0, Landroid/net/wifi/p2p/HtcGcP2pGroupImpl;

    .end local v0    # "group":Landroid/net/wifi/p2p/HtcGcP2pGroup;
    invoke-direct {v0}, Landroid/net/wifi/p2p/HtcGcP2pGroupImpl;-><init>()V

    .line 25
    .restart local v0    # "group":Landroid/net/wifi/p2p/HtcGcP2pGroup;
    :goto_0
    return-object v0

    .line 22
    :cond_0
    new-instance v0, Landroid/net/wifi/p2p/HtcGcP2pGroup;

    .end local v0    # "group":Landroid/net/wifi/p2p/HtcGcP2pGroup;
    invoke-direct {v0}, Landroid/net/wifi/p2p/HtcGcP2pGroup;-><init>()V

    .restart local v0    # "group":Landroid/net/wifi/p2p/HtcGcP2pGroup;
    goto :goto_0
.end method


# virtual methods
.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const-string v0, ""

    return-object v0
.end method

.method public getOptFreq()I
    .locals 1

    .prologue
    .line 32
    const/4 v0, -0x1

    return v0
.end method

.method public getP2pStaticIPv4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const-string v0, ""

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 58
    return-void
.end method

.method public setCountryCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "countryCode"    # Ljava/lang/String;

    .prologue
    .line 43
    return-void
.end method

.method public setOptFreq(I)V
    .locals 0
    .param p1, "freq"    # I

    .prologue
    .line 29
    return-void
.end method

.method public setP2pStaticIPv4(Ljava/lang/String;)V
    .locals 0
    .param p1, "staticIP"    # Ljava/lang/String;

    .prologue
    .line 36
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const-string v0, ""

    return-object v0
.end method

.method public updateP2pNetworks(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "networkName"    # Ljava/lang/String;
    .param p2, "serverAddress"    # Ljava/lang/String;

    .prologue
    .line 62
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;

    .prologue
    .line 54
    return-void
.end method
