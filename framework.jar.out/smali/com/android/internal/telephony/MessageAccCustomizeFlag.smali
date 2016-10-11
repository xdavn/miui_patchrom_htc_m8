.class public Lcom/android/internal/telephony/MessageAccCustomizeFlag;
.super Ljava/lang/Object;
.source "MessageAccCustomizeFlag.java"


# static fields
.field private static final AP_NAME_SYSTEM:Ljava/lang/String; = "System"

.field private static final FLAG_SENSE_VERSION:Ljava/lang/String; = "sense_version"

.field private static final TAG:Ljava/lang/String; = "MessageAccCustomizeFlag"

.field private static messageCustFlag:Lcom/android/internal/telephony/MessageAccCustomizeFlag;

.field private static systemCustReader:Lcom/htc/customization/HtcCustomizationReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/MessageAccCustomizeFlag;->systemCustReader:Lcom/htc/customization/HtcCustomizationReader;

    .line 41
    new-instance v0, Lcom/android/internal/telephony/MessageAccCustomizeFlag;

    invoke-direct {v0}, Lcom/android/internal/telephony/MessageAccCustomizeFlag;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/MessageAccCustomizeFlag;->messageCustFlag:Lcom/android/internal/telephony/MessageAccCustomizeFlag;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v0

    .line 45
    .local v0, "custManager":Lcom/htc/customization/HtcCustomizationManager;
    if-eqz v0, :cond_1

    .line 46
    const-string v1, "System"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/MessageAccCustomizeFlag;->systemCustReader:Lcom/htc/customization/HtcCustomizationReader;

    .line 50
    :goto_0
    sget-object v1, Lcom/android/internal/telephony/MessageAccCustomizeFlag;->systemCustReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v1, :cond_0

    .line 51
    const-string v1, "MessageAccCustomizeFlag"

    const-string v2, "systemCustReader is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_0
    return-void

    .line 48
    :cond_1
    const-string v1, "MessageAccCustomizeFlag"

    const-string v2, "custManager is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static checkAndInit()V
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/android/internal/telephony/MessageAccCustomizeFlag;->messageCustFlag:Lcom/android/internal/telephony/MessageAccCustomizeFlag;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/MessageAccCustomizeFlag;->systemCustReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v0, :cond_1

    .line 56
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/MessageAccCustomizeFlag;

    invoke-direct {v0}, Lcom/android/internal/telephony/MessageAccCustomizeFlag;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/MessageAccCustomizeFlag;->messageCustFlag:Lcom/android/internal/telephony/MessageAccCustomizeFlag;

    .line 57
    :cond_1
    return-void
.end method

.method private static getSenseVersion()F
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 65
    invoke-static {}, Lcom/android/internal/telephony/MessageAccCustomizeFlag;->checkAndInit()V

    .line 67
    sget-object v3, Lcom/android/internal/telephony/MessageAccCustomizeFlag;->systemCustReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v3, :cond_1

    .line 68
    const-string v3, "MessageAccCustomizeFlag"

    const-string v4, "systemCustReader is null! getSenseVersion return default 0"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .local v1, "senseVersion":Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 72
    .end local v1    # "senseVersion":Ljava/lang/String;
    :cond_1
    sget-object v3, Lcom/android/internal/telephony/MessageAccCustomizeFlag;->systemCustReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v4, "sense_version"

    const-string v5, "0"

    invoke-interface {v3, v4, v5}, Lcom/htc/customization/HtcCustomizationReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 73
    .restart local v1    # "senseVersion":Ljava/lang/String;
    const-string v3, "MessageAccCustomizeFlag"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sense_version="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :try_start_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 78
    const-string v3, "a"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 79
    const-string v3, "a"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 81
    :cond_2
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 85
    const-string v3, "MessageAccCustomizeFlag"

    const-string v4, "get wrong Sense version!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isGep()Z
    .locals 2

    .prologue
    .line 92
    invoke-static {}, Lcom/android/internal/telephony/MessageAccCustomizeFlag;->getSenseVersion()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
