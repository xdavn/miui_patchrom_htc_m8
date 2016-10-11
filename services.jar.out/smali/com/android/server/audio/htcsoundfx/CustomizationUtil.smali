.class public Lcom/android/server/audio/htcsoundfx/CustomizationUtil;
.super Ljava/lang/Object;
.source "CustomizationUtil.java"


# static fields
.field public static final DEFAULT_SENSEN_VERSION:F = 7.0f

.field public static final MUSIC_THEATHER_SWITCH_VIEW_TYPE:I = 0x0

.field public static final NOTIFICATION_VIEW_TYPE:I

.field public static final NO_SHOW_SPEAKER_BUT_ALWAYS_ON:I = 0x2

.field public static final ON_OFF_SWITCH_VIEW_TYPE:I = 0x1

.field public static final SENSE_STOCK:Z

.field public static final SENSE_VERSION:Ljava/lang/String;

.field public static final SENSE_VERSION_NUM:F

.field public static final SUPPORT_DTS:Z

.field public static final TAG:Ljava/lang/String; = "SoundEffect_CustomizationUtil"

.field private static manage:Lcom/htc/customization/HtcCustomizationManager; = null

.field private static multiMediaReader:Lcom/htc/customization/HtcCustomizationReader; = null

.field private static final multiMediaReaderName:Ljava/lang/String; = "Android_Multimedia"

.field private static readerNeedSIMReady:Z = false

.field private static systemReader:Lcom/htc/customization/HtcCustomizationReader; = null

.field private static final systemReaderName:Ljava/lang/String; = "System"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 9
    sput-boolean v0, Lcom/android/server/audio/htcsoundfx/CustomizationUtil;->readerNeedSIMReady:Z

    .line 13
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v1

    sput-object v1, Lcom/android/server/audio/htcsoundfx/CustomizationUtil;->manage:Lcom/htc/customization/HtcCustomizationManager;

    .line 14
    const-string v1, "System"

    invoke-static {v1}, Lcom/android/server/audio/htcsoundfx/CustomizationUtil;->getReader(Ljava/lang/String;)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    sput-object v1, Lcom/android/server/audio/htcsoundfx/CustomizationUtil;->systemReader:Lcom/htc/customization/HtcCustomizationReader;

    .line 15
    const-string v1, "Android_Multimedia"

    invoke-static {v1}, Lcom/android/server/audio/htcsoundfx/CustomizationUtil;->getReader(Ljava/lang/String;)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    sput-object v1, Lcom/android/server/audio/htcsoundfx/CustomizationUtil;->multiMediaReader:Lcom/htc/customization/HtcCustomizationReader;

    .line 18
    invoke-static {}, Lcom/android/server/audio/htcsoundfx/CustomizationUtil;->loadSense()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/audio/htcsoundfx/CustomizationUtil;->SENSE_VERSION:Ljava/lang/String;

    .line 19
    sget-object v1, Lcom/android/server/audio/htcsoundfx/CustomizationUtil;->SENSE_VERSION:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Lcom/android/server/audio/htcsoundfx/CustomizationUtil;->SENSE_STOCK:Z

    .line 20
    sget-object v0, Lcom/android/server/audio/htcsoundfx/CustomizationUtil;->SENSE_VERSION:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/audio/htcsoundfx/CustomizationUtil;->getSenseVersionNumber(Ljava/lang/String;)F

    move-result v0

    sput v0, Lcom/android/server/audio/htcsoundfx/CustomizationUtil;->SENSE_VERSION_NUM:F

    .line 21
    invoke-static {}, Lcom/android/server/audio/htcsoundfx/CustomizationUtil;->isDTSSupport()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/audio/htcsoundfx/CustomizationUtil;->SUPPORT_DTS:Z

    .line 22
    invoke-static {}, Lcom/android/server/audio/htcsoundfx/CustomizationUtil;->getNotificationViewType()I

    move-result v0

    sput v0, Lcom/android/server/audio/htcsoundfx/CustomizationUtil;->NOTIFICATION_VIEW_TYPE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final getNotificationViewType()I
    .locals 3

    .prologue
    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, "defaultViewType":I
    sget-object v1, Lcom/android/server/audio/htcsoundfx/CustomizationUtil;->multiMediaReader:Lcom/htc/customization/HtcCustomizationReader;

    if-eqz v1, :cond_0

    .line 69
    sget-object v1, Lcom/android/server/audio/htcsoundfx/CustomizationUtil;->multiMediaReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v2, "effect_notification_type"

    invoke-interface {v1, v2, v0}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v0

    .line 71
    :cond_0
    return v0
.end method

.method private static getReader(Ljava/lang/String;)Lcom/htc/customization/HtcCustomizationReader;
    .locals 3
    .param p0, "readerName"    # Ljava/lang/String;

    .prologue
    .line 30
    sget-object v0, Lcom/android/server/audio/htcsoundfx/CustomizationUtil;->manage:Lcom/htc/customization/HtcCustomizationManager;

    if-eqz v0, :cond_0

    .line 31
    sget-object v0, Lcom/android/server/audio/htcsoundfx/CustomizationUtil;->manage:Lcom/htc/customization/HtcCustomizationManager;

    const/4 v1, 0x1

    sget-boolean v2, Lcom/android/server/audio/htcsoundfx/CustomizationUtil;->readerNeedSIMReady:Z

    invoke-virtual {v0, p0, v1, v2}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    .line 34
    :goto_0
    return-object v0

    .line 33
    :cond_0
    const-string v0, "SoundEffect_CustomizationUtil"

    const-string v1, "HtcCustomizationManager not get instance"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final getSenseVersionNumber(Ljava/lang/String;)F
    .locals 4
    .param p0, "versionString"    # Ljava/lang/String;

    .prologue
    .line 47
    const/high16 v1, -0x40800000    # -1.0f

    .line 48
    .local v1, "versionNumber":F
    if-eqz p0, :cond_0

    .line 50
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 55
    :cond_0
    :goto_0
    return v1

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SoundEffect_CustomizationUtil"

    const-string v3, "Sense version parse failed."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static final isDTSSupport()Z
    .locals 4

    .prologue
    .line 59
    const/4 v0, 0x0

    .line 60
    .local v0, "isSupport":Z
    sget-object v1, Lcom/android/server/audio/htcsoundfx/CustomizationUtil;->multiMediaReader:Lcom/htc/customization/HtcCustomizationReader;

    if-eqz v1, :cond_0

    .line 61
    sget-object v1, Lcom/android/server/audio/htcsoundfx/CustomizationUtil;->multiMediaReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v2, "support_theater_effect_logo"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 63
    :cond_0
    return v0
.end method

.method private static final loadSense()Ljava/lang/String;
    .locals 4

    .prologue
    .line 38
    const-string v0, "-1.0f"

    .line 39
    .local v0, "version":Ljava/lang/String;
    sget-object v1, Lcom/android/server/audio/htcsoundfx/CustomizationUtil;->systemReader:Lcom/htc/customization/HtcCustomizationReader;

    if-eqz v1, :cond_0

    .line 40
    sget-object v1, Lcom/android/server/audio/htcsoundfx/CustomizationUtil;->systemReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v2, "sense_version"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/htc/customization/HtcCustomizationReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    :cond_0
    const-string v2, "SoundEffect_CustomizationUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sense_version:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v0, :cond_1

    const-string v1, "StockUI"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    return-object v0

    :cond_1
    move-object v1, v0

    .line 42
    goto :goto_0
.end method
