.class public Lcom/htc/service/HtcTelephonyManager;
.super Ljava/lang/Object;
.source "HtcTelephonyManager.java"


# static fields
.field public static final ACTION_PHONE_STATE_CHANGED_EXT:Ljava/lang/String; = "android.intent.action.PHONE_STATE_EXT"

.field public static final ICC_STATE_ABSENT:I = 0x1

.field public static final ICC_STATE_NETWORK_LOCKED:I = 0x4

.field public static final ICC_STATE_PIN_REQUIRED:I = 0x2

.field public static final ICC_STATE_PUK_REQUIRED:I = 0x3

.field public static final ICC_STATE_READY:I = 0x5

.field public static final ICC_STATE_UNKNOWN:I = 0x0

.field public static final ICC_TYPE_2G:I = 0x2

.field public static final ICC_TYPE_3G:I = 0x3

.field public static final ICC_TYPE_NO_ICC:I = 0x1

.field public static final ICC_TYPE_SIM:I = 0x1

.field public static final ICC_TYPE_SUB_ICC:I = 0x3

.field public static final ICC_TYPE_TITAN_LITE_SIM_CARD:I = 0x4

.field public static final ICC_TYPE_UIM:I = 0x2

.field public static final ICC_TYPE_UNKNOW:I = 0x0

.field public static final ICC_TYPE_UNKNOWN:I = 0x0

.field private static final METHOD_NAME_CLEAR_CDMA_SYS_RECORD_CONTENT:Ljava/lang/String; = "clearCdmaSysRecordContent"

.field private static final METHOD_NAME_GET_CDMA_SYS_RECORD_CONTENT:Ljava/lang/String; = "getCdmaSysRecordContent"

.field private static final METHOD_NAME_GET_CDMA_SYS_RECORD_SIZE:Ljava/lang/String; = "getCdmaSysRecordSize"

.field public static final PHONE_SLOT_1:I = 0x0

.field public static final PHONE_SLOT_2:I = 0x0

.field public static final PHONE_SLOT_KEY:Ljava/lang/String; = ""

.field public static final PHONE_SLOT_NONE:I = 0x0

.field public static final PHONE_TYPE_CDMA:I = 0x2

.field public static final PHONE_TYPE_GSM:I = 0x1

.field public static final PHONE_TYPE_KEY:Ljava/lang/String; = ""

.field public static final PHONE_TYPE_NONE:I = 0x0

.field public static final PHONE_TYPE_SIP:I = 0x3

.field public static final PHONE_TYPE_SUB_GSM:I = 0x0

.field public static final PRECISE_CALL_STATE_ACTIVE:I = 0x2

.field public static final PRECISE_CALL_STATE_ALERTING:I = 0x5

.field public static final PRECISE_CALL_STATE_DIALING:I = 0x4

.field public static final PRECISE_CALL_STATE_DISCONNECTED:I = 0x8

.field public static final PRECISE_CALL_STATE_DISCONNECTING:I = 0x9

.field public static final PRECISE_CALL_STATE_HOLDING:I = 0x3

.field public static final PRECISE_CALL_STATE_IDLE:I = 0x1

.field public static final PRECISE_CALL_STATE_INCOMING:I = 0x6

.field public static final PRECISE_CALL_STATE_WAITING:I = 0x7

.field private static final READ_PHONE_STATE:Ljava/lang/String; = "android.permission.READ_PHONE_STATE"

.field public static final SECTOR_ID_NETWORK_EHRPD:I = 0x0

.field public static final SECTOR_ID_NETWORK_LTE:I = 0x1

.field public static final SIM_STATE_ABSENT:I = 0x1

.field public static final SIM_STATE_NETWORK_LOCKED:I = 0x4

.field public static final SIM_STATE_PIN_REQUIRED:I = 0x2

.field public static final SIM_STATE_PUK_REQUIRED:I = 0x3

.field public static final SIM_STATE_READY:I = 0x5

.field public static final SIM_STATE_UNKNOWN:I = 0x0

.field public static final STATE_EMERGENCY_ONLY:I = 0x2

.field public static final STATE_IN_SERVICE:I = 0x0

.field public static final STATE_NETWORK_SEARCHING:I = 0x4

.field public static final STATE_OUT_OF_SERVICE:I = 0x1

.field public static final STATE_POWER_OFF:I = 0x3

.field private static final TAG:Ljava/lang/String; = "HtcTelephonyManager"

.field public static final UIM_STATE_ABSENT:I = 0x1

.field public static final UIM_STATE_NETWORK_LOCKED:I = 0x4

.field public static final UIM_STATE_PIN_REQUIRED:I = 0x2

.field public static final UIM_STATE_PUK_REQUIRED:I = 0x3

.field public static final UIM_STATE_READY:I = 0x5

.field public static final UIM_STATE_UNKNOWN:I = 0x0

.field private static final _NAME_GET_CDMA_SYS_RECORD_CONTENT_BSID:Ljava/lang/String; = "getCdmaSysRecordContent_bsid"

.field private static final _NAME_GET_CDMA_SYS_RECORD_CONTENT_NID:Ljava/lang/String; = "getCdmaSysRecordContent_nid"

.field private static final _NAME_GET_CDMA_SYS_RECORD_CONTENT_SID:Ljava/lang/String; = "getCdmaSysRecordContent_sid"

.field private static final _NAME_GET_CDMA_SYS_RECORD_CONTENT_SIZE:Ljava/lang/String; = "getCdmaSysRecordContent_size"

.field private static sInstance:Lcom/htc/service/HtcTelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 196
    new-instance v0, Lcom/htc/service/HtcTelephonyManager;

    invoke-direct {v0}, Lcom/htc/service/HtcTelephonyManager;-><init>()V

    sput-object v0, Lcom/htc/service/HtcTelephonyManager;->sInstance:Lcom/htc/service/HtcTelephonyManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/IHtcTelephony;)V
    .locals 0
    .param p1, "service"    # Lcom/android/internal/telephony/IHtcTelephony;

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    return-void
.end method

