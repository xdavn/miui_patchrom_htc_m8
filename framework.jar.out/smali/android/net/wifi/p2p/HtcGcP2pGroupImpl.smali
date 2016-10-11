.class Landroid/net/wifi/p2p/HtcGcP2pGroupImpl;
.super Landroid/net/wifi/p2p/HtcGcP2pGroup;
.source "HtcGcP2pGroup.java"


# static fields
.field private static final P2P_DEFAULT_DHCP_STARTING_IP:Ljava/lang/String; = "192.168.49.10"

.field private static final TAG:Ljava/lang/String; = "HtcGcP2pGroup"


# instance fields
.field private mCountryCode:Ljava/lang/String;

.field private mFreq:I

.field private mStaticIP:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/net/wifi/p2p/HtcGcP2pGroup;-><init>()V

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/wifi/p2p/HtcGcP2pGroupImpl;->mFreq:I

    .line 79
    return-void
.end method

.method private assignDongleIP(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "BSSID"    # Ljava/lang/String;
    .param p2, "serverAddress"    # Ljava/lang/String;

    .prologue
    .line 136
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 137
    .local v1, "hash":I
    const-string v5, "HtcGcP2pGroup"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "assignDongleIP, hash = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const-string v3, "0.0.0.0"

    .line 140
    .local v3, "p2pClientIP":Ljava/lang/String;
    :try_start_0
    const-string v5, "192.168.49.10"

    const-string v6, "\\."

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 147
    .local v2, "ipStart":[Ljava/lang/String;
    const/4 v5, 0x3

    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x3

    aget-object v6, v2, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    rsub-int v6, v6, 0xfe

    rem-int v6, v1, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    add-int v1, v5, v6

    .line 148
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    aget-object v6, v2, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v6, v2, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v6, v2, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 154
    const-string v5, "HtcGcP2pGroup"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "p2pClientIP = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v3

    .line 156
    .end local v2    # "ipStart":[Ljava/lang/String;
    .end local v3    # "p2pClientIP":Ljava/lang/String;
    .local v4, "p2pClientIP":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 149
    .end local v4    # "p2pClientIP":Ljava/lang/String;
    .restart local v3    # "p2pClientIP":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "HtcGcP2pGroup"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error assign p2pClientIP: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v3

    .line 151
    .end local v3    # "p2pClientIP":Ljava/lang/String;
    .restart local v4    # "p2pClientIP":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Landroid/net/wifi/p2p/HtcGcP2pGroupImpl;->mCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getOptFreq()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Landroid/net/wifi/p2p/HtcGcP2pGroupImpl;->mFreq:I

    return v0
.end method

.method public getP2pStaticIPv4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Landroid/net/wifi/p2p/HtcGcP2pGroupImpl;->mStaticIP:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/p2p/HtcGcP2pGroupImpl;->setOptFreq(I)V

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/p2p/HtcGcP2pGroupImpl;->setP2pStaticIPv4(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/p2p/HtcGcP2pGroupImpl;->setCountryCode(Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public setCountryCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "countryCode"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Landroid/net/wifi/p2p/HtcGcP2pGroupImpl;->mCountryCode:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setOptFreq(I)V
    .locals 0
    .param p1, "freq"    # I

    .prologue
    .line 82
    iput p1, p0, Landroid/net/wifi/p2p/HtcGcP2pGroupImpl;->mFreq:I

    .line 83
    return-void
.end method

.method public setP2pStaticIPv4(Ljava/lang/String;)V
    .locals 0
    .param p1, "staticIP"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Landroid/net/wifi/p2p/HtcGcP2pGroupImpl;->mStaticIP:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 107
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    const-string v1, "\n OperatingFreq: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/HtcGcP2pGroupImpl;->mFreq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 108
    const-string v1, "\n StaticIP: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/HtcGcP2pGroupImpl;->mStaticIP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    const-string v1, "\n CountryCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/HtcGcP2pGroupImpl;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateP2pNetworks(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "networkName"    # Ljava/lang/String;
    .param p2, "serverAddress"    # Ljava/lang/String;

    .prologue
    .line 128
    const-string/jumbo v0, "wifi.country"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/p2p/HtcGcP2pGroupImpl;->setCountryCode(Ljava/lang/String;)V

    .line 129
    if-eqz p1, :cond_0

    .line 130
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/p2p/HtcGcP2pGroupImpl;->assignDongleIP(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/p2p/HtcGcP2pGroupImpl;->setP2pStaticIPv4(Ljava/lang/String;)V

    .line 133
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;

    .prologue
    .line 114
    iget v0, p0, Landroid/net/wifi/p2p/HtcGcP2pGroupImpl;->mFreq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    iget-object v0, p0, Landroid/net/wifi/p2p/HtcGcP2pGroupImpl;->mStaticIP:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Landroid/net/wifi/p2p/HtcGcP2pGroupImpl;->mCountryCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    return-void
.end method
