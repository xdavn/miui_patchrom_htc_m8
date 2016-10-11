.class public Lcom/android/server/wifi/HtcHotspotManager;
.super Ljava/lang/Object;
.source "HtcHotspotManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/HtcHotspotManager$configUse;
    }
.end annotation


# static fields
.field public static final BLACK_LIST_SIZE:I = 0x10

.field public static final HOTSPOT_CONNECTION_ARRAY_DEFAULT_VALUE:I = 0x8

.field public static final HOTSPOT_DEFAULT_BAND:I = 0x0

.field public static final HOTSPOT_DEFAULT_CHANNEL:I = 0x0

.field public static final HOTSPOT_DEFAULT_CHANNEL_5G:I = 0x0

.field public static final HOTSPOT_DEFAULT_DHCP_ON:I = 0x1

.field public static final HOTSPOT_DEFAULT_DHCP_RANGE_TOP:Ljava/lang/String; = "192.168.1.254"

.field public static final HOTSPOT_DEFAULT_DHCP_STARTING_IP:Ljava/lang/String; = "192.168.1.10"

.field public static final HOTSPOT_DEFAULT_IP_ADDRESS:Ljava/lang/String; = "192.168.1.1"

.field public static final HOTSPOT_DEFAULT_PASSWORD:Ljava/lang/String; = "1234567890"

.field public static final HOTSPOT_DEFAULT_SECURITY_TYPE:Ljava/lang/String; = "wpa2-psk"

.field public static final HOTSPOT_DEFAULT_SSID:Ljava/lang/String; = "HTC Portable Hotspot"

.field public static final HOTSPOT_DEFAULT_SUBNET_MASK:Ljava/lang/String; = "255.255.255.0"

.field public static final HOTSPOT_MAX_CONNECTION_DEFAULT_VALUE:I = 0x5

.field private static final TAG:Ljava/lang/String; = "HtcHotspotManager"

.field public static final WHITE_LIST_SIZE:I = 0x10


# instance fields
.field private final mCR:Landroid/content/ContentResolver;

.field private mConfigEncryption:Lcom/android/server/wifi/HtcWifiConfigEncryption;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/android/server/wifi/HtcHotspotManager;->mContext:Landroid/content/Context;

    .line 68
    iget-object v0, p0, Lcom/android/server/wifi/HtcHotspotManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/HtcHotspotManager;->mCR:Landroid/content/ContentResolver;

    .line 69
    new-instance v0, Lcom/android/server/wifi/HtcWifiConfigEncryption;

    invoke-direct {v0}, Lcom/android/server/wifi/HtcWifiConfigEncryption;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/HtcHotspotManager;->mConfigEncryption:Lcom/android/server/wifi/HtcWifiConfigEncryption;

    .line 70
    return-void
.end method

