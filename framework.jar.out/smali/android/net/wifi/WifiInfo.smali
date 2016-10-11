.class public Landroid/net/wifi/WifiInfo;
.super Ljava/lang/Object;
.source "WifiInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/WifiInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_MAC_ADDRESS:Ljava/lang/String; = "02:00:00:00:00:00"

.field public static final FREQUENCY_UNITS:Ljava/lang/String; = "MHz"

.field public static final INVALID_RSSI:I = -0x7f

.field public static final LINK_SPEED_UNITS:Ljava/lang/String; = "Mbps"

.field public static final MAX_RSSI:I = 0xc8

.field public static final MIN_RSSI:I = -0x7e

.field private static final TAG:Ljava/lang/String; = "WifiInfo"

.field private static final stateMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Landroid/net/wifi/SupplicantState;",
            "Landroid/net/NetworkInfo$DetailedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public badRssiCount:I

.field public linkStuckCount:I

.field public lowRssiCount:I

.field private mBSSID:Ljava/lang/String;

.field private mEphemeral:Z

.field private mFrequency:I

.field private mIpAddress:Ljava/net/InetAddress;

.field private mLinkSpeed:I

.field private mMacAddress:Ljava/lang/String;

.field private mMeteredHint:Z

.field private mNetworkId:I

.field private mRssi:I

.field private mSupplicantState:Landroid/net/wifi/SupplicantState;

.field private mWifiSsid:Landroid/net/wifi/WifiSsid;

.field public rxSuccess:J

.field public rxSuccessRate:D

.field public score:I

.field public txBad:J

.field public txBadRate:D

.field public txRetries:J

.field public txRetriesRate:D

.field public txSuccess:J

.field public txSuccessRate:D


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 48
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Landroid/net/wifi/SupplicantState;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    .line 60
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->INTERFACE_DISABLED:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->INACTIVE:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->SCANNING:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->AUTHENTICATING:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->GROUP_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->DORMANT:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    new-instance v0, Landroid/net/wifi/WifiInfo$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiInfo$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    const-string v0, "02:00:00:00:00:00"

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    .line 245
    iput-object v2, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    .line 246
    iput-object v2, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    .line 247
    iput v1, p0, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    .line 248
    sget-object v0, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    .line 249
    const/16 v0, -0x7f

    iput v0, p0, Landroid/net/wifi/WifiInfo;->mRssi:I

    .line 250
    iput v1, p0, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    .line 251
    iput v1, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    .line 252
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiInfo;)V
    .locals 2
    .param p1, "source"    # Landroid/net/wifi/WifiInfo;

    .prologue
    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    const-string v0, "02:00:00:00:00:00"

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    .line 284
    if-eqz p1, :cond_0

    .line 285
    iget-object v0, p1, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    .line 286
    iget-object v0, p1, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    .line 287
    iget-object v0, p1, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    .line 288
    iget v0, p1, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    iput v0, p0, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    .line 289
    iget v0, p1, Landroid/net/wifi/WifiInfo;->mRssi:I

    iput v0, p0, Landroid/net/wifi/WifiInfo;->mRssi:I

    .line 290
    iget v0, p1, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    iput v0, p0, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    .line 291
    iget v0, p1, Landroid/net/wifi/WifiInfo;->mFrequency:I

    iput v0, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    .line 292
    iget-object v0, p1, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    .line 293
    iget-object v0, p1, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    .line 294
    iget-boolean v0, p1, Landroid/net/wifi/WifiInfo;->mMeteredHint:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mMeteredHint:Z

    .line 295
    iget-boolean v0, p1, Landroid/net/wifi/WifiInfo;->mEphemeral:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mEphemeral:Z

    .line 296
    iget-wide v0, p1, Landroid/net/wifi/WifiInfo;->txBad:J

    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->txBad:J

    .line 297
    iget-wide v0, p1, Landroid/net/wifi/WifiInfo;->txRetries:J

    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->txRetries:J

    .line 298
    iget-wide v0, p1, Landroid/net/wifi/WifiInfo;->txSuccess:J

    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->txSuccess:J

    .line 299
    iget-wide v0, p1, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    .line 300
    iget-wide v0, p1, Landroid/net/wifi/WifiInfo;->txBadRate:D

    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    .line 301
    iget-wide v0, p1, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    .line 302
    iget-wide v0, p1, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    .line 303
    iget-wide v0, p1, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    .line 304
    iget v0, p1, Landroid/net/wifi/WifiInfo;->score:I

    iput v0, p0, Landroid/net/wifi/WifiInfo;->score:I

    .line 305
    iget v0, p1, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    iput v0, p0, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    .line 306
    iget v0, p1, Landroid/net/wifi/WifiInfo;->lowRssiCount:I

    iput v0, p0, Landroid/net/wifi/WifiInfo;->lowRssiCount:I

    .line 307
    iget v0, p1, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    iput v0, p0, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    .line 309
    :cond_0
    return-void
