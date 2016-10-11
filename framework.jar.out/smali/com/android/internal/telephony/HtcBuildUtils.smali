.class public Lcom/android/internal/telephony/HtcBuildUtils;
.super Ljava/lang/Object;
.source "HtcBuildUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;
    }
.end annotation


# static fields
.field public static final CDMA_EHRPD_CONFIG:Z

.field private static CUSTOMIZE_LTE_CONFIG:Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum; = null

.field private static final DBG:Z = true

.field private static final DBG_DETAIL:Z = false

.field private static final DISPLAY_ICCID_LEN:I = 0x8

.field private static final DISPLAY_LINE1_NUMBER_LEN:I = 0x4

.field private static final DISPLAY_LINE1_NUMBER_LEN2:I = 0x8

.field private static final DISPLAY_MCCMNC_LEN:I = 0x6

.field public static final DetectVMbyCarrierIdFromNV:Z

.field public static final FEATURE_CT_CUSTOMIZATION:Z

.field public static GENERIC_WPHONE_CONFIG:Z = false

.field private static GLOBAL_ROAMING_CONFIG:Z = false

.field private static HTC_SENSE_VERSION:F = 0.0f

.field public static final HTC_SENSE_VERSION_1_5:F = 1.5f

.field public static final HTC_SENSE_VERSION_1_6:F = 1.6f

.field public static final HTC_SENSE_VERSION_2_0:F = 2.0f

.field public static final HTC_SENSE_VERSION_2_1:F = 2.1f

.field public static final HTC_SENSE_VERSION_3_0:F = 3.0f

.field public static final HTC_SENSE_VERSION_3_5:F = 3.5f

.field public static final HTC_SENSE_VERSION_5_0:F = 5.0f

.field public static final HTC_SENSE_VERSION_6_0:F = 6.0f

.field public static final HTC_SENSE_VERSION_7_0:F = 7.0f

.field public static final HUTCHISON_TEL:Ljava/lang/String; = "45404"

.field public static final IS_CHNIA:Z

.field public static final IS_CMCC:Z

.field private static final IS_DEBUG:Z

.field public static KDDI_CONFIG:Z = false

.field static final M7_WITH_LTE:Z

.field private static final PROPERTY_CDMA_HOME_OPERATOR_NUMERIC:Ljava/lang/String; = "ro.cdma.home.operator.numeric"

.field private static final PROP_KEY_BUILD_PROJECT:Ljava/lang/String; = "ro.build.project"

.field private static final PROP_KEY_PHONE_FUNCTION:Ljava/lang/String; = "ro.phone.function"

.field private static final PROP_KEY_SPCS_ROAMING_GUARD_ENABLED:Ljava/lang/String; = "ro.chameleon.MenuDisplay.enable"

.field private static final PROP_KEY_WORLD_PHONE_UI_ENABLED:Ljava/lang/String; = "persist.radio.worldphone"

.field private static QCT_8960_INTERFACE:Z = false

.field public static QCT_MM_CONFIG:Z = false

.field private static ROAMING_ENHANCE_CONFIG:Z = false

.field public static SIMTYPE_CONFIG:Z = false

.field private static final SPRINT_CHAMELEON_NO_BRAND_CARRIER_ID:Ljava/lang/String; = "310000"

.field private static final SPRINT_CHAMELEON_NO_BRAND_CARRIER_ID_OLD:Ljava/lang/String; = "000000"

.field private static final SPRINT_CHAMELEON_NO_BRAND_OEM_NAME:Ljava/lang/String; = "HTC"

.field public static SPRINT_CONFIG:Z = false

.field private static final SPRINT_CUSTOMER_SERVICE_NUMBER:Ljava/lang/String; = "+18176984199"

.field private static final SPRINT_CUSTOMER_SERVICE_SHORT_CODE:Ljava/lang/String; = "*2"

