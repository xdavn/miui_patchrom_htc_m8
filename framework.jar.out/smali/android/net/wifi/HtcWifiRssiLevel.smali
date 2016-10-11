.class public Landroid/net/wifi/HtcWifiRssiLevel;
.super Ljava/lang/Object;
.source "HtcWifiRssiLevel.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "WifiRssiLevel"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static calculateSignalLevel(II)I
    .locals 3
    .param p0, "rssi"    # I
    .param p1, "numLevels"    # I

    .prologue
    const/16 v2, -0x46

    const/16 v1, -0x4b

    .line 43
    const/4 v0, 0x0

    .line 45
    .local v0, "level":I
    if-lt p0, v2, :cond_1

    .line 46
    const/4 v0, 0x3

    .line 54
    :goto_0
    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 59
    :cond_0
    return v0

    .line 47
    :cond_1
    if-ge p0, v2, :cond_2

    if-lt p0, v1, :cond_2

    .line 48
    const/4 v0, 0x2

    goto :goto_0

    .line 49
    :cond_2
    if-ge p0, v1, :cond_3

    const/16 v1, -0x50

    if-lt p0, v1, :cond_3

    .line 50
    const/4 v0, 0x1

    goto :goto_0

    .line 52
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getRssiLevel()I
    .locals 1

    .prologue
    .line 25
    sget-object v0, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;->HTC_RSSI_LEVEL:Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

    invoke-static {v0}, Landroid/net/wifi/HtcWifiCustomizeReader;->support(Landroid/net/wifi/HtcWifiCustomizeReader$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    const/4 v0, 0x4

    .line 28
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x5

    goto :goto_0
.end method