.end method

.method static synthetic access$002(Landroid/net/wifi/WifiInfo;Landroid/net/wifi/WifiSsid;)Landroid/net/wifi/WifiSsid;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiInfo;
    .param p1, "x1"    # Landroid/net/wifi/WifiSsid;

    .prologue
    .line 41
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    return-object p1
.end method

.method static synthetic access$102(Landroid/net/wifi/WifiInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Landroid/net/wifi/WifiInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Landroid/net/wifi/WifiInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mMeteredHint:Z

    return p1
.end method

.method static synthetic access$402(Landroid/net/wifi/WifiInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mEphemeral:Z

    return p1
.end method

.method static synthetic access$502(Landroid/net/wifi/WifiInfo;Landroid/net/wifi/SupplicantState;)Landroid/net/wifi/SupplicantState;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiInfo;
    .param p1, "x1"    # Landroid/net/wifi/SupplicantState;

    .prologue
    .line 41
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    return-object p1
.end method

.method public static getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;
    .locals 1
    .param p0, "suppState"    # Landroid/net/wifi/SupplicantState;

    .prologue
    .line 510
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo$DetailedState;

    return-object v0
.end method

.method public static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 537
    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 542
    .end local p0    # "string":Ljava/lang/String;
    .local v0, "length":I
    :cond_0
    :goto_0
    return-object p0

    .line 538
    .end local v0    # "length":I
    .restart local p0    # "string":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 539
    .restart local v0    # "length":I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 540
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method static valueOf(Ljava/lang/String;)Landroid/net/wifi/SupplicantState;
    .locals 2
    .param p0, "stateName"    # Ljava/lang/String;

    .prologue
    .line 524
    const-string v1, "4WAY_HANDSHAKE"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 525
    sget-object v1, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    .line 530
    :goto_0
    return-object v1

    .line 528
    :cond_0
    :try_start_0
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/SupplicantState;->valueOf(Ljava/lang/String;)Landroid/net/wifi/SupplicantState;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 529
    :catch_0
    move-exception v0

    .line 530
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v1, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 585
    const/4 v0, 0x0

    return v0
.end method

.method public getBSSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    return-object v0
.end method

.method public getFrequency()I
    .locals 1

    .prologue
    .line 396
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    return v0
.end method

.method public getHiddenSSID()Z
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 501
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    invoke-virtual {v0}, Landroid/net/wifi/WifiSsid;->isHidden()Z

    move-result v0

    goto :goto_0
.end method

.method public getIpAddress()I
    .locals 2

    .prologue
    .line 488
    const/4 v0, 0x0

    .line 489
    .local v0, "result":I
    iget-object v1, p0, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    instance-of v1, v1, Ljava/net/Inet4Address;

    if-eqz v1, :cond_0

    .line 490
    iget-object v1, p0, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    check-cast v1, Ljava/net/Inet4Address;

    invoke-static {v1}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v0

    .line 492
    :cond_0
    return v0
.end method

.method public getLinkSpeed()I
    .locals 1

    .prologue
    .line 382
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    return v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getMeteredHint()Z
    .locals 1

    .prologue
    .line 440
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mMeteredHint:Z

    return v0
.end method

.method public getNetworkId()I
    .locals 1

    .prologue
    .line 465
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    return v0
.end method

.method public getRssi()I
    .locals 1

    .prologue
    .line 364
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mRssi:I

    return v0
.end method

.method public getSSID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 324
    iget-object v1, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    if-eqz v1, :cond_1

    .line 325
    iget-object v1, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    invoke-virtual {v1}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, "unicode":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 327
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 332
    .end local v0    # "unicode":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 329
    .restart local v0    # "unicode":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    invoke-virtual {v1}, Landroid/net/wifi/WifiSsid;->getHexString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 332
    .end local v0    # "unicode":Ljava/lang/String;
    :cond_1
    const-string v1, "<unknown ssid>"

    goto :goto_0
.end method

.method public getSupplicantState()Landroid/net/wifi/SupplicantState;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    return-object v0
.end method

.method public getWifiSsid()Landroid/net/wifi/WifiSsid;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    return-object v0
.end method

.method public is24GHz()Z
    .locals 1

    .prologue
    .line 409
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    invoke-static {v0}, Landroid/net/wifi/ScanResult;->is24GHz(I)Z

    move-result v0

    return v0
.end method

.method public is5GHz()Z
    .locals 1

    .prologue
    .line 417
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    invoke-static {v0}, Landroid/net/wifi/ScanResult;->is5GHz(I)Z

    move-result v0

    return v0
.end method

.method public isEphemeral()Z
    .locals 1

    .prologue
    .line 450
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mEphemeral:Z

    return v0
.end method

.method public reset()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v6, -0x1

    const-wide/16 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 256
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiInfo;->setInetAddress(Ljava/net/InetAddress;)V

    .line 257
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiInfo;->setSSID(Landroid/net/wifi/WifiSsid;)V

    .line 259
    invoke-virtual {p0, v6}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    .line 260
    const/16 v0, -0x7f

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiInfo;->setRssi(I)V

    .line 261
    invoke-virtual {p0, v6}, Landroid/net/wifi/WifiInfo;->setLinkSpeed(I)V

    .line 262
    invoke-virtual {p0, v6}, Landroid/net/wifi/WifiInfo;->setFrequency(I)V

    .line 263
    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiInfo;->setMeteredHint(Z)V

    .line 264
    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiInfo;->setEphemeral(Z)V

    .line 265
    iput-wide v4, p0, Landroid/net/wifi/WifiInfo;->txBad:J

    .line 266
    iput-wide v4, p0, Landroid/net/wifi/WifiInfo;->txSuccess:J

    .line 267
    iput-wide v4, p0, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    .line 268
    iput-wide v4, p0, Landroid/net/wifi/WifiInfo;->txRetries:J

    .line 269
    iput-wide v2, p0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    .line 270
    iput-wide v2, p0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    .line 271
    iput-wide v2, p0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    .line 272
    iput-wide v2, p0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    .line 273
    iput v1, p0, Landroid/net/wifi/WifiInfo;->lowRssiCount:I

    .line 274
    iput v1, p0, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    .line 275
    iput v1, p0, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    .line 276
    iput v1, p0, Landroid/net/wifi/WifiInfo;->score:I

    .line 277
    return-void
.end method

.method public setBSSID(Ljava/lang/String;)V
    .locals 0
    .param p1, "BSSID"    # Ljava/lang/String;

    .prologue
    .line 342
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    .line 343
    return-void
.end method

.method public setEphemeral(Z)V
    .locals 0
    .param p1, "ephemeral"    # Z

    .prologue
    .line 445
    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mEphemeral:Z

    .line 446
    return-void
.end method

.method public setFrequency(I)V
    .locals 0
    .param p1, "frequency"    # I

    .prologue
    .line 401
    iput p1, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    .line 402
    return-void
.end method

.method public setInetAddress(Ljava/net/InetAddress;)V
    .locals 0
    .param p1, "address"    # Ljava/net/InetAddress;

    .prologue
    .line 484
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    .line 485
    return-void
.end method

.method public setLinkSpeed(I)V
    .locals 0
    .param p1, "linkSpeed"    # I

    .prologue
    .line 387
    iput p1, p0, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    .line 388
    return-void
.end method

.method public setMacAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "macAddress"    # Ljava/lang/String;

    .prologue
    .line 426
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    .line 427
    return-void
.end method

.method public setMeteredHint(Z)V
    .locals 0
    .param p1, "meteredHint"    # Z

    .prologue
    .line 435
    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mMeteredHint:Z

    .line 436
    return-void
.end method

.method public setNetworkId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 455
    iput p1, p0, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    .line 456
    return-void
.end method

.method public setRssi(I)V
    .locals 1
    .param p1, "rssi"    # I

    .prologue
    .line 369
    const/16 v0, -0x7f

    if-ge p1, v0, :cond_0

    .line 370
    const/16 p1, -0x7f

    .line 371
    :cond_0
    const/16 v0, 0xc8

    if-le p1, v0, :cond_1

    .line 372
    const/16 p1, 0xc8

    .line 373
    :cond_1
    iput p1, p0, Landroid/net/wifi/WifiInfo;->mRssi:I

    .line 374
    return-void
.end method

.method public setSSID(Landroid/net/wifi/WifiSsid;)V
    .locals 0
    .param p1, "wifiSsid"    # Landroid/net/wifi/WifiSsid;

    .prologue
    .line 313
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    .line 314
    return-void
.end method

.method public setSupplicantState(Landroid/net/wifi/SupplicantState;)V
    .locals 0
    .param p1, "state"    # Landroid/net/wifi/SupplicantState;

    .prologue
    .line 479
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    .line 480
    return-void
.end method

.method setSupplicantState(Ljava/lang/String;)V
    .locals 1
    .param p1, "stateName"    # Ljava/lang/String;

    .prologue
    .line 520
    invoke-static {p1}, Landroid/net/wifi/WifiInfo;->valueOf(Ljava/lang/String;)Landroid/net/wifi/SupplicantState;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    .line 521
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 547
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 548
    .local v1, "sb":Ljava/lang/StringBuffer;
    const-string v0, "<none>"

    .line 551
    .local v0, "none":Ljava/lang/String;
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_4

    .line 553
    const-string v2, "SSID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v2, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    if-nez v2, :cond_0

    const-string v2, "<unknown ssid>"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", BSSID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v2, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    if-nez v2, :cond_1

    move-object v2, v0

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", MAC: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v2, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    if-nez v2, :cond_2

    move-object v2, v0

    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", Supplicant state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    if-nez v3, :cond_3

    .end local v0    # "none":Ljava/lang/String;
    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", RSSI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiInfo;->mRssi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", Link speed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "Mbps"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", Frequency: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "MHz"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", Net ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", Metered hint: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-boolean v3, p0, Landroid/net/wifi/WifiInfo;->mMeteredHint:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", score: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiInfo;->score:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 580
    :goto_4
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 553
    .restart local v0    # "none":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    goto/16 :goto_0

    :cond_1
    iget-object v2, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    goto/16 :goto_1

    :cond_2
    iget-object v2, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    goto :goto_2

    :cond_3
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    goto :goto_3

    .line 568
    :cond_4
    const-string v2, "SSID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v2, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    if-nez v2, :cond_5

    const-string v2, "<unknown ssid>"

    :goto_5
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", BSSID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v2, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    if-nez v2, :cond_6

    move-object v2, v0

    :goto_6
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", Supplicant state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    if-nez v3, :cond_7

    .end local v0    # "none":Ljava/lang/String;
    :goto_7
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", RSSI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiInfo;->mRssi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", Link speed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "Mbps"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", Frequency: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "MHz"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", Net ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", Metered hint: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-boolean v3, p0, Landroid/net/wifi/WifiInfo;->mMeteredHint:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", score: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiInfo;->score:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_4

    .restart local v0    # "none":Ljava/lang/String;
    :cond_5
    iget-object v2, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    goto :goto_5

    :cond_6
    iget-object v2, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    goto :goto_6

    :cond_7
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    goto :goto_7
.end method

.method public updatePacketRates(JJ)V
    .locals 7
    .param p1, "txPackets"    # J
    .param p3, "rxPackets"    # J

    .prologue
    const-wide/16 v0, 0x0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    const-wide/16 v2, 0x0

    .line 220
    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->txBad:J

    .line 221
    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->txRetries:J

    .line 222
    iput-wide v2, p0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    .line 223
    iput-wide v2, p0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    .line 224
    iget-wide v0, p0, Landroid/net/wifi/WifiInfo;->txSuccess:J

    cmp-long v0, v0, p1

    if-gtz v0, :cond_0

    iget-wide v0, p0, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    cmp-long v0, v0, p3

    if-gtz v0, :cond_0

    .line 225
    iget-wide v0, p0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    mul-double/2addr v0, v4

    iget-wide v2, p0, Landroid/net/wifi/WifiInfo;->txSuccess:J

    sub-long v2, p1, v2

    long-to-double v2, v2

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    .line 227
    iget-wide v0, p0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    mul-double/2addr v0, v4

    iget-wide v2, p0, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    sub-long v2, p3, v2

    long-to-double v2, v2

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    .line 233
    :goto_0
    iput-wide p1, p0, Landroid/net/wifi/WifiInfo;->txSuccess:J

    .line 234
    iput-wide p3, p0, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    .line 235
    return-void

    .line 230
    :cond_0
    iput-wide v2, p0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    .line 231
    iput-wide v2, p0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    goto :goto_0
.end method

.method public updatePacketRates(Landroid/net/wifi/WifiLinkLayerStats;)V
    .locals 14
    .param p1, "stats"    # Landroid/net/wifi/WifiLinkLayerStats;

    .prologue
    .line 170
    if-eqz p1, :cond_1

    .line 171
    iget-wide v8, p1, Landroid/net/wifi/WifiLinkLayerStats;->txmpdu_be:J

    iget-wide v10, p1, Landroid/net/wifi/WifiLinkLayerStats;->txmpdu_bk:J

    add-long/2addr v8, v10

    iget-wide v10, p1, Landroid/net/wifi/WifiLinkLayerStats;->txmpdu_vi:J

    add-long/2addr v8, v10

    iget-wide v10, p1, Landroid/net/wifi/WifiLinkLayerStats;->txmpdu_vo:J

    add-long v4, v8, v10

    .line 172
    .local v4, "txgood":J
    iget-wide v8, p1, Landroid/net/wifi/WifiLinkLayerStats;->retries_be:J

    iget-wide v10, p1, Landroid/net/wifi/WifiLinkLayerStats;->retries_bk:J

    add-long/2addr v8, v10

    iget-wide v10, p1, Landroid/net/wifi/WifiLinkLayerStats;->retries_vi:J

    add-long/2addr v8, v10

    iget-wide v10, p1, Landroid/net/wifi/WifiLinkLayerStats;->retries_vo:J

    add-long v6, v8, v10

    .line 174
    .local v6, "txretries":J
    iget-wide v8, p1, Landroid/net/wifi/WifiLinkLayerStats;->rxmpdu_be:J

    iget-wide v10, p1, Landroid/net/wifi/WifiLinkLayerStats;->rxmpdu_bk:J

    add-long/2addr v8, v10

    iget-wide v10, p1, Landroid/net/wifi/WifiLinkLayerStats;->rxmpdu_vi:J

    add-long/2addr v8, v10

    iget-wide v10, p1, Landroid/net/wifi/WifiLinkLayerStats;->rxmpdu_vo:J

    add-long v0, v8, v10

    .line 175
    .local v0, "rxgood":J
    iget-wide v8, p1, Landroid/net/wifi/WifiLinkLayerStats;->lostmpdu_be:J

    iget-wide v10, p1, Landroid/net/wifi/WifiLinkLayerStats;->lostmpdu_bk:J

    add-long/2addr v8, v10

    iget-wide v10, p1, Landroid/net/wifi/WifiLinkLayerStats;->lostmpdu_vi:J

    add-long/2addr v8, v10

    iget-wide v10, p1, Landroid/net/wifi/WifiLinkLayerStats;->lostmpdu_vo:J

    add-long v2, v8, v10

    .line 178
    .local v2, "txbad":J
    iget-wide v8, p0, Landroid/net/wifi/WifiInfo;->txBad:J

    cmp-long v8, v8, v2

    if-gtz v8, :cond_0

    iget-wide v8, p0, Landroid/net/wifi/WifiInfo;->txSuccess:J

    cmp-long v8, v8, v4

    if-gtz v8, :cond_0

    iget-wide v8, p0, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    cmp-long v8, v8, v0

    if-gtz v8, :cond_0

    iget-wide v8, p0, Landroid/net/wifi/WifiInfo;->txRetries:J

    cmp-long v8, v8, v6

    if-gtz v8, :cond_0

    .line 182
    iget-wide v8, p0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v8, v10

    iget-wide v10, p0, Landroid/net/wifi/WifiInfo;->txBad:J

    sub-long v10, v2, v10

    long-to-double v10, v10

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    iput-wide v8, p0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    .line 184
    iget-wide v8, p0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v8, v10

    iget-wide v10, p0, Landroid/net/wifi/WifiInfo;->txSuccess:J

    sub-long v10, v4, v10

    long-to-double v10, v10

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    iput-wide v8, p0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    .line 186
    iget-wide v8, p0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v8, v10

    iget-wide v10, p0, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    sub-long v10, v0, v10

    long-to-double v10, v10

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    iput-wide v8, p0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    .line 188
    iget-wide v8, p0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v8, v10

    iget-wide v10, p0, Landroid/net/wifi/WifiInfo;->txRetries:J

    sub-long v10, v6, v10

    long-to-double v10, v10

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    iput-wide v8, p0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    .line 196
    :goto_0
    iput-wide v2, p0, Landroid/net/wifi/WifiInfo;->txBad:J

    .line 197
    iput-wide v4, p0, Landroid/net/wifi/WifiInfo;->txSuccess:J

    .line 198
    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    .line 199
    iput-wide v6, p0, Landroid/net/wifi/WifiInfo;->txRetries:J

    .line 210
    .end local v0    # "rxgood":J
    .end local v2    # "txbad":J
    .end local v4    # "txgood":J
    .end local v6    # "txretries":J
    :goto_1
    return-void

    .line 191
    .restart local v0    # "rxgood":J
    .restart local v2    # "txbad":J
    .restart local v4    # "txgood":J
    .restart local v6    # "txretries":J
    :cond_0
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    .line 192
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    .line 193
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    .line 194
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    goto :goto_0

    .line 201
    .end local v0    # "rxgood":J
    .end local v2    # "txbad":J
    .end local v4    # "txgood":J
    .end local v6    # "txretries":J
    :cond_1
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/net/wifi/WifiInfo;->txBad:J

    .line 202
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/net/wifi/WifiInfo;->txSuccess:J

    .line 203
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    .line 204
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/net/wifi/WifiInfo;->txRetries:J

    .line 205
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    .line 206
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    .line 207
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    .line 208
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 590
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 591
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 592
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 593
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 594
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    if-eqz v0, :cond_0

    .line 595
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 596
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 600
    :goto_0
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    if-eqz v0, :cond_1

    .line 601
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 602
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/WifiSsid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 606
    :goto_1
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 607
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 608
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mMeteredHint:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 609
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mEphemeral:Z

    if-eqz v0, :cond_3

    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 610
    iget v0, p0, Landroid/net/wifi/WifiInfo;->score:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 611
    iget-wide v0, p0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 612
    iget-wide v0, p0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 613
    iget-wide v0, p0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 614
    iget-wide v0, p0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 615
    iget v0, p0, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 616
    iget v0, p0, Landroid/net/wifi/WifiInfo;->lowRssiCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 617
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/SupplicantState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 618
    return-void

    .line 598
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    .line 604
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_2
    move v0, v2

    .line 608
    goto :goto_2

    :cond_3
    move v1, v2

    .line 609
    goto :goto_3
.end method