.field private static final SPRINT_CUSTOMER_SERVICE_SHORT_CODES:[Ljava/lang/String;

.field public static SPRINT_WPHONE_CONFIG:Z = false

.field public static final SSCOMMAND_OVER_UT:Z

.field public static final SUPPORT_CT_4G_REQUIREMENT:Z

.field private static SUPPORT_CW:Z = false

.field public static final SUPPORT_VT:Z = false

.field private static final TAG:Ljava/lang/String; = "HtcBuildUtils"

.field public static VERIZON_MECHA_CONFIG:Z = false

.field public static VERIZON_WPHONE_CONFIG:Z = false

.field private static final hiddenText:Ljava/lang/String; = "********************************"

.field private static mLTECapability:Z

.field private static final sBStartSpecialDialString:Ljava/util/ArrayList;

.field private static final sCarrierId:Ljava/lang/String;

.field private static sCheckedQCTWifiIMSFlag:Z

.field private static sCheckedWifiIMSFlag:Z

.field private static final sEntelSpecialDialString:Ljava/util/ArrayList;

.field private static final sIsNoBrandCarrier:Z

.field private static final sIusacelMxSpaDialString:Ljava/util/ArrayList;

.field private static sPatternATTDialString:Ljava/util/regex/Pattern;

.field private static sSupportQCTWifiIMS:Z

.field private static sSupportTMOWifiIMS:Z


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/16 v10, 0x1e

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 78
    sput-boolean v6, Lcom/android/internal/telephony/HtcBuildUtils;->sCheckedWifiIMSFlag:Z

    .line 79
    sput-boolean v6, Lcom/android/internal/telephony/HtcBuildUtils;->sSupportTMOWifiIMS:Z

    .line 80
    sput-boolean v6, Lcom/android/internal/telephony/HtcBuildUtils;->sCheckedQCTWifiIMSFlag:Z

    .line 81
    sput-boolean v6, Lcom/android/internal/telephony/HtcBuildUtils;->sSupportQCTWifiIMS:Z

    .line 113
    sget v5, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v8, 0x1a

    if-eq v5, v8, :cond_0

    sget v5, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    if-ne v5, v10, :cond_8

    :cond_0
    move v5, v7

    :goto_0
    sput-boolean v5, Lcom/android/internal/telephony/HtcBuildUtils;->IS_CMCC:Z

    .line 128
    sget-boolean v5, Lcom/android/internal/telephony/HtcBuildUtils;->IS_CMCC:Z

    if-nez v5, :cond_1

    sget v5, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v8, 0x19

    if-eq v5, v8, :cond_1

    sget v5, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    if-ne v5, v10, :cond_9

    :cond_1
    move v5, v7

    :goto_1
    sput-boolean v5, Lcom/android/internal/telephony/HtcBuildUtils;->IS_CHNIA:Z

    .line 135
    sput-boolean v6, Lcom/android/internal/telephony/HtcBuildUtils;->mLTECapability:Z

    .line 140
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getSystemReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v5

    const-string v8, "sense_version"

    const-string v9, "5.0"

    invoke-static {v5, v8, v9}, Lcom/android/internal/telephony/ACCCustomizationReader;->readString(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    sput v5, Lcom/android/internal/telephony/HtcBuildUtils;->HTC_SENSE_VERSION:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .local v1, "e":Ljava/lang/NumberFormatException;
    :goto_2
    const-string v5, "ro.build.project"

    const/4 v8, 0x0

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "buildproject":Ljava/lang/String;
    if-eqz v0, :cond_a

    .end local v1    # "e":Ljava/lang/NumberFormatException;
    const-string v5, "M7_UL"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    move v5, v7

    :goto_3
    sput-boolean v5, Lcom/android/internal/telephony/HtcBuildUtils;->M7_WITH_LTE:Z

    .line 407
    invoke-static {v7}, Lcom/android/internal/telephony/HtcBuildUtils;->getRATByHtcTelephonyCapability(Z)I

    move-result v5

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->BUILT_RAT_MAIN_FLAG_LTE_BOUND_CDMA()I

    move-result v8

    and-int/2addr v5, v8

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->BUILT_RAT_MAIN_FLAG_LTE_BOUND_CDMA()I

    move-result v8

    if-ne v5, v8, :cond_b

    move v5, v7

    :goto_4
    sput-boolean v5, Lcom/android/internal/telephony/HtcBuildUtils;->CDMA_EHRPD_CONFIG:Z

    .line 650
    const-string v5, "ro.telephony.debug"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Lcom/android/internal/telephony/HtcBuildUtils;->IS_DEBUG:Z

    .line 685
    sget v5, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v8, 0x1b

    if-eq v5, v8, :cond_2

    sget v5, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v8, 0x1c

    if-eq v5, v8, :cond_2

    sget v5, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    if-ne v5, v10, :cond_c

    :cond_2
    move v5, v7

    :goto_5
    sput-boolean v5, Lcom/android/internal/telephony/HtcBuildUtils;->FEATURE_CT_CUSTOMIZATION:Z

    .line 703
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG()Z

    move-result v5

    sput-boolean v5, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG:Z

    .line 708
    sget v5, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v8, 0xa

    if-eq v5, v8, :cond_3

    sget v5, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v8, 0x62

    if-eq v5, v8, :cond_3

    sget v5, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v8, 0x55

    if-ne v5, v8, :cond_d

    :cond_3
    move v5, v7

    :goto_6
    sput-boolean v5, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_CONFIG:Z

    .line 719
    sput-boolean v6, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_MECHA_CONFIG:Z

    .line 724
    sput-boolean v6, Lcom/android/internal/telephony/HtcBuildUtils;->SUPPORT_CW:Z

    .line 725
    sput-boolean v6, Lcom/android/internal/telephony/HtcBuildUtils;->GLOBAL_ROAMING_CONFIG:Z

    .line 726
    sput-boolean v6, Lcom/android/internal/telephony/HtcBuildUtils;->ROAMING_ENHANCE_CONFIG:Z

    .line 727
    sget-object v5, Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;->UNKNOWN:Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    sput-object v5, Lcom/android/internal/telephony/HtcBuildUtils;->CUSTOMIZE_LTE_CONFIG:Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    .line 728
    sput-boolean v6, Lcom/android/internal/telephony/HtcBuildUtils;->QCT_MM_CONFIG:Z

    .line 729
    sput-boolean v6, Lcom/android/internal/telephony/HtcBuildUtils;->QCT_8960_INTERFACE:Z

    .line 733
    :try_start_1
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v2

    .line 734
    .local v2, "mHCmanager":Lcom/htc/customization/HtcCustomizationManager;
    const-string v5, "Android_Ril"

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v2, v5, v8, v9}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v3

    .line 738
    .local v3, "mHCreader":Lcom/htc/customization/HtcCustomizationReader;
    const-string v5, "support_cw"

    const/4 v8, 0x0

    invoke-interface {v3, v5, v8}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Lcom/android/internal/telephony/HtcBuildUtils;->SUPPORT_CW:Z

    .line 739
    const-string v5, "global_roaming_config"

    const/4 v8, 0x0

    invoke-interface {v3, v5, v8}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Lcom/android/internal/telephony/HtcBuildUtils;->GLOBAL_ROAMING_CONFIG:Z

    .line 740
    const-string v5, "roaming_enhance_config"

    const/4 v8, 0x0

    invoke-interface {v3, v5, v8}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Lcom/android/internal/telephony/HtcBuildUtils;->ROAMING_ENHANCE_CONFIG:Z

    .line 741
    const-string v5, "cdma_lte_mm_config"

    const/4 v8, 0x0

    invoke-interface {v3, v5, v8}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Lcom/android/internal/telephony/HtcBuildUtils;->QCT_MM_CONFIG:Z

    .line 742
    const-string v5, "customize_cdma_lte_profile"

    const/4 v8, 0x0

    invoke-interface {v3, v5, v8}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v4

    .line 743
    .local v4, "ret":I
    const-string v5, "qct_8960_interface"

    const/4 v8, 0x0

    invoke-interface {v3, v5, v8}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Lcom/android/internal/telephony/HtcBuildUtils;->QCT_8960_INTERFACE:Z

    .line 744
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;->values()[Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    move-result-object v5

    array-length v5, v5

    if-ge v4, v5, :cond_4

    .line 746
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;->values()[Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    move-result-object v5

    aget-object v5, v5, v4

    sput-object v5, Lcom/android/internal/telephony/HtcBuildUtils;->CUSTOMIZE_LTE_CONFIG:Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 758
    .end local v2    # "mHCmanager":Lcom/htc/customization/HtcCustomizationManager;
    .end local v3    # "mHCreader":Lcom/htc/customization/HtcCustomizationReader;
    .end local v4    # "ret":I
    :cond_4
    :goto_7
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v5

    sput-boolean v5, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG:Z

    .line 765
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_WPHONE_CONFIG()Z

    move-result v5

    sput-boolean v5, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_WPHONE_CONFIG:Z

    .line 770
    sget v5, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v8, 0x1f

    if-ne v5, v8, :cond_e

    move v5, v7

    :goto_8
    sput-boolean v5, Lcom/android/internal/telephony/HtcBuildUtils;->KDDI_CONFIG:Z

    .line 958
    sput-boolean v6, Lcom/android/internal/telephony/HtcBuildUtils;->SIMTYPE_CONFIG:Z

    .line 1073
    const-string v5, "ro.cdma.home.operator.numeric"

    const-string v8, "310000"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/internal/telephony/HtcBuildUtils;->sCarrierId:Ljava/lang/String;

    .line 1076
    sget-object v5, Lcom/android/internal/telephony/HtcBuildUtils;->sCarrierId:Ljava/lang/String;

    const-string v8, "310000"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    sget-object v5, Lcom/android/internal/telephony/HtcBuildUtils;->sCarrierId:Ljava/lang/String;

    const-string v8, "000000"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    :cond_5
    move v5, v7

    :goto_9
    sput-boolean v5, Lcom/android/internal/telephony/HtcBuildUtils;->sIsNoBrandCarrier:Z

    .line 1095
    new-array v5, v7, [Ljava/lang/String;

    const-string v8, "*2"

    aput-object v8, v5, v6

    sput-object v5, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_CUSTOMER_SERVICE_SHORT_CODES:[Ljava/lang/String;

    .line 1131
    sget v5, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v8, 0xc

    if-eq v5, v8, :cond_6

    sget v5, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v8, 0x71

    if-eq v5, v8, :cond_6

    sget v5, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v8, 0x72

    if-eq v5, v8, :cond_6

    sget v5, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v8, 0x16

    if-ne v5, v8, :cond_10

    :cond_6
    move v5, v7

    :goto_a
    sput-boolean v5, Lcom/android/internal/telephony/HtcBuildUtils;->DetectVMbyCarrierIdFromNV:Z

    .line 1212
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getPhoneReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v5

    const-string v8, "voLteEnabled"

    invoke-static {v5, v8, v6}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isATTSku()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isCMCCSku()Z

    move-result v5

    if-eqz v5, :cond_11

    :cond_7
    move v5, v7

    :goto_b
    sput-boolean v5, Lcom/android/internal/telephony/HtcBuildUtils;->SSCOMMAND_OVER_UT:Z

    .line 1243
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isCTSku()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getSystemReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v5

    const-string v8, "support_lte"

    invoke-static {v5, v8, v6}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_12

    move v5, v7

    :goto_c
    sput-boolean v5, Lcom/android/internal/telephony/HtcBuildUtils;->SUPPORT_CT_4G_REQUIREMENT:Z

    .line 2090
    const-string v5, "(\\*|#)(\\d{1,5})"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    sput-object v5, Lcom/android/internal/telephony/HtcBuildUtils;->sPatternATTDialString:Ljava/util/regex/Pattern;

    .line 2091
    new-instance v5, Ljava/util/ArrayList;

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    const-string v9, "*1"

    aput-object v9, v8, v6

    const-string v9, "*2"

    aput-object v9, v8, v7

    const-string v9, "*7"

    aput-object v9, v8, v11

    const-string v9, "*9"

    aput-object v9, v8, v12

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v5, Lcom/android/internal/telephony/HtcBuildUtils;->sEntelSpecialDialString:Ljava/util/ArrayList;

    .line 2093
    new-instance v5, Ljava/util/ArrayList;

    const/16 v8, 0xd

    new-array v8, v8, [Ljava/lang/String;

    const-string v9, "*1"

    aput-object v9, v8, v6

    const-string v9, "*2"

    aput-object v9, v8, v7

    const-string v9, "*3"

    aput-object v9, v8, v11

    const-string v9, "*4"

    aput-object v9, v8, v12

    const/4 v9, 0x4

    const-string v10, "*5"

    aput-object v10, v8, v9

    const/4 v9, 0x5

    const-string v10, "*6"

    aput-object v10, v8, v9

    const/4 v9, 0x6

    const-string v10, "*7"

    aput-object v10, v8, v9

    const/4 v9, 0x7

    const-string v10, "*8"

    aput-object v10, v8, v9

    const/16 v9, 0x8

    const-string v10, "*9"

    aput-object v10, v8, v9

    const/16 v9, 0x9

    const-string v10, "*20"

    aput-object v10, v8, v9

    const/16 v9, 0xa

    const-string v10, "*21"

    aput-object v10, v8, v9

    const/16 v9, 0xb

    const-string v10, "*171"

    aput-object v10, v8, v9

    const/16 v9, 0xc

    const-string v10, "*611"

    aput-object v10, v8, v9

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v5, Lcom/android/internal/telephony/HtcBuildUtils;->sBStartSpecialDialString:Ljava/util/ArrayList;

    .line 2095
    new-instance v5, Ljava/util/ArrayList;

    new-array v7, v7, [Ljava/lang/String;

    const-string v8, "#9"

    aput-object v8, v7, v6

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v5, Lcom/android/internal/telephony/HtcBuildUtils;->sIusacelMxSpaDialString:Ljava/util/ArrayList;

    return-void

    .end local v0    # "buildproject":Ljava/lang/String;
    :cond_8
    move v5, v6

    .line 113
    goto/16 :goto_0

    :cond_9
    move v5, v6

    .line 128
    goto/16 :goto_1

    .line 142
    :catch_0
    move-exception v1

    .line 143
    .restart local v1    # "e":Ljava/lang/NumberFormatException;
    const/high16 v5, 0x3fc00000    # 1.5f

    sput v5, Lcom/android/internal/telephony/HtcBuildUtils;->HTC_SENSE_VERSION:F

    goto/16 :goto_2

    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .restart local v0    # "buildproject":Ljava/lang/String;
    :cond_a
    move v5, v6

    .line 147
    goto/16 :goto_3

    :cond_b
    move v5, v6

    .line 407
    goto/16 :goto_4

    :cond_c
    move v5, v6

    .line 685
    goto/16 :goto_5

    :cond_d
    move v5, v6

    .line 708
    goto/16 :goto_6

    .line 748
    :catch_1
    move-exception v1

    .line 749
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "HtcBuildUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cannot read customization value: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_e
    move v5, v6

    .line 770
    goto/16 :goto_8

    :cond_f
    move v5, v6

    .line 1076
    goto/16 :goto_9

    :cond_10
    move v5, v6

    .line 1131
    goto/16 :goto_a

    :cond_11
    move v5, v6

    .line 1212
    goto/16 :goto_b

    :cond_12
    move v5, v6

    .line 1243
    goto/16 :goto_c
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 440
    return-void
.end method

.method public static BUILT_RAT_MAIN_FLAG_LTE_BOUND_CDMA()I
    .locals 5

    .prologue
    .line 1174
    :try_start_0
    const-string v3, "com.android.internal.telephony.HtcTelephonyCapability"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1175
    .local v0, "cls":Ljava/lang/Class;
    const-string v3, "BUILT_RAT_MAIN_FLAG_LTE_BOUND_CDMA"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1176
    .local v2, "fld":Ljava/lang/reflect/Field;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1179
    .end local v2    # "fld":Ljava/lang/reflect/Field;
    :goto_0
    return v3

    .line 1177
    :catch_0
    move-exception v1

    .line 1178
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "HtcBuildUtils"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static CKT_LTE_CONFIG()Z
    .locals 2

    .prologue
    .line 634
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CUSTOMIZE_LTE_CONFIG()Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;->CKT:Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static CMCC_CONFIG()Z
    .locals 1

    .prologue
    .line 587
    const/4 v0, 0x0

    return v0
.end method

.method public static CSPIRE_LTE_CONFIG()Z
    .locals 2

    .prologue
    .line 555
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CUSTOMIZE_LTE_CONFIG()Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;->CSPIRE:Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static CT_CONFIG()Z
    .locals 1

    .prologue
    .line 610
    const/4 v0, 0x0

    return v0
.end method

.method public static CT_WORDING_CONFIG()Z
    .locals 2

    .prologue
    .line 189
    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x4b

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static CUSTOMIZE_LTE_CONFIG()Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;
    .locals 1

    .prologue
    .line 489
    sget-object v0, Lcom/android/internal/telephony/HtcBuildUtils;->CUSTOMIZE_LTE_CONFIG:Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    return-object v0
.end method

.method public static GENERIC_VoIP_CONFIG()Z
    .locals 1

    .prologue
    .line 618
    const/4 v0, 0x1

    return v0
.end method

.method public static GENERIC_WPHONE_CONFIG()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 525
    const/high16 v1, -0x80000000

    sget v2, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_PHONE_CAPABILITIES:I

    invoke-static {v1, v2}, Lcom/android/internal/telephony/HtcTelephonyCapability;->isCapabilitiesEnabled(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "persist.radio.worldphone"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-ne v1, v0, :cond_0

    .line 534
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final IS_DEBUG()Z
    .locals 1

    .prologue
    .line 658
    sget-boolean v0, Lcom/android/internal/telephony/HtcBuildUtils;->IS_DEBUG:Z

    return v0
.end method

.method public static final IS_VM_OMADM()Z
    .locals 2

    .prologue
    .line 663
    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x62

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static KDDI_LTE_CONFIG()Z
    .locals 2

    .prologue
    .line 626
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CUSTOMIZE_LTE_CONFIG()Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;->KDDI:Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static KDDI_WORDING_CONFIG()Z
    .locals 2

    .prologue
    .line 178
    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static LRA_LTE_CONFIG()Z
    .locals 2

    .prologue
    .line 499
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CUSTOMIZE_LTE_CONFIG()Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;->LRA:Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static LTE_CONFIG()Z
    .locals 2

    .prologue
    .line 383
    const/4 v0, 0x1

    sget v1, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_RAT_CAPABILITIES:I

    invoke-static {v0, v1}, Lcom/android/internal/telephony/HtcTelephonyCapability;->isCapabilitiesEnabled(II)Z

    move-result v0

    return v0
.end method

.method public static MPCS_LTE_CONFIG()Z
    .locals 2

    .prologue
    .line 642
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CUSTOMIZE_LTE_CONFIG()Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;->MPCS:Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static OM_LTE_CONFIG()Z
    .locals 2

    .prologue
    .line 494
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CUSTOMIZE_LTE_CONFIG()Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;->OPEN_MOBILE:Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static QCT_8960_Device_CONFIG()Z
    .locals 1

    .prologue
    .line 428
    sget-boolean v0, Lcom/android/internal/telephony/HtcBuildUtils;->QCT_8960_INTERFACE:Z

    return v0
.end method

.method public static QMI_CONFIG()Z
    .locals 2

    .prologue
    .line 389
    const/4 v0, 0x2

    sget v1, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_RIL_CAPABILITIES:I

    invoke-static {v0, v1}, Lcom/android/internal/telephony/HtcTelephonyCapability;->isCapabilitiesEnabled(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static SPRINT_LTE_CONFIG()Z
    .locals 2

    .prologue
    .line 517
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CUSTOMIZE_LTE_CONFIG()Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;->SPRINT:Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static SPRINT_LTE_WPHONE_CONFIG()Z
    .locals 1

    .prologue
    .line 548
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_LTE_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static SPRINT_ROAMING_ENHANCE_CONFIG()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 594
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isSupportSprintChameleon()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 595
    sget-boolean v2, Lcom/android/internal/telephony/HtcBuildUtils;->ROAMING_ENHANCE_CONFIG:Z

    if-eqz v2, :cond_0

    const-string v2, "ro.chameleon.MenuDisplay.enable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 597
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 595
    goto :goto_0

    .line 597
    :cond_1
    sget-boolean v0, Lcom/android/internal/telephony/HtcBuildUtils;->ROAMING_ENHANCE_CONFIG:Z

    goto :goto_0
.end method

.method public static SPRINT_WPHONE_CONFIG()Z
    .locals 1

    .prologue
    .line 538
    sget-boolean v0, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_CONFIG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    const/4 v0, 0x1

    .line 541
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static STE_CONFIG()Z
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public static SupportProvisionCheck()Z
    .locals 1

    .prologue
    .line 924
    const/4 v0, 0x0

    return v0
.end method

.method public static VERIZON_CONFIG()Z
    .locals 1

    .prologue
    .line 399
    const/4 v0, 0x0

    return v0
.end method

.method public static VERIZON_LTE_CONFIG()Z
    .locals 2

    .prologue
    .line 506
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CUSTOMIZE_LTE_CONFIG()Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;->VERIZON:Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CUSTOMIZE_LTE_CONFIG()Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;->LRA:Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static VERIZON_LTE_WPHONE_CONFIG()Z
    .locals 1

    .prologue
    .line 435
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_LTE_CONFIG()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->LRA_LTE_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static VERIZON_WPHONE_CONFIG()Z
    .locals 2

    .prologue
    .line 415
    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    const/4 v0, 0x1

    .line 419
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final VZW_GLOBAL_ROAMING_CONFIG()Z
    .locals 1

    .prologue
    .line 680
    sget-boolean v0, Lcom/android/internal/telephony/HtcBuildUtils;->GLOBAL_ROAMING_CONFIG:Z

    return v0
.end method

.method public static WPHONE_UI_CONFIG()Z
    .locals 1

    .prologue
    .line 570
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 571
    const/4 v0, 0x1

    .line 572
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final appendfilePath()Z
    .locals 1

    .prologue
    .line 674
    const/4 v0, 0x0

    return v0
.end method

.method public static avoidAutoChangeAudioPath()Z
    .locals 3

    .prologue
    .line 1474
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    const-string v1, "avoid_auto_change_audio_path"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static cdmaSetAudioModeBeforeRadioOperation()Z
    .locals 1

    .prologue
    .line 948
    const/4 v0, 0x0

    return v0
.end method

.method public static cdmaWMIfromTraditionalWmInterface()Z
    .locals 1

    .prologue
    .line 954
    const/4 v0, 0x0

    return v0
.end method

.method public static checkSprintChameleonNoBrandedOperator(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1080
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isSupportSprintChameleon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1081
    sget-boolean v0, Lcom/android/internal/telephony/HtcBuildUtils;->sIsNoBrandCarrier:Z

    if-eqz v0, :cond_1

    .line 1082
    const-string v0, "HtcBuildUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "return HTC for no brand Chameleon device, carrier id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/HtcBuildUtils;->sCarrierId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    const-string p0, "HTC"

    .line 1089
    :cond_0
    :goto_0
    return-object p0

    .line 1085
    :cond_1
    const-string v0, "HtcBuildUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "branded Chameleon device, carrier id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/HtcBuildUtils;->sCarrierId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static final convertToCustomerServiceNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 1113
    move-object v0, p0

    .line 1115
    .local v0, "serviceNumber":Ljava/lang/String;
    const-string v1, "*2"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1116
    const-string v0, "+18176984199"

    .line 1117
    const-string v1, "HtcBuildUtils"

    const-string v2, "convert to customer service number"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    :cond_0
    return-object v0
.end method

.method public static customizeCellLocationInfo()Z
    .locals 1

    .prologue
    .line 1631
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isSprintGroupSku()Z

    move-result v0

    return v0
.end method

.method public static final displayIccId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 798
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lcom/android/internal/telephony/HtcBuildUtils;->displayLimitedNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final displayLimitedNumber(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "maxDisplayed"    # I

    .prologue
    .line 807
    const/4 v0, 0x0

    .line 808
    .local v0, "displayText":Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, p1, :cond_0

    .line 809
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, p1

    const-string v3, "********************************"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 810
    .local v1, "hiddenLength":I
    const-string v2, "********************************"

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 815
    .end local v1    # "hiddenLength":I
    :goto_0
    return-object v0

    .line 813
    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method private static final displayLimitedNumberBackMask(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "maxDisplayed"    # I

    .prologue
    const/4 v4, 0x0

    .line 843
    const/4 v0, 0x0

    .line 844
    .local v0, "displayText":Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, p1, :cond_0

    .line 845
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, p1

    const-string v3, "********************************"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 846
    .local v1, "hiddenLength":I
    invoke-virtual {p0, v4, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "********************************"

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 851
    .end local v1    # "hiddenLength":I
    :goto_0
    return-object v0

    .line 849
    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public static final displayPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 784
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/android/internal/telephony/HtcBuildUtils;->displayLimitedNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final displayPhoneNumber2(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 790
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lcom/android/internal/telephony/HtcBuildUtils;->displayLimitedNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final displayPhoneNumber2BackMask(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 829
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lcom/android/internal/telephony/HtcBuildUtils;->displayLimitedNumberBackMask(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final displayPhoneNumber3BackMask(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 834
    const/4 v0, 0x6

    invoke-static {p0, v0}, Lcom/android/internal/telephony/HtcBuildUtils;->displayLimitedNumberBackMask(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final displayPhoneNumberBackMask(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 824
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/android/internal/telephony/HtcBuildUtils;->displayLimitedNumberBackMask(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static dualGSMPhoneEnable()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1287
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isDualGGPhone()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isDualCGGGSwitchPhone()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "gsm.current.cg.mode"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1295
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static dualPhoneEnable()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1274
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isDualCGPhone()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isDualGCPhone()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isDualCGGGSwitchPhone()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "gsm.current.cg.mode"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-ne v1, v0, :cond_1

    .line 1282
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static enableQCTWifiIms()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 320
    sget-boolean v3, Lcom/android/internal/telephony/HtcBuildUtils;->sCheckedQCTWifiIMSFlag:Z

    if-eqz v3, :cond_0

    .line 321
    sget-boolean v2, Lcom/android/internal/telephony/HtcBuildUtils;->sSupportQCTWifiIMS:Z

    .line 341
    .local v0, "manager":Lcom/htc/customization/HtcCustomizationManager;
    :goto_0
    return v2

    .line 323
    .end local v0    # "manager":Lcom/htc/customization/HtcCustomizationManager;
    :cond_0
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v0

    .line 324
    .restart local v0    # "manager":Lcom/htc/customization/HtcCustomizationManager;
    if-eqz v0, :cond_2

    .line 325
    const-string v3, "TMOUS_IMS"

    invoke-virtual {v0, v3, v4, v2}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    .line 328
    .local v1, "reader":Lcom/htc/customization/HtcCustomizationReader;
    if-eqz v1, :cond_1

    .line 329
    const-string v3, "enable_new_wifi_ims"

    invoke-interface {v1, v3, v2}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/telephony/HtcBuildUtils;->sSupportQCTWifiIMS:Z

    .line 340
    sput-boolean v4, Lcom/android/internal/telephony/HtcBuildUtils;->sCheckedQCTWifiIMSFlag:Z

    .line 341
    sget-boolean v2, Lcom/android/internal/telephony/HtcBuildUtils;->sSupportQCTWifiIMS:Z

    goto :goto_0

    .line 332
    :cond_1
    const-string v3, "HtcBuildUtils"

    const-string v4, "enableQCTWifiIms, reader is null."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 337
    .end local v1    # "reader":Lcom/htc/customization/HtcCustomizationReader;
    :cond_2
    const-string v3, "HtcBuildUtils"

    const-string v4, "enableQCTWifiIms, manager is null."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static final enableRUIMCard()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 373
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getSystemReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    const-string v2, "radio_type"

    invoke-static {v1, v2, v0}, Lcom/android/internal/telephony/ACCCustomizationReader;->readInteger(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getSystemReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    const-string v2, "radio_type"

    invoke-static {v1, v2, v0}, Lcom/android/internal/telephony/ACCCustomizationReader;->readInteger(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 375
    :cond_0
    const/4 v0, 0x1

    .line 377
    :cond_1
    return v0
.end method

.method public static enableSeparateSingnalBar()Z
    .locals 2

    .prologue
    .line 929
    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x4b

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->dualPhoneEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 935
    :cond_0
    const/4 v0, 0x1

    .line 937
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static enableSimAuthentication()Z
    .locals 2

    .prologue
    .line 158
    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x2e

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x30

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x31

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x32

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final enableSkypeCall()Z
    .locals 1

    .prologue
    .line 366
    const/4 v0, 0x0

    return v0
.end method

.method public static enableTmoWifiIms()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 293
    sget-boolean v3, Lcom/android/internal/telephony/HtcBuildUtils;->sCheckedWifiIMSFlag:Z

    if-eqz v3, :cond_0

    .line 294
    sget-boolean v2, Lcom/android/internal/telephony/HtcBuildUtils;->sSupportTMOWifiIMS:Z

    .line 314
    .local v0, "manager":Lcom/htc/customization/HtcCustomizationManager;
    :goto_0
    return v2

    .line 296
    .end local v0    # "manager":Lcom/htc/customization/HtcCustomizationManager;
    :cond_0
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v0

    .line 297
    .restart local v0    # "manager":Lcom/htc/customization/HtcCustomizationManager;
    if-eqz v0, :cond_2

    .line 298
    const-string v3, "TMOUS_IMS"

    invoke-virtual {v0, v3, v4, v2}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    .line 301
    .local v1, "reader":Lcom/htc/customization/HtcCustomizationReader;
    if-eqz v1, :cond_1

    .line 302
    const-string v3, "enable_wifi_ims"

    invoke-interface {v1, v3, v2}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/telephony/HtcBuildUtils;->sSupportTMOWifiIMS:Z

    .line 313
    sput-boolean v4, Lcom/android/internal/telephony/HtcBuildUtils;->sCheckedWifiIMSFlag:Z

    .line 314
    sget-boolean v2, Lcom/android/internal/telephony/HtcBuildUtils;->sSupportTMOWifiIMS:Z

    goto :goto_0

    .line 305
    :cond_1
    const-string v3, "HtcBuildUtils"

    const-string v4, "enableTmoWifiIms, reader is null."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 310
    .end local v1    # "reader":Lcom/htc/customization/HtcCustomizationReader;
    :cond_2
    const-string v3, "HtcBuildUtils"

    const-string v4, "enableTmoWifiIms, manager is null."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static enableVoRAIms()Z
    .locals 1

    .prologue
    .line 288
    const/4 v0, 0x0

    return v0
.end method

.method public static getCaBandwith()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1461
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    const-string v1, "customer_ca_bandwidth"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/ACCCustomizationReader;->readString(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCdmaSignalBarLevel()I
    .locals 3

    .prologue
    .line 1766
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    const-string v1, "signal_icon_level_cdma"

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/ACCCustomizationReader;->readInteger(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static final getCustomerServiceNumberShortCodes()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 1104
    const/4 v0, 0x0

    .line 1105
    .local v0, "codes":[Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportCustomerServiceShortCode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1106
    sget-object v0, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_CUSTOMER_SERVICE_SHORT_CODES:[Ljava/lang/String;

    .line 1109
    :cond_0
    return-object v0
.end method

.method public static getEriCallGuardType()I
    .locals 3

    .prologue
    .line 1615
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    const-string v1, "cdma_eri_call_guard"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/ACCCustomizationReader;->readInteger(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getGsmSignalBarLevel()I
    .locals 3

    .prologue
    .line 1761
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    const-string v1, "signal_icon_level_gsm"

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/ACCCustomizationReader;->readInteger(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getHtcSenseVersion()F
    .locals 1

    .prologue
    .line 153
    sget v0, Lcom/android/internal/telephony/HtcBuildUtils;->HTC_SENSE_VERSION:F

    return v0
.end method

.method public static getRATByHtcTelephonyCapability(Z)I
    .locals 7
    .param p0, "isDbg"    # Z

    .prologue
    .line 1160
    const/4 v0, 0x0

    .line 1162
    .local v0, "capability":I
    :try_start_0
    const-string v4, "com.android.internal.telephony.HtcTelephonyCapability"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1163
    .local v1, "cls":Ljava/lang/Class;
    const-string v4, "BUILT_RAT_CAPABILITIES"

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 1164
    .local v3, "fld":Ljava/lang/reflect/Field;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1165
    if-eqz p0, :cond_0

    const-string v4, "HtcBuildUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getRATByHtcTelephonyCapability:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1169
    .end local v1    # "cls":Ljava/lang/Class;
    .end local v3    # "fld":Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    return v0

    .line 1166
    :catch_0
    move-exception v2

    .line 1167
    .local v2, "e":Ljava/lang/Exception;
    if-eqz p0, :cond_0

    const-string v4, "HtcBuildUtils"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isAsiaCHSOpenChannel()Z
    .locals 2

    .prologue
    .line 204
    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x19

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCWDataConnectionSupported()Z
    .locals 1

    .prologue
    .line 912
    sget-boolean v0, Lcom/android/internal/telephony/HtcBuildUtils;->SUPPORT_CW:Z

    return v0
.end method

.method public static isCWServiceClassNone()Z
    .locals 2

    .prologue
    .line 2465
    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x44

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCustomerSpecificDialString(Ljava/lang/String;Z)Z
    .locals 3
    .param p0, "dialString"    # Ljava/lang/String;
    .param p1, "isInCall"    # Z

    .prologue
    .line 2099
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isATTSku()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2100
    if-nez p1, :cond_0

    const-string v1, "0"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "00"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2101
    :cond_1
    const/4 v1, 0x1

    .line 2128
    :goto_0
    return v1

    .line 2104
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/HtcBuildUtils;->sPatternATTDialString:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2105
    .local v0, "ATTString":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    goto :goto_0

    .line 2112
    .end local v0    # "ATTString":Ljava/util/regex/Matcher;
    :cond_3
    sget v1, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v2, 0x13

    if-ne v1, v2, :cond_4

    .line 2113
    sget-object v1, Lcom/android/internal/telephony/HtcBuildUtils;->sEntelSpecialDialString:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 2117
    :cond_4
    sget v1, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_5

    sget v1, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v2, 0xf

    if-eq v1, v2, :cond_5

    sget v1, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v2, 0x11

    if-ne v1, v2, :cond_6

    .line 2120
    :cond_5
    sget-object v1, Lcom/android/internal/telephony/HtcBuildUtils;->sBStartSpecialDialString:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 2124
    :cond_6
    sget v1, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v2, 0x16

    if-ne v1, v2, :cond_7

    .line 2125
    sget-object v1, Lcom/android/internal/telephony/HtcBuildUtils;->sIusacelMxSpaDialString:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 2128
    :cond_7
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static final isDualCGGGSwitchPhone()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1310
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

.method private static isDualCGPhone()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1302
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

.method private static isDualGCPhone()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1306
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

    .line 1298
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

.method public static isFollowSprintSpec()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1126
    const/4 v0, 0x0

    return v0
.end method

.method public static isForceUpdateVoiceMailNumberAfterSimChangedSupported()Z
    .locals 2

    .prologue
    .line 1046
    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x71

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x72

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isGetMccMncSpnFromCSIMSupported()Z
    .locals 2

    .prologue
    .line 963
    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x71

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x21

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x49

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x23

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x19

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isIccCardProxyEnabled()Z
    .locals 3

    .prologue
    .line 878
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    const-string v1, "sim_card_proxy"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isNFCEnabled(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1260
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->dualPhoneEnable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->dualGSMPhoneEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1263
    :cond_0
    const/4 v0, 0x0

    .line 1266
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isPcoEnabled()Z
    .locals 3

    .prologue
    .line 1341
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    const-string v1, "featurePco"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isPhoneFeatureEnabled()Z
    .locals 1

    .prologue
    .line 213
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isTabletPhoneEnabled()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isQCTwithSingleActive()Z
    .locals 3

    .prologue
    .line 1189
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    const-string v1, "is_qct_with_single_active"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isRemovedMFPath()Z
    .locals 1

    .prologue
    .line 874
    const/4 v0, 0x0

    return v0
.end method

.method public static isSSAlwaysOverUT()Z
    .locals 1

    .prologue
    .line 1335
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isVoLTEEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isCMCCSku()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isATTSku()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSSOverUTwithSIM()Z
    .locals 2

    .prologue
    .line 2471
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isVoLTEEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSingleModemDSDAdevice()Z
    .locals 3

    .prologue
    .line 1232
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getSystemReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    const-string v1, "single_modem_dsda_device"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static final isSpecialNonEMS()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 700
    const/4 v0, 0x0

    return v0
.end method

.method public static isSpirntUiccProject()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1495
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v3

    const-string v4, "build_account_main_flag"

    invoke-static {v3, v4, v2}, Lcom/android/internal/telephony/ACCCustomizationReader;->readInteger(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    move v0, v1

    .line 1497
    .local v0, "isUiccProject":Z
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isSprintGroupSku()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    :goto_1
    return v1

    .end local v0    # "isUiccProject":Z
    :cond_0
    move v0, v2

    .line 1495
    goto :goto_0

    .restart local v0    # "isUiccProject":Z
    :cond_1
    move v1, v2

    .line 1497
    goto :goto_1
.end method

.method public static isSupportCG2GGPhoneModeChange()Z
    .locals 5

    .prologue
    .line 1020
    const/high16 v3, -0x80000000

    sget v4, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_PHONE_CAPABILITIES:I

    invoke-static {v3, v4}, Lcom/android/internal/telephony/HtcTelephonyCapability;->isCapabilitiesEnabled(II)Z

    move-result v2

    .line 1023
    .local v2, "isWphone":Z
    const/high16 v3, 0x40000000    # 2.0f

    sget v4, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_PHONE_CAPABILITIES:I

    invoke-static {v3, v4}, Lcom/android/internal/telephony/HtcTelephonyCapability;->isCapabilitiesEnabled(II)Z

    move-result v0

    .line 1026
    .local v0, "isDSDA":Z
    const/high16 v3, 0x20000000

    sget v4, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_PHONE_CAPABILITIES:I

    invoke-static {v3, v4}, Lcom/android/internal/telephony/HtcTelephonyCapability;->isCapabilitiesEnabled(II)Z

    move-result v1

    .line 1029
    .local v1, "isDSDS":Z
    if-eqz v2, :cond_1

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    .line 1031
    :cond_0
    const/4 v3, 0x1

    .line 1033
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isSupportGlobalMode()Z
    .locals 2

    .prologue
    .line 1011
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isDualCGPhone()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x4b

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportGsmDataCodingSchemeInCdma()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 887
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportItsOn()Z
    .locals 3

    .prologue
    .line 1238
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getSystemReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    const-string v1, "has_its_on_ap"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportKddiOtasp()Z
    .locals 1

    .prologue
    .line 906
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportNoSimPowerOFF()Z
    .locals 2

    .prologue
    .line 975
    const/high16 v0, 0x40000000    # 2.0f

    sget v1, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_PHONE_CAPABILITIES:I

    invoke-static {v0, v1}, Lcom/android/internal/telephony/HtcTelephonyCapability;->isCapabilitiesEnabled(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isSingleModemDSDAdevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 977
    const/4 v0, 0x1

    .line 979
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportOperatorPreferredPLMN()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1206
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isCTSku()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getSystemReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    const-string v2, "support_lte"

    invoke-static {v1, v2, v0}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isSupportSimPhonebook()Z
    .locals 3

    .prologue
    .line 995
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    const-string v1, "sim_phonebook"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportSmartAutoForwarding()Z
    .locals 2

    .prologue
    .line 1149
    const/high16 v0, 0x20000000

    sget v1, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_PHONE_CAPABILITIES:I

    invoke-static {v0, v1}, Lcom/android/internal/telephony/HtcTelephonyCapability;->isCapabilitiesEnabled(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->dualGSMPhoneEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1151
    const/4 v0, 0x1

    .line 1153
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportSprintChameleon()Z
    .locals 3

    .prologue
    .line 1056
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    const-string v1, "cdma_telephony_chameleon"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportTDandWCDMAModeChange()Z
    .locals 3

    .prologue
    .line 1200
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    const-string v1, "support_td_w_modem_mode_change"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportThreeModemForTwoSlot()Z
    .locals 3

    .prologue
    .line 1039
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getSystemReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    const-string v1, "has_three_modems"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isTablet()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 231
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getSystemReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    const-string v2, "device_type"

    invoke-static {v1, v2, v0}, Lcom/android/internal/telephony/ACCCustomizationReader;->readInteger(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isTabletPhoneEnabled()Z
    .locals 2

    .prologue
    .line 245
    const-string v0, "ro.phone.function"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isUICC()Z
    .locals 1

    .prologue
    .line 360
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    return v0
.end method

.method public static isVTEnabled()Z
    .locals 1

    .prologue
    .line 647
    const/4 v0, 0x0

    return v0
.end method

.method public static isVoLTEEnabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 348
    const/4 v0, 0x0

    .line 349
    .local v0, "result":Z
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getPhoneReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v2

    const-string v3, "voLteEnabled"

    invoke-static {v2, v3, v1}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getPhoneReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v2

    const-string v3, "support_volte"

    const-string v4, "false"

    invoke-static {v2, v3, v4}, Lcom/android/internal/telephony/ACCCustomizationReader;->readString(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 351
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 349
    goto :goto_0
.end method

.method public static isWIFIOnly()Z
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x0

    return v0
.end method

.method public static isWfcEnabledByPlatform()Z
    .locals 3

    .prologue
    .line 1593
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    const-string v1, "support_qct_vowifi"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static final isWorldPhoneEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1316
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getSystemReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v2

    const-string v3, "radio_type"

    invoke-static {v2, v3, v1}, Lcom/android/internal/telephony/ACCCustomizationReader;->readInteger(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;I)I

    move-result v0

    .line 1317
    .local v0, "type":I
    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static needregisterForManualState()Z
    .locals 1

    .prologue
    .line 897
    const/4 v0, 0x0

    return v0
.end method

.method public static queryProvisionStatusForNvReady()Z
    .locals 3

    .prologue
    .line 1602
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    const-string v1, "cdma_set_ota_provision_req_property_on_nv_ready"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static readLTECapbility()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1139
    const-string v1, "ro.device.capability"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Lcom/android/internal/telephony/HtcBuildUtils;->mLTECapability:Z

    .line 1140
    const-string v0, "HtcBuildUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLTECapability : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/telephony/HtcBuildUtils;->mLTECapability:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    return-void
.end method

.method public static support11DigitsNumMatch()Z
    .locals 2

    .prologue
    .line 1808
    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x19

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static support255AsUnknowCount()Z
    .locals 2

    .prologue
    .line 1906
    const-string v1, "ro.cid"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1907
    .local v0, "cid":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isATTSku()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "VIRGI001"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "HTC__001"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static support2Hold1ActiveCall()Z
    .locals 3

    .prologue
    .line 1484
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    const-string v1, "support_two_hold_one_active_call"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static support3WayCallDelay()Z
    .locals 1

    .prologue
    .line 2200
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isVerizonSku()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportActCommand(I)Z
    .locals 6
    .param p0, "phoneId"    # I

    .prologue
    const/4 v2, 0x1

    .line 1962
    const-string v3, "ro.cid"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1963
    .local v0, "cid":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v1

    .line 1965
    .local v1, "operator":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isCMCCSku()Z

    move-result v3

    if-nez v3, :cond_0

    sget v3, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v4, 0x19

    if-eq v3, v4, :cond_0

    sget v3, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v4, 0x1e

    if-eq v3, v4, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isNELLabSku()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1978
    :cond_0
    :goto_0
    return v2

    .line 1972
    :cond_1
    const-string v3, "0"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ro.ril.oem.show.act."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "0"

    const-string v4, "ro.ril.oem.show.act"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "0"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ro.ril.oem.show.act."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1978
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static supportAdditionalNumbersInSim()Z
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x1

    return v0
.end method

.method public static supportAlwaysDisplayPlmn()Z
    .locals 1

    .prologue
    .line 2011
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isCTSku()Z

    move-result v0

    return v0
.end method

.method public static supportAlwaysUserClear()Z
    .locals 2

    .prologue
    .line 2294
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isCTSku()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportAppend0AtTailOfMccMnc()Z
    .locals 3

    .prologue
    .line 1395
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    const-string v1, "cdma_append_operator_numeric"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static supportAptgSignalMappingRule()Z
    .locals 2

    .prologue
    .line 1720
    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x4b

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportAsiaSignalMappingRule()Z
    .locals 2

    .prologue
    .line 1728
    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x21

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x23

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x49

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportAttCsgFeature()Z
    .locals 3

    .prologue
    .line 1451
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    const-string v1, "csg_feature_enable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static supportAttSignalMappingRule()Z
    .locals 2

    .prologue
    .line 1675
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isATTSku()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CWS__001"

    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->readCID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportAudioPathforTD()Z
    .locals 3

    .prologue
    .line 1195
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    const-string v1, "support_audio_path_for_td_modem"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static supportAusNzSignalMappingRule()Z
    .locals 2

    .prologue
    .line 1695
    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x25

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x24

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x65

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x33

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportAutoSelectionAfterReboot()Z
    .locals 2

    .prologue
    .line 2056
    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportAutoTimeIfCampOnCdma()Z
    .locals 1

    .prologue
    .line 2188
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isCTSku()Z

    move-result v0

    return v0
.end method

.method public static supportBackToAutoSelection()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1931
    sget v1, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v2, 0x28

    if-eq v1, v2, :cond_0

    sget v1, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v2, 0x29

    if-eq v1, v2, :cond_0

    sget v1, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v2, 0x4c

    if-eq v1, v2, :cond_0

    sget v1, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v2, 0x4d

    if-eq v1, v2, :cond_0

    sget v1, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v2, 0x3c

    if-eq v1, v2, :cond_0

    sget v1, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v2, 0x20

    if-eq v1, v2, :cond_0

    sget v1, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportCallForwardDisabled()Z
    .locals 1

    .prologue
    .line 2140
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG()Z

    move-result v0

    return v0
.end method

.method public static supportCampHighNwAfterReboot()Z
    .locals 2

    .prologue
    .line 1948
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isCMCCSku()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x19

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportCanadaSignalMappingRule()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1742
    sget v1, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    if-eq v1, v0, :cond_0

    sget v1, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    sget v1, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    sget v1, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v2, 0x26

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportCdmaEriAlertSoundId()Z
    .locals 1

    .prologue
    .line 2168
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isVerizonSku()Z

    move-result v0

    return v0
.end method

.method public static supportCmccSignalMappingRule()Z
    .locals 1

    .prologue
    .line 1704
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isCMCCSku()Z

    move-result v0

    return v0
.end method

.method public static supportConfigTrustZone()Z
    .locals 3

    .prologue
    .line 1546
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    const-string v1, "config_trust_zone_supported"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static supportConfigVmNumberByCarrierId()Z
    .locals 3

    .prologue
    .line 1583
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    const-string v1, "cdma_get_vm_number_by_nv_carrier_id"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static supportCtGsmLanguageEnhance()Z
    .locals 1

    .prologue
    .line 2409
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isCTSku()Z

    move-result v0

    return v0
.end method

.method public static supportCtMvnoCase()Z
    .locals 1

    .prologue
    .line 2304
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isCTSku()Z

    move-result v0

    return v0
.end method

.method public static supportCtSignalMappingRule()Z
    .locals 1

    .prologue
    .line 1708
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isCTSku()Z

    move-result v0

    return v0
.end method

.method public static supportCuSignalMappingRule()Z
    .locals 1

    .prologue
    .line 1712
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isCUSku()Z

    move-result v0

    return v0
.end method

.method public static final supportCustomerServiceShortCode()Z
    .locals 2

    .prologue
    .line 1100
    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportDefaultDisableDnsServer()Z
    .locals 1

    .prologue
    .line 1839
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isKddiSku()Z

    move-result v0

    return v0
.end method

.method public static supportDisplayPlmnFirst()Z
    .locals 2

    .prologue
    .line 1998
    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x19

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isCMCCSku()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isCUSku()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportEMS()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 693
    const/4 v0, 0x1

    return v0
.end method

.method public static supportEccCallCategory()Z
    .locals 1

    .prologue
    .line 2357
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isHtcJpnSku()Z

    move-result v0

    return v0
.end method

.method public static supportEons()Z
    .locals 2

    .prologue
    .line 1880
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isATTSku()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x28

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x29

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x32

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportExactTalkTimeOnCdma()Z
    .locals 1

    .prologue
    .line 2080
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isKddiSku()Z

    move-result v0

    return v0
.end method

.method public static supportFdnDisplayOnPeople()Z
    .locals 1

    .prologue
    .line 2348
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isHTCLASku()Z

    move-result v0

    return v0
.end method

.method public static supportGetSimRecordFromUsimFirst(Z)Z
    .locals 3
    .param p0, "isSubscriptionFromRuim"    # Z

    .prologue
    const/4 v0, 0x1

    .line 2220
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isVerizonSku()Z

    move-result v1

    if-nez v1, :cond_0

    sget v1, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v2, 0x5e

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isTracfoneWirelessSku()Z

    move-result v1

    if-nez v1, :cond_0

    sget v1, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 2235
    :cond_0
    :goto_0
    return v0

    .line 2230
    :cond_1
    sget v1, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v2, 0x72

    if-ne v1, v2, :cond_2

    if-nez p0, :cond_0

    .line 2235
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportGetVmIndicatorFromCphs()Z
    .locals 2

    .prologue
    .line 1893
    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x2e

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x30

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x31

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x32

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportGetVmTagFromSimFirst()Z
    .locals 2

    .prologue
    .line 1860
    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x32

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x30

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportGidWith0xff()Z
    .locals 1

    .prologue
    .line 2036
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isTracfoneWirelessSku()Z

    move-result v0

    return v0
.end method

.method public static supportH3gSignalMappingRule()Z
    .locals 2

    .prologue
    .line 1684
    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x28

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x29

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x4c

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x4d

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportHkSignalMappingRule()Z
    .locals 2

    .prologue
    .line 1738
    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x46

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportIccIdWithChar()Z
    .locals 1

    .prologue
    .line 1919
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isChinaRegion()Z

    move-result v0

    return v0
.end method

.method public static supportIgnoreCfuQuery()Z
    .locals 2

    .prologue
    .line 1870
    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x34

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportImsParticipantInfoEnhancement()Z
    .locals 2

    .prologue
    .line 2458
    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x51

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x86

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportKddiAuNaming()Z
    .locals 1

    .prologue
    .line 1777
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isKddiSku()Z

    move-result v0

    return v0
.end method

.method public static supportKddiAudioRequestForCall()Z
    .locals 1

    .prologue
    .line 2397
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isKddiSku()Z

    move-result v0

    return v0
.end method

.method public static supportKddiLteEnhancement()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1371
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isKddiSku()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1372
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    const-string v2, "support_lte_on_gsm_for_wphone"

    invoke-static {v1, v2, v0}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v0

    .line 1376
    :cond_0
    return v0
.end method

.method public static supportKddiRoamingBanner()Z
    .locals 1

    .prologue
    .line 2158
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isKddiSku()Z

    move-result v0

    return v0
.end method

.method public static supportKddiSignalMappingRule()Z
    .locals 1

    .prologue
    .line 1651
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isKddiSku()Z

    move-result v0

    return v0
.end method

.method public static supportKddiSpecificDialString()Z
    .locals 1

    .prologue
    .line 1819
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isKddiSku()Z

    move-result v0

    return v0
.end method

.method public static supportKeepMdnForOtasp()Z
    .locals 3

    .prologue
    .line 1571
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    const-string v1, "cdma_set_default_vm_number_as_mdn"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static supportKeepOpNameAndCountryIso()Z
    .locals 1

    .prologue
    .line 1829
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isKddiSku()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isWorldPhoneEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportLraRoamingBanner()Z
    .locals 2

    .prologue
    .line 2149
    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x71

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportMeidSystemPropertyForDrm()Z
    .locals 1

    .prologue
    .line 988
    const/4 v0, 0x0

    return v0
.end method

.method public static supportMetroPcsSignalMappingRule()Z
    .locals 2

    .prologue
    .line 1716
    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x51

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportMmrSignalMappingRule()Z
    .locals 2

    .prologue
    .line 1724
    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportMtCallNumberReplaceRule()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2069
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getSystemReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v3

    const-string v4, "radio_type"

    invoke-static {v3, v4, v2}, Lcom/android/internal/telephony/ACCCustomizationReader;->readInteger(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    move v0, v1

    .line 2070
    .local v0, "isUlProject":Z
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isKddiSku()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    :goto_1
    return v1

    .end local v0    # "isUlProject":Z
    :cond_0
    move v0, v2

    .line 2069
    goto :goto_0

    .restart local v0    # "isUlProject":Z
    :cond_1
    move v1, v2

    .line 2070
    goto :goto_1
.end method

.method public static supportNelRomFix()Z
    .locals 1

    .prologue
    .line 2386
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isNELLabSku()Z

    move-result v0

    return v0
.end method

.method public static supportNew1xEvdoSignalMappingRule()Z
    .locals 3

    .prologue
    .line 1665
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    const-string v1, "apply_new_1x_evdo_signal_mapping"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static final supportNvSwitchReboot()Z
    .locals 3

    .prologue
    .line 1347
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    const-string v1, "support_nv_switch_reboot"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static supportOldCdmaSignalMappingRule()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1644
    sget v1, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v2, 0x5e

    if-eq v1, v2, :cond_0

    sget v1, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    const-string v2, "apply_old_signal_mapping"

    invoke-static {v1, v2, v0}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static supportOnlyCdmaVoiceSpeechCodec()Z
    .locals 1

    .prologue
    .line 1227
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isSprintGroupSku()Z

    move-result v0

    return v0
.end method

.method public static supportOtaProvisionAfterSimReady()Z
    .locals 3

    .prologue
    .line 1430
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    const-string v1, "query_ota_provision_status_after_sim_ready"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static supportProvisionCheckForMdn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1532
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportSpecificUiccIcon()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1533
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    const-string v2, "cdma_null_mdn_min_if_ruim_not_provision"

    invoke-static {v1, v2, v0}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v0

    .line 1537
    :cond_0
    return v0
.end method

.method public static supportQueryCfuUnderLte()Z
    .locals 3

    .prologue
    .line 1421
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    const-string v1, "force_query_cfu_under_lte"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static supportRadioOnUnderDecrypting()Z
    .locals 1

    .prologue
    .line 1988
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isVerizonSku()Z

    move-result v0

    return v0
.end method

.method public static supportRebootAfterSimSwap()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2418
    const-string v2, "sys.shutdown.hibernate.mode"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2419
    .local v0, "quickBootEnabled":Z
    const-string v2, "HtcBuildUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "quickBootEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2420
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isKddiSku()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static supportRefreshRuimForProgramSucc()Z
    .locals 1

    .prologue
    .line 1849
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isVerizonSku()Z

    move-result v0

    return v0
.end method

.method public static final supportRemoteSIMunlock()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1323
    const-string v4, "ro.build.project"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1324
    .local v0, "buildproject":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v4, "M8_UL"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    move v1, v3

    .line 1326
    .local v1, "isNotM8":Z
    :goto_0
    sget v4, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v5, 0xb

    if-eq v4, v5, :cond_1

    sget v4, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v5, 0x51

    if-ne v4, v5, :cond_3

    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->getHtcSenseVersion()F

    move-result v4

    const/high16 v5, 0x40e00000    # 7.0f

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_3

    if-eqz v1, :cond_3

    :goto_1
    return v3

    .end local v1    # "isNotM8":Z
    :cond_2
    move v1, v2

    .line 1324
    goto :goto_0

    .restart local v1    # "isNotM8":Z
    :cond_3
    move v3, v2

    .line 1326
    goto :goto_1
.end method

.method public static supportReportImsiFromUsim()Z
    .locals 3

    .prologue
    .line 1522
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    const-string v1, "cdma_report_imsi_from_usim"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static supportResumeBgCallForRemoveEnd()Z
    .locals 1

    .prologue
    .line 2367
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isVerizonSku()Z

    move-result v0

    return v0
.end method

.method public static supportRoamingCheckWithSpn()Z
    .locals 1

    .prologue
    .line 2328
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isCTSku()Z

    move-result v0

    return v0
.end method

.method public static supportSIMPhonebookbyIccIO()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 859
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->QMI_CONFIG()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    const-string v2, "sim_phonebook_by_icc_io"

    invoke-static {v1, v2, v0}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 862
    :cond_0
    const/4 v0, 0x1

    .line 864
    :cond_1
    return v0
.end method

.method public static supportSeparateOperatorInfo()Z
    .locals 3

    .prologue
    .line 1385
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    const-string v1, "supportSeparateOperatorInfo"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static supportSetOperatorInfoByBuildTime()Z
    .locals 1

    .prologue
    .line 2272
    sget-boolean v0, Lcom/android/internal/telephony/HtcBuildUtils;->DetectVMbyCarrierIdFromNV:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportSetOperatorInfoByCarrierId()Z
    .locals 1

    .prologue
    .line 2258
    sget-boolean v0, Lcom/android/internal/telephony/HtcBuildUtils;->DetectVMbyCarrierIdFromNV:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isVerizonSku()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportShortFormatEuimId()Z
    .locals 3

    .prologue
    .line 1405
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    const-string v1, "cdma_support_sf_euimid"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static supportShowDcIcon()Z
    .locals 2

    .prologue
    .line 2046
    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x3f

    if-eq v0, v1, :cond_0

    const-string v0, "VODAP203"

    const-string v1, "ro.cid"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportSimHotSwapDialogEnhancement()Z
    .locals 1

    .prologue
    .line 2431
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isSprintGroupSku()Z

    move-result v0

    return v0
.end method

.method public static supportSimHotSwapFeature()Z
    .locals 3

    .prologue
    .line 282
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    const-string v1, "sim_hot_swap"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static supportSpecialEccMode()Z
    .locals 1

    .prologue
    .line 2446
    const/4 v0, 0x0

    return v0
.end method

.method public static supportSpecificUiccIcon()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1440
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    const-string v2, "uicc_icon"

    invoke-static {v1, v2, v0}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    sget v2, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_RAT_CAPABILITIES:I

    invoke-static {v1, v2}, Lcom/android/internal/telephony/HtcTelephonyCapability;->isCapabilitiesEnabled(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static supportSprintCdmaDeviceSvn()Z
    .locals 1

    .prologue
    .line 2282
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isSprintGroupSku()Z

    move-result v0

    return v0
.end method

.method public static supportSprintOpNameRule()Z
    .locals 1

    .prologue
    .line 2339
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isSprintGroupSku()Z

    move-result v0

    return v0
.end method

.method public static supportSprintSignalMappingRule()Z
    .locals 1

    .prologue
    .line 1680
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isSprintGroupSku()Z

    move-result v0

    return v0
.end method

.method public static supportSprintUiccCustomization()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1509
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getSystemReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v2

    const-string v3, "radio_type"

    invoke-static {v2, v3, v1}, Lcom/android/internal/telephony/ACCCustomizationReader;->readInteger(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;I)I

    move-result v0

    .line 1510
    .local v0, "radioType":I
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isSprintGroupSku()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static supportSyncOperatorNumeric()Z
    .locals 3

    .prologue
    .line 1625
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    const-string v1, "cdma_set_default_icc_op_numeric"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static supportTataOpNameRule()Z
    .locals 2

    .prologue
    .line 2177
    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x21

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportTdModeForRoaming()Z
    .locals 3

    .prologue
    .line 1360
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    const-string v1, "support_td_mode_for_roaming"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static supportTmousHiddenNumRule()Z
    .locals 2

    .prologue
    .line 2248
    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportTmousSignalMappingRule()Z
    .locals 2

    .prologue
    .line 1691
    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportTracfoneMvnoCase()Z
    .locals 1

    .prologue
    .line 1799
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isTracfoneWirelessSku()Z

    move-result v0

    return v0
.end method

.method public static supportUSSDVerification()Z
    .locals 2

    .prologue
    .line 275
    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->getHtcSenseVersion()F

    move-result v0

    const/high16 v1, 0x40e00000    # 7.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportUpdateVmNumberAtUsim()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1555
    sget-object v2, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_ACCOUNT_CAPABILITIES:[I

    aget v0, v2, v1

    .line 1556
    .local v0, "cdmaAccount":I
    and-int/lit8 v2, v0, 0x4

    if-nez v2, :cond_0

    and-int/lit8 v2, v0, 0x8

    if-nez v2, :cond_0

    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_1

    .line 1559
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v2

    const-string v3, "cdma_store_vm_number_on_usim"

    invoke-static {v2, v3, v1}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v1

    .line 1562
    :cond_1
    return v1
.end method

.method public static supportVerizonSignalMappingRule()Z
    .locals 2

    .prologue
    .line 1655
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isVerizonSku()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "VZW__001"

    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->readCID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "VZW__003"

    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->readCID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportVodafoneFraSignalMappingRule()Z
    .locals 2

    .prologue
    .line 1734
    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x3f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final supportVoiceSpeechCodec()Z
    .locals 3

    .prologue
    .line 1217
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    const-string v1, "support_voice_speech_codec"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static supportVzwDeviceIdRule()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2210
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isVerizonSku()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getLteOnCdmaModeStatic()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportVzwLine1NumberRule()Z
    .locals 1

    .prologue
    .line 1788
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isVerizonSku()Z

    move-result v0

    return v0
.end method

.method public static supportVzwRoamingRule()Z
    .locals 1

    .prologue
    .line 2316
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isVerizonSku()Z

    move-result v0

    return v0
.end method

.method public static supportVzwTtyString()Z
    .locals 1

    .prologue
    .line 2376
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isVerizonSku()Z

    move-result v0

    return v0
.end method

.method public static supportWaitSimLoadedForSpn()Z
    .locals 2

    .prologue
    .line 2022
    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x46

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isCUSku()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isCMCCSku()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isCTSku()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
