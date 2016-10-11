.class Lcom/android/server/policy/GlobalActionsCust;
.super Ljava/lang/Object;
.source "GlobalActionsCust.java"

# interfaces
.implements Lcom/android/server/policy/IGlobalActionsCust;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/GlobalActionsCust$HtcGlobalActionsDialog;,
        Lcom/android/server/policy/GlobalActionsCust$HtcSinglePressAction;
    }
.end annotation


# static fields
.field private static final ENABLE_QUICKBOOT:Ljava/lang/String; = "enable_quickboot"

.field private static final FLASHLIGHT_ACTIVITY_NAME:Ljava/lang/String; = "com.htc.flashlight.FlashlightActivity"

.field private static final FLASHLIGHT_PACKAGE_NAME:Ljava/lang/String; = "com.htc.flashlight"

.field private static IMS_REGISTRATION:Ljava/lang/String; = null

.field private static IMS_REG_STATUS:Ljava/lang/String; = null

.field private static final IPUtilesClasssName:Ljava/lang/String; = "com.movial.ipphone.IPUtils"

.field private static final NORTH_AMERICA_REGION_ID:I = 0x1

.field private static final OFF_ALARM_TIME:Ljava/lang/String; = "offalarm"

.field private static final SHOW_WARNING_DIALOG:Ljava/lang/String; = "show_airplane_warning_dialog"

.field private static final SUPPORT_CHINA_SENSE:Ljava/lang/String; = "support_china_sense_feature"

.field private static final TAG:Ljava/lang/String;

.field private static final VERIZON_WWE_SKU_ID:I = 0xd

.field private static mDeviceSkuID:I

.field private static mEnableQuickBoot:Z

.field private static mIsChinaSense:Z

.field private static mRegionID:I

.field private static mShowCancelBtn:Z


# instance fields
.field private mFlashlightMode:I

.field private mImsRegistered:Z

.field private mServiceState:Landroid/telephony/ServiceState;

.field private mSimReady:Z

