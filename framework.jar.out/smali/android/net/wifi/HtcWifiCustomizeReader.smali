.class public Landroid/net/wifi/HtcWifiCustomizeReader;
.super Ljava/lang/Object;
.source "HtcWifiCustomizeReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/HtcWifiCustomizeReader$1;,
        Landroid/net/wifi/HtcWifiCustomizeReader$Feature;
    }
.end annotation


# static fields
.field private static final CUS_BOOL:I = 0x2

.field private static final CUS_NUM:I = 0x1

.field private static final CUS_STR:I = 0x0

.field public static final EXTRA_SENSE_VERSION_SENSE_7_0_GP:Ljava/lang/String; = "7.0_gp"

.field public static final SENSE_VERSION_SENSE_7_0:Ljava/lang/String; = "7.0"

.field private static final SKU_HTC_GENERIC:I = 0x0

.field private static final SKU_KDDI_JP:I = 0x1f

.field private static final SKU_SPRINT_WWE:I = 0xa

.field private static final SKU_VERIZON_WWE:I = 0xd

.field private static final TAG:Ljava/lang/String; = "HtcWifiCustomizeReader"

.field public static final WLAN_HOTSPOT_REMIND_DEFAULT:I = 0x1

.field public static final WLAN_HOTSPOT_REMIND_SPRINT:I = 0x3

.field public static final WLAN_HOTSPOT_REMIND_VZW:I = 0x2

.field public static final WLAN_PRECONFIG_TYPE_CMCC:I = 0x3

.field public static final WLAN_PRECONFIG_TYPE_CT:I = 0x2

.field public static final WLAN_PRECONFIG_TYPE_DEFAULT:I = 0x1

.field public static final WLAN_PRECONFIG_TYPE_EU:I = 0x6

.field public static final WLAN_PRECONFIG_TYPE_TELCEL:I = 0x8

.field public static final WLAN_PRECONFIG_TYPE_TMI:I = 0x5

.field public static final WLAN_PRECONFIG_TYPE_TMONL:I = 0x7

.field public static final WLAN_PRECONFIG_TYPE_VODAFONE:I = 0x4

.field public static final WLAN_SOLUTION_BROADCOM:I = 0x1

.field public static final WLAN_SOLUTION_QUALCOMM:I = 0x2

.field public static final WLAN_STATUS_DEFAULT:I = 0x1

.field public static final WLAN_STATUS_VZW:I = 0x2

.field private static mCustValues:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static sAuthenticationErrorRetry:Ljava/lang/String; = null

.field private static final sCusSkuID:Ljava/lang/String; = "sku_id"

.field private static sCustDnsAddressForWanDetection:Ljava/lang/String;

.field private static sCustDockWifi:Ljava/lang/String;

.field private static sCustDualBand:Ljava/lang/String;

.field private static sCustExtraSenseVersion:Ljava/lang/String;

.field private static sCustHasIMEI:Ljava/lang/String;

.field private static sCustHasMDN:Ljava/lang/String;

.field private static sCustHotspotRemind:Ljava/lang/String;

.field private static sCustMHSEnable:Ljava/lang/String;

.field private static sCustPreconfigType:Ljava/lang/String;

.field private static sCustReaderName:Ljava/lang/String;

.field private static sCustReaderNameNetwork:Ljava/lang/String;

.field private static sCustReaderNameSystem:Ljava/lang/String;

.field private static sCustRegion:Ljava/lang/String;

.field private static sCustSenseVersion:Ljava/lang/String;

.field private static sCustWlanAggregation:Ljava/lang/String;

.field private static sCustWlanAssociateManual:Ljava/lang/String;

.field private static sCustWlanDetecionType:Ljava/lang/String;

.field private static sCustWlanLowerOpenPriority:Ljava/lang/String;

.field private static sCustWlanSolution:Ljava/lang/String;

.field private static sCustWlanStatus:Ljava/lang/String;