.method public static dualGSMPhoneEnable()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2102
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 2103
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    if-nez v2, :cond_1

    .line 2104
    const-string v4, "HtcTelephonyManager"

    const-string v5, "can\'t get TelephonyManager service"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2116
    :cond_0
    :goto_0
    return v3

    .line 2108
    :cond_1
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 2109
    .local v1, "subId":[I
    const/4 v0, 0x0

    .line 2110
    .local v0, "phoneType":I
    if-eqz v1, :cond_2

    array-length v5, v1

    if-lt v5, v4, :cond_2

    .line 2111
    aget v5, v1, v3

    invoke-virtual {v2, v5}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v0

    .line 2113
    :cond_2
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    if-ne v0, v4, :cond_0

    move v3, v4

    .line 2114
    goto :goto_0
.end method

.method public static dualPhoneEnable()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1694
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 1695
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    if-nez v2, :cond_1

    .line 1696
    const-string v4, "HtcTelephonyManager"

    const-string v5, "can\'t get TelephonyManager service"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1708
    :cond_0
    :goto_0
    return v3

    .line 1700
    :cond_1
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 1701
    .local v1, "subId":[I
    const/4 v0, 0x0

    .line 1702
    .local v0, "phoneType":I
    if-eqz v1, :cond_2

    array-length v5, v1

    if-lt v5, v4, :cond_2

    .line 1703
    aget v5, v1, v3

    invoke-virtual {v2, v5}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v0

    .line 1705
    :cond_2
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x2

    if-ne v0, v5, :cond_0

    move v3, v4

    .line 1706
    goto :goto_0
.end method

.method public static getDefMainPhoneType()I
    .locals 3

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 1728
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1731
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->isDualGCPhone()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1741
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1735
    goto :goto_0

    .line 1738
    :cond_2
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 1741
    goto :goto_0
.end method

.method public static getDefSubPhoneType()I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1754
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1757
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->isDualGCPhone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1758
    const/4 v0, 0x2

    .line 1767
    :cond_0
    :goto_0
    return v0

    .line 1764
    :cond_1
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1765
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getDefault()Lcom/htc/service/HtcTelephonyManager;
    .locals 1

    .prologue
    .line 199
    sget-object v0, Lcom/htc/service/HtcTelephonyManager;->sInstance:Lcom/htc/service/HtcTelephonyManager;

    return-object v0
.end method

.method public static getDefaultPhoneType()I
    .locals 1

    .prologue
    .line 2063
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getMainPhoneType()I

    move-result v0

    return v0
.end method

.method private getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;
    .locals 1

    .prologue
    .line 203
    const-string v0, "htctelephony"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v0

    return-object v0
.end method

.method private getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;
    .locals 1

    .prologue
    .line 208
    const-string v0, "htctelephonyinternal"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v0

    return-object v0
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    .line 213
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method public static getMainPhoneSlot()I
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1842
    const-string v1, ""

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1844
    .local v0, "phoneType":I
    invoke-static {v0}, Lcom/htc/service/HtcTelephonyManager;->isValidPhoneType(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1845
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefMainPhoneType()I

    move-result v0

    .line 1848
    :cond_0
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1849
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1851
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->isDualGCPhone()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1878
    :cond_1
    :goto_0
    return v3

    .line 1857
    :cond_2
    if-ne v0, v2, :cond_3

    .line 1859
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->isDualGCPhone()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 1866
    :cond_3
    const-string v1, "HtcTelephonyManager"

    const-string v2, "Please check! main phone type is sug-gsm in CG mode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1877
    :cond_4
    :goto_1
    const-string v1, "HtcTelephonyManager"

    const-string v2, "Mismatch, please check!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1868
    :cond_5
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1869
    if-eq v0, v2, :cond_1

    .line 1871
    if-eqz v0, :cond_1

    .line 1874
    const-string v1, "HtcTelephonyManager"

    const-string v2, "Please check! main phone type is cdma in GG mode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getMainPhoneType()I
    .locals 3

    .prologue
    .line 1780
    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1782
    .local v0, "phoneType":I
    invoke-static {v0}, Lcom/htc/service/HtcTelephonyManager;->isValidPhoneType(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1785
    .end local v0    # "phoneType":I
    :goto_0
    return v0

    .restart local v0    # "phoneType":I
    :cond_0
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefMainPhoneType()I

    move-result v0

    goto :goto_0
.end method

.method public static getPhoneTypeByName(Ljava/lang/String;)I
    .locals 2
    .param p0, "phoneName"    # Ljava/lang/String;

    .prologue
    .line 1912
    const/4 v0, 0x0

    .line 1914
    .local v0, "phoneType":I
    if-nez p0, :cond_1

    .line 1915
    const/4 v0, 0x0

    .line 1929
    :cond_0
    :goto_0
    return v0

    .line 1916
    :cond_1
    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1917
    const/4 v0, 0x1

    goto :goto_0

    .line 1918
    :cond_2
    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1919
    const/4 v0, 0x2

    goto :goto_0

    .line 1920
    :cond_3
    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1921
    const/4 v0, 0x3

    goto :goto_0

    .line 1924
    :cond_4
    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1925
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSubPhoneType()I
    .locals 3

    .prologue
    .line 1806
    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1808
    .local v0, "phoneType":I
    invoke-static {v0}, Lcom/htc/service/HtcTelephonyManager;->isValidPhoneType(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1811
    .end local v0    # "phoneType":I
    :goto_0
    return v0

    .restart local v0    # "phoneType":I
    :cond_0
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefSubPhoneType()I

    move-result v0

    goto :goto_0
.end method

.method private getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;
    .locals 1

    .prologue
    .line 1072
    const-string v0, "iphonesubinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    return-object v0
.end method

.method public static isDefMainPhone(I)Z
    .locals 4
    .param p0, "phoneType"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2022
    invoke-static {p0}, Lcom/htc/service/HtcTelephonyManager;->isValidPhoneType(I)Z

    move-result v3

    if-nez v3, :cond_1

    move v1, v2

    .line 2058
    :cond_0
    :goto_0
    return v1

    .line 2026
    :cond_1
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getMainPhoneType()I

    move-result v0

    .line 2027
    .local v0, "mValue":I
    if-gez v0, :cond_2

    if-ltz p0, :cond_2

    .line 2028
    if-nez p0, :cond_6

    .line 2029
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2031
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->isDualGCPhone()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2032
    const/4 p0, 0x1

    .line 2055
    :cond_2
    :goto_1
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2056
    :cond_3
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getMainPhoneType()I

    move-result v3

    if-eq v3, p0, :cond_0

    move v1, v2

    goto :goto_0

    .line 2035
    :cond_4
    const/4 p0, 0x2

    goto :goto_1

    .line 2038
    :cond_5
    const/4 p0, 0x1

    goto :goto_1

    .line 2040
    :cond_6
    if-nez p0, :cond_2

    .line 2041
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2043
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->isDualGCPhone()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2044
    const/4 p0, 0x2

    goto :goto_1

    .line 2047
    :cond_7
    const/4 p0, 0x1

    goto :goto_1

    .line 2050
    :cond_8
    const/4 p0, 0x0

    goto :goto_1

    .line 2058
    :cond_9
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    if-eq v3, p0, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public static final isDualCGGGSwitchPhone()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1715
    const/16 v1, 0xa

    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getSystemReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v2

    const-string v3, "radio_type"

    invoke-static {v2, v3, v0}, Lcom/android/internal/telephony/ACCCustomizationReader;->readInteger(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static final isDualCGPhone()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1712
    const/4 v1, 0x7

    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getSystemReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v2

    const-string v3, "radio_type"

    invoke-static {v2, v3, v0}, Lcom/android/internal/telephony/ACCCustomizationReader;->readInteger(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isDualGCPhone()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2975
    const/16 v1, 0xb

    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getSystemReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v2

    const-string v3, "radio_type"

    invoke-static {v2, v3, v0}, Lcom/android/internal/telephony/ACCCustomizationReader;->readInteger(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static final isDualGGPhone()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2122
    const/4 v1, 0x6

    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getSystemReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v2

    const-string v3, "radio_type"

    invoke-static {v2, v3, v0}, Lcom/android/internal/telephony/ACCCustomizationReader;->readInteger(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isMainPhone(I)Z
    .locals 4
    .param p0, "phoneType"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1970
    invoke-static {p0}, Lcom/htc/service/HtcTelephonyManager;->isValidPhoneType(I)Z

    move-result v3

    if-nez v3, :cond_1

    move v1, v2

    .line 2007
    :cond_0
    :goto_0
    return v1

    .line 1974
    :cond_1
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getMainPhoneType()I

    move-result v0

    .line 1975
    .local v0, "mValue":I
    if-gez v0, :cond_2

    if-ltz p0, :cond_2

    .line 1976
    if-nez p0, :cond_6

    .line 1977
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1979
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->isDualGCPhone()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1980
    const/4 p0, 0x1

    .line 2004
    :cond_2
    :goto_1
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2005
    :cond_3
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getMainPhoneType()I

    move-result v3

    if-eq v3, p0, :cond_0

    move v1, v2

    goto :goto_0

    .line 1983
    :cond_4
    const/4 p0, 0x2

    goto :goto_1

    .line 1986
    :cond_5
    const/4 p0, 0x1

    goto :goto_1

    .line 1988
    :cond_6
    if-nez p0, :cond_2

    .line 1989
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1991
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->isDualGCPhone()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1992
    const/4 p0, 0x2

    goto :goto_1

    .line 1995
    :cond_7
    const/4 p0, 0x1

    goto :goto_1

    .line 1998
    :cond_8
    const/4 p0, 0x0

    goto :goto_1

    .line 2007
    :cond_9
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    if-eq v3, p0, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public static isSingleAudioUnderMultipleModem()Z
    .locals 1

    .prologue
    .line 1681
    const/4 v0, 0x1

    return v0
.end method

.method public static isValidPhoneType(I)Z
    .locals 1
    .param p0, "phoneType"    # I

    .prologue
    .line 1942
    packed-switch p0, :pswitch_data_0

    .line 1955
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1953
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1942
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static setMainPhoneSlot(I)V
    .locals 2
    .param p0, "phoneSlot"    # I

    .prologue
    .line 1891
    const-string v0, ""

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1894
    return-void
.end method

.method public static setMainPhoneType(I)V
    .locals 2
    .param p0, "phoneType"    # I

    .prologue
    .line 1791
    const-string v0, ""

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1794
    return-void
.end method

.method public static setSubPhoneType(I)V
    .locals 2
    .param p0, "phoneType"    # I

    .prologue
    .line 1817
    const-string v0, ""

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1820
    return-void
.end method


# virtual methods
.method public ExitCDMAEmergencyMode()V
    .locals 4

    .prologue
    .line 2609
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    const-string v2, "ExitCDMAEmergencyMode"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/IHtcTelephony;->generalSetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2615
    :goto_0
    return-void

    .line 2610
    :catch_0
    move-exception v0

    .line 2611
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ExitCDMAEmergencyMode remote exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2612
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2613
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v1, "HtcTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ExitCDMAEmergencyMode null pointer exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public akaAuthentication([B[B)Landroid/os/Bundle;
    .locals 4
    .param p1, "rand"    # [B
    .param p2, "autn"    # [B

    .prologue
    const/4 v1, 0x0

    .line 416
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->akaAuthentication([B[B)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 426
    :goto_0
    return-object v1

    .line 418
    :catch_0
    move-exception v0

    .line 420
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "akaAuthentication(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 423
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 425
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public akaAuthenticationExt([B[BI)Landroid/os/Bundle;
    .locals 7
    .param p1, "rand"    # [B
    .param p2, "autn"    # [B
    .param p3, "phoneSlot"    # I

    .prologue
    const/4 v3, 0x0

    .line 2720
    :try_start_0
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_0

    const-string v4, "HtcTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "akaAuthenticationExt phoneSlot = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2721
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2722
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "arg1"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 2723
    const-string v4, "arg2"

    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 2724
    const-string v4, "arg3"

    invoke-virtual {v0, v4, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2725
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v4

    const-string v5, "akaAuthenticationExt"

    invoke-interface {v4, v5, v0}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->generalSetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 2726
    .local v1, "bundleResult":Landroid/os/Bundle;
    const-string v4, "akaAuthenticationExt"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 2732
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "bundleResult":Landroid/os/Bundle;
    :goto_0
    return-object v3

    .line 2727
    :catch_0
    move-exception v2

    .line 2728
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v4, "HtcTelephonyManager"

    const-string v5, "akaAuthentication(): RemoteException"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2730
    .end local v2    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 2731
    .local v2, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public calculateAkaResponse([B[B)Landroid/os/Bundle;
    .locals 4
    .param p1, "rand"    # [B
    .param p2, "autn"    # [B

    .prologue
    const/4 v1, 0x0

    .line 871
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->calculateAkaResponse([B[B)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 880
    :goto_0
    return-object v1

    .line 873
    :catch_0
    move-exception v0

    .line 875
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "calculateAkaResponse(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 878
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 879
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "calculateAkaResponse(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public calculateGbaBootstrappingResponse([B[B)Landroid/os/Bundle;
    .locals 4
    .param p1, "rand"    # [B
    .param p2, "autn"    # [B

    .prologue
    const/4 v1, 0x0

    .line 887
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->calculateGbaBootstrappingResponse([B[B)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 896
    :goto_0
    return-object v1

    .line 889
    :catch_0
    move-exception v0

    .line 891
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "calculateGbaBootstrappingResponse(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 894
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 895
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "calculateGbaBootstrappingResponse(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public calculateNafExternalKey([B)[B
    .locals 4
    .param p1, "nafId"    # [B

    .prologue
    const/4 v1, 0x0

    .line 903
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->calculateNafExternalKey([B)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 912
    :goto_0
    return-object v1

    .line 905
    :catch_0
    move-exception v0

    .line 907
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "calculateNafExternalKey(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 910
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 911
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "calculateNafExternalKey(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public cancelMissedCallsNotification()V
    .locals 4

    .prologue
    .line 2285
    const-string v1, "HtcTelephonyManager"

    const-string v2, "cancelMissedCallsNotification"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2287
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephony;->cancelMissedCallsNotification()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2293
    :goto_0
    return-void

    .line 2288
    :catch_0
    move-exception v0

    .line 2289
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelMissedCallsNotification remote exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2290
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2291
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v1, "HtcTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelMissedCallsNotification null pointer exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public changeUserSettingLTE(Z)Z
    .locals 6
    .param p1, "value"    # Z

    .prologue
    const/4 v2, 0x0

    .line 2441
    :try_start_0
    const-string v3, "HtcTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeUserSettingLTE:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2442
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2443
    .local v0, "bundleArg1":Landroid/os/Bundle;
    if-eqz p1, :cond_0

    .line 2444
    const-string v3, "arg1"

    const/16 v4, 0x8

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2445
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v3

    const-string v4, "changeUserSettingLTE"

    invoke-interface {v3, v4, v0}, Lcom/android/internal/telephony/IHtcTelephony;->generalSetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 2450
    :goto_0
    const/4 v2, 0x1

    .line 2456
    .end local v0    # "bundleArg1":Landroid/os/Bundle;
    :goto_1
    return v2

    .line 2447
    .restart local v0    # "bundleArg1":Landroid/os/Bundle;
    :cond_0
    const-string v3, "arg1"

    const/4 v4, 0x4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2448
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v3

    const-string v4, "changeUserSettingLTE"

    invoke-interface {v3, v4, v0}, Lcom/android/internal/telephony/IHtcTelephony;->generalSetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2451
    .end local v0    # "bundleArg1":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 2452
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v3, "HtcTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeUserSettingLTE remote exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2454
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 2455
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string v3, "HtcTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeUserSettingLTE null pointer exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public cleanUpAllConnections(Ljava/lang/String;)V
    .locals 5
    .param p1, "cause"    # Ljava/lang/String;

    .prologue
    .line 2160
    :try_start_0
    const-string v2, "HtcTelephonyManager"

    const-string v3, "cleanUpAppConnections"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2161
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2162
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "arg1"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2163
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    const-string v3, "cleanUpAllConnections"

    invoke-interface {v2, v3, v0}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->generalSetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2169
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 2164
    :catch_0
    move-exception v1

    .line 2165
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cleanUpAllConnections remote exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2166
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 2167
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cleanUpAllConnections null pointer exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public cleanUpAllConnectionsExt(Ljava/lang/String;I)V
    .locals 5
    .param p1, "cause"    # Ljava/lang/String;
    .param p2, "phoneType"    # I

    .prologue
    .line 2173
    :try_start_0
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cleanUpAppConnectionsExt phoneType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2174
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2175
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "arg1"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2176
    const-string v2, "arg2"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2177
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    const-string v3, "cleanUpAllConnectionsExt"

    invoke-interface {v2, v3, v0}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->generalSetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2183
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 2178
    :catch_0
    move-exception v1

    .line 2179
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cleanUpAllConnectionsExt remote exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2180
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 2181
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cleanUpAllConnectionsExt null pointer exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public clearCdmaSysRecordContent()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 2667
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v3

    const-string v4, "clearCdmaSysRecordContent"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->generalSetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 2668
    .local v0, "bundleResult":Landroid/os/Bundle;
    const-string v3, "clearCdmaSysRecordContent"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 2676
    .end local v0    # "bundleResult":Landroid/os/Bundle;
    :goto_0
    return v2

    .line 2669
    :catch_0
    move-exception v1

    .line 2670
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v3, "HtcTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearCdmaSysRecordContent remote exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2671
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2673
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 2674
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string v3, "HtcTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearCdmaSysRecordContent null pointer exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2675
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public closeIccLogicalChannel(I)Z
    .locals 4
    .param p1, "channel"    # I

    .prologue
    const/4 v1, 0x0

    .line 309
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->closeIccLogicalChannel(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 319
    :goto_0
    return v1

    .line 311
    :catch_0
    move-exception v0

    .line 313
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "closeIccLogicalChannel(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 316
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 318
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public dialWithoutDelay(Landroid/content/Intent;)Z
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 539
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->dialWithoutDelay(Landroid/content/Intent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 549
    :goto_0
    return v1

    .line 541
    :catch_0
    move-exception v0

    .line 543
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "dialWithoutDelay(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 546
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 548
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public enablePS_W2G_Handover(I)V
    .locals 4
    .param p1, "enable"    # I

    .prologue
    .line 2515
    :try_start_0
    const-string v1, "HtcTelephonyManager"

    const-string v2, "enablePS_W2G_Handover()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2516
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->enablePS_W2G_Handover(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2522
    :goto_0
    return-void

    .line 2517
    :catch_0
    move-exception v0

    .line 2518
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enablePS_W2G_Handover() remote exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2519
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2520
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v1, "HtcTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enablePS_W2G_Handover() null pointer exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public generalGetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 2911
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/IHtcTelephony;->generalGetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2914
    :goto_0
    return-object v1

    .line 2912
    :catch_0
    move-exception v0

    .line 2913
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "generalGetter exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2914
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method public generalGetterInternal(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 2929
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->generalGetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2932
    :goto_0
    return-object v1

    .line 2930
    :catch_0
    move-exception v0

    .line 2931
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "generalGetterInternal exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2932
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method public generalSetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 2920
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/IHtcTelephony;->generalSetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2923
    :goto_0
    return-object v1

    .line 2921
    :catch_0
    move-exception v0

    .line 2922
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "generalSetter exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2923
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method public generalSetterInternal(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 2938
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->generalSetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2941
    :goto_0
    return-object v1

    .line 2939
    :catch_0
    move-exception v0

    .line 2940
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "generalSetterInternal exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2941
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method public getCdmaSysRecordContent(II)[[I
    .locals 13
    .param p1, "index"    # I
    .param p2, "number"    # I

    .prologue
    const/4 v9, 0x0

    .line 2637
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2638
    .local v1, "bundleArgs":Landroid/os/Bundle;
    const-string v10, "arg1"

    invoke-virtual {v1, v10, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2639
    const-string v10, "arg2"

    invoke-virtual {v1, v10, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2641
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v10

    const-string v11, "getCdmaSysRecordContent"

    invoke-interface {v10, v11, v1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->generalGetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 2642
    .local v2, "bundleResult":Landroid/os/Bundle;
    const-string v10, "getCdmaSysRecordContent_size"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 2643
    .local v8, "size":I
    const-string v10, "getCdmaSysRecordContent_sid"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v7

    .line 2644
    .local v7, "sid":[I
    const-string v10, "getCdmaSysRecordContent_nid"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    .line 2645
    .local v5, "nid":[I
    const-string v10, "getCdmaSysRecordContent_bsid"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 2646
    .local v0, "bsid":[I
    const/4 v10, 0x3

    filled-new-array {v8, v10}, [I

    move-result-object v10

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v11, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[I

    .line 2647
    .local v6, "result":[[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v8, :cond_0

    .line 2649
    aget-object v10, v6, v4

    const/4 v11, 0x0

    aget v12, v7, v4

    aput v12, v10, v11

    .line 2650
    aget-object v10, v6, v4

    const/4 v11, 0x1

    aget v12, v5, v4

    aput v12, v10, v11

    .line 2651
    aget-object v10, v6, v4

    const/4 v11, 0x2

    aget v12, v0, v4

    aput v12, v10, v11
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2647
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move-object v9, v6

    .line 2661
    .end local v0    # "bsid":[I
    .end local v1    # "bundleArgs":Landroid/os/Bundle;
    .end local v2    # "bundleResult":Landroid/os/Bundle;
    .end local v4    # "i":I
    .end local v5    # "nid":[I
    .end local v6    # "result":[[I
    .end local v7    # "sid":[I
    .end local v8    # "size":I
    :goto_1
    return-object v9

    .line 2654
    :catch_0
    move-exception v3

    .line 2655
    .local v3, "ex":Landroid/os/RemoteException;
    const-string v10, "HtcTelephonyManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getCdmaSysRecordContent remote exception"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2656
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2657
    check-cast v9, [[I

    goto :goto_1

    .line 2658
    .end local v3    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 2659
    .local v3, "ex":Ljava/lang/Exception;
    const-string v10, "HtcTelephonyManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getCdmaSysRecordContent exception"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2660
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 2661
    check-cast v9, [[I

    goto :goto_1
.end method

.method public getCdmaSysRecordSize()I
    .locals 6

    .prologue
    const/4 v2, -0x1

    .line 2622
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v3

    const-string v4, "getCdmaSysRecordSize"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->generalGetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 2623
    .local v0, "bundleResult":Landroid/os/Bundle;
    const-string v3, "getCdmaSysRecordSize"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 2631
    .end local v0    # "bundleResult":Landroid/os/Bundle;
    :goto_0
    return v2

    .line 2624
    :catch_0
    move-exception v1

    .line 2625
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v3, "HtcTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCdmaSysRecordSize remote exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2626
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2628
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 2629
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string v3, "HtcTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCdmaSysRecordSize null pointer exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2630
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getCompleteVoiceMailNumberExt(I)Ljava/lang/String;
    .locals 3
    .param p1, "phoneType"    # I

    .prologue
    const/4 v1, 0x0

    .line 1265
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getCompleteVoiceMailNumber()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1270
    :goto_0
    return-object v1

    .line 1266
    :catch_0
    move-exception v0

    .line 1267
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1268
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1270
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCurrentSlot1Mode()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 2187
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v3

    const-string v4, "getCurrentSlot1Mode"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->generalGetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 2188
    .local v0, "bundleResult":Landroid/os/Bundle;
    const-string v3, "getCurrentSlot1Mode"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 2194
    .end local v0    # "bundleResult":Landroid/os/Bundle;
    :goto_0
    return v2

    .line 2189
    :catch_0
    move-exception v1

    .line 2190
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v3, "HtcTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCurrentSlot1Mode remote exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2192
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 2193
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string v3, "HtcTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCurrentSlot1Mode null pointer exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCurrentSlot1PhoneType()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 2200
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v3

    const-string v4, "getCurrentSlot1PhoneType"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->generalGetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 2201
    .local v0, "bundleResult":Landroid/os/Bundle;
    const-string v3, "getCurrentSlot1PhoneType"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 2207
    .end local v0    # "bundleResult":Landroid/os/Bundle;
    :goto_0
    return v2

    .line 2202
    :catch_0
    move-exception v1

    .line 2203
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v3, "HtcTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCurrentSlot1PhoneType remote exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2205
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 2206
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string v3, "HtcTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCurrentSlot1PhoneType null pointer exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCurrentSlotPhoneType(I)I
    .locals 7
    .param p1, "phoneSlot"    # I

    .prologue
    const/4 v3, 0x0

    .line 2213
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2214
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "arg1"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2215
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v4

    const-string v5, "getCurrentSlotPhoneType"

    invoke-interface {v4, v5, v0}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->generalGetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 2216
    .local v1, "bundleResult":Landroid/os/Bundle;
    const-string v4, "getCurrentSlotPhoneType"

    const/4 v5, -0x1

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 2222
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "bundleResult":Landroid/os/Bundle;
    :goto_0
    return v3

    .line 2217
    :catch_0
    move-exception v2

    .line 2218
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v4, "HtcTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCurrentSlotPhoneType remote exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2220
    .end local v2    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 2221
    .local v2, "ex":Ljava/lang/NullPointerException;
    const-string v4, "HtcTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCurrentSlotPhoneType null pointer exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDataNetworkTypeExt(I)I
    .locals 7
    .param p1, "phoneType"    # I

    .prologue
    const/4 v3, 0x0

    .line 2982
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2983
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "phonetype"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2984
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v4

    const-string v5, "getDataNetworkTypeExt"

    invoke-interface {v4, v5, v0}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->generalGetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 2985
    .local v1, "bundleResult":Landroid/os/Bundle;
    const-string v4, "getDataNetworkTypeExt"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 2991
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "bundleResult":Landroid/os/Bundle;
    :goto_0
    return v3

    .line 2986
    :catch_0
    move-exception v2

    .line 2987
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v4, "HtcTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDataNetworkTypeExt remote exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2989
    .end local v2    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 2990
    .local v2, "ex":Ljava/lang/NullPointerException;
    const-string v4, "HtcTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDataNetworkTypeExt null pointer exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDeviceIdExt(I)Ljava/lang/String;
    .locals 4
    .param p1, "phoneType"    # I

    .prologue
    const/4 v1, 0x0

    .line 1174
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    const-string v3, "com.htc.service"

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDeviceId(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1178
    :goto_0
    return-object v1

    .line 1175
    :catch_0
    move-exception v0

    .line 1176
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1177
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1178
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDeviceSoftwareVersionExt(I)Ljava/lang/String;
    .locals 4
    .param p1, "phoneType"    # I

    .prologue
    const/4 v1, 0x0

    .line 1157
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    const-string v3, "com.htc.service"

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDeviceSvn(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1161
    :goto_0
    return-object v1

    .line 1158
    :catch_0
    move-exception v0

    .line 1159
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1160
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1161
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDrxInfo()[I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2538
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getDrxInfo()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2539
    const-string v2, "getDrxInfo"

    invoke-virtual {p0, v2, v1}, Lcom/htc/service/HtcTelephonyManager;->generalGetterInternal(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 2540
    .local v0, "b":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 2542
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "getDrxInfo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    goto :goto_0
.end method

.method public getGlobalDataRoamingOption()I
    .locals 5

    .prologue
    const/4 v1, -0x1

    .line 455
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->getGlobalDataRoamingOption()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 465
    :goto_0
    return v1

    .line 457
    :catch_0
    move-exception v0

    .line 459
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getGlobalDataRoamingOption(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 462
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 464
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getGlobalDataRoamingOption null pointer exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getGsmNetworkType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 622
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIccCountryIso(I)Ljava/lang/String;
    .locals 3
    .param p1, "iccType"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1451
    if-nez p1, :cond_4

    .line 1452
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1454
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->isDualGCPhone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1455
    const-string v0, ""

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1501
    :goto_0
    return-object v0

    .line 1459
    :cond_0
    invoke-virtual {p0, v2}, Lcom/htc/service/HtcTelephonyManager;->getCurrentSlotPhoneType(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 1460
    const-string v0, ""

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1463
    :cond_1
    const-string v0, ""

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1465
    :cond_2
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1466
    const-string v0, ""

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1468
    :cond_3
    const-string v0, "gsm.sim.operator.iso-country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1470
    :cond_4
    if-nez p1, :cond_9

    .line 1471
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1473
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->isDualGCPhone()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1474
    const-string v0, ""

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1478
    :cond_5
    invoke-virtual {p0, v2}, Lcom/htc/service/HtcTelephonyManager;->getCurrentSlotPhoneType(I)I

    move-result v0

    if-ne v0, v1, :cond_6

    .line 1479
    const-string v0, ""

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1482
    :cond_6
    const-string v0, ""

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1484
    :cond_7
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1485
    const-string v0, ""

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1487
    :cond_8
    const-string v0, "gsm.sim.operator.iso-country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1492
    :cond_9
    if-ne p1, v1, :cond_a

    .line 1493
    const-string v0, ""

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1495
    :cond_a
    const/4 v0, 0x3

    if-ne p1, v0, :cond_b

    .line 1496
    const-string v0, ""

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1498
    :cond_b
    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    .line 1499
    const-string v0, ""

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1501
    :cond_c
    const-string v0, "gsm.sim.operator.iso-country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public getIccOperator(I)Ljava/lang/String;
    .locals 6
    .param p1, "iccType"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1341
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 1342
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    if-nez v2, :cond_0

    .line 1343
    const-string v3, "HtcTelephonyManager"

    const-string v4, "can\'t get TelephonyManager service"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    const/4 v3, 0x0

    .line 1377
    :goto_0
    return-object v3

    .line 1347
    :cond_0
    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 1348
    .local v0, "slot1SubId":[I
    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 1350
    .local v1, "slot2SubId":[I
    if-eqz p1, :cond_1

    const/4 v3, 0x2

    if-ne p1, v3, :cond_3

    .line 1351
    :cond_1
    if-eqz v0, :cond_2

    array-length v3, v0

    if-lt v3, v4, :cond_2

    .line 1352
    aget v3, v0, v5

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1354
    :cond_2
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1356
    :cond_3
    if-eqz p1, :cond_4

    const/4 v3, 0x3

    if-ne p1, v3, :cond_6

    .line 1357
    :cond_4
    if-eqz v1, :cond_5

    array-length v3, v1

    if-lt v3, v4, :cond_5

    .line 1358
    aget v3, v1, v5

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1360
    :cond_5
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1362
    :cond_6
    if-ne p1, v4, :cond_a

    .line 1363
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1364
    if-eqz v1, :cond_7

    array-length v3, v1

    if-lt v3, v4, :cond_7

    .line 1365
    aget v3, v1, v5

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1367
    :cond_7
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1370
    :cond_8
    if-eqz v0, :cond_9

    array-length v3, v0

    if-lt v3, v4, :cond_9

    .line 1371
    aget v3, v0, v5

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1373
    :cond_9
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1377
    :cond_a
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getIccOperatorName(I)Ljava/lang/String;
    .locals 3
    .param p1, "iccType"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1390
    if-nez p1, :cond_4

    .line 1391
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1393
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->isDualGCPhone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1394
    const-string v0, ""

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1440
    :goto_0
    return-object v0

    .line 1398
    :cond_0
    invoke-virtual {p0, v2}, Lcom/htc/service/HtcTelephonyManager;->getCurrentSlotPhoneType(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 1399
    const-string v0, ""

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1402
    :cond_1
    const-string v0, ""

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1404
    :cond_2
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1405
    const-string v0, ""

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1407
    :cond_3
    const-string v0, "gsm.sim.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1409
    :cond_4
    if-nez p1, :cond_9

    .line 1410
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1412
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->isDualGCPhone()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1413
    const-string v0, ""

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1417
    :cond_5
    invoke-virtual {p0, v2}, Lcom/htc/service/HtcTelephonyManager;->getCurrentSlotPhoneType(I)I

    move-result v0

    if-ne v0, v1, :cond_6

    .line 1418
    const-string v0, ""

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1421
    :cond_6
    const-string v0, ""

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1423
    :cond_7
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1424
    const-string v0, ""

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1426
    :cond_8
    const-string v0, "gsm.sim.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1431
    :cond_9
    if-ne p1, v1, :cond_a

    .line 1432
    const-string v0, ""

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1434
    :cond_a
    const/4 v0, 0x3

    if-ne p1, v0, :cond_b

    .line 1435
    const-string v0, ""

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1437
    :cond_b
    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    .line 1438
    const-string v0, ""

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1440
    :cond_c
    const-string v0, "gsm.sim.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public getIccSerialNumber(I)Ljava/lang/String;
    .locals 4
    .param p1, "iccType"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 1085
    if-nez p1, :cond_4

    .line 1086
    :try_start_0
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1088
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->isDualGCPhone()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1089
    const-string v1, ""

    .line 1142
    :goto_0
    return-object v1

    .line 1093
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/service/HtcTelephonyManager;->getCurrentSlotPhoneType(I)I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 1094
    const-string v1, ""

    goto :goto_0

    .line 1097
    :cond_1
    const-string v1, ""

    goto :goto_0

    .line 1099
    :cond_2
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1100
    const-string v1, ""

    goto :goto_0

    .line 1102
    :cond_3
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    const-string v3, "com.htc.service"

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIccSerialNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1104
    :cond_4
    if-nez p1, :cond_9

    .line 1105
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1107
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->isDualGCPhone()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1108
    const-string v1, ""

    goto :goto_0

    .line 1112
    :cond_5
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/service/HtcTelephonyManager;->getCurrentSlotPhoneType(I)I

    move-result v2

    if-ne v2, v3, :cond_6

    .line 1113
    const-string v1, ""

    goto :goto_0

    .line 1116
    :cond_6
    const-string v1, ""

    goto :goto_0

    .line 1118
    :cond_7
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1119
    const-string v1, ""

    goto :goto_0

    .line 1121
    :cond_8
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    const-string v3, "com.htc.service"

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIccSerialNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1126
    :cond_9
    if-ne p1, v3, :cond_a

    .line 1127
    const-string v1, ""

    goto :goto_0

    .line 1129
    :cond_a
    const/4 v2, 0x3

    if-ne p1, v2, :cond_b

    .line 1130
    const-string v1, ""

    goto :goto_0

    .line 1132
    :cond_b
    const/4 v2, 0x2

    if-ne p1, v2, :cond_c

    .line 1133
    const-string v1, ""

    goto :goto_0

    .line 1135
    :cond_c
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    const-string v3, "com.htc.service"

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIccSerialNumber(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 1138
    :catch_0
    move-exception v0

    .line 1139
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1140
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1142
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getIccState(I)I
    .locals 4
    .param p1, "iccType"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1312
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 1313
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    if-nez v0, :cond_0

    .line 1314
    const-string v1, "HtcTelephonyManager"

    const-string v2, "can\'t get TelephonyManager service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    const/4 v1, -0x1

    .line 1329
    :goto_0
    return v1

    .line 1318
    :cond_0
    if-eqz p1, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 1319
    :cond_1
    invoke-virtual {v0, v3}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v1

    goto :goto_0

    .line 1320
    :cond_2
    if-eqz p1, :cond_3

    const/4 v1, 0x3

    if-ne p1, v1, :cond_4

    .line 1321
    :cond_3
    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v1

    goto :goto_0

    .line 1322
    :cond_4
    if-ne p1, v2, :cond_6

    .line 1323
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1324
    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v1

    goto :goto_0

    .line 1326
    :cond_5
    invoke-virtual {v0, v3}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v1

    goto :goto_0

    .line 1329
    :cond_6
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    goto :goto_0
.end method

.method public getIccType()I
    .locals 2

    .prologue
    .line 2476
    const-string v0, ""

    .line 2493
    .local v0, "iccType":Ljava/lang/String;
    const/4 v1, 0x0

    return v1
.end method

.method public getIncallRecordingFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 616
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLTELastErrorCode()I
    .locals 6

    .prologue
    const/4 v2, -0x1

    .line 2376
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v3

    const-string v4, "getLTELastErrorCode"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->generalGetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 2377
    .local v0, "bundleResult":Landroid/os/Bundle;
    const-string v3, "getLTELastErrorCode"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 2383
    .end local v0    # "bundleResult":Landroid/os/Bundle;
    :goto_0
    return v2

    .line 2378
    :catch_0
    move-exception v1

    .line 2379
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v3, "HtcTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLTELastErrorCode remote exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2381
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 2382
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string v3, "HtcTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLTELastErrorCode null pointer exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getLastError()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 326
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->getLastError()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 336
    :goto_0
    return v1

    .line 328
    :catch_0
    move-exception v0

    .line 330
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getLastError(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 333
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 335
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getLine1AlphaTagExt(I)Ljava/lang/String;
    .locals 4
    .param p1, "phoneType"    # I

    .prologue
    const/4 v1, 0x0

    .line 1229
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    const-string v3, "com.htc.service"

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getLine1AlphaTag(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1234
    :goto_0
    return-object v1

    .line 1230
    :catch_0
    move-exception v0

    .line 1231
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1232
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1234
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getLine1NumberExt(I)Ljava/lang/String;
    .locals 4
    .param p1, "phoneType"    # I

    .prologue
    const/4 v1, 0x0

    .line 1209
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    const-string v3, "com.htc.service"

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getLine1Number(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1214
    :goto_0
    return-object v1

    .line 1210
    :catch_0
    move-exception v0

    .line 1211
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1212
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1214
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getNetworkOperatorExt(I)Ljava/lang/String;
    .locals 3
    .param p1, "phoneType"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1577
    if-nez p1, :cond_4

    .line 1578
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1580
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->isDualGCPhone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1581
    const-string v0, ""

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1626
    :goto_0
    return-object v0

    .line 1585
    :cond_0
    invoke-virtual {p0, v2}, Lcom/htc/service/HtcTelephonyManager;->getCurrentSlotPhoneType(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 1586
    const-string v0, ""

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1589
    :cond_1
    const-string v0, ""

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1591
    :cond_2
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1592
    const-string v0, ""

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1594
    :cond_3
    const-string v0, "gsm.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1596
    :cond_4
    if-nez p1, :cond_9

    .line 1597
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1599
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->isDualGCPhone()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1600
    const-string v0, ""

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1604
    :cond_5
    invoke-virtual {p0, v2}, Lcom/htc/service/HtcTelephonyManager;->getCurrentSlotPhoneType(I)I

    move-result v0

    if-ne v0, v1, :cond_6

    .line 1605
    const-string v0, ""

    goto :goto_0

    .line 1608
    :cond_6
    const-string v0, ""

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1610
    :cond_7
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1611
    const-string v0, ""

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1613
    :cond_8
    const-string v0, "gsm.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1617
    :cond_9
    if-ne p1, v1, :cond_a

    .line 1618
    const-string v0, ""

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1620
    :cond_a
    if-nez p1, :cond_b

    .line 1621
    const-string v0, ""

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1623
    :cond_b
    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    .line 1624
    const-string v0, ""

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1626
    :cond_c
    const-string v0, "gsm.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public getNetworkOperatorNameExt(I)Ljava/lang/String;
    .locals 3
    .param p1, "phoneType"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1515
    if-nez p1, :cond_4

    .line 1516
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1518
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->isDualGCPhone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1519
    const-string v0, ""

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1564
    :goto_0
    return-object v0

    .line 1523
    :cond_0
    invoke-virtual {p0, v2}, Lcom/htc/service/HtcTelephonyManager;->getCurrentSlotPhoneType(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 1524
    const-string v0, ""

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1527
    :cond_1
    const-string v0, ""

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1529
    :cond_2
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1530
    const-string v0, ""

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1532
    :cond_3
    const-string v0, "gsm.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1534
    :cond_4
    if-nez p1, :cond_9

    .line 1535
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1537
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->isDualGCPhone()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1538
    const-string v0, ""

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1542
    :cond_5
    invoke-virtual {p0, v2}, Lcom/htc/service/HtcTelephonyManager;->getCurrentSlotPhoneType(I)I

    move-result v0

    if-ne v0, v1, :cond_6

    .line 1543
    const-string v0, ""

    goto :goto_0

    .line 1546
    :cond_6
    const-string v0, ""

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1548
    :cond_7
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1549
    const-string v0, ""

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1551
    :cond_8
    const-string v0, "gsm.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1555
    :cond_9
    if-ne p1, v1, :cond_a

    .line 1556
    const-string v0, ""

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1558
    :cond_a
    if-nez p1, :cond_b

    .line 1559
    const-string v0, ""

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1561
    :cond_b
    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    .line 1562
    const-string v0, ""

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1564
    :cond_c
    const-string v0, "gsm.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public getOpenChannelResponseData()[B
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 290
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->getOpenChannelResponseData()[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 300
    :goto_0
    return-object v1

    .line 292
    :catch_0
    move-exception v0

    .line 294
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getOpenChannelResponeData(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 297
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 299
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getPdnSettings2([Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p1, "profile"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 633
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->getPdnSettings2([Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 643
    :goto_0
    return-object v1

    .line 635
    :catch_0
    move-exception v0

    .line 637
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getPdnSettings2(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 640
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 642
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getPhoneState()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 1045
    const/4 v1, 0x0

    .line 1047
    .local v1, "state":Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->getPhoneState()Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1054
    :goto_0
    return-object v1

    .line 1048
    :catch_0
    move-exception v0

    .line 1049
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getPhoneState(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1050
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1051
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getPhoneState(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getPowerInfo()[I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2569
    :try_start_0
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getPowerInfo()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2570
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->getPowerInfo()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2576
    :goto_0
    return-object v1

    .line 2571
    :catch_0
    move-exception v0

    .line 2572
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPowerInfo() remote exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2574
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2575
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPowerInfo() null pointer exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getScreenBusyState()Z
    .locals 4

    .prologue
    .line 959
    const/4 v1, 0x0

    .line 961
    .local v1, "screenbusy":Z
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->getScreenBusyState()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 968
    :goto_0
    return v1

    .line 962
    :catch_0
    move-exception v0

    .line 963
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getScreenBusyState(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 964
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 965
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getScreenBusyState(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getSectorId(I)Ljava/lang/String;
    .locals 4
    .param p1, "requestedNetworkType"    # I

    .prologue
    const/4 v1, 0x0

    .line 395
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->getSectorId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 404
    :goto_0
    return-object v1

    .line 397
    :catch_0
    move-exception v0

    .line 399
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getSectorId(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 402
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 403
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getSectorId(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getServiceState()I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 520
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->getServiceState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 530
    :goto_0
    return v1

    .line 522
    :catch_0
    move-exception v0

    .line 524
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getServiceState(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 527
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 529
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getSimSerialNumberwithChar()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 2231
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v3

    const-string v4, "getSimSerialNumberwithChar"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->generalGetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 2232
    .local v0, "bundleResult":Landroid/os/Bundle;
    const-string v3, "getSimSerialNumberwithChar"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 2238
    .end local v0    # "bundleResult":Landroid/os/Bundle;
    :goto_0
    return-object v2

    .line 2233
    :catch_0
    move-exception v1

    .line 2234
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v3, "HtcTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSimSerialNumberwithChar remote exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2236
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 2237
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string v3, "HtcTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSimSerialNumberwithChar null pointer exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSimSerialNumberwithCharExt(I)Ljava/lang/String;
    .locals 7
    .param p1, "phoneType"    # I

    .prologue
    const/4 v3, 0x0

    .line 2246
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2247
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "arg1"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2248
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v4

    const-string v5, "getSimSerialNumberwithCharExt"

    invoke-interface {v4, v5, v0}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->generalGetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 2249
    .local v1, "bundleResult":Landroid/os/Bundle;
    const-string v4, "getSimSerialNumberwithCharExt"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 2255
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "bundleResult":Landroid/os/Bundle;
    :goto_0
    return-object v3

    .line 2250
    :catch_0
    move-exception v2

    .line 2251
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v4, "HtcTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSimSerialNumberwithCharExt remote exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2253
    .end local v2    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 2254
    .local v2, "ex":Ljava/lang/NullPointerException;
    const-string v4, "HtcTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSimSerialNumberwithCharExt null pointer exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSubscriberIdExt(I)Ljava/lang/String;
    .locals 4
    .param p1, "phoneType"    # I

    .prologue
    const/4 v1, 0x0

    .line 1191
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    const-string v3, "com.htc.service"

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getSubscriberId(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1196
    :goto_0
    return-object v1

    .line 1192
    :catch_0
    move-exception v0

    .line 1193
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1194
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1196
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getUimState()I
    .locals 1

    .prologue
    .line 1295
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/service/HtcTelephonyManager;->getIccState(I)I

    move-result v0

    return v0
.end method

.method public getVoiceMailAlphaTagExt(I)Ljava/lang/String;
    .locals 4
    .param p1, "phoneType"    # I

    .prologue
    const/4 v1, 0x0

    .line 1284
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    const-string v3, "com.htc.service"

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getVoiceMailAlphaTag(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1289
    :goto_0
    return-object v1

    .line 1285
    :catch_0
    move-exception v0

    .line 1286
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1287
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1289
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getVoiceMailNumberExt(I)Ljava/lang/String;
    .locals 4
    .param p1, "phoneType"    # I

    .prologue
    const/4 v1, 0x0

    .line 1247
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    const-string v3, "com.htc.service"

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getVoiceMailNumber(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1252
    :goto_0
    return-object v1

    .line 1248
    :catch_0
    move-exception v0

    .line 1249
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1250
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1252
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getVoiceNetworkTypeExt(I)I
    .locals 7
    .param p1, "phoneType"    # I

    .prologue
    const/4 v3, 0x0

    .line 2996
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2997
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "phonetype"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2998
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v4

    const-string v5, "getVoiceNetworkTypeExt"

    invoke-interface {v4, v5, v0}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->generalGetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 2999
    .local v1, "bundleResult":Landroid/os/Bundle;
    const-string v4, "getVoiceNetworkTypeExt"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 3005
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "bundleResult":Landroid/os/Bundle;
    :goto_0
    return v3

    .line 3000
    :catch_0
    move-exception v2

    .line 3001
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v4, "HtcTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getVoiceNetworkTypeExt remote exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3003
    .end local v2    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 3004
    .local v2, "ex":Ljava/lang/NullPointerException;
    const-string v4, "HtcTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getVoiceNetworkTypeExt null pointer exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public gsmAuthentication([B)Landroid/os/Bundle;
    .locals 4
    .param p1, "rand"    # [B

    .prologue
    const/4 v1, 0x0

    .line 2685
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->gsmAuthentication([B)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2695
    :goto_0
    return-object v1

    .line 2687
    :catch_0
    move-exception v0

    .line 2689
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "akaAuthentication(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2692
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2694
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public gsmAuthenticationExt([BI)Landroid/os/Bundle;
    .locals 7
    .param p1, "rand"    # [B
    .param p2, "phoneSlot"    # I

    .prologue
    const/4 v3, 0x0

    .line 2703
    :try_start_0
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_0

    const-string v4, "HtcTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "gsmAuthenticationExt phoneSlot = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2704
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2705
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "arg1"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 2706
    const-string v4, "arg2"

    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2707
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v4

    const-string v5, "gsmAuthenticationExt"

    invoke-interface {v4, v5, v0}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->generalSetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 2708
    .local v1, "bundleResult":Landroid/os/Bundle;
    const-string v4, "gsmAuthenticationExt"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 2714
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "bundleResult":Landroid/os/Bundle;
    :goto_0
    return-object v3

    .line 2709
    :catch_0
    move-exception v2

    .line 2710
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v4, "HtcTelephonyManager"

    const-string v5, "gsmAuthenticationExt(): RemoteException"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2712
    .end local v2    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 2713
    .local v2, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public handlePinMmi(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "phoneType"    # I

    .prologue
    const/4 v1, 0x0

    .line 2550
    const/4 v2, -0x1

    if-ne v2, p2, :cond_0

    .line 2551
    :try_start_0
    const-string v2, "HtcTelephonyManager"

    const-string v3, "handlePinMmi()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2552
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->handlePinMmi(Ljava/lang/String;)Z

    move-result v1

    .line 2562
    :goto_0
    return v1

    .line 2554
    :cond_0
    const-string v2, "HtcTelephonyManager"

    const-string v3, "handlePinMmiExt()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2557
    :catch_0
    move-exception v0

    .line 2558
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePinMmi() remote exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2559
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2560
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePinMmi() null pointer exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public htcCdmaExitRadioPowerSaveMode()V
    .locals 3

    .prologue
    .line 578
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephony;->htcCdmaExitRadioPowerSaveMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 588
    :goto_0
    return-void

    .line 580
    :catch_0
    move-exception v0

    .line 582
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "htcCdmaExitRadioPowerSaveMode(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 584
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 586
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public htcModemLinkOnExt(I)Z
    .locals 7
    .param p1, "phoneType"    # I

    .prologue
    const/4 v3, 0x0

    .line 2759
    :try_start_0
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_0

    const-string v4, "HtcTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "htcModemLinkOnExt phoneType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2760
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2761
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "arg1"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2762
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v4

    const-string v5, "htcModemLinkOnExt"

    invoke-interface {v4, v5, v0}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->generalGetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 2763
    .local v1, "bundleResult":Landroid/os/Bundle;
    const-string v4, "htcModemLinkOnExt"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 2769
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "bundleResult":Landroid/os/Bundle;
    :goto_0
    return v3

    .line 2764
    :catch_0
    move-exception v2

    .line 2765
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v4, "HtcTelephonyManager"

    const-string v5, "htcModemLinkOn(): RemoteException"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2767
    .end local v2    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 2768
    .local v2, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public isCTDualCardInserted(I)Z
    .locals 8
    .param p1, "phoneSlot"    # I

    .prologue
    const/4 v3, 0x0

    .line 2949
    :try_start_0
    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v5, :cond_0

    const-string v5, "HtcTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isCTDualCardInserted "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2950
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2951
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v5, "arg1"

    invoke-virtual {v0, v5, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2952
    const/4 v4, 0x0

    .line 2953
    .local v4, "subId":I
    if-nez p1, :cond_2

    .line 2954
    const/4 v4, 0x0

    .line 2958
    :cond_1
    :goto_0
    const-string v5, "subid"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2959
    const-string v5, "subscription"

    int-to-long v6, v4

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2960
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v5

    const-string v6, "isCTDualCardInserted"

    invoke-interface {v5, v6, v0}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->generalGetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 2961
    .local v1, "bundleResult":Landroid/os/Bundle;
    const-string v5, "isCTDualCardInserted"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 2968
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "bundleResult":Landroid/os/Bundle;
    .end local v4    # "subId":I
    :goto_1
    return v3

    .line 2955
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v4    # "subId":I
    :cond_2
    if-nez p1, :cond_1

    .line 2956
    const/4 v4, 0x1

    goto :goto_0

    .line 2963
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v4    # "subId":I
    :catch_0
    move-exception v2

    .line 2964
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v5, "HtcTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isCTDualCardInserted remote exception"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2966
    .end local v2    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 2967
    .local v2, "ex":Ljava/lang/NullPointerException;
    const-string v5, "HtcTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isCTDualCardInserted null pointer exception"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public isCatServiceReady()Z
    .locals 4

    .prologue
    .line 1010
    const/4 v1, 0x0

    .line 1012
    .local v1, "isReady":Z
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->isCatServiceReady()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1019
    :goto_0
    return v1

    .line 1013
    :catch_0
    move-exception v0

    .line 1014
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "isCatServiceReady(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1015
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1016
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "isCatServiceReady(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isEnterCDMAEmergencyMode()J
    .locals 8

    .prologue
    const-wide/16 v2, -0x1

    .line 2591
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v4

    const-string v5, "isEnterCDMAEmergencyMode"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/IHtcTelephony;->generalGetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 2592
    .local v0, "bundleResult":Landroid/os/Bundle;
    const-string v4, "isEnterCDMAEmergencyMode"

    const-wide/16 v6, -0x1

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v2

    .line 2598
    .end local v0    # "bundleResult":Landroid/os/Bundle;
    :goto_0
    return-wide v2

    .line 2593
    :catch_0
    move-exception v1

    .line 2594
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v4, "HtcTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isEnterCDMAEmergencyMode remote exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2596
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 2597
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string v4, "HtcTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isEnterCDMAEmergencyMode null pointer exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isFdnEnabledExt(I)Z
    .locals 6
    .param p1, "phoneType"    # I

    .prologue
    const/4 v3, 0x0

    .line 594
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 595
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "arg1"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 596
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v4

    const-string v5, "isFdnEnabledExt"

    invoke-interface {v4, v5, v0}, Lcom/android/internal/telephony/IHtcTelephony;->generalGetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 597
    .local v1, "bundleResult":Landroid/os/Bundle;
    const-string v4, "isFdnEnabledExt"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 602
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "bundleResult":Landroid/os/Bundle;
    :goto_0
    return v3

    .line 598
    :catch_0
    move-exception v2

    .line 599
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v4, "HtcTelephonyManager"

    const-string v5, "isFdnEnabledExt(): RemoteException"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 601
    .end local v2    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 602
    .local v2, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public isInService(I)Z
    .locals 3
    .param p1, "phoneType"    # I

    .prologue
    const/4 v1, 0x0

    .line 2068
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->isInService(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2074
    :goto_0
    return v1

    .line 2069
    :catch_0
    move-exception v0

    .line 2071
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 2072
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2074
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public isNetworkRoamingExt(I)Z
    .locals 6
    .param p1, "phoneType"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 1637
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 1638
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    if-nez v2, :cond_0

    .line 1639
    const-string v4, "HtcTelephonyManager"

    const-string v5, "can\'t get TelephonyManager service"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    :goto_0
    return v3

    .line 1643
    :cond_0
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 1644
    .local v0, "slot1SubId":[I
    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 1646
    .local v1, "slot2SubId":[I
    if-eqz p1, :cond_1

    const/4 v4, 0x2

    if-ne p1, v4, :cond_3

    .line 1647
    :cond_1
    if-eqz v0, :cond_2

    array-length v4, v0

    if-lt v4, v5, :cond_2

    .line 1648
    aget v3, v0, v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v3

    goto :goto_0

    .line 1650
    :cond_2
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v3

    goto :goto_0

    .line 1652
    :cond_3
    if-eqz p1, :cond_4

    if-nez p1, :cond_6

    .line 1653
    :cond_4
    if-eqz v1, :cond_5

    array-length v4, v1

    if-lt v4, v5, :cond_5

    .line 1654
    aget v3, v1, v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v3

    goto :goto_0

    .line 1656
    :cond_5
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v3

    goto :goto_0

    .line 1658
    :cond_6
    if-ne p1, v5, :cond_a

    .line 1659
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1660
    if-eqz v1, :cond_7

    array-length v4, v1

    if-lt v4, v5, :cond_7

    .line 1661
    aget v3, v1, v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v3

    goto :goto_0

    .line 1663
    :cond_7
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v3

    goto :goto_0

    .line 1666
    :cond_8
    if-eqz v0, :cond_9

    array-length v4, v0

    if-lt v4, v5, :cond_9

    .line 1667
    aget v3, v0, v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v3

    goto :goto_0

    .line 1669
    :cond_9
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v3

    goto :goto_0

    .line 1673
    :cond_a
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v3

    goto :goto_0
.end method

.method public isUserSettingLTE()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 2407
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v4

    const-string v5, "isUserSettingLTE"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/IHtcTelephony;->generalGetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 2408
    .local v0, "bundleResult":Landroid/os/Bundle;
    const-string v4, "isUserSettingLTE"

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 2409
    .local v2, "value":I
    const-string v4, "HtcTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isUserSettingLTE:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2410
    packed-switch v2, :pswitch_data_0

    .line 2425
    .end local v0    # "bundleResult":Landroid/os/Bundle;
    .end local v2    # "value":I
    :goto_0
    return v3

    .line 2416
    .restart local v0    # "bundleResult":Landroid/os/Bundle;
    .restart local v2    # "value":I
    :pswitch_0
    const/4 v3, 0x1

    goto :goto_0

    .line 2420
    .end local v0    # "bundleResult":Landroid/os/Bundle;
    .end local v2    # "value":I
    :catch_0
    move-exception v1

    .line 2421
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v4, "HtcTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isUserSettingLTE remote exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2423
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 2424
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string v4, "HtcTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isUserSettingLTE null pointer exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2410
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public notifyKeyEvent(I)V
    .locals 3
    .param p1, "keyCode"    # I

    .prologue
    .line 950
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->notifyKeyEvent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 956
    :goto_0
    return-void

    .line 951
    :catch_0
    move-exception v0

    .line 952
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "notifyKeyEvent(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 953
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 954
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "notifyKeyEvent(): NullPointerException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public notifyScreenBusy(Z)V
    .locals 3
    .param p1, "busy"    # Z

    .prologue
    .line 939
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->notifyScreenBusy(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 945
    :goto_0
    return-void

    .line 940
    :catch_0
    move-exception v0

    .line 941
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "notifyScreenBusy(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 942
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 943
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "notifyScreenBusy(): NullPointerException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onHandleEventList(IZ)V
    .locals 3
    .param p1, "event"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 991
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->onHandleEventList(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 997
    :goto_0
    return-void

    .line 992
    :catch_0
    move-exception v0

    .line 993
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "onHandleEventList(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 994
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 995
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "onHandleEventList(): NullPointerException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onLanguageEvent(Ljava/lang/String;)V
    .locals 3
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 1001
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->onLanguageEvent(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1007
    :goto_0
    return-void

    .line 1002
    :catch_0
    move-exception v0

    .line 1003
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "sendEventDownload(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1004
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1005
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "sendEventDownload(): NullPointerException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public openIccLogicalChannel(Ljava/lang/String;)I
    .locals 4
    .param p1, "AID"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 258
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->openIccLogicalChannel(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 268
    :goto_0
    return v1

    .line 260
    :catch_0
    move-exception v0

    .line 262
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "openIccLogicalChannel(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 265
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 267
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public openIccLogicalChannelExt(Ljava/lang/String;)I
    .locals 4
    .param p1, "AID"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 275
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->openIccLogicalChannelExt(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 281
    :goto_0
    return v1

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "openIccLogicalChannel(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 279
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 280
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public performEndCall()V
    .locals 4

    .prologue
    .line 2501
    :try_start_0
    const-string v1, "HtcTelephonyManager"

    const-string v2, "performEndCall()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2502
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2509
    :goto_0
    return-void

    .line 2503
    :catch_0
    move-exception v0

    .line 2504
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "performEndCall() remote exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2505
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2506
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v1, "HtcTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "performEndCall() null pointer exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public requestClearLocProcessDB()V
    .locals 2

    .prologue
    .line 2351
    const-string v0, "HtcTelephonyManager"

    const-string v1, "requestClearLocProcessDB is not implemented"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2352
    return-void
.end method

.method public requestClearLocProcessDB_EXT()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2299
    :try_start_0
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestClearLocProcessDB_EXT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2300
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->requesttClearLocProcessDB()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2306
    :goto_0
    return v1

    .line 2301
    :catch_0
    move-exception v0

    .line 2302
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requesttClearLocProcessDB remote exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2304
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2305
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requesttClearLocProcessDB null pointer exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public requestConfigLocProcessDB(IIII)V
    .locals 2
    .param p1, "enable"    # I
    .param p2, "num_neighbor_pilot"    # I
    .param p3, "num_record"    # I
    .param p4, "time"    # I

    .prologue
    .line 2366
    const-string v0, "HtcTelephonyManager"

    const-string v1, "requestConfigLocProcessDB is not implemented"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2367
    return-void
.end method

.method public requestConfigLocProcessDB_EXT(IIII)Z
    .locals 5
    .param p1, "enable"    # I
    .param p2, "num_neighbor_pilot"    # I
    .param p3, "num_record"    # I
    .param p4, "time"    # I

    .prologue
    const/4 v1, 0x0

    .line 2338
    :try_start_0
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestConfigLocProcessDB_EXT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2339
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->requestConfigLocProcessDB(IIII)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2345
    :goto_0
    return v1

    .line 2340
    :catch_0
    move-exception v0

    .line 2341
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestConfigLocProcessDB remote exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2343
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2344
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestConfigLocProcessDB null pointer exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public requestDiagCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 2893
    const/4 v3, 0x0

    .line 2895
    .local v3, "result":Ljava/lang/String;
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2896
    .local v0, "bundleArg1":Landroid/os/Bundle;
    const-string v4, "arg1"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2897
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v4

    const-string v5, "requestDiagCommand"

    invoke-interface {v4, v5, v0}, Lcom/android/internal/telephony/IHtcTelephony;->generalSetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 2898
    .local v1, "bundleResult":Landroid/os/Bundle;
    const-string v4, "requestDiagCommand"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 2902
    .end local v0    # "bundleArg1":Landroid/os/Bundle;
    .end local v1    # "bundleResult":Landroid/os/Bundle;
    :goto_0
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_0

    .line 2903
    const-string v4, "HtcTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "requestDiagCommand: command="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", result="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2904
    :cond_0
    return-object v3

    .line 2899
    :catch_0
    move-exception v2

    .line 2900
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "HtcTelephonyManager"

    const-string v5, "requestDiagCommand exception"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestGetBtid()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 838
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->requestGetBtid()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 847
    :goto_0
    return-object v1

    .line 840
    :catch_0
    move-exception v0

    .line 842
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestGetBtid(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 845
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 846
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestGetBtid(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestGetCurrentLoc()V
    .locals 2

    .prologue
    .line 2361
    const-string v0, "HtcTelephonyManager"

    const-string v1, "requestGetCurrentLoc is not implemented"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2362
    return-void
.end method

.method public requestGetCurrentLoc_EXT()[I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2325
    :try_start_0
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestGetCurrentLoc_EXT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2326
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->requestGetCurrentLoc()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2332
    :goto_0
    return-object v1

    .line 2327
    :catch_0
    move-exception v0

    .line 2328
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestGetCurrentLoc remote exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2330
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2331
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestGetCurrentLoc null pointer exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public requestGetEhrpdDeviceCapability()I
    .locals 6

    .prologue
    const/4 v2, -0x1

    .line 733
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v3

    const-string v4, "requestGetEhrpdDeviceCapability"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->generalGetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 734
    .local v0, "bundleResult":Landroid/os/Bundle;
    const-string v3, "requestGetEhrpdDeviceCapability"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 745
    .end local v0    # "bundleResult":Landroid/os/Bundle;
    :goto_0
    return v2

    .line 737
    :catch_0
    move-exception v1

    .line 739
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v3, "HtcTelephonyManager"

    const-string v4, "requestGetEhrpdDeviceCapability(): RemoteException"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 742
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 744
    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public requestGetEhrpdDisableCapability()I
    .locals 6

    .prologue
    const/4 v2, -0x1

    .line 711
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v3

    const-string v4, "requestGetEhrpdDisableCapability"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->generalGetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 712
    .local v0, "bundleResult":Landroid/os/Bundle;
    const-string v3, "requestGetEhrpdDisableCapability"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 723
    .end local v0    # "bundleResult":Landroid/os/Bundle;
    :goto_0
    return v2

    .line 715
    :catch_0
    move-exception v1

    .line 717
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v3, "HtcTelephonyManager"

    const-string v4, "requestGetEhrpdDisableCapability(): RemoteException"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 720
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 722
    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public requestGetGID1Ext(I)Ljava/lang/String;
    .locals 6
    .param p1, "phoneType"    # I

    .prologue
    const/4 v3, 0x0

    .line 434
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 435
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "arg1"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 436
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v4

    const-string v5, "getGID1Ext"

    invoke-interface {v4, v5, v0}, Lcom/android/internal/telephony/IHtcTelephony;->generalGetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 437
    .local v1, "bundleResult":Landroid/os/Bundle;
    const-string v4, "getGID1Ext"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 443
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "bundleResult":Landroid/os/Bundle;
    :goto_0
    return-object v3

    .line 438
    :catch_0
    move-exception v2

    .line 439
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v4, "HtcTelephonyManager"

    const-string v5, "requestGetGID1Ext(): RemoteException"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 441
    .end local v2    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 442
    .local v2, "ex":Ljava/lang/NullPointerException;
    const-string v4, "HtcTelephonyManager"

    const-string v5, "requestGetGID1Ext(): NullPointerException"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestGetHasISIM()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 790
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->requestGetHasISIM()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 799
    :goto_0
    return v1

    .line 792
    :catch_0
    move-exception v0

    .line 794
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestGetHasISIM(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 797
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 798
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestGetHasISIM(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestGetIsGBASupported()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 806
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->requestGetIsGBASupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 815
    :goto_0
    return v1

    .line 808
    :catch_0
    move-exception v0

    .line 810
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestGetIsGBASupported(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 813
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 814
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestGetIsGBASupported(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestGetKeyLifetime()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 854
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->requestGetKeyLifetime()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 863
    :goto_0
    return-object v1

    .line 856
    :catch_0
    move-exception v0

    .line 858
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestGetKeyLifetime(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 861
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 862
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestGetKeyLifetime(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestGetLTERFBandInfo()[I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2269
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestGetLTERFBandInfo"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2272
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetLTERFBandInfo()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2278
    :goto_0
    return-object v1

    .line 2273
    :catch_0
    move-exception v0

    .line 2274
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestGetLTERFBandInfo remote exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2276
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2277
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestGetLTERFBandInfo null pointer exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public requestGetRand()[B
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 822
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->requestGetRand()[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 831
    :goto_0
    return-object v1

    .line 824
    :catch_0
    move-exception v0

    .line 826
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestGetRand(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 829
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 830
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestGetRand(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestGetSIMType()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1031
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetSIMType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1037
    :goto_0
    return v1

    .line 1032
    :catch_0
    move-exception v0

    .line 1033
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestGetO2SIMType(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1035
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1036
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestGetO2SIMType(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestGetWimaxNai()[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2391
    :try_start_0
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestGetWimaxNai"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2392
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->requestGetWimaxNai()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2398
    :goto_0
    return-object v1

    .line 2393
    :catch_0
    move-exception v0

    .line 2394
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestGetWimaxNai remote exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2396
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2397
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestGetWimaxNai null pointer exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public requestImsAkaAuthentication(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 361
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->requestImsAkaAuthentication(Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 370
    :goto_0
    return-object v1

    .line 363
    :catch_0
    move-exception v0

    .line 365
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestImsAkaAuthentication(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 368
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 369
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestImsAkaAuthentication(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestLtePermanentlyDetached()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 759
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->requestLtePermanentlyDetached()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 763
    :goto_0
    return v1

    .line 760
    :catch_0
    move-exception v0

    .line 761
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 762
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 763
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public requestSetEhrpdDisableCapability(I)V
    .locals 4
    .param p1, "ehrpdmode"    # I

    .prologue
    .line 691
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 692
    .local v0, "bundleResult":Landroid/os/Bundle;
    const-string v2, "requestSetEhrpdDisableCapability"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 693
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    const-string v3, "requestSetEhrpdDisableCapability"

    invoke-interface {v2, v3, v0}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->generalSetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 704
    .end local v0    # "bundleResult":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 696
    :catch_0
    move-exception v1

    .line 698
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestSetEhrpdDisableCapability(): RemoteException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 700
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 702
    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public requestSetFastDormancy(II)V
    .locals 4
    .param p1, "module"    # I
    .param p2, "mode"    # I

    .prologue
    .line 773
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 774
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "module"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 775
    const-string v2, "mode"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 776
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    const-string v3, "requestSetFastDormancy"

    invoke-interface {v2, v3, v0}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->generalSetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 782
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 777
    :catch_0
    move-exception v1

    .line 778
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestSetFastDormancy(): RemoteException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 779
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 780
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestSetFastDormancy(): NullPointerException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestSetLocProcessDB(IIIIII[I)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "rat"    # I
    .param p3, "sid"    # I
    .param p4, "nid"    # I
    .param p5, "base_id"    # I
    .param p6, "pilot_pn"    # I
    .param p7, "neighbor_pilot_list"    # [I

    .prologue
    .line 2356
    const-string v0, "HtcTelephonyManager"

    const-string v1, "requestSetLocProcessDB is not implemented"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2357
    return-void
.end method

.method public requestSetLocProcessDB_EXT(IIIIII[I)Z
    .locals 9
    .param p1, "index"    # I
    .param p2, "rat"    # I
    .param p3, "sid"    # I
    .param p4, "nid"    # I
    .param p5, "base_id"    # I
    .param p6, "pilot_pn"    # I
    .param p7, "neighbor_pilot_list"    # [I

    .prologue
    .line 2312
    :try_start_0
    const-string v0, "HtcTelephonyManager"

    const-string v1, "requestSetLocProcessDB_EXT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2313
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->requestSetLocProcessDB(IIIIII[I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 2319
    :goto_0
    return v0

    .line 2314
    :catch_0
    move-exception v8

    .line 2315
    .local v8, "ex":Landroid/os/RemoteException;
    const-string v0, "HtcTelephonyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestSetLocProcessDB remote exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2316
    const/4 v0, 0x0

    goto :goto_0

    .line 2317
    .end local v8    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v8

    .line 2318
    .local v8, "ex":Ljava/lang/NullPointerException;
    const-string v0, "HtcTelephonyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestSetLocProcessDB null pointer exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2319
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestSetMultiRABTrafficThrottling(II)V
    .locals 4
    .param p1, "module"    # I
    .param p2, "mode"    # I

    .prologue
    .line 493
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 494
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "module"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 495
    const-string v2, "mode"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 496
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    const-string v3, "requestSetMultiRABTrafficThrottling"

    invoke-interface {v2, v3, v0}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->generalSetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 502
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 497
    :catch_0
    move-exception v1

    .line 498
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestSetMultiRABTrafficThrottling(): RemoteException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 499
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 500
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestSetMultiRABTrafficThrottling(): NullPointerException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public resetPdnForSettingsChange2()V
    .locals 3

    .prologue
    .line 663
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephony;->resetPdnForSettingsChange2()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 673
    :goto_0
    return-void

    .line 665
    :catch_0
    move-exception v0

    .line 667
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "resetPdnForSettingsChange2(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 669
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 671
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public sendAT_PushMail(II)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "value"    # I

    .prologue
    .line 561
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->sendAT_PushMail(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 567
    :goto_0
    return-void

    .line 562
    :catch_0
    move-exception v0

    .line 563
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "sendAT_PushMail(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 564
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 565
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public sendAllowedCSIMCommandExt(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 7
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "phoneSlot"    # I

    .prologue
    const/4 v3, 0x0

    .line 2738
    :try_start_0
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_0

    const-string v4, "HtcTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendAllowedCSIMCommandExt phoneSlot = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2739
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2740
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "arg1"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2741
    const-string v4, "arg2"

    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2742
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v4

    const-string v5, "sendAllowedCSIMCommandExt"

    invoke-interface {v4, v5, v0}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->generalSetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 2743
    .local v1, "bundleResult":Landroid/os/Bundle;
    const-string v4, "sendAllowedCSIMCommandExt"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 2749
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "bundleResult":Landroid/os/Bundle;
    :goto_0
    return-object v3

    .line 2744
    :catch_0
    move-exception v2

    .line 2745
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v4, "HtcTelephonyManager"

    const-string v5, "sendAllowedCSIMCommand(): RemoteException"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2747
    .end local v2    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 2748
    .local v2, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public sendMTRejectMessageExt(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "phoneType"    # I

    .prologue
    const/4 v3, 0x0

    .line 2132
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2133
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "arg1"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2134
    const-string v4, "arg2"

    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2135
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v4

    const-string v5, "sendMTRejectMessageExt"

    invoke-interface {v4, v5, v0}, Lcom/android/internal/telephony/IHtcTelephony;->generalGetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 2136
    .local v1, "bundleResult":Landroid/os/Bundle;
    const-string v4, "sendMTRejectMessageExt"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 2140
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "bundleResult":Landroid/os/Bundle;
    :goto_0
    return v3

    .line 2137
    :catch_0
    move-exception v2

    .line 2138
    .local v2, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 2139
    .end local v2    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 2140
    .local v2, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "rand"    # [B
    .param p2, "btid"    # Ljava/lang/String;
    .param p3, "keyLifetime"    # Ljava/lang/String;

    .prologue
    .line 920
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 930
    :goto_0
    return-void

    .line 922
    :catch_0
    move-exception v0

    .line 924
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "setGbaBootstrappingParams(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 926
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 928
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public setGlobalDataRoamingOption(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 473
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->setGlobalDataRoamingOption(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 483
    :goto_0
    return-void

    .line 475
    :catch_0
    move-exception v0

    .line 477
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "setGlobalDataRoamingOption(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 479
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 481
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v1, "HtcTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setGlobalDataRoamingOption null pointer exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setOmaDmEnabled(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    .line 2779
    :try_start_0
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_0

    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setOmaDmEnabled enable = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2780
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2781
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "arg1"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2782
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    const-string v3, "setOmaDmEnabled"

    invoke-interface {v2, v3, v0}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->generalSetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2788
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 2783
    :catch_0
    move-exception v1

    .line 2784
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "setOmaDmEnabled(): RemoteException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2785
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 2786
    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public setOmaDmEnabledExt(ZI)V
    .locals 5
    .param p1, "enable"    # Z
    .param p2, "phoneSlot"    # I

    .prologue
    .line 2792
    :try_start_0
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_0

    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setOmaDmEnabledExt enable = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", phoneSlot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2793
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2794
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "arg1"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2795
    const-string v2, "arg2"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2796
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    const-string v3, "setOmaDmEnabledExt"

    invoke-interface {v2, v3, v0}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->generalSetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2802
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 2797
    :catch_0
    move-exception v1

    .line 2798
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "setOmaDmEnabledExt(): RemoteException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2799
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 2800
    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public setPdnSettings2([Ljava/lang/String;)V
    .locals 3
    .param p1, "profile"    # [Ljava/lang/String;

    .prologue
    .line 649
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephony;->setPdnSettings2([Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 659
    :goto_0
    return-void

    .line 651
    :catch_0
    move-exception v0

    .line 653
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "setPdnSettings2(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 655
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 657
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public setPolicyDataEnabled(Z)Z
    .locals 8
    .param p1, "enable"    # Z

    .prologue
    const/4 v4, 0x0

    .line 2853
    :try_start_0
    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v5, :cond_0

    const-string v5, "HtcTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setPolicyDataEnabled("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2854
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2855
    .local v0, "bundleArg1":Landroid/os/Bundle;
    const-string v5, "arg1"

    invoke-virtual {v0, v5, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2856
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v5

    const-string v6, "setPolicyDataEnabled"

    invoke-interface {v5, v6, v0}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->generalSetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 2857
    .local v1, "bundleResult":Landroid/os/Bundle;
    const-string v5, "setPolicyDataEnabled"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 2858
    .local v3, "result":Z
    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v5, :cond_1

    const-string v5, "HtcTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setPolicyDataEnabled:("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "):"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2865
    .end local v0    # "bundleArg1":Landroid/os/Bundle;
    .end local v1    # "bundleResult":Landroid/os/Bundle;
    .end local v3    # "result":Z
    :cond_1
    :goto_0
    return v3

    .line 2860
    :catch_0
    move-exception v2

    .line 2861
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v5, "HtcTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setPolicyDataEnabled remote exception"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 2862
    goto :goto_0

    .line 2863
    .end local v2    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 2864
    .local v2, "ex":Ljava/lang/NullPointerException;
    const-string v5, "HtcTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setPolicyDataEnabled null pointer exception"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 2865
    goto :goto_0
.end method

.method public setPolicyDataEnabledExt(ZI)Z
    .locals 8
    .param p1, "enable"    # Z
    .param p2, "phonetype"    # I

    .prologue
    const/4 v4, 0x0

    .line 2872
    :try_start_0
    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v5, :cond_0

    const-string v5, "HtcTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setPolicyDataEnabledExt("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2873
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2874
    .local v0, "bundleArg1":Landroid/os/Bundle;
    const-string v5, "arg1"

    invoke-virtual {v0, v5, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2875
    const-string v5, "arg2"

    invoke-virtual {v0, v5, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2876
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v5

    const-string v6, "setPolicyDataEnabledExt"

    invoke-interface {v5, v6, v0}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->generalSetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 2877
    .local v1, "bundleResult":Landroid/os/Bundle;
    const-string v5, "setPolicyDataEnabledExt"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 2878
    .local v3, "result":Z
    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v5, :cond_1

    const-string v5, "HtcTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setPolicyDataEnabledExt:("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "):"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2885
    .end local v0    # "bundleArg1":Landroid/os/Bundle;
    .end local v1    # "bundleResult":Landroid/os/Bundle;
    .end local v3    # "result":Z
    :cond_1
    :goto_0
    return v3

    .line 2880
    :catch_0
    move-exception v2

    .line 2881
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v5, "HtcTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setPolicyDataEnabledExt remote exception"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 2882
    goto :goto_0

    .line 2883
    .end local v2    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 2884
    .local v2, "ex":Ljava/lang/NullPointerException;
    const-string v5, "HtcTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setPolicyDataEnabledExt null pointer exception"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 2885
    goto :goto_0
.end method

.method public setTDLabModeExt(ILandroid/os/Message;I)V
    .locals 5
    .param p1, "mode"    # I
    .param p2, "response"    # Landroid/os/Message;
    .param p3, "phoneType"    # I

    .prologue
    .line 2146
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2147
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "arg1"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2148
    const-string v2, "arg2"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2149
    const-string v2, "arg3"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2150
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    const-string v3, "setTDLabModeExt"

    invoke-interface {v2, v3, v0}, Lcom/android/internal/telephony/IHtcTelephony;->generalGetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2156
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 2151
    :catch_0
    move-exception v1

    .line 2152
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setTDLabModeExt remote exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2153
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 2154
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setTDLabModeExt null pointer exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setUserDataEnabled(Z)Z
    .locals 8
    .param p1, "enable"    # Z

    .prologue
    const/4 v4, 0x0

    .line 2811
    :try_start_0
    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v5, :cond_0

    const-string v5, "HtcTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setUserDataEnabled("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2812
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2813
    .local v0, "bundleArg1":Landroid/os/Bundle;
    const-string v5, "arg1"

    invoke-virtual {v0, v5, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2814
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v5

    const-string v6, "setUserDataEnabled"

    invoke-interface {v5, v6, v0}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->generalSetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 2815
    .local v1, "bundleResult":Landroid/os/Bundle;
    const-string v5, "setUserDataEnabled"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 2816
    .local v3, "result":Z
    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v5, :cond_1

    const-string v5, "HtcTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setUserDataEnabled:("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "):"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2823
    .end local v0    # "bundleArg1":Landroid/os/Bundle;
    .end local v1    # "bundleResult":Landroid/os/Bundle;
    .end local v3    # "result":Z
    :cond_1
    :goto_0
    return v3

    .line 2818
    :catch_0
    move-exception v2

    .line 2819
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v5, "HtcTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setUserDataEnabled remote exception"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 2820
    goto :goto_0

    .line 2821
    .end local v2    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 2822
    .local v2, "ex":Ljava/lang/NullPointerException;
    const-string v5, "HtcTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setUserDataEnabled null pointer exception"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 2823
    goto :goto_0
.end method

.method public setUserDataEnabledExt(ZI)Z
    .locals 8
    .param p1, "enable"    # Z
    .param p2, "phonetype"    # I

    .prologue
    const/4 v4, 0x0

    .line 2830
    :try_start_0
    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v5, :cond_0

    const-string v5, "HtcTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setUserDataEnabledExt("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2831
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2832
    .local v0, "bundleArg1":Landroid/os/Bundle;
    const-string v5, "arg1"

    invoke-virtual {v0, v5, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2833
    const-string v5, "arg2"

    invoke-virtual {v0, v5, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2834
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v5

    const-string v6, "setUserDataEnabledExt"

    invoke-interface {v5, v6, v0}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->generalSetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 2835
    .local v1, "bundleResult":Landroid/os/Bundle;
    const-string v5, "setUserDataEnabledExt"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 2836
    .local v3, "result":Z
    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v5, :cond_1

    const-string v5, "HtcTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setUserDataEnabledExt:("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "):"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2843
    .end local v0    # "bundleArg1":Landroid/os/Bundle;
    .end local v1    # "bundleResult":Landroid/os/Bundle;
    .end local v3    # "result":Z
    :cond_1
    :goto_0
    return v3

    .line 2838
    :catch_0
    move-exception v2

    .line 2839
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v5, "HtcTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setUserDataEnabledExt remote exception"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 2840
    goto :goto_0

    .line 2841
    .end local v2    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 2842
    .local v2, "ex":Ljava/lang/NullPointerException;
    const-string v5, "HtcTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setUserDataEnabledExt null pointer exception"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 2843
    goto :goto_0
.end method

.method public showIncallScreen()V
    .locals 1

    .prologue
    .line 1059
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IHtcTelephony;->showIncallScreen()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1063
    :goto_0
    return-void

    .line 1061
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1060
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public transmitIccBasicChannel(IIIIILjava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "cla"    # I
    .param p2, "command"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "p3"    # I
    .param p6, "data"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 223
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->transmitIccBasicChannel(IIIIILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 233
    :goto_0
    return-object v0

    .line 225
    :catch_0
    move-exception v7

    .line 227
    .local v7, "ex":Landroid/os/RemoteException;
    const-string v0, "HtcTelephonyManager"

    const-string v1, "transmitIccBasicChannel(): RemoteException"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v8

    .line 228
    goto :goto_0

    .line 230
    .end local v7    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v7

    .line 232
    .local v7, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v7}, Ljava/lang/NullPointerException;->printStackTrace()V

    move-object v0, v8

    .line 233
    goto :goto_0
.end method

.method public transmitIccLogicalChannel(IIIIIILjava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "cla"    # I
    .param p2, "command"    # I
    .param p3, "channel"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;

    .prologue
    .line 241
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->transmitIccLogicalChannel(IIIIIILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 251
    :goto_0
    return-object v0

    .line 243
    :catch_0
    move-exception v8

    .line 245
    .local v8, "ex":Landroid/os/RemoteException;
    const-string v0, "HtcTelephonyManager"

    const-string v1, "transmitIccLogicalChannel(): RemoteException"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 246
    const/4 v0, 0x0

    goto :goto_0

    .line 248
    .end local v8    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v8

    .line 250
    .local v8, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v8}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 251
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public transmitIccSimIO(IIIIILjava/lang/String;)[B
    .locals 8
    .param p1, "fileID"    # I
    .param p2, "command"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "p3"    # I
    .param p6, "filePath"    # Ljava/lang/String;

    .prologue
    .line 344
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->transmitIccSimIO(IIIIILjava/lang/String;)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 349
    :goto_0
    return-object v0

    .line 346
    :catch_0
    move-exception v7

    .line 348
    .local v7, "ex":Landroid/os/RemoteException;
    const-string v0, "HtcTelephonyManager"

    const-string v1, "openIccLogicalChannel(): RemoteException"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 349
    const/4 v0, 0x0

    goto :goto_0
.end method
