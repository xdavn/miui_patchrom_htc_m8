.class public Landroid/net/wifi/WifiConfiguration$HotspotProfile;
.super Ljava/lang/Object;
.source "WifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HotspotProfile"
.end annotation


# static fields
.field public static final DEFAULT_DHCP_MAX_AP_CONNECTION:I = 0x4

.field public static final DEFAULT_MAX_AP_CONNECTION:I = 0x4

.field public static final DHCP_MAX_AP_CONNECTION:I = 0x8

.field public static final MAX_AP_CONNECTION:I = 0x8

.field private static final TAG:Ljava/lang/String; = "HotspotProfile"


# instance fields
.field public BSSID:Ljava/lang/String;

.field public blocklist:[Ljava/lang/String;

.field public channel:I

.field public channel_5g:I

.field public connectionArray:I

.field public dhcpEnable:I

.field public dhcpSubnetMask:Ljava/lang/String;

.field public dnsIPAddr1:Ljava/lang/String;

.field public dnsIPAddr2:Ljava/lang/String;

.field public enableMacFilter:I

.field public hiddenSSID:Z

.field public hotspotType:I

.field public ipAddress:Ljava/lang/String;

.field public maxConns:I

.field public maxDhcpClients:I

.field public sleepPolicy:I

.field public startingIP:Ljava/lang/String;

.field final synthetic this$0:Landroid/net/wifi/WifiConfiguration;

.field public whitelist:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiConfiguration;)V
    .locals 3

    .prologue
    const/16 v2, 0x10

    const/16 v1, 0x8

    const/4 v0, 0x0

    .line 1962
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->this$0:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1918
    iput v0, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->hotspotType:I

    .line 1921
    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->hiddenSSID:Z

    .line 1927
    iput v0, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->enableMacFilter:I

    .line 1930
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->whitelist:[Ljava/lang/String;

    .line 1933
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->blocklist:[Ljava/lang/String;

    .line 1937
    iput v1, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxConns:I

    .line 1941
    iput v1, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->connectionArray:I

    .line 1951
    const/4 v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpEnable:I

    .line 1964
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration$HotspotProfile;)V
    .locals 4
    .param p2, "source"    # Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    .prologue
    const/16 v3, 0x10

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1967
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->this$0:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1918
    iput v1, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->hotspotType:I

    .line 1921
    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->hiddenSSID:Z

    .line 1927
    iput v1, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->enableMacFilter:I

    .line 1930
    new-array v1, v3, [Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->whitelist:[Ljava/lang/String;

    .line 1933
    new-array v1, v3, [Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->blocklist:[Ljava/lang/String;

    .line 1937
    iput v2, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxConns:I

    .line 1941
    iput v2, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->connectionArray:I

    .line 1951
    const/4 v1, 0x1

    iput v1, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpEnable:I

    .line 1969
    iget v1, p2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->hotspotType:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->hotspotType:I

    .line 1970
    iget-boolean v1, p2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->hiddenSSID:Z

    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->hiddenSSID:Z

    .line 1971
    iget-object v1, p2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->BSSID:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->BSSID:Ljava/lang/String;

    .line 1972
    iget v1, p2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->enableMacFilter:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->enableMacFilter:I

    .line 1973
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->whitelist:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1974
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->whitelist:[Ljava/lang/String;

    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->whitelist:[Ljava/lang/String;

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    .line 1973
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1975
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->blocklist:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1976
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->blocklist:[Ljava/lang/String;

    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->blocklist:[Ljava/lang/String;

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    .line 1975
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1977
    :cond_1
    iget v1, p2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxConns:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxConns:I

    .line 1978
    iget v1, p2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->connectionArray:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->connectionArray:I

    .line 1979
    iget v1, p2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->channel:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->channel:I

    .line 1980
    iget v1, p2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->channel_5g:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->channel_5g:I

    .line 1981
    iget v1, p2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpEnable:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpEnable:I

    .line 1982
    iget-object v1, p2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    .line 1983
    iget v1, p2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxDhcpClients:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxDhcpClients:I

    .line 1984
    iget-object v1, p2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpSubnetMask:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpSubnetMask:Ljava/lang/String;

    .line 1985
    iget-object v1, p2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->startingIP:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->startingIP:Ljava/lang/String;

    .line 1986
    iget-object v1, p2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dnsIPAddr1:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dnsIPAddr1:Ljava/lang/String;

    .line 1987
    iget-object v1, p2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dnsIPAddr2:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dnsIPAddr2:Ljava/lang/String;

    .line 1988
    iget v1, p2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->sleepPolicy:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->sleepPolicy:I

    .line 1989
    return-void
.end method


# virtual methods
.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 2037
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->hotspotType:I

    .line 2038
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->hiddenSSID:Z

    .line 2039
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->BSSID:Ljava/lang/String;

    .line 2040
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->enableMacFilter:I

    .line 2041
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->whitelist:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 2042
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->whitelist:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 2041
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2038
    .end local v0    # "i":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 2043
    .restart local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->blocklist:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 2044
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->blocklist:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 2043
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2045
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxConns:I

    .line 2046
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->connectionArray:I

    .line 2047
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->channel:I

    .line 2048
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->channel_5g:I

    .line 2049
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpEnable:I

    .line 2050
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    .line 2051
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxDhcpClients:I

    .line 2052
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpSubnetMask:Ljava/lang/String;

    .line 2053
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->startingIP:Ljava/lang/String;

    .line 2054
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dnsIPAddr1:Ljava/lang/String;

    .line 2055
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dnsIPAddr2:Ljava/lang/String;

    .line 2056
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->sleepPolicy:I

    .line 2057
    return-void
.end method

.method public setHtcHotspotProfile(Landroid/net/wifi/WifiConfiguration$HotspotProfile;)V
    .locals 1
    .param p1, "hotspot"    # Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    .prologue
    .line 1993
    iget v0, p1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->hotspotType:I

    iput v0, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->hotspotType:I

    .line 1994
    iget-boolean v0, p1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->hiddenSSID:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->hiddenSSID:Z

    .line 1995
    iget v0, p1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxConns:I

    iput v0, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxConns:I

    .line 1996
    iget v0, p1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->connectionArray:I

    iput v0, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->connectionArray:I

    .line 1997
    iget v0, p1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->channel:I

    iput v0, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->channel:I

    .line 1998
    iget v0, p1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->channel_5g:I

    iput v0, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->channel_5g:I

    .line 1999
    iget v0, p1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpEnable:I

    iput v0, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpEnable:I

    .line 2000
    iget v0, p1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxDhcpClients:I

    iput v0, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxDhcpClients:I

    .line 2001
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    .line 2002
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpSubnetMask:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpSubnetMask:Ljava/lang/String;

    .line 2003
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->startingIP:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->startingIP:Ljava/lang/String;

    .line 2004
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dnsIPAddr1:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dnsIPAddr1:Ljava/lang/String;

    .line 2005
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dnsIPAddr2:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dnsIPAddr2:Ljava/lang/String;

    .line 2006
    iget v0, p1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->sleepPolicy:I

    iput v0, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->sleepPolicy:I

    .line 2007
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 2012
    iget v4, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->hotspotType:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2013
    iget-boolean v4, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->hiddenSSID:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2014
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->BSSID:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2015
    iget v4, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->enableMacFilter:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2016
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->whitelist:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 2017
    .local v0, "ap":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2016
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2013
    .end local v0    # "ap":Ljava/lang/String;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 2018
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_1
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->blocklist:[Ljava/lang/String;

    array-length v3, v1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_2

    aget-object v0, v1, v2

    .line 2019
    .restart local v0    # "ap":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2018
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2020
    .end local v0    # "ap":Ljava/lang/String;
    :cond_2
    iget v4, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxConns:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2021
    iget v4, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->connectionArray:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2022
    iget v4, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->channel:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2023
    iget v4, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->channel_5g:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2024
    iget v4, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpEnable:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2025
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2026
    iget v4, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxDhcpClients:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2027
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpSubnetMask:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2028
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->startingIP:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2029
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dnsIPAddr1:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2030
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dnsIPAddr2:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2031
    iget v4, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->sleepPolicy:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2032
    return-void
.end method