.field private static sHotspotEncryption:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 58
    const-string v4, "Android_Wifi"

    sput-object v4, Landroid/net/wifi/HtcWifiCustomizeReader;->sCustReaderName:Ljava/lang/String;

    .line 59
    const-string v4, "Android_Networking"

    sput-object v4, Landroid/net/wifi/HtcWifiCustomizeReader;->sCustReaderNameNetwork:Ljava/lang/String;

    .line 60
    const-string v4, "System"

    sput-object v4, Landroid/net/wifi/HtcWifiCustomizeReader;->sCustReaderNameSystem:Ljava/lang/String;

    .line 63
    const-string/jumbo v4, "sense_version"

    sput-object v4, Landroid/net/wifi/HtcWifiCustomizeReader;->sCustSenseVersion:Ljava/lang/String;

    .line 64
    const-string v4, "extra_sense_version"

    sput-object v4, Landroid/net/wifi/HtcWifiCustomizeReader;->sCustExtraSenseVersion:Ljava/lang/String;

    .line 65
    const-string/jumbo v4, "wlan_preconfig"

    sput-object v4, Landroid/net/wifi/HtcWifiCustomizeReader;->sCustPreconfigType:Ljava/lang/String;

    .line 67
    const-string/jumbo v4, "support_associate_manual"

    sput-object v4, Landroid/net/wifi/HtcWifiCustomizeReader;->sCustWlanAssociateManual:Ljava/lang/String;

    .line 68
    const-string/jumbo v4, "wlan_wan_detection_type"

    sput-object v4, Landroid/net/wifi/HtcWifiCustomizeReader;->sCustWlanDetecionType:Ljava/lang/String;

    .line 72
    const-string/jumbo v4, "wlan_hotspot_has_imei"

    sput-object v4, Landroid/net/wifi/HtcWifiCustomizeReader;->sCustHasIMEI:Ljava/lang/String;

    .line 73
    const-string/jumbo v4, "wlan_hotspot_has_mdn"

    sput-object v4, Landroid/net/wifi/HtcWifiCustomizeReader;->sCustHasMDN:Ljava/lang/String;

    .line 75
    const-string/jumbo v4, "wlan_hotspot_password_encryption"

    sput-object v4, Landroid/net/wifi/HtcWifiCustomizeReader;->sHotspotEncryption:Ljava/lang/String;

    .line 77
    const-string/jumbo v4, "wlan_wifi_status"

    sput-object v4, Landroid/net/wifi/HtcWifiCustomizeReader;->sCustWlanStatus:Ljava/lang/String;

    .line 80
    const-string/jumbo v4, "tethering_guard_support"

    sput-object v4, Landroid/net/wifi/HtcWifiCustomizeReader;->sCustMHSEnable:Ljava/lang/String;

    .line 81
    const-string/jumbo v4, "wlan_hotspot_remind"

    sput-object v4, Landroid/net/wifi/HtcWifiCustomizeReader;->sCustHotspotRemind:Ljava/lang/String;

    .line 91
    const-string/jumbo v4, "wlan_dns_address_for_wandetection"

    sput-object v4, Landroid/net/wifi/HtcWifiCustomizeReader;->sCustDnsAddressForWanDetection:Ljava/lang/String;

    .line 95
    const-string/jumbo v4, "wlan_authentication_error_retry"

    sput-object v4, Landroid/net/wifi/HtcWifiCustomizeReader;->sAuthenticationErrorRetry:Ljava/lang/String;

    .line 99
    const-string/jumbo v4, "wlan_security_openlast"

    sput-object v4, Landroid/net/wifi/HtcWifiCustomizeReader;->sCustWlanLowerOpenPriority:Ljava/lang/String;

    .line 102
    const-string/jumbo v4, "support_dockwifi"

    sput-object v4, Landroid/net/wifi/HtcWifiCustomizeReader;->sCustDockWifi:Ljava/lang/String;

    .line 106
    const-string/jumbo v4, "wlan_wifi_aggregation"

    sput-object v4, Landroid/net/wifi/HtcWifiCustomizeReader;->sCustWlanAggregation:Ljava/lang/String;

    .line 109
    const-string/jumbo v4, "support_dualband"

    sput-object v4, Landroid/net/wifi/HtcWifiCustomizeReader;->sCustDualBand:Ljava/lang/String;

    .line 112
    const-string/jumbo v4, "region"

    sput-object v4, Landroid/net/wifi/HtcWifiCustomizeReader;->sCustRegion:Ljava/lang/String;

    .line 115
    const-string/jumbo v4, "wlan_solution"

    sput-object v4, Landroid/net/wifi/HtcWifiCustomizeReader;->sCustWlanSolution:Ljava/lang/String;

    .line 120
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Landroid/net/wifi/HtcWifiCustomizeReader;->mCustValues:Ljava/util/HashMap;

    .line 174
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v0

    .line 175
    .local v0, "custManager":Lcom/htc/customization/HtcCustomizationManager;
    sget-object v4, Landroid/net/wifi/HtcWifiCustomizeReader;->sCustReaderNameSystem:Ljava/lang/String;

    invoke-virtual {v0, v4, v6, v7}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v3

    .line 176
    .local v3, "custSystemReader":Lcom/htc/customization/HtcCustomizationReader;
    sget-object v4, Landroid/net/wifi/HtcWifiCustomizeReader;->sCustReaderNameNetwork:Ljava/lang/String;

    invoke-virtual {v0, v4, v6, v7}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    .line 177
    .local v1, "custNetworkReader":Lcom/htc/customization/HtcCustomizationReader;
    sget-object v4, Landroid/net/wifi/HtcWifiCustomizeReader;->sCustReaderName:Ljava/lang/String;

    invoke-virtual {v0, v4, v6, v7}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v2

    .line 180
    .local v2, "custReader":Lcom/htc/customization/HtcCustomizationReader;
    sget-object v4, Landroid/net/wifi/HtcWifiCustomizeReader;->sCustSenseVersion:Ljava/lang/String;

    invoke-static {v2, v4, v7, v5}, Landroid/net/wifi/HtcWifiCustomizeReader;->initCustValue(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;ILjava/lang/Object;)V

    .line 181
    sget-object v4, Landroid/net/wifi/HtcWifiCustomizeReader;->sCustExtraSenseVersion:Ljava/lang/String;

    invoke-static {v2, v4, v7, v5}, Landroid/net/wifi/HtcWifiCustomizeReader;->initCustValue(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;ILjava/lang/Object;)V

    .line 184
    sget-object v4, Landroid/net/wifi/HtcWifiCustomizeReader;->sCustPreconfigType:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v4, v6, v5}, Landroid/net/wifi/HtcWifiCustomizeReader;->initCustValue(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;ILjava/lang/Object;)V

    .line 187
    sget-object v4, Landroid/net/wifi/HtcWifiCustomizeReader;->sCustWlanAssociateManual:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v2, v4, v8, v5}, Landroid/net/wifi/HtcWifiCustomizeReader;->initCustValue(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;ILjava/lang/Object;)V

    .line 188
    sget-object v4, Landroid/net/wifi/HtcWifiCustomizeReader;->sCustWlanDetecionType:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v4, v6, v5}, Landroid/net/wifi/HtcWifiCustomizeReader;->initCustValue(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;ILjava/lang/Object;)V

    .line 192
    sget-object v4, Landroid/net/wifi/HtcWifiCustomizeReader;->sCustDnsAddressForWanDetection:Ljava/lang/String;

    const-string/jumbo v5, "www.google.com"

    invoke-static {v2, v4, v7, v5}, Landroid/net/wifi/HtcWifiCustomizeReader;->initCustValue(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;ILjava/lang/Object;)V

    .line 196
    sget-object v4, Landroid/net/wifi/HtcWifiCustomizeReader;->sCustHasIMEI:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v2, v4, v8, v5}, Landroid/net/wifi/HtcWifiCustomizeReader;->initCustValue(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;ILjava/lang/Object;)V

    .line 197
    sget-object v4, Landroid/net/wifi/HtcWifiCustomizeReader;->sCustHasMDN:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v2, v4, v8, v5}, Landroid/net/wifi/HtcWifiCustomizeReader;->initCustValue(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;ILjava/lang/Object;)V

    .line 200
    sget-object v4, Landroid/net/wifi/HtcWifiCustomizeReader;->sHotspotEncryption:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v2, v4, v8, v5}, Landroid/net/wifi/HtcWifiCustomizeReader;->initCustValue(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;ILjava/lang/Object;)V

    .line 203
    sget-object v4, Landroid/net/wifi/HtcWifiCustomizeReader;->sCustWlanStatus:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v4, v6, v5}, Landroid/net/wifi/HtcWifiCustomizeReader;->initCustValue(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;ILjava/lang/Object;)V

    .line 206
    sget-object v4, Landroid/net/wifi/HtcWifiCustomizeReader;->sCustMHSEnable:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v1, v4, v8, v5}, Landroid/net/wifi/HtcWifiCustomizeReader;->initCustValue(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;ILjava/lang/Object;)V

    .line 209
    sget-object v4, Landroid/net/wifi/HtcWifiCustomizeReader;->sCustHotspotRemind:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v4, v6, v5}, Landroid/net/wifi/HtcWifiCustomizeReader;->initCustValue(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;ILjava/lang/Object;)V

    .line 212
    const-string/jumbo v4, "sku_id"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v6, v5}, Landroid/net/wifi/HtcWifiCustomizeReader;->initCustValue(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;ILjava/lang/Object;)V

    .line 215
    sget-object v4, Landroid/net/wifi/HtcWifiCustomizeReader;->sAuthenticationErrorRetry:Ljava/lang/String;

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v4, v6, v5}, Landroid/net/wifi/HtcWifiCustomizeReader;->initCustValue(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;ILjava/lang/Object;)V

    .line 218
    sget-object v4, Landroid/net/wifi/HtcWifiCustomizeReader;->sCustWlanLowerOpenPriority:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v2, v4, v8, v5}, Landroid/net/wifi/HtcWifiCustomizeReader;->initCustValue(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;ILjava/lang/Object;)V

    .line 221
    sget-object v4, Landroid/net/wifi/HtcWifiCustomizeReader;->sCustDockWifi:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v2, v4, v8, v5}, Landroid/net/wifi/HtcWifiCustomizeReader;->initCustValue(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;ILjava/lang/Object;)V

    .line 224
    sget-object v4, Landroid/net/wifi/HtcWifiCustomizeReader;->sCustWlanAggregation:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v2, v4, v8, v5}, Landroid/net/wifi/HtcWifiCustomizeReader;->initCustValue(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;ILjava/lang/Object;)V

    .line 227
    sget-object v4, Landroid/net/wifi/HtcWifiCustomizeReader;->sCustDualBand:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v2, v4, v8, v5}, Landroid/net/wifi/HtcWifiCustomizeReader;->initCustValue(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;ILjava/lang/Object;)V

    .line 229
    const-string/jumbo v5, "ro.product.wifi.dualband"

    invoke-static {}, Landroid/net/wifi/HtcWifiCustomizeReader;->isDualBandSupported()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "true"

    :goto_0
    invoke-static {v5, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    sget-object v4, Landroid/net/wifi/HtcWifiCustomizeReader;->sCustRegion:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v6, v5}, Landroid/net/wifi/HtcWifiCustomizeReader;->initCustValue(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;ILjava/lang/Object;)V

    .line 236
    sget-object v4, Landroid/net/wifi/HtcWifiCustomizeReader;->sCustWlanSolution:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v4, v6, v5}, Landroid/net/wifi/HtcWifiCustomizeReader;->initCustValue(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;ILjava/lang/Object;)V

    .line 238
    return-void

    .line 229
    :cond_0
    const-string v4, "false"

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    return-void
.end method

