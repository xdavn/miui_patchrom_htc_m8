.class public Landroid/net/NetworkTemplate;
.super Ljava/lang/Object;
.source "NetworkTemplate.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/NetworkTemplate;",
            ">;"
        }
    .end annotation
.end field

.field private static final DATA_USAGE_NETWORK_TYPES:[I

.field public static final MATCH_BLUETOOTH:I = 0x8

.field public static final MATCH_ETHERNET:I = 0x5

.field public static final MATCH_HTC_OFFSET:I = 0x68

.field public static final MATCH_MOBILE_3G_LOWER:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MATCH_MOBILE_4G:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MATCH_MOBILE_ALL:I = 0x1

.field public static final MATCH_MOBILE_SPCS_CHARGE:I = 0x6a

.field public static final MATCH_MOBILE_VZW_CHARGE:I = 0x69

.field public static final MATCH_MOBILE_WILDCARD:I = 0x6

.field public static final MATCH_WIFI:I = 0x4

.field public static final MATCH_WIFI_WILDCARD:I = 0x7

.field private static final TAG:Ljava/lang/String; = "NetworkTemplate"

.field private static sForceAllNetworkTypes:Z


# instance fields
.field private final mMatchRule:I

.field private final mMatchSubscriberIds:[Ljava/lang/String;

.field private final mNetworkId:Ljava/lang/String;

.field private final mSubscriberId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 93
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    sput-object v0, Landroid/net/NetworkTemplate;->DATA_USAGE_NETWORK_TYPES:[I

    .line 97
    const/4 v0, 0x0

    sput-boolean v0, Landroid/net/NetworkTemplate;->sForceAllNetworkTypes:Z

    .line 536
    new-instance v0, Landroid/net/NetworkTemplate$1;

    invoke-direct {v0}, Landroid/net/NetworkTemplate$1;-><init>()V

    sput-object v0, Landroid/net/NetworkTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "matchRule"    # I
    .param p2, "subscriberId"    # Ljava/lang/String;
    .param p3, "networkId"    # Ljava/lang/String;

    .prologue
    .line 209
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "matchRule"    # I
    .param p2, "subscriberId"    # Ljava/lang/String;
    .param p3, "matchSubscriberIds"    # [Ljava/lang/String;
    .param p4, "networkId"    # Ljava/lang/String;

    .prologue
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    iput p1, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    .line 215
    iput-object p2, p0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    .line 216
    iput-object p3, p0, Landroid/net/NetworkTemplate;->mMatchSubscriberIds:[Ljava/lang/String;

    .line 217
    iput-object p4, p0, Landroid/net/NetworkTemplate;->mNetworkId:Ljava/lang/String;

    .line 218
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkTemplate;->mMatchSubscriberIds:[Ljava/lang/String;

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkTemplate;->mNetworkId:Ljava/lang/String;

    .line 225
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/NetworkTemplate$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/net/NetworkTemplate$1;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static buildTemplateBluetooth()Landroid/net/NetworkTemplate;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 190
    new-instance v0, Landroid/net/NetworkTemplate;

    const/16 v1, 0x8

    invoke-direct {v0, v1, v2, v2}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static buildTemplateEthernet()Landroid/net/NetworkTemplate;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 164
    new-instance v0, Landroid/net/NetworkTemplate;

    const/4 v1, 0x5

    invoke-direct {v0, v1, v2, v2}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static buildTemplateMobile3gLower(Ljava/lang/String;)Landroid/net/NetworkTemplate;
    .locals 3
    .param p0, "subscriberId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 118
    new-instance v0, Landroid/net/NetworkTemplate;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static buildTemplateMobile4g(Ljava/lang/String;)Landroid/net/NetworkTemplate;
    .locals 3
    .param p0, "subscriberId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 127
    new-instance v0, Landroid/net/NetworkTemplate;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;
    .locals 3
    .param p0, "subscriberId"    # Ljava/lang/String;

    .prologue
    .line 109
    new-instance v0, Landroid/net/NetworkTemplate;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static buildTemplateMobileWildcard()Landroid/net/NetworkTemplate;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 135
    new-instance v0, Landroid/net/NetworkTemplate;

    const/4 v1, 0x6

    invoke-direct {v0, v1, v2, v2}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static buildTemplateMobile_SpcsCharge(Ljava/lang/String;)Landroid/net/NetworkTemplate;
    .locals 3
    .param p0, "subscriberId"    # Ljava/lang/String;

    .prologue
    .line 181
    new-instance v0, Landroid/net/NetworkTemplate;

    const/16 v1, 0x6a

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static buildTemplateMobile_VzwCharge(Ljava/lang/String;)Landroid/net/NetworkTemplate;
    .locals 3
    .param p0, "subscriberId"    # Ljava/lang/String;

    .prologue
    .line 173
    new-instance v0, Landroid/net/NetworkTemplate;

    const/16 v1, 0x69

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static buildTemplateWifi()Landroid/net/NetworkTemplate;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 148
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v0

    return-object v0
.end method

.method public static buildTemplateWifi(Ljava/lang/String;)Landroid/net/NetworkTemplate;
    .locals 3
    .param p0, "networkId"    # Ljava/lang/String;

    .prologue
    .line 156
    new-instance v0, Landroid/net/NetworkTemplate;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 143
    new-instance v0, Landroid/net/NetworkTemplate;

    const/4 v1, 0x7

    invoke-direct {v0, v1, v2, v2}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static ensureSubtypeAvailable()V
    .locals 2

    .prologue
    .line 510
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to enforce 3G_LOWER template on combined data."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static forceAllNetworkTypes()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x1

    sput-boolean v0, Landroid/net/NetworkTemplate;->sForceAllNetworkTypes:Z

    .line 102
    return-void
.end method

.method private static getMatchRuleName(I)Ljava/lang/String;
    .locals 1
    .param p0, "matchRule"    # I

    .prologue
    .line 480
    sparse-switch p0, :sswitch_data_0

    .line 504
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 482
    :sswitch_0
    const-string v0, "MOBILE_3G_LOWER"

    goto :goto_0

    .line 484
    :sswitch_1
    const-string v0, "MOBILE_4G"

    goto :goto_0

    .line 486
    :sswitch_2
    const-string v0, "MOBILE_ALL"

    goto :goto_0

    .line 488
    :sswitch_3
    const-string v0, "WIFI"

    goto :goto_0

    .line 490
    :sswitch_4
    const-string v0, "ETHERNET"

    goto :goto_0

    .line 492
    :sswitch_5
    const-string v0, "MOBILE_WILDCARD"

    goto :goto_0

    .line 494
    :sswitch_6
    const-string v0, "WIFI_WILDCARD"

    goto :goto_0

    .line 496
    :sswitch_7
    const-string v0, "BLUETOOTH"

    goto :goto_0

    .line 499
    :sswitch_8
    const-string v0, "MATCH_MOBILE_VZW_CHARGE"

    goto :goto_0

    .line 501
    :sswitch_9
    const-string v0, "MATCH_MOBILE_SPCS_CHARGE"

    goto :goto_0

    .line 480
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x69 -> :sswitch_8
        0x6a -> :sswitch_9
    .end sparse-switch
.end method

.method private matchesBluetooth(Landroid/net/NetworkIdentity;)Z
    .locals 2
    .param p1, "ident"    # Landroid/net/NetworkIdentity;

    .prologue
    .line 434
    iget v0, p1, Landroid/net/NetworkIdentity;->mType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 435
    const/4 v0, 0x1

    .line 437
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private matchesEthernet(Landroid/net/NetworkIdentity;)Z
    .locals 2
    .param p1, "ident"    # Landroid/net/NetworkIdentity;

    .prologue
    .line 406
    iget v0, p1, Landroid/net/NetworkIdentity;->mType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 407
    const/4 v0, 0x1

    .line 409
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private matchesMobile(Landroid/net/NetworkIdentity;)Z
    .locals 5
    .param p1, "ident"    # Landroid/net/NetworkIdentity;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 342
    iget v3, p1, Landroid/net/NetworkIdentity;->mType:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    .line 348
    :cond_0
    :goto_0
    return v1

    .line 346
    :cond_1
    sget-boolean v3, Landroid/net/NetworkTemplate;->sForceAllNetworkTypes:Z

    if-nez v3, :cond_2

    sget-object v3, Landroid/net/NetworkTemplate;->DATA_USAGE_NETWORK_TYPES:[I

    iget v4, p1, Landroid/net/NetworkIdentity;->mType:I

    invoke-static {v3, v4}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    move v0, v1

    .line 348
    .local v0, "matchesType":Z
    :goto_1
    if-eqz v0, :cond_3

    iget-object v3, p0, Landroid/net/NetworkTemplate;->mMatchSubscriberIds:[Ljava/lang/String;

    iget-object v4, p1, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .end local v0    # "matchesType":Z
    :cond_4
    move v0, v2

    .line 346
    goto :goto_1
.end method

.method private matchesMobile3gLower(Landroid/net/NetworkIdentity;)Z
    .locals 3
    .param p1, "ident"    # Landroid/net/NetworkIdentity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 357
    invoke-static {}, Landroid/net/NetworkTemplate;->ensureSubtypeAvailable()V

    .line 358
    iget v1, p1, Landroid/net/NetworkIdentity;->mType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 368
    :cond_0
    :goto_0
    return v0

    .line 360
    :cond_1
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesMobile(Landroid/net/NetworkIdentity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 361
    iget v1, p1, Landroid/net/NetworkIdentity;->mSubType:I

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getNetworkClass(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 365
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 361
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private matchesMobile4g(Landroid/net/NetworkIdentity;)Z
    .locals 3
    .param p1, "ident"    # Landroid/net/NetworkIdentity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 376
    invoke-static {}, Landroid/net/NetworkTemplate;->ensureSubtypeAvailable()V

    .line 377
    iget v1, p1, Landroid/net/NetworkIdentity;->mType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 386
    :goto_0
    :pswitch_0
    return v0

    .line 380
    :cond_0
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesMobile(Landroid/net/NetworkIdentity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 381
    iget v1, p1, Landroid/net/NetworkIdentity;->mSubType:I

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getNetworkClass(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 386
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 381
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method private matchesMobileSpcsCharge(Landroid/net/NetworkIdentity;)Z
    .locals 6
    .param p1, "ident"    # Landroid/net/NetworkIdentity;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 460
    iget-object v4, p0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    iget-object v5, p1, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 461
    iget-object v4, p1, Landroid/net/NetworkIdentity;->mCapabilities:Landroid/net/NetworkCapabilities;

    if-eqz v4, :cond_2

    .line 462
    const/4 v4, 0x4

    new-array v1, v4, [I

    fill-array-data v1, :array_0

    .line 467
    .local v1, "meteredCap":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_3

    .line 468
    iget-object v4, p1, Landroid/net/NetworkIdentity;->mCapabilities:Landroid/net/NetworkCapabilities;

    aget v5, v1, v0

    invoke-virtual {v4, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 475
    .end local v0    # "i":I
    .end local v1    # "meteredCap":[I
    :cond_0
    :goto_1
    return v2

    .line 467
    .restart local v0    # "i":I
    .restart local v1    # "meteredCap":[I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 472
    .end local v0    # "i":I
    .end local v1    # "meteredCap":[I
    :cond_2
    iget v4, p1, Landroid/net/NetworkIdentity;->mType:I

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_1

    :cond_3
    move v2, v3

    .line 475
    goto :goto_1

    .line 462
    :array_0
    .array-data 4
        0xc
        0x0
        0x2
        0x1
    .end array-data
.end method

.method private matchesMobileVzwCharge(Landroid/net/NetworkIdentity;)Z
    .locals 6
    .param p1, "ident"    # Landroid/net/NetworkIdentity;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 442
    iget-object v4, p0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    iget-object v5, p1, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 443
    iget-object v4, p1, Landroid/net/NetworkIdentity;->mCapabilities:Landroid/net/NetworkCapabilities;

    if-eqz v4, :cond_2

    .line 444
    const/4 v4, 0x4

    new-array v1, v4, [I

    fill-array-data v1, :array_0

    .line 449
    .local v1, "meteredCap":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_3

    .line 450
    iget-object v4, p1, Landroid/net/NetworkIdentity;->mCapabilities:Landroid/net/NetworkCapabilities;

    aget v5, v1, v0

    invoke-virtual {v4, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 457
    .end local v0    # "i":I
    .end local v1    # "meteredCap":[I
    :cond_0
    :goto_1
    return v2

    .line 449
    .restart local v0    # "i":I
    .restart local v1    # "meteredCap":[I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 454
    .end local v0    # "i":I
    .end local v1    # "meteredCap":[I
    :cond_2
    iget v4, p1, Landroid/net/NetworkIdentity;->mType:I

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_1

    :cond_3
    move v2, v3

    .line 457
    goto :goto_1

    .line 444
    :array_0
    .array-data 4
        0xc
        0x1
        0x2
        0x1b
    .end array-data
.end method

.method private matchesMobileWildcard(Landroid/net/NetworkIdentity;)Z
    .locals 3
    .param p1, "ident"    # Landroid/net/NetworkIdentity;

    .prologue
    const/4 v0, 0x1

    .line 413
    iget v1, p1, Landroid/net/NetworkIdentity;->mType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 416
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-boolean v1, Landroid/net/NetworkTemplate;->sForceAllNetworkTypes:Z

    if-nez v1, :cond_0

    sget-object v1, Landroid/net/NetworkTemplate;->DATA_USAGE_NETWORK_TYPES:[I

    iget v2, p1, Landroid/net/NetworkIdentity;->mType:I

    invoke-static {v1, v2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private matchesWifi(Landroid/net/NetworkIdentity;)Z
    .locals 2
    .param p1, "ident"    # Landroid/net/NetworkIdentity;

    .prologue
    .line 393
    iget v0, p1, Landroid/net/NetworkIdentity;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 398
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 395
    :pswitch_0
    iget-object v0, p0, Landroid/net/NetworkTemplate;->mNetworkId:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Landroid/net/NetworkIdentity;->mNetworkId:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 393
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private matchesWifiWildcard(Landroid/net/NetworkIdentity;)Z
    .locals 1
    .param p1, "ident"    # Landroid/net/NetworkIdentity;

    .prologue
    .line 421
    iget v0, p1, Landroid/net/NetworkIdentity;->mType:I

    sparse-switch v0, :sswitch_data_0

    .line 426
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 424
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 421
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xd -> :sswitch_0
    .end sparse-switch
.end method

.method public static normalize(Landroid/net/NetworkTemplate;[Ljava/lang/String;)Landroid/net/NetworkTemplate;
    .locals 4
    .param p0, "template"    # Landroid/net/NetworkTemplate;
    .param p1, "merged"    # [Ljava/lang/String;

    .prologue
    .line 526
    invoke-virtual {p0}, Landroid/net/NetworkTemplate;->isMatchRuleMobile()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 529
    new-instance v0, Landroid/net/NetworkTemplate;

    iget v1, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    const/4 v2, 0x0

    aget-object v2, p1, v2

    iget-object v3, p0, Landroid/net/NetworkTemplate;->mNetworkId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1, v3}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v0

    .line 532
    .end local p0    # "template":Landroid/net/NetworkTemplate;
    :cond_0
    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 265
    instance-of v2, p1, Landroid/net/NetworkTemplate;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 266
    check-cast v0, Landroid/net/NetworkTemplate;

    .line 267
    .local v0, "other":Landroid/net/NetworkTemplate;
    iget v2, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    iget v3, v0, Landroid/net/NetworkTemplate;->mMatchRule:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/net/NetworkTemplate;->mNetworkId:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/NetworkTemplate;->mNetworkId:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 271
    .end local v0    # "other":Landroid/net/NetworkTemplate;
    :cond_0
    return v1
.end method

.method public getMatchRule()I
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    return v0
.end method

.method public getNetworkId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Landroid/net/NetworkTemplate;->mNetworkId:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 260
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Landroid/net/NetworkTemplate;->mNetworkId:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isMatchRuleMobile()Z
    .locals 1

    .prologue
    .line 275
    iget v0, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    sparse-switch v0, :sswitch_data_0

    .line 286
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 284
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 275
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x6 -> :sswitch_0
        0x69 -> :sswitch_0
        0x6a -> :sswitch_0
    .end sparse-switch
.end method

.method public matches(Landroid/net/NetworkIdentity;)Z
    .locals 2
    .param p1, "ident"    # Landroid/net/NetworkIdentity;

    .prologue
    .line 306
    iget v0, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    sparse-switch v0, :sswitch_data_0

    .line 331
    const-string v0, "NetworkTemplate"

    const-string/jumbo v1, "matches unknown network template"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 308
    :sswitch_0
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesMobile(Landroid/net/NetworkIdentity;)Z

    move-result v0

    goto :goto_0

    .line 310
    :sswitch_1
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesMobile3gLower(Landroid/net/NetworkIdentity;)Z

    move-result v0

    goto :goto_0

    .line 312
    :sswitch_2
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesMobile4g(Landroid/net/NetworkIdentity;)Z

    move-result v0

    goto :goto_0

    .line 314
    :sswitch_3
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesWifi(Landroid/net/NetworkIdentity;)Z

    move-result v0

    goto :goto_0

    .line 316
    :sswitch_4
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesEthernet(Landroid/net/NetworkIdentity;)Z

    move-result v0

    goto :goto_0

    .line 318
    :sswitch_5
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesMobileWildcard(Landroid/net/NetworkIdentity;)Z

    move-result v0

    goto :goto_0

    .line 320
    :sswitch_6
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesWifiWildcard(Landroid/net/NetworkIdentity;)Z

    move-result v0

    goto :goto_0

    .line 322
    :sswitch_7
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesBluetooth(Landroid/net/NetworkIdentity;)Z

    move-result v0

    goto :goto_0

    .line 325
    :sswitch_8
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesMobileVzwCharge(Landroid/net/NetworkIdentity;)Z

    move-result v0

    goto :goto_0

    .line 327
    :sswitch_9
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesMobileSpcsCharge(Landroid/net/NetworkIdentity;)Z

    move-result v0

    goto :goto_0

    .line 306
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x69 -> :sswitch_8
        0x6a -> :sswitch_9
    .end sparse-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NetworkTemplate: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 243
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "matchRule="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    invoke-static {v2}, Landroid/net/NetworkTemplate;->getMatchRuleName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    iget-object v1, p0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 245
    const-string v1, ", subscriberId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/NetworkIdentity;->scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    :cond_0
    iget-object v1, p0, Landroid/net/NetworkTemplate;->mMatchSubscriberIds:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 249
    const-string v1, ", matchSubscriberIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/NetworkTemplate;->mMatchSubscriberIds:[Ljava/lang/String;

    invoke-static {v2}, Landroid/net/NetworkIdentity;->scrubSubscriberId([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    :cond_1
    iget-object v1, p0, Landroid/net/NetworkTemplate;->mNetworkId:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 253
    const-string v1, ", networkId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/NetworkTemplate;->mNetworkId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 229
    iget v0, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    iget-object v0, p0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Landroid/net/NetworkTemplate;->mMatchSubscriberIds:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Landroid/net/NetworkTemplate;->mNetworkId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 233
    return-void
.end method