.method private getBlackMacFilterString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 320
    if-nez p1, :cond_0

    const/4 v2, 0x0

    .line 330
    :goto_0
    return-object v2

    .line 322
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 323
    .local v1, "sbuilder":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v2, 0x10

    if-ge v0, v2, :cond_2

    .line 324
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->blocklist:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    .line 326
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->blocklist:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 323
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 330
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getWhiteMacFilterString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 335
    if-nez p1, :cond_0

    const/4 v2, 0x0

    .line 345
    :goto_0
    return-object v2

    .line 337
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 338
    .local v1, "sbuilder":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v2, 0x10

    if-ge v0, v2, :cond_2

    .line 339
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->whitelist:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    .line 341
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->whitelist:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 338
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 345
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private updateBlackList(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)V
    .locals 5
    .param p1, "macStr"    # Ljava/lang/String;
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 295
    const/4 v0, 0x0

    .line 296
    .local v0, "count":I
    if-nez p1, :cond_1

    .line 316
    :cond_0
    return-void

    .line 298
    :cond_1
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 300
    .local v1, "index":I
    if-ltz v1, :cond_0

    .line 302
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->blocklist:[Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 304
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    .line 305
    :goto_0
    if-lez v1, :cond_0

    .line 306
    const-string v3, ","

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 308
    .local v2, "lastindex":I
    if-ltz v2, :cond_0

    const/16 v3, 0xf

    if-gt v0, v3, :cond_0

    .line 310
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->blocklist:[Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 311
    add-int/lit8 v0, v0, 0x1

    .line 312
    add-int/lit8 v2, v2, 0x1

    .line 313
    move v1, v2

    goto :goto_0
.end method

.method private updateWhiteList(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)V
    .locals 5
    .param p1, "macStr"    # Ljava/lang/String;
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 272
    const/4 v0, 0x0

    .line 273
    .local v0, "count":I
    if-nez p1, :cond_1

    .line 290
    :cond_0
    return-void

    .line 275
    :cond_1
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 277
    .local v1, "index":I
    if-ltz v1, :cond_0

    .line 279
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->whitelist:[Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 281
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    .line 282
    :goto_0
    if-lez v1, :cond_0

    .line 283
    const-string v3, ","

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 284
    .local v2, "lastindex":I
    if-ltz v2, :cond_0

    const/16 v3, 0xf

    if-gt v0, v3, :cond_0

    .line 285
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->whitelist:[Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 286
    add-int/lit8 v0, v0, 0x1

    .line 287
    add-int/lit8 v2, v2, 0x1

    .line 288
    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public checkConfig(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/HtcHotspotManager$configUse;
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 77
    sget-object v0, Lcom/android/server/wifi/HtcHotspotManager$configUse;->CONFIG_DEFAULT:Lcom/android/server/wifi/HtcHotspotManager$configUse;

    .line 78
    .local v0, "use":Lcom/android/server/wifi/HtcHotspotManager$configUse;
    if-eqz p1, :cond_0

    .line 79
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v1

    iget v1, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->hotspotType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 80
    sget-object v0, Lcom/android/server/wifi/HtcHotspotManager$configUse;->CONFIG_HTC:Lcom/android/server/wifi/HtcHotspotManager$configUse;

    .line 85
    :cond_0
    :goto_0
    const-string v1, "HtcHotspotManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get hotspot configuration = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-object v0

    .line 82
    :cond_1
    sget-object v0, Lcom/android/server/wifi/HtcHotspotManager$configUse;->CONFIG_GOOGLE:Lcom/android/server/wifi/HtcHotspotManager$configUse;

    goto :goto_0
.end method

.method public persistApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 6
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v1, 0x0

    .line 193
    const-string v2, "HtcHotspotManager"

    const-string v3, "persistApConfiguration..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    if-nez v2, :cond_1

    .line 196
    :cond_0
    const-string v1, "HtcHotspotManager"

    const-string v2, "wificonfig is null..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :goto_0
    return-void

    .line 201
    :cond_1
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 202
    iget-object v2, p0, Lcom/android/server/wifi/HtcHotspotManager;->mCR:Landroid/content/ContentResolver;

    const-string v3, "hotspot_preSharedKey"

    iget-object v4, p0, Lcom/android/server/wifi/HtcHotspotManager;->mConfigEncryption:Lcom/android/server/wifi/HtcWifiConfigEncryption;

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/HtcWifiConfigEncryption;->encryptConfPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 205
    :cond_2
    iget-object v2, p0, Lcom/android/server/wifi/HtcHotspotManager;->mCR:Landroid/content/ContentResolver;

    const-string v3, "hotspot_hidden"

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-boolean v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->hiddenSSID:Z

    if-eqz v4, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 208
    iget-object v1, p0, Lcom/android/server/wifi/HtcHotspotManager;->mCR:Landroid/content/ContentResolver;

    const-string v2, "hotspot_macfilter_on"

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->enableMacFilter:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 211
    iget-object v1, p0, Lcom/android/server/wifi/HtcHotspotManager;->mCR:Landroid/content/ContentResolver;

    const-string v2, "hotspot_black_list"

    invoke-direct {p0, p1}, Lcom/android/server/wifi/HtcHotspotManager;->getBlackMacFilterString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 212
    iget-object v1, p0, Lcom/android/server/wifi/HtcHotspotManager;->mCR:Landroid/content/ContentResolver;

    const-string v2, "hotspot_white_list"

    invoke-direct {p0, p1}, Lcom/android/server/wifi/HtcHotspotManager;->getWhiteMacFilterString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 217
    iget-object v1, p0, Lcom/android/server/wifi/HtcHotspotManager;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 218
    .local v0, "phoneManager":Landroid/telephony/TelephonyManager;
    invoke-static {}, Landroid/net/wifi/HtcWifiCustomizeReader;->getHotspotRemindType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    .line 219
    const-string v1, "HtcHotspotManager"

    const-string v2, "Not save Max_Connection and Connection_Array for Sprint GSM roaming restriction"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :goto_1
    iget-object v1, p0, Lcom/android/server/wifi/HtcHotspotManager;->mCR:Landroid/content/ContentResolver;

    const-string v2, "hotspot_channel"

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->channel:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 231
    iget-object v1, p0, Lcom/android/server/wifi/HtcHotspotManager;->mCR:Landroid/content/ContentResolver;

    const-string v2, "hotspot_channel_5G"

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->channel_5g:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 235
    iget-object v1, p0, Lcom/android/server/wifi/HtcHotspotManager;->mCR:Landroid/content/ContentResolver;

    const-string v2, "hotspot_dhcp_on"

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpEnable:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 238
    iget-object v1, p0, Lcom/android/server/wifi/HtcHotspotManager;->mCR:Landroid/content/ContentResolver;

    const-string v2, "hotspot_id_address"

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 244
    iget-object v1, p0, Lcom/android/server/wifi/HtcHotspotManager;->mCR:Landroid/content/ContentResolver;

    const-string v2, "hotspot_subnet_mask"

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpSubnetMask:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 247
    iget-object v1, p0, Lcom/android/server/wifi/HtcHotspotManager;->mCR:Landroid/content/ContentResolver;

    const-string v2, "hotspot_dhcp_start_ip"

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->startingIP:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 250
    iget-object v1, p0, Lcom/android/server/wifi/HtcHotspotManager;->mCR:Landroid/content/ContentResolver;

    const-string v2, "hotspot_sleep_policy"

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->sleepPolicy:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 222
    :cond_4
    iget-object v1, p0, Lcom/android/server/wifi/HtcHotspotManager;->mCR:Landroid/content/ContentResolver;

    const-string v2, "hotspot_max_connection"

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxConns:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method public restoreHtcHotspotProfile(Landroid/net/wifi/WifiConfiguration;)V
    .locals 9
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 94
    const-string v4, "HtcHotspotManager"

    const-string v7, "restore HTC hotspot configuration from database."

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    .line 99
    .local v2, "hotspotprofile":Landroid/net/wifi/WifiConfiguration$HotspotProfile;
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 100
    iget-object v4, p0, Lcom/android/server/wifi/HtcHotspotManager;->mConfigEncryption:Lcom/android/server/wifi/HtcWifiConfigEncryption;

    iget-object v7, p0, Lcom/android/server/wifi/HtcHotspotManager;->mCR:Landroid/content/ContentResolver;

    const-string v8, "hotspot_preSharedKey"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/android/server/wifi/HtcWifiConfigEncryption;->decryptConfPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 104
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wifi/HtcHotspotManager;->mCR:Landroid/content/ContentResolver;

    const-string v7, "hotspot_hidden"

    invoke-static {v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_4

    move v4, v5

    :goto_0
    iput-boolean v4, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->hiddenSSID:Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_1
    :try_start_1
    iget-object v4, p0, Lcom/android/server/wifi/HtcHotspotManager;->mCR:Landroid/content/ContentResolver;

    const-string v7, "hotspot_macfilter_on"

    invoke-static {v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->enableMacFilter:I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 117
    :goto_2
    iget-object v4, p0, Lcom/android/server/wifi/HtcHotspotManager;->mCR:Landroid/content/ContentResolver;

    const-string v7, "hotspot_white_list"

    invoke-static {v4, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 118
    .local v3, "whiteListStr":Ljava/lang/String;
    invoke-direct {p0, v3, p1}, Lcom/android/server/wifi/HtcHotspotManager;->updateWhiteList(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)V

    .line 120
    iget-object v4, p0, Lcom/android/server/wifi/HtcHotspotManager;->mCR:Landroid/content/ContentResolver;

    const-string v7, "hotspot_black_list"

    invoke-static {v4, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "blockListStr":Ljava/lang/String;
    invoke-direct {p0, v0, p1}, Lcom/android/server/wifi/HtcHotspotManager;->updateBlackList(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)V

    .line 126
    :try_start_2
    iget-object v4, p0, Lcom/android/server/wifi/HtcHotspotManager;->mCR:Landroid/content/ContentResolver;

    const-string v7, "hotspot_max_connection"

    invoke-static {v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxConns:I
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 132
    :goto_3
    :try_start_3
    iget-object v4, p0, Lcom/android/server/wifi/HtcHotspotManager;->mCR:Landroid/content/ContentResolver;

    const-string v7, "hotspot_connection_array"

    invoke-static {v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->connectionArray:I
    :try_end_3
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    .line 139
    :goto_4
    :try_start_4
    iget-object v4, p0, Lcom/android/server/wifi/HtcHotspotManager;->mCR:Landroid/content/ContentResolver;

    const-string v7, "hotspot_channel"

    invoke-static {v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->channel:I
    :try_end_4
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    .line 146
    :goto_5
    :try_start_5
    iget-object v4, p0, Lcom/android/server/wifi/HtcHotspotManager;->mCR:Landroid/content/ContentResolver;

    const-string v7, "hotspot_channel_5G"

    invoke-static {v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->channel_5g:I
    :try_end_5
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    .line 153
    :goto_6
    :try_start_6
    iget-object v4, p0, Lcom/android/server/wifi/HtcHotspotManager;->mCR:Landroid/content/ContentResolver;

    const-string v6, "hotspot_dhcp_on"

    invoke-static {v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpEnable:I
    :try_end_6
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_6 .. :try_end_6} :catch_6

    .line 158
    :goto_7
    iget-object v4, p0, Lcom/android/server/wifi/HtcHotspotManager;->mCR:Landroid/content/ContentResolver;

    const-string v6, "hotspot_id_address"

    invoke-static {v4, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    .line 159
    iget-object v4, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 160
    const-string v4, "192.168.1.1"

    iput-object v4, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    .line 163
    :cond_1
    iget-object v4, p0, Lcom/android/server/wifi/HtcHotspotManager;->mCR:Landroid/content/ContentResolver;

    const-string v6, "hotspot_subnet_mask"

    invoke-static {v4, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpSubnetMask:Ljava/lang/String;

    .line 164
    iget-object v4, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpSubnetMask:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 165
    const-string v4, "255.255.255.0"

    iput-object v4, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpSubnetMask:Ljava/lang/String;

    .line 168
    :cond_2
    iget-object v4, p0, Lcom/android/server/wifi/HtcHotspotManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "hotspot_dhcp_start_ip"

    invoke-static {v4, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->startingIP:Ljava/lang/String;

    .line 169
    iget-object v4, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->startingIP:Ljava/lang/String;

    if-nez v4, :cond_3

    .line 170
    const-string v4, "192.168.1.10"

    iput-object v4, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->startingIP:Ljava/lang/String;

    .line 174
    :cond_3
    :try_start_7
    iget-object v4, p0, Lcom/android/server/wifi/HtcHotspotManager;->mCR:Landroid/content/ContentResolver;

    const-string v6, "hotspot_sleep_policy"

    invoke-static {v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->sleepPolicy:I
    :try_end_7
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_7 .. :try_end_7} :catch_7

    .line 186
    :goto_8
    return-void

    .end local v0    # "blockListStr":Ljava/lang/String;
    .end local v3    # "whiteListStr":Ljava/lang/String;
    :cond_4
    move v4, v6

    .line 104
    goto/16 :goto_0

    .line 105
    :catch_0
    move-exception v1

    .line 106
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    iput-boolean v6, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->hiddenSSID:Z

    goto/16 :goto_1

    .line 112
    .end local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :catch_1
    move-exception v1

    .line 113
    .restart local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    iput v6, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->enableMacFilter:I

    goto/16 :goto_2

    .line 127
    .end local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .restart local v0    # "blockListStr":Ljava/lang/String;
    .restart local v3    # "whiteListStr":Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 128
    .restart local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    const/4 v4, 0x5

    iput v4, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxConns:I

    goto :goto_3

    .line 133
    .end local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :catch_3
    move-exception v1

    .line 134
    .restart local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    const/16 v4, 0x8

    iput v4, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->connectionArray:I

    goto :goto_4

    .line 140
    .end local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :catch_4
    move-exception v1

    .line 141
    .restart local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    iput v6, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->channel:I

    goto :goto_5

    .line 147
    .end local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :catch_5
    move-exception v1

    .line 148
    .restart local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    iput v6, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->channel_5g:I

    goto :goto_6

    .line 154
    .end local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :catch_6
    move-exception v1

    .line 155
    .restart local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    iput v5, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpEnable:I

    goto :goto_7

    .line 175
    .end local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :catch_7
    move-exception v1

    .line 176
    .restart local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-static {}, Landroid/net/wifi/HtcWifiCustomizeReader;->getWifiStatusType()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_5

    .line 178
    const/4 v4, 0x3

    iput v4, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->sleepPolicy:I

    goto :goto_8

    .line 181
    :cond_5
    iput v5, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->sleepPolicy:I

    goto :goto_8
.end method

.method public setHtcDefaultApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 5
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v4, 0x0

    .line 255
    const-string v1, "HTC Portable Hotspot"

    iput-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 256
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 258
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, "randomUUID":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x8

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x9

    const/16 v3, 0xd

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 261
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v1

    const/4 v2, 0x1

    iput v2, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->hotspotType:I

    .line 262
    iput v4, p1, Landroid/net/wifi/WifiConfiguration;->apBand:I

    .line 263
    iput v4, p1, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    .line 265
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/HtcHotspotManager;->restoreHtcHotspotProfile(Landroid/net/wifi/WifiConfiguration;)V

    .line 266
    const-string v1, "HtcHotspotManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setHtcDefaultApConfiguration : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    return-void
.end method
