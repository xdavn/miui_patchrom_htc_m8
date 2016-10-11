.class public Lcom/android/internal/telephony/ACCCustomizationManager;
.super Ljava/lang/Object;
.source "ACCCustomizationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ACCCustomizationManager$SkuID;,
        Lcom/android/internal/telephony/ACCCustomizationManager$Region;
    }
.end annotation


# static fields
.field private static final KEY_SENSE_VERSION:Ljava/lang/String; = "sense_version"

.field public static READER_NAME_PHONE:Ljava/lang/String;

.field public static READER_NAME_RIL:Ljava/lang/String;

.field public static READER_NAME_SYSTEM:Ljava/lang/String;

.field public static READER_NAME_TELEPHONY:Ljava/lang/String;

.field public static final REGION:I

.field public static final SENSE_VERSION:Ljava/lang/String;

.field public static final SKU_ID:I

.field private static mCustomerMccMncTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mManager:Lcom/htc/customization/HtcCustomizationManager;

.field private static final mccmncrawdata:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/ACCCustomizationManager;->mManager:Lcom/htc/customization/HtcCustomizationManager;

    .line 37
    const-string v0, "system"

    sput-object v0, Lcom/android/internal/telephony/ACCCustomizationManager;->READER_NAME_SYSTEM:Ljava/lang/String;

    .line 38
    const-string v0, "Android_Telephony"

    sput-object v0, Lcom/android/internal/telephony/ACCCustomizationManager;->READER_NAME_TELEPHONY:Ljava/lang/String;

    .line 39
    const-string v0, "Android_Ril"

    sput-object v0, Lcom/android/internal/telephony/ACCCustomizationManager;->READER_NAME_RIL:Ljava/lang/String;

    .line 40
    const-string v0, "Phone"

    sput-object v0, Lcom/android/internal/telephony/ACCCustomizationManager;->READER_NAME_PHONE:Ljava/lang/String;

    .line 42
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->initSkuID()I

    move-result v0

    sput v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    .line 43
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->initRegion()I

    move-result v0

    sput v0, Lcom/android/internal/telephony/ACCCustomizationManager;->REGION:I

    .line 44
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->initSenseVersion()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SENSE_VERSION:Ljava/lang/String;

    .line 313
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/ACCCustomizationManager;->mCustomerMccMncTable:Ljava/util/HashMap;

    .line 315
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    const-string v1, "customer_sim_mccmnc_data"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/ACCCustomizationReader;->readString(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/ACCCustomizationManager;->mccmncrawdata:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    return-void
.end method

.method private static generateCustomerMccMncTable()V
    .locals 6

    .prologue
    .line 332
    sget-object v4, Lcom/android/internal/telephony/ACCCustomizationManager;->mCustomerMccMncTable:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 334
    sget-object v4, Lcom/android/internal/telephony/ACCCustomizationManager;->mccmncrawdata:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 335
    sget-object v4, Lcom/android/internal/telephony/ACCCustomizationManager;->mccmncrawdata:Ljava/lang/String;

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, "customerMccMnc":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_1

    .line 337
    aget-object v4, v0, v1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 338
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 339
    .local v2, "mccmnclist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    aget-object v4, v0, v1

    invoke-static {v4, v2}, Lcom/android/internal/telephony/ACCCustomizationManager;->parserCustomerMccMnc(Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result v3

    .line 340
    .local v3, "skuid":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 341
    sget-object v4, Lcom/android/internal/telephony/ACCCustomizationManager;->mCustomerMccMncTable:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    .end local v2    # "mccmnclist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "skuid":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 346
    :cond_1
    return-void
.end method

.method public static getCustomerMccMncTable(I)Ljava/util/ArrayList;
    .locals 3
    .param p0, "skuid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 318
    sget-object v1, Lcom/android/internal/telephony/ACCCustomizationManager;->mccmncrawdata:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 327
    :cond_0
    :goto_0
    return-object v0

    .line 320
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/ACCCustomizationManager;->mCustomerMccMncTable:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 321
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->generateCustomerMccMncTable()V

    .line 324
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/ACCCustomizationManager;->mCustomerMccMncTable:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/ACCCustomizationManager;->mCustomerMccMncTable:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 325
    sget-object v0, Lcom/android/internal/telephony/ACCCustomizationManager;->mCustomerMccMncTable:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public static getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "type"    # I
    .param p2, "needSIMReady"    # Z

    .prologue
    .line 58
    sget-object v0, Lcom/android/internal/telephony/ACCCustomizationManager;->mManager:Lcom/htc/customization/HtcCustomizationManager;

    invoke-virtual {v0, p0, p1, p2}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    return-object v0
.end method

.method public static getPhoneReader()Lcom/htc/customization/HtcCustomizationReader;
    .locals 4

    .prologue
    .line 83
    sget-object v0, Lcom/android/internal/telephony/ACCCustomizationManager;->mManager:Lcom/htc/customization/HtcCustomizationManager;

    sget-object v1, Lcom/android/internal/telephony/ACCCustomizationManager;->READER_NAME_PHONE:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    return-object v0
.end method

.method public static getRilReader()Lcom/htc/customization/HtcCustomizationReader;
    .locals 4

    .prologue
    .line 79
    sget-object v0, Lcom/android/internal/telephony/ACCCustomizationManager;->mManager:Lcom/htc/customization/HtcCustomizationManager;

    sget-object v1, Lcom/android/internal/telephony/ACCCustomizationManager;->READER_NAME_RIL:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    return-object v0
.end method

.method public static getStatus()I
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/internal/telephony/ACCCustomizationManager;->mManager:Lcom/htc/customization/HtcCustomizationManager;

    invoke-virtual {v0}, Lcom/htc/customization/HtcCustomizationManager;->getStatus()I

    move-result v0

    return v0
.end method

.method public static getSystemReader()Lcom/htc/customization/HtcCustomizationReader;
    .locals 4

    .prologue
    .line 71
    sget-object v0, Lcom/android/internal/telephony/ACCCustomizationManager;->mManager:Lcom/htc/customization/HtcCustomizationManager;

    sget-object v1, Lcom/android/internal/telephony/ACCCustomizationManager;->READER_NAME_SYSTEM:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    return-object v0
.end method

.method public static getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;
    .locals 4

    .prologue
    .line 75
    sget-object v0, Lcom/android/internal/telephony/ACCCustomizationManager;->mManager:Lcom/htc/customization/HtcCustomizationManager;

    sget-object v1, Lcom/android/internal/telephony/ACCCustomizationManager;->READER_NAME_TELEPHONY:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    return-object v0
.end method

.method private static initRegion()I
    .locals 3

    .prologue
    .line 92
    const-string v1, "region"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/htc/customization/HtcCustomizationSystemReaderImpl;->readInteger(Ljava/lang/String;I)I

    move-result v0

    .line 93
    .local v0, "region":I
    return v0
.end method

.method private static initSenseVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 99
    const-string v1, "sense_version"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/htc/customization/HtcCustomizationSystemReaderImpl;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "sense":Ljava/lang/String;
    return-object v0
.end method

.method private static initSkuID()I
    .locals 3

    .prologue
    .line 87
    const-string v1, "sku_id"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/htc/customization/HtcCustomizationSystemReaderImpl;->readInteger(Ljava/lang/String;I)I

    move-result v0

    .line 88
    .local v0, "sku_id":I
    return v0
.end method

.method public static isATTSku()Z
    .locals 2

    .prologue
    .line 279
    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x81

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCMCCSku()Z
    .locals 2

    .prologue
    .line 267
    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCTSku()Z
    .locals 2

    .prologue
    .line 263
    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCUSku()Z
    .locals 2

    .prologue
    .line 271
    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isChinaRegion()Z
    .locals 2

    .prologue
    .line 275
    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->REGION:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHTCLASku()Z
    .locals 2

    .prologue
    .line 292
    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x12

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x16

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x18

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHtcJpnSku()Z
    .locals 2

    .prologue
    .line 374
    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x88

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isKddiSku()Z
    .locals 2

    .prologue
    .line 259
    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x4f

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLAESNTELCELSku()Z
    .locals 2

    .prologue
    .line 284
    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNELLabSku()Z
    .locals 3

    .prologue
    .line 289
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getSystemReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    const-string v1, "for_nel"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSprintGroupSku()Z
    .locals 2

    .prologue
    .line 301
    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x55

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x62

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTracfoneWirelessSku()Z
    .locals 2

    .prologue
    .line 369
    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x86

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVerizonSku()Z
    .locals 2

    .prologue
    .line 308
    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static parserCustomerMccMnc(Ljava/lang/String;Ljava/util/ArrayList;)I
    .locals 5
    .param p0, "rawdata"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "finallist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, -0x1

    .line 349
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 363
    :cond_0
    :goto_0
    return v2

    .line 351
    :cond_1
    :try_start_0
    const-string v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 352
    .local v1, "list":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v3, v1

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    .line 353
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_3

    .line 354
    aget-object v3, v1, v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 355
    aget-object v3, v1, v0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 358
    :cond_3
    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 360
    .end local v0    # "i":I
    .end local v1    # "list":[Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static readCID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/android/internal/telephony/ACCCustomizationManager;->mManager:Lcom/htc/customization/HtcCustomizationManager;

    invoke-virtual {v0}, Lcom/htc/customization/HtcCustomizationManager;->readCID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
