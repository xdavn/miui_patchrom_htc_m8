.class public Landroid/media/HtcMediaCustomUtils;
.super Ljava/lang/Object;
.source "HtcMediaCustomUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HtcMediaCustomUtils"

.field private static mIsSenseDevice:Z

.field private static mIsSenseGPDevice:Z

.field private static mIsStockUIDevice:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    sput-boolean v0, Landroid/media/HtcMediaCustomUtils;->mIsStockUIDevice:Z

    .line 38
    sput-boolean v0, Landroid/media/HtcMediaCustomUtils;->mIsSenseGPDevice:Z

    .line 39
    sput-boolean v0, Landroid/media/HtcMediaCustomUtils;->mIsSenseDevice:Z

    .line 42
    invoke-static {}, Landroid/media/HtcMediaCustomUtils;->getSenseVersion()V

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getSenseVersion()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 46
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v0

    .line 47
    .local v0, "custManager":Lcom/htc/customization/HtcCustomizationManager;
    if-eqz v0, :cond_0

    const-string v5, "System"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v7, v6}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    .line 50
    .local v1, "custReader":Lcom/htc/customization/HtcCustomizationReader;
    :goto_0
    if-eqz v1, :cond_3

    .line 51
    const-string/jumbo v5, "sense_version"

    invoke-interface {v1, v5, v4}, Lcom/htc/customization/HtcCustomizationReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 52
    .local v3, "senseVersion":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 54
    const-string v4, "HtcMediaCustomUtils"

    const-string v5, "[getSenseVersion] Stock UI Device"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    sput-boolean v7, Landroid/media/HtcMediaCustomUtils;->mIsStockUIDevice:Z

    .line 70
    .end local v3    # "senseVersion":Ljava/lang/String;
    :goto_1
    return-void

    .end local v1    # "custReader":Lcom/htc/customization/HtcCustomizationReader;
    :cond_0
    move-object v1, v4

    .line 47
    goto :goto_0

    .line 57
    .restart local v1    # "custReader":Lcom/htc/customization/HtcCustomizationReader;
    .restart local v3    # "senseVersion":Ljava/lang/String;
    :cond_1
    const-string v5, "extra_sense_version"

    invoke-interface {v1, v5, v4}, Lcom/htc/customization/HtcCustomizationReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, "extraSenseV":Ljava/lang/String;
    if-eqz v2, :cond_2

    const-string v4, "gp"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 60
    const-string v4, "HtcMediaCustomUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getSenseVersion] GP Sense Device, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    sput-boolean v7, Landroid/media/HtcMediaCustomUtils;->mIsSenseGPDevice:Z

    goto :goto_1

    .line 63
    :cond_2
    const-string v4, "HtcMediaCustomUtils"

    const-string v5, "[getSenseVersion] Sense Device"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    sput-boolean v7, Landroid/media/HtcMediaCustomUtils;->mIsSenseDevice:Z

    goto :goto_1

    .line 68
    .end local v2    # "extraSenseV":Ljava/lang/String;
    .end local v3    # "senseVersion":Ljava/lang/String;
    :cond_3
    const-string v4, "HtcMediaCustomUtils"

    const-string v5, "[getSenseVersion] Customization Reader is Null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static isSenseDevice()Z
    .locals 1

    .prologue
    .line 81
    sget-boolean v0, Landroid/media/HtcMediaCustomUtils;->mIsSenseDevice:Z

    return v0
.end method

.method public static isSenseGPDevice()Z
    .locals 1

    .prologue
    .line 77
    sget-boolean v0, Landroid/media/HtcMediaCustomUtils;->mIsSenseGPDevice:Z

    return v0
.end method

.method public static isStockUIDevice()Z
    .locals 1

    .prologue
    .line 73
    sget-boolean v0, Landroid/media/HtcMediaCustomUtils;->mIsStockUIDevice:Z

    return v0
.end method