.method public static dumpCustomizationInfo()V
    .locals 5

    .prologue
    .line 241
    const-string v2, "HtcWifiCustomizeReader"

    const-string v3, "HTC Wifi Customization Info:"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    sget-object v2, Landroid/net/wifi/HtcWifiCustomizeReader;->mCustValues:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 243
    .local v1, "key":Ljava/lang/Object;
    const-string v3, "HtcWifiCustomizeReader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Landroid/net/wifi/HtcWifiCustomizeReader;->mCustValues:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 245
    .end local v1    # "key":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public static getAuthenticationErrorRetry()I
    .locals 2

    .prologue
    .line 361
    sget-object v0, Landroid/net/wifi/HtcWifiCustomizeReader;->mCustValues:Ljava/util/HashMap;

    sget-object v1, Landroid/net/wifi/HtcWifiCustomizeReader;->sAuthenticationErrorRetry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getDnsAddressForWanDetection()Ljava/lang/String;
    .locals 2

    .prologue
    .line 355
    sget-object v0, Landroid/net/wifi/HtcWifiCustomizeReader;->mCustValues:Ljava/util/HashMap;

    sget-object v1, Landroid/net/wifi/HtcWifiCustomizeReader;->sCustDnsAddressForWanDetection:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getExtraSenseVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 252
    sget-object v0, Landroid/net/wifi/HtcWifiCustomizeReader;->mCustValues:Ljava/util/HashMap;

    sget-object v1, Landroid/net/wifi/HtcWifiCustomizeReader;->sCustExtraSenseVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getHotspotRemindType()I
    .locals 2

    .prologue
    .line 329
    sget-object v0, Landroid/net/wifi/HtcWifiCustomizeReader;->mCustValues:Ljava/util/HashMap;

    sget-object v1, Landroid/net/wifi/HtcWifiCustomizeReader;->sCustHotspotRemind:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getPreconfigType()I
    .locals 2

    .prologue
    .line 287
    sget-object v0, Landroid/net/wifi/HtcWifiCustomizeReader;->mCustValues:Ljava/util/HashMap;

    sget-object v1, Landroid/net/wifi/HtcWifiCustomizeReader;->sCustPreconfigType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getSenseVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 248
    sget-object v0, Landroid/net/wifi/HtcWifiCustomizeReader;->mCustValues:Ljava/util/HashMap;

    sget-object v1, Landroid/net/wifi/HtcWifiCustomizeReader;->sCustSenseVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getWifiStatusType()I
    .locals 2

    .prologue
    .line 319
    sget-object v0, Landroid/net/wifi/HtcWifiCustomizeReader;->mCustValues:Ljava/util/HashMap;

    sget-object v1, Landroid/net/wifi/HtcWifiCustomizeReader;->sCustWlanStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getWlanDetectionType()I
    .locals 2

    .prologue
    .line 295
    sget-object v0, Landroid/net/wifi/HtcWifiCustomizeReader;->mCustValues:Ljava/util/HashMap;

    sget-object v1, Landroid/net/wifi/HtcWifiCustomizeReader;->sCustWlanDetecionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getWlanSolution()I
    .locals 2

    .prologue
    .line 388
    sget-object v0, Landroid/net/wifi/HtcWifiCustomizeReader;->mCustValues:Ljava/util/HashMap;

    sget-object v1, Landroid/net/wifi/HtcWifiCustomizeReader;->sCustWlanSolution:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private static initCustValue(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 4
    .param p0, "reader"    # Lcom/htc/customization/HtcCustomizationReader;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "def"    # Ljava/lang/Object;

    .prologue
    .line 153
    packed-switch p2, :pswitch_data_0

    .line 164
    .end local p3    # "def":Ljava/lang/Object;
    :goto_0
    :try_start_0
    const-string v1, "HtcWifiCustomizeReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/net/wifi/HtcWifiCustomizeReader;->mCustValues:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :goto_1
    return-void

    .line 155
    .restart local p3    # "def":Ljava/lang/Object;
    :pswitch_0
    sget-object v1, Landroid/net/wifi/HtcWifiCustomizeReader;->mCustValues:Ljava/util/HashMap;

    check-cast p3, Ljava/lang/Boolean;

    .end local p3    # "def":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {p0, p1, v2}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 166
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HtcWifiCustomizeReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot read customization \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' value"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 158
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local p3    # "def":Ljava/lang/Object;
    :pswitch_1
    :try_start_1
    sget-object v1, Landroid/net/wifi/HtcWifiCustomizeReader;->mCustValues:Ljava/util/HashMap;

    check-cast p3, Ljava/lang/Integer;

    .end local p3    # "def":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p0, p1, v2}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 161
    .restart local p3    # "def":Ljava/lang/Object;
    :pswitch_2
    sget-object v1, Landroid/net/wifi/HtcWifiCustomizeReader;->mCustValues:Ljava/util/HashMap;

    check-cast p3, Ljava/lang/String;

    .end local p3    # "def":Ljava/lang/Object;
    invoke-interface {p0, p1, p3}, Lcom/htc/customization/HtcCustomizationReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 153
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isCHSSku()Z
    .locals 3

    .prologue
    .line 381
    sget-object v1, Landroid/net/wifi/HtcWifiCustomizeReader;->mCustValues:Ljava/util/HashMap;

    sget-object v2, Landroid/net/wifi/HtcWifiCustomizeReader;->sCustRegion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 382
    .local v0, "region":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isDualBandSupported()Z
    .locals 2

    .prologue
    .line 375
    sget-object v0, Landroid/net/wifi/HtcWifiCustomizeReader;->mCustValues:Ljava/util/HashMap;

    sget-object v1, Landroid/net/wifi/HtcWifiCustomizeReader;->sCustDualBand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isEnableImeiPassword()Z
    .locals 2

    .prologue
    .line 301
    sget-object v0, Landroid/net/wifi/HtcWifiCustomizeReader;->mCustValues:Ljava/util/HashMap;

    sget-object v1, Landroid/net/wifi/HtcWifiCustomizeReader;->sCustHasIMEI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isEnableImeiSsid()Z
    .locals 2

    .prologue
    .line 305
    sget-object v0, Landroid/net/wifi/HtcWifiCustomizeReader;->mCustValues:Ljava/util/HashMap;

    sget-object v1, Landroid/net/wifi/HtcWifiCustomizeReader;->sCustHasIMEI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isEnableMdnPassword()Z
    .locals 2

    .prologue
    .line 309
    sget-object v0, Landroid/net/wifi/HtcWifiCustomizeReader;->mCustValues:Ljava/util/HashMap;

    sget-object v1, Landroid/net/wifi/HtcWifiCustomizeReader;->sCustHasMDN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isMHSEnabled()Z
    .locals 2

    .prologue
    .line 324
    sget-object v0, Landroid/net/wifi/HtcWifiCustomizeReader;->mCustValues:Ljava/util/HashMap;

    sget-object v1, Landroid/net/wifi/HtcWifiCustomizeReader;->sCustMHSEnable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isPreconfigFor(I)Z
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 291
    sget-object v0, Landroid/net/wifi/HtcWifiCustomizeReader;->mCustValues:Ljava/util/HashMap;

    sget-object v1, Landroid/net/wifi/HtcWifiCustomizeReader;->sCustPreconfigType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportDockWifi()Z
    .locals 2

    .prologue
    .line 367
    sget-object v0, Landroid/net/wifi/HtcWifiCustomizeReader;->mCustValues:Ljava/util/HashMap;

    sget-object v1, Landroid/net/wifi/HtcWifiCustomizeReader;->sCustDockWifi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isSupportHotspotEncryption()Z
    .locals 2

    .prologue
    .line 314
    sget-object v0, Landroid/net/wifi/HtcWifiCustomizeReader;->mCustValues:Ljava/util/HashMap;

    sget-object v1, Landroid/net/wifi/HtcWifiCustomizeReader;->sHotspotEncryption:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static support(Landroid/net/wifi/HtcWifiCustomizeReader$Feature;)Z
    .locals 3
    .param p0, "f"    # Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

    .prologue
    .line 257
    const/4 v0, 0x0

    .line 258
    .local v0, "ret":Z
    sget-object v1, Landroid/net/wifi/HtcWifiCustomizeReader$1;->$SwitchMap$android$net$wifi$HtcWifiCustomizeReader$Feature:[I

    invoke-virtual {p0}, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 280
    invoke-static {}, Landroid/net/wifi/HtcWifiCustomizeReader;->supportHtcSense()Z

    move-result v0

    .line 283
    :goto_0
    return v0

    .line 261
    :pswitch_0
    sget-object v1, Landroid/net/wifi/HtcWifiCustomizeReader;->mCustValues:Ljava/util/HashMap;

    sget-object v2, Landroid/net/wifi/HtcWifiCustomizeReader;->sCustWlanAggregation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 262
    goto :goto_0

    .line 265
    :pswitch_1
    sget-object v1, Landroid/net/wifi/HtcWifiCustomizeReader;->mCustValues:Ljava/util/HashMap;

    sget-object v2, Landroid/net/wifi/HtcWifiCustomizeReader;->sCustWlanLowerOpenPriority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 266
    goto :goto_0

    .line 268
    :pswitch_2
    invoke-static {}, Landroid/net/wifi/HtcWifiCustomizeReader;->supportHtcFullSense()Z

    move-result v0

    .line 269
    goto :goto_0

    .line 272
    :pswitch_3
    sget-object v1, Landroid/net/wifi/HtcWifiCustomizeReader;->mCustValues:Ljava/util/HashMap;

    sget-object v2, Landroid/net/wifi/HtcWifiCustomizeReader;->sCustWlanAssociateManual:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 273
    goto :goto_0

    .line 276
    :pswitch_4
    invoke-static {}, Landroid/net/wifi/HtcWifiCustomizeReader;->supportLanSetting()Z

    move-result v0

    .line 277
    goto :goto_0

    .line 258
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static supportHtcFullSense()Z
    .locals 2

    .prologue
    .line 347
    invoke-static {}, Landroid/net/wifi/HtcWifiCustomizeReader;->getSenseVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/net/wifi/HtcWifiCustomizeReader;->getExtraSenseVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 348
    const/4 v0, 0x1

    .line 349
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportHtcSense()Z
    .locals 1

    .prologue
    .line 340
    invoke-static {}, Landroid/net/wifi/HtcWifiCustomizeReader;->getSenseVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 341
    const/4 v0, 0x1

    .line 342
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportLanSetting()Z
    .locals 3

    .prologue
    .line 334
    sget-object v1, Landroid/net/wifi/HtcWifiCustomizeReader;->mCustValues:Ljava/util/HashMap;

    const-string/jumbo v2, "sku_id"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 335
    .local v0, "skuid":I
    const/16 v1, 0x1f

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