.field private mSkipTransition:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 64
    const-class v3, Lcom/android/server/policy/GlobalActionsCust;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/server/policy/GlobalActionsCust;->TAG:Ljava/lang/String;

    .line 83
    sput-boolean v4, Lcom/android/server/policy/GlobalActionsCust;->mShowCancelBtn:Z

    .line 86
    sput-boolean v4, Lcom/android/server/policy/GlobalActionsCust;->mIsChinaSense:Z

    .line 92
    sput-boolean v4, Lcom/android/server/policy/GlobalActionsCust;->mEnableQuickBoot:Z

    .line 98
    const-string v3, ""

    sput-object v3, Lcom/android/server/policy/GlobalActionsCust;->IMS_REGISTRATION:Ljava/lang/String;

    .line 99
    const-string v3, ""

    sput-object v3, Lcom/android/server/policy/GlobalActionsCust;->IMS_REG_STATUS:Ljava/lang/String;

    .line 122
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v0

    .line 123
    .local v0, "custManager":Lcom/htc/customization/HtcCustomizationManager;
    if-eqz v0, :cond_4

    .line 124
    const/4 v1, 0x0

    .line 126
    .local v1, "custReader":Lcom/htc/customization/HtcCustomizationReader;
    const-string v3, "System"

    invoke-virtual {v0, v3, v5, v4}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    .line 127
    if-eqz v1, :cond_0

    .line 129
    const-string v3, "support_china_sense_feature"

    invoke-interface {v1, v3, v4}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/policy/GlobalActionsCust;->mIsChinaSense:Z

    .line 133
    :cond_0
    const-string v3, "Android_Framework"

    invoke-virtual {v0, v3, v5, v4}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    .line 134
    if-eqz v1, :cond_1

    .line 135
    const-string v3, "enable_quickboot"

    invoke-interface {v1, v3, v4}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/policy/GlobalActionsCust;->mEnableQuickBoot:Z

    .line 138
    :cond_1
    const-string v3, "Android_Core_Framework"

    invoke-virtual {v0, v3, v5, v4}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    .line 139
    if-eqz v1, :cond_2

    .line 140
    const-string v3, "sku_id"

    invoke-interface {v1, v3, v4}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/server/policy/GlobalActionsCust;->mDeviceSkuID:I

    .line 141
    const-string v3, "globalaction_enable_cancel_button"

    invoke-interface {v1, v3, v4}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/policy/GlobalActionsCust;->mShowCancelBtn:Z

    .line 144
    :cond_2
    const-string v3, "region"

    invoke-static {v3, v4}, Lcom/htc/customization/HtcCustomizationSystemReaderImpl;->readInteger(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/server/policy/GlobalActionsCust;->mRegionID:I

    .line 146
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 148
    :try_start_0
    const-string v3, "com.movial.ipphone.IPUtils"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "IMS_REGISTRATION"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/server/policy/GlobalActionsCust;->IMS_REGISTRATION:Ljava/lang/String;

    .line 149
    const-string v3, "com.movial.ipphone.IPUtils"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "IMS_REG_STATUS"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/server/policy/GlobalActionsCust;->IMS_REG_STATUS:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :cond_3
    :goto_0
    sget-object v3, Lcom/android/server/policy/GlobalActionsCust;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mChina="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/server/policy/GlobalActionsCust;->mIsChinaSense:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mEQB="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/server/policy/GlobalActionsCust;->mEnableQuickBoot:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mSku="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/server/policy/GlobalActionsCust;->mDeviceSkuID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mCanBtn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/server/policy/GlobalActionsCust;->mShowCancelBtn:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mRegion="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/server/policy/GlobalActionsCust;->mRegionID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "IMS_REG="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/server/policy/GlobalActionsCust;->IMS_REGISTRATION:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", IMS_REG_STATUS="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/server/policy/GlobalActionsCust;->IMS_REG_STATUS:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .end local v1    # "custReader":Lcom/htc/customization/HtcCustomizationReader;
    :cond_4
    return-void

    .line 150
    .restart local v1    # "custReader":Lcom/htc/customization/HtcCustomizationReader;
    :catch_0
    move-exception v2

    .line 151
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-boolean v1, p0, Lcom/android/server/policy/GlobalActionsCust;->mImsRegistered:Z

    .line 109
    iput v1, p0, Lcom/android/server/policy/GlobalActionsCust;->mFlashlightMode:I

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/GlobalActionsCust;->mServiceState:Landroid/telephony/ServiceState;

    .line 114
    iput-boolean v1, p0, Lcom/android/server/policy/GlobalActionsCust;->mSkipTransition:Z

    .line 118
    iput-boolean v1, p0, Lcom/android/server/policy/GlobalActionsCust;->mSimReady:Z

    .line 231
    sget-object v0, Lcom/android/server/policy/GlobalActionsCust;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/android/server/policy/GlobalActionsCust;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " created!!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/GlobalActionsCust;Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActionsCust;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActionsCust;->isFlashlightExist(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/server/policy/GlobalActionsCust;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/policy/GlobalActionsCust;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActionsCust;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActionsCust;->startFlashlightActivity(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 63
    sget-boolean v0, Lcom/android/server/policy/GlobalActionsCust;->mIsChinaSense:Z

    return v0
.end method

.method static synthetic access$400(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-static {p0}, Lcom/android/server/policy/GlobalActionsCust;->formatDiffTime(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private canShowVZWAirplaneMode(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 429
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 442
    :cond_0
    :goto_0
    return v0

    .line 431
    :cond_1
    const/4 v0, 0x1

    .line 432
    .local v0, "showAirplane":Z
    sget v2, Lcom/android/server/policy/GlobalActionsCust;->mDeviceSkuID:I

    const/16 v3, 0xd

    if-ne v2, v3, :cond_0

    .line 433
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "ota_required"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 434
    .local v1, "vzwActivateState":I
    sget-object v2, Lcom/android/server/policy/GlobalActionsCust;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get activate state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    if-eqz v1, :cond_2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 437
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 439
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static formatDiffTime(Landroid/content/Context;)Ljava/lang/String;
    .locals 43
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 762
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 763
    .local v12, "currentTime":J
    const-wide/16 v34, 0x0

    .line 765
    .local v34, "nextTime":J
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v36

    .line 768
    .local v36, "res":Landroid/content/res/Resources;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "offalarm"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v34

    .line 773
    :goto_0
    sget-object v6, Lcom/android/server/policy/GlobalActionsCust;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "next off alarm is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v34

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    sub-long v18, v34, v12

    .line 775
    .local v18, "diff":J
    const-string v37, ""

    .line 777
    .local v37, "ret":Ljava/lang/String;
    const-wide v6, 0x7fffffffffffffffL

    cmp-long v6, v34, v6

    if-eqz v6, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v6, v18, v6

    if-gtz v6, :cond_1

    :cond_0
    move-object/from16 v6, v37

    .line 906
    :goto_1
    return-object v6

    .line 769
    .end local v18    # "diff":J
    .end local v37    # "ret":Ljava/lang/String;
    :catch_0
    move-exception v24

    .line 770
    .local v24, "e":Ljava/lang/Exception;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 781
    .end local v24    # "e":Ljava/lang/Exception;
    .restart local v18    # "diff":J
    .restart local v37    # "ret":Ljava/lang/String;
    :cond_1
    const-wide/32 v6, 0xea60

    cmp-long v6, v18, v6

    if-gez v6, :cond_2

    .line 782
    const v6, 0x10700e1

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 785
    :cond_2
    const/16 v40, 0x0

    .line 788
    .local v40, "timeType":I
    const-wide/32 v6, 0x36ee80

    div-long v26, v18, v6

    .line 789
    .local v26, "hours":J
    const-wide/32 v6, 0xea60

    div-long v6, v18, v6

    const-wide/16 v8, 0x3c

    rem-long v30, v6, v8

    .line 790
    .local v30, "mins":J
    const-wide/16 v6, 0x18

    div-long v16, v26, v6

    .line 791
    .local v16, "days":J
    const-wide/16 v6, 0x18

    rem-long v26, v26, v6

    .line 794
    new-instance v33, Landroid/text/format/Time;

    invoke-direct/range {v33 .. v33}, Landroid/text/format/Time;-><init>()V

    .line 795
    .local v33, "now":Landroid/text/format/Time;
    move-object/from16 v0, v33

    invoke-virtual {v0, v12, v13}, Landroid/text/format/Time;->set(J)V

    .line 797
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    .line 798
    .local v4, "today":Landroid/text/format/Time;
    const/16 v5, 0x3b

    const/16 v6, 0x3b

    const/16 v7, 0x17

    move-object/from16 v0, v33

    iget v8, v0, Landroid/text/format/Time;->monthDay:I

    move-object/from16 v0, v33

    iget v9, v0, Landroid/text/format/Time;->month:I

    move-object/from16 v0, v33

    iget v10, v0, Landroid/text/format/Time;->year:I

    invoke-virtual/range {v4 .. v10}, Landroid/text/format/Time;->set(IIIIII)V

    .line 799
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    .line 800
    .local v5, "tomorrow":Landroid/text/format/Time;
    const/16 v6, 0x3b

    const/16 v7, 0x3b

    const/16 v8, 0x17

    move-object/from16 v0, v33

    iget v9, v0, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, v33

    iget v10, v0, Landroid/text/format/Time;->month:I

    move-object/from16 v0, v33

    iget v11, v0, Landroid/text/format/Time;->year:I

    invoke-virtual/range {v5 .. v11}, Landroid/text/format/Time;->set(IIIIII)V

    .line 802
    new-instance v29, Landroid/text/format/Time;

    invoke-direct/range {v29 .. v29}, Landroid/text/format/Time;-><init>()V

    .line 803
    .local v29, "next":Landroid/text/format/Time;
    move-object/from16 v0, v29

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 804
    new-instance v32, Ljava/util/Date;

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 807
    .local v32, "nextDate":Ljava/util/Date;
    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Landroid/text/format/Time;->after(Landroid/text/format/Time;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 808
    const/16 v40, 0x2

    .line 815
    :goto_2
    const/16 v20, 0x0

    .line 816
    .local v20, "dispDay":Z
    const/16 v21, 0x0

    .line 817
    .local v21, "dispHour":Z
    const/16 v22, 0x0

    .line 819
    .local v22, "dispMin":Z
    const-string v15, ""

    .line 820
    .local v15, "dayStr":Ljava/lang/String;
    const-string v28, ""

    .line 821
    .local v28, "minStr":Ljava/lang/String;
    const-string v25, ""

    .line 822
    .local v25, "hourStr":Ljava/lang/String;
    const-string v23, ""

    .line 824
    .local v23, "durationStr":Ljava/lang/String;
    const-wide/16 v6, 0x0

    cmp-long v6, v16, v6

    if-lez v6, :cond_3

    .line 825
    const/high16 v6, 0x1080000

    move-wide/from16 v0, v16

    long-to-int v7, v0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-wide/from16 v0, v16

    long-to-int v10, v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    move-object/from16 v0, v36

    invoke-virtual {v0, v6, v7, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 826
    const/16 v20, 0x1

    .line 829
    :cond_3
    const-wide/16 v6, 0x0

    cmp-long v6, v26, v6

    if-lez v6, :cond_4

    .line 830
    const v6, 0x1080001

    move-wide/from16 v0, v26

    long-to-int v7, v0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-wide/from16 v0, v26

    long-to-int v10, v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    move-object/from16 v0, v36

    invoke-virtual {v0, v6, v7, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    .line 831
    const/16 v21, 0x1

    .line 834
    :cond_4
    const-wide/16 v6, 0x0

    cmp-long v6, v30, v6

    if-lez v6, :cond_5

    .line 835
    const v6, 0x1080002

    move-wide/from16 v0, v30

    long-to-int v7, v0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-wide/from16 v0, v30

    long-to-int v10, v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    move-object/from16 v0, v36

    invoke-virtual {v0, v6, v7, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    .line 836
    const/16 v22, 0x1

    .line 839
    :cond_5
    const/4 v6, 0x3

    new-array v0, v6, [Ljava/lang/String;

    move-object/from16 v41, v0

    .line 840
    .local v41, "tmpThree":[Ljava/lang/String;
    const/4 v6, 0x2

    new-array v0, v6, [Ljava/lang/String;

    move-object/from16 v42, v0

    .line 843
    .local v42, "tmpTwo":[Ljava/lang/String;
    if-eqz v20, :cond_8

    if-eqz v21, :cond_8

    if-eqz v22, :cond_8

    .line 844
    const/4 v6, 0x0

    aput-object v15, v41, v6

    .line 845
    const/4 v6, 0x1

    aput-object v25, v41, v6

    .line 846
    const/4 v6, 0x2

    aput-object v28, v41, v6

    .line 847
    const v6, 0x10700e5

    check-cast v41, [Ljava/lang/Object;

    .end local v41    # "tmpThree":[Ljava/lang/String;
    move-object/from16 v0, v36

    move-object/from16 v1, v41

    invoke-virtual {v0, v6, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    .line 877
    .end local v42    # "tmpTwo":[Ljava/lang/String;
    :goto_3
    const/16 v39, 0x0

    .line 878
    .local v39, "timeFormat":Ljava/text/SimpleDateFormat;
    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 879
    new-instance v39, Ljava/text/SimpleDateFormat;

    .end local v39    # "timeFormat":Ljava/text/SimpleDateFormat;
    const-string v6, "HH:mm"

    move-object/from16 v0, v39

    invoke-direct {v0, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 885
    .restart local v39    # "timeFormat":Ljava/text/SimpleDateFormat;
    :goto_4
    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v14

    .line 888
    .local v14, "dateFormat":Ljava/text/Format;
    const/4 v6, 0x2

    move/from16 v0, v40

    if-ne v0, v6, :cond_f

    .line 889
    const/4 v6, 0x3

    new-array v0, v6, [Ljava/lang/String;

    move-object/from16 v38, v0

    .line 890
    .local v38, "time":[Ljava/lang/String;
    const/4 v6, 0x0

    move-object/from16 v0, v39

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v38, v6

    .line 891
    const/4 v6, 0x1

    move-object/from16 v0, v32

    invoke-virtual {v14, v0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v38, v6

    .line 892
    const/4 v6, 0x2

    aput-object v23, v38, v6

    .line 893
    const v7, 0x10700e4

    move-object/from16 v6, v38

    check-cast v6, [Ljava/lang/Object;

    move-object/from16 v0, v36

    invoke-virtual {v0, v7, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    :goto_5
    move-object/from16 v6, v37

    .line 906
    goto/16 :goto_1

    .line 809
    .end local v14    # "dateFormat":Ljava/text/Format;
    .end local v15    # "dayStr":Ljava/lang/String;
    .end local v20    # "dispDay":Z
    .end local v21    # "dispHour":Z
    .end local v22    # "dispMin":Z
    .end local v23    # "durationStr":Ljava/lang/String;
    .end local v25    # "hourStr":Ljava/lang/String;
    .end local v28    # "minStr":Ljava/lang/String;
    .end local v38    # "time":[Ljava/lang/String;
    .end local v39    # "timeFormat":Ljava/text/SimpleDateFormat;
    :cond_6
    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->after(Landroid/text/format/Time;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 810
    const/16 v40, 0x1

    goto/16 :goto_2

    .line 812
    :cond_7
    const/16 v40, 0x0

    goto/16 :goto_2

    .line 848
    .restart local v15    # "dayStr":Ljava/lang/String;
    .restart local v20    # "dispDay":Z
    .restart local v21    # "dispHour":Z
    .restart local v22    # "dispMin":Z
    .restart local v23    # "durationStr":Ljava/lang/String;
    .restart local v25    # "hourStr":Ljava/lang/String;
    .restart local v28    # "minStr":Ljava/lang/String;
    .restart local v41    # "tmpThree":[Ljava/lang/String;
    .restart local v42    # "tmpTwo":[Ljava/lang/String;
    :cond_8
    if-eqz v20, :cond_b

    .line 849
    if-eqz v21, :cond_9

    .line 850
    const/4 v6, 0x0

    aput-object v15, v42, v6

    .line 851
    const/4 v6, 0x1

    aput-object v25, v42, v6

    .line 852
    const v6, 0x10700e6

    check-cast v42, [Ljava/lang/Object;

    .end local v42    # "tmpTwo":[Ljava/lang/String;
    move-object/from16 v0, v36

    move-object/from16 v1, v42

    invoke-virtual {v0, v6, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    goto :goto_3

    .line 854
    .restart local v42    # "tmpTwo":[Ljava/lang/String;
    :cond_9
    if-eqz v22, :cond_a

    .line 855
    const/4 v6, 0x0

    aput-object v15, v42, v6

    .line 856
    const/4 v6, 0x1

    aput-object v28, v42, v6

    .line 857
    const v6, 0x10700e6

    check-cast v42, [Ljava/lang/Object;

    .end local v42    # "tmpTwo":[Ljava/lang/String;
    move-object/from16 v0, v36

    move-object/from16 v1, v42

    invoke-virtual {v0, v6, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_3

    .line 859
    .restart local v42    # "tmpTwo":[Ljava/lang/String;
    :cond_a
    move-object/from16 v23, v15

    goto/16 :goto_3

    .line 863
    :cond_b
    if-eqz v21, :cond_d

    .line 864
    if-eqz v22, :cond_c

    .line 865
    const/4 v6, 0x0

    aput-object v25, v42, v6

    .line 866
    const/4 v6, 0x1

    aput-object v28, v42, v6

    .line 867
    const v6, 0x10700e6

    check-cast v42, [Ljava/lang/Object;

    .end local v42    # "tmpTwo":[Ljava/lang/String;
    move-object/from16 v0, v36

    move-object/from16 v1, v42

    invoke-virtual {v0, v6, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_3

    .line 869
    .restart local v42    # "tmpTwo":[Ljava/lang/String;
    :cond_c
    move-object/from16 v23, v25

    goto/16 :goto_3

    .line 872
    :cond_d
    move-object/from16 v23, v28

    goto/16 :goto_3

    .line 881
    .end local v41    # "tmpThree":[Ljava/lang/String;
    .end local v42    # "tmpTwo":[Ljava/lang/String;
    .restart local v39    # "timeFormat":Ljava/text/SimpleDateFormat;
    :cond_e
    new-instance v39, Ljava/text/SimpleDateFormat;

    .end local v39    # "timeFormat":Ljava/text/SimpleDateFormat;
    const-string v6, "hh:mm a"

    move-object/from16 v0, v39

    invoke-direct {v0, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .restart local v39    # "timeFormat":Ljava/text/SimpleDateFormat;
    goto/16 :goto_4

    .line 894
    .restart local v14    # "dateFormat":Ljava/text/Format;
    :cond_f
    const/4 v6, 0x1

    move/from16 v0, v40

    if-ne v0, v6, :cond_10

    .line 895
    const/4 v6, 0x2

    new-array v0, v6, [Ljava/lang/String;

    move-object/from16 v38, v0

    .line 896
    .restart local v38    # "time":[Ljava/lang/String;
    const/4 v6, 0x0

    move-object/from16 v0, v39

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v38, v6

    .line 897
    const/4 v6, 0x1

    aput-object v23, v38, v6

    .line 898
    const v7, 0x10700e3

    move-object/from16 v6, v38

    check-cast v6, [Ljava/lang/Object;

    move-object/from16 v0, v36

    invoke-virtual {v0, v7, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    .line 899
    goto/16 :goto_5

    .line 900
    .end local v38    # "time":[Ljava/lang/String;
    :cond_10
    const/4 v6, 0x2

    new-array v0, v6, [Ljava/lang/String;

    move-object/from16 v38, v0

    .line 901
    .restart local v38    # "time":[Ljava/lang/String;
    const/4 v6, 0x0

    move-object/from16 v0, v39

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v38, v6

    .line 902
    const/4 v6, 0x1

    aput-object v23, v38, v6

    .line 903
    const v7, 0x10700e2

    move-object/from16 v6, v38

    check-cast v6, [Ljava/lang/Object;

    move-object/from16 v0, v36

    invoke-virtual {v0, v7, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    goto/16 :goto_5
.end method

.method public static getCustomResourceID(Ljava/lang/String;I)I
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defID"    # I

    .prologue
    .line 518
    move v0, p1

    .line 519
    .local v0, "resID":I
    const-string v1, "drawable.icon_launcher_airplane"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 520
    const v0, 0x1020003

    .line 532
    :cond_0
    :goto_0
    return v0

    .line 521
    :cond_1
    const-string v1, "drawable.icon_launcher_airplane"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 522
    const v0, 0x1020003

    goto :goto_0

    .line 523
    :cond_2
    const-string v1, "layout.phone_options_item"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 524
    const v0, 0x1030001

    goto :goto_0

    .line 525
    :cond_3
    const-string v1, "id.icon"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 526
    const/high16 v0, 0x1090000

    goto :goto_0

    .line 527
    :cond_4
    const-string v1, "id.message"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 528
    const v0, 0x1090001

    goto :goto_0

    .line 529
    :cond_5
    const-string v1, "id.status"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 530
    const v0, 0x1090002

    goto :goto_0
.end method

.method private isFlashlightExist(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 258
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "torch_available"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private showWarningDialog(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 334
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_airplane_warning_dialog"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 335
    .local v0, "showDialog":I
    sget-object v2, Lcom/android/server/policy/GlobalActionsCust;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showWarningDialog = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :cond_0
    return v1
.end method

.method private startFlashlightActivity(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 248
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "flashlight_enable"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_1

    move v0, v3

    .line 249
    .local v0, "flashlightOn":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 251
    .local v2, "mode":I
    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.htc.intent.action.STATUS_BAR_FLASHLIGH"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 252
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "com.htc.flashlight.state"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 253
    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 255
    :cond_0
    return-void

    .end local v0    # "flashlightOn":Z
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "mode":I
    :cond_1
    move v0, v2

    .line 248
    goto :goto_0

    .restart local v0    # "flashlightOn":Z
    :cond_2
    move v2, v3

    .line 249
    goto :goto_1
.end method


# virtual methods
.method public adjustHtcGlobalActionsDialog(Landroid/content/Context;Landroid/app/Dialog;Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$MyAdapter;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dialog"    # Landroid/app/Dialog;
    .param p3, "globalActions"    # Lcom/android/server/policy/GlobalActions;
    .param p4, "adapter"    # Lcom/android/server/policy/GlobalActions$MyAdapter;

    .prologue
    const/4 v4, 0x1

    .line 723
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 757
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p2

    .line 725
    check-cast v0, Lcom/android/server/policy/GlobalActionsCust$HtcGlobalActionsDialog;

    .line 728
    .local v0, "htcDialog":Lcom/android/server/policy/GlobalActionsCust$HtcGlobalActionsDialog;
    sget-boolean v1, Lcom/android/server/policy/GlobalActionsCust;->mShowCancelBtn:Z

    if-eqz v1, :cond_2

    .line 729
    const/4 v2, -0x2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v3, 0x1040000

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v1, 0x0

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/policy/GlobalActionsCust$HtcGlobalActionsDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 731
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActionsCust$HtcGlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 732
    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActionsCust$HtcGlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    new-instance v2, Lcom/android/server/policy/GlobalActionsCust$4;

    invoke-direct {v2, p0, p3, p2, v0}, Lcom/android/server/policy/GlobalActionsCust$4;-><init>(Lcom/android/server/policy/GlobalActionsCust;Lcom/android/server/policy/GlobalActions;Landroid/app/Dialog;Lcom/android/server/policy/GlobalActionsCust$HtcGlobalActionsDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 739
    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActionsCust$HtcGlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 740
    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActionsCust$HtcGlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setLongClickable(Z)V

    .line 742
    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActionsCust$HtcGlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    new-instance v2, Lcom/android/server/policy/GlobalActionsCust$5;

    invoke-direct {v2, p0, p4}, Lcom/android/server/policy/GlobalActionsCust$5;-><init>(Lcom/android/server/policy/GlobalActionsCust;Lcom/android/server/policy/GlobalActions$MyAdapter;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 755
    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActionsCust$HtcGlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 756
    invoke-virtual {v0, p3}, Lcom/android/server/policy/GlobalActionsCust$HtcGlobalActionsDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0
.end method

.method public checkActualScreenOffAction(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 477
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v0, "com.htc.server.HtcPMSExtension.ACTUAL_SCREEN_OFF"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public checkAirPlaneModeState(Landroid/content/Context;Landroid/telephony/ServiceState;Lcom/android/server/policy/GlobalActions$ToggleAction$State;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceState"    # Landroid/telephony/ServiceState;
    .param p3, "curState"    # Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .prologue
    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 366
    iput-object p2, p0, Lcom/android/server/policy/GlobalActionsCust;->mServiceState:Landroid/telephony/ServiceState;

    .line 370
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_2

    .line 372
    .local v1, "inAirplaneMode":Z
    :goto_0
    move-object v0, p3

    .line 374
    .local v0, "airplaneState":Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    if-eqz v1, :cond_3

    .line 375
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 376
    sget-object v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 386
    :cond_0
    :goto_1
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/policy/GlobalActionsCust;->mImsRegistered:Z

    if-eqz v2, :cond_1

    .line 387
    if-eqz v1, :cond_4

    sget-object v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 391
    :cond_1
    :goto_2
    return-object v0

    .end local v0    # "airplaneState":Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    .end local v1    # "inAirplaneMode":Z
    :cond_2
    move v1, v2

    .line 370
    goto :goto_0

    .line 379
    .restart local v0    # "airplaneState":Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    .restart local v1    # "inAirplaneMode":Z
    :cond_3
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-eq v2, v5, :cond_0

    .line 380
    sget-object v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    goto :goto_1

    .line 387
    :cond_4
    sget-object v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    goto :goto_2
.end method

.method public checkFlashlightMode(I)Z
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 267
    iget v0, p0, Lcom/android/server/policy/GlobalActionsCust;->mFlashlightMode:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkShowAirplaneMode(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 395
    if-nez p1, :cond_0

    move v0, v1

    .line 408
    :goto_0
    return v0

    .line 399
    :cond_0
    const/4 v0, 0x1

    .line 400
    .local v0, "showAirplaneItem":Z
    const-string v2, "htc_is_demo"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 401
    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActionsCust;->canShowVZWAirplaneMode(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    .line 403
    :cond_1
    const/4 v0, 0x0

    .line 404
    sget-object v1, Lcom/android/server/policy/GlobalActionsCust;->TAG:Ljava/lang/String;

    const-string v2, "[AIRPLANE] DemoFLO ON, hide Airplane Mode"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCustIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 448
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 450
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 452
    const-string v1, "com.htc.server.HtcPMSExtension.ACTUAL_SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 453
    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 456
    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 457
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 465
    sget-object v1, Lcom/android/server/policy/GlobalActionsCust;->IMS_REGISTRATION:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/server/policy/GlobalActionsCust;->IMS_REG_STATUS:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 466
    sget-object v1, Lcom/android/server/policy/GlobalActionsCust;->IMS_REGISTRATION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 468
    :cond_0
    return-object v0
.end method

.method public getFlashlightAction(Landroid/content/Context;)Lcom/android/server/policy/GlobalActions$Action;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 272
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 282
    :goto_0
    return-object v0

    .line 275
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 276
    .local v7, "res":Landroid/content/res/Resources;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "flashlight_enable"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v6, :cond_1

    .line 277
    .local v6, "flashlightOn":Z
    :goto_1
    if-eqz v6, :cond_2

    const-string v8, "powerOptions_flashlight_mode_launch_on"

    .line 279
    .local v8, "targetResName":Ljava/lang/String;
    :goto_2
    const-string v0, "powerOptions_flashlight_mode"

    const-string v1, "string"

    const-string v2, "com.htc.framework"

    invoke-virtual {v7, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 280
    .local v3, "flashlightTitle":I
    const-string v0, "string"

    const-string v1, "com.htc.framework"

    invoke-virtual {v7, v8, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 282
    .local v4, "flashlightStatus":I
    new-instance v0, Lcom/android/server/policy/GlobalActionsCust$1;

    const v2, 0x1020004

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/GlobalActionsCust$1;-><init>(Lcom/android/server/policy/GlobalActionsCust;IIILandroid/content/Context;)V

    goto :goto_0

    .end local v3    # "flashlightTitle":I
    .end local v4    # "flashlightStatus":I
    .end local v6    # "flashlightOn":Z
    .end local v8    # "targetResName":Ljava/lang/String;
    :cond_1
    move v6, v0

    .line 276
    goto :goto_1

    .line 277
    .restart local v6    # "flashlightOn":Z
    :cond_2
    const-string v8, "powerOptions_flashlight_mode_launch_off"

    goto :goto_2
.end method

.method public getHtcGlobalActionsDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 607
    if-eqz p1, :cond_0

    new-instance v0, Lcom/android/server/policy/GlobalActionsCust$HtcGlobalActionsDialog;

    invoke-direct {v0, p1}, Lcom/android/server/policy/GlobalActionsCust$HtcGlobalActionsDialog;-><init>(Landroid/content/Context;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIMS_REGISTRATION()Ljava/lang/String;
    .locals 1

    .prologue
    .line 472
    sget-object v0, Lcom/android/server/policy/GlobalActionsCust;->IMS_REGISTRATION:Ljava/lang/String;

    return-object v0
.end method

.method public getPowerAction(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)Lcom/android/server/policy/GlobalActions$Action;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wfuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    .line 536
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 539
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/android/server/policy/GlobalActionsCust$2;

    const v2, 0x1020005

    const v3, 0x104010a

    const/4 v4, 0x0

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/GlobalActionsCust$2;-><init>(Lcom/android/server/policy/GlobalActionsCust;IIILandroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    goto :goto_0
.end method

.method public getRebootAction(Landroid/content/Context;)Lcom/android/server/policy/GlobalActions$Action;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 580
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 585
    :goto_0
    return-object v0

    .line 582
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "powerOptions_restart"

    const-string v2, "string"

    const-string v4, "com.htc.framework"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 585
    .local v3, "restartText":I
    new-instance v0, Lcom/android/server/policy/GlobalActionsCust$3;

    const v2, 0x1020006

    const/4 v4, 0x0

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/GlobalActionsCust$3;-><init>(Lcom/android/server/policy/GlobalActionsCust;IIILandroid/content/Context;)V

    goto :goto_0
.end method

.method public handleAirplaneModeCheck(Z)Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 341
    if-eqz p1, :cond_2

    sget-object v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->TurningOn:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 344
    .local v0, "state":Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/policy/GlobalActionsCust;->mSkipTransition:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/policy/GlobalActionsCust;->mImsRegistered:Z

    if-eqz v1, :cond_1

    .line 346
    :cond_0
    if-eqz p1, :cond_3

    sget-object v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 349
    :cond_1
    :goto_1
    return-object v0

    .line 341
    .end local v0    # "state":Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    :cond_2
    sget-object v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->TurningOff:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    goto :goto_0

    .line 346
    .restart local v0    # "state":Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    :cond_3
    sget-object v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    goto :goto_1
.end method

.method public handleIMSRegistrationBroadcast(Landroid/content/Context;Landroid/content/Intent;Lcom/android/server/policy/GlobalActions$ToggleAction$State;Lcom/android/server/policy/GlobalActions$ToggleAction;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "airplaneState"    # Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    .param p4, "airplaneMode"    # Lcom/android/server/policy/GlobalActions$ToggleAction;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 498
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v1, p3

    .line 514
    .end local p3    # "airplaneState":Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    .local v1, "airplaneState":Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    :goto_0
    return-object v1

    .line 500
    .end local v1    # "airplaneState":Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    .restart local p3    # "airplaneState":Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 502
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/android/server/policy/GlobalActionsCust;->IMS_REGISTRATION:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 503
    sget-object v4, Lcom/android/server/policy/GlobalActionsCust;->IMS_REG_STATUS:Ljava/lang/String;

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/policy/GlobalActionsCust;->mImsRegistered:Z

    .line 505
    iget-boolean v4, p0, Lcom/android/server/policy/GlobalActionsCust;->mImsRegistered:Z

    if-eqz v4, :cond_2

    .line 506
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_3

    .line 507
    .local v2, "inAirplaneMode":Z
    :goto_1
    if-eqz v2, :cond_4

    sget-object p3, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 508
    :goto_2
    if-eqz p4, :cond_2

    .line 509
    invoke-virtual {p4, p3}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    .end local v2    # "inAirplaneMode":Z
    :cond_2
    move-object v1, p3

    .line 514
    .end local p3    # "airplaneState":Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    .restart local v1    # "airplaneState":Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    goto :goto_0

    .end local v1    # "airplaneState":Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    .restart local p3    # "airplaneState":Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    :cond_3
    move v2, v3

    .line 506
    goto :goto_1

    .line 507
    .restart local v2    # "inAirplaneMode":Z
    :cond_4
    sget-object p3, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    goto :goto_2
.end method

.method public handleSimStateBroadcast(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 481
    if-nez p1, :cond_1

    .line 495
    :cond_0
    :goto_0
    return-void

    .line 483
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 486
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 487
    const-string v2, "ss"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 489
    .local v1, "stateExtra":Ljava/lang/String;
    const-string v2, "READY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 490
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/policy/GlobalActionsCust;->mSimReady:Z

    goto :goto_0

    .line 492
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/policy/GlobalActionsCust;->mSimReady:Z

    goto :goto_0
.end method

.method public setFlashlightMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 262
    sget-object v0, Lcom/android/server/policy/GlobalActionsCust;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFlashlightMode() from outside, mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 263
    iput p1, p0, Lcom/android/server/policy/GlobalActionsCust;->mFlashlightMode:I

    .line 264
    return-void
.end method

.method public setIfNeedTransition(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    const/4 v1, 0x3

    .line 355
    iget-object v0, p0, Lcom/android/server/policy/GlobalActionsCust;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_2

    .line 356
    iget-object v0, p0, Lcom/android/server/policy/GlobalActionsCust;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-ne v0, v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActionsCust;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-eq v0, v1, :cond_3

    if-nez p1, :cond_3

    .line 357
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/GlobalActionsCust;->mSkipTransition:Z

    .line 363
    :cond_2
    :goto_0
    return-void

    .line 359
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/GlobalActionsCust;->mSkipTransition:Z

    goto :goto_0
.end method

.method public showFlashlightSpecialMode(Landroid/os/Handler;)V
    .locals 4
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 237
    if-eqz p1, :cond_0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/server/policy/GlobalActionsCust;->checkFlashlightMode(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    const v1, 0x182ae

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 239
    .local v0, "msg":Landroid/os/Message;
    const-wide/16 v2, 0x1388

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 241
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public showWarningForAirplaneMode(Landroid/content/Context;Z)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "on"    # Z

    .prologue
    const/4 v1, 0x1

    .line 321
    if-eqz p1, :cond_1

    if-ne p2, v1, :cond_1

    sget v2, Lcom/android/server/policy/GlobalActionsCust;->mDeviceSkuID:I

    const/16 v3, 0xd

    if-eq v2, v3, :cond_0

    sget v2, Lcom/android/server/policy/GlobalActionsCust;->mRegionID:I

    if-ne v2, v1, :cond_1

    .line 322
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActionsCust;->showWarningDialog(Landroid/content/Context;)Z

    move-result v2

    if-ne v2, v1, :cond_1

    .line 323
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 324
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.htc.intent.action.STATUS_BAR_AIRPLANE_WARNING"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    const-string v2, "com.android.systemui"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 330
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
