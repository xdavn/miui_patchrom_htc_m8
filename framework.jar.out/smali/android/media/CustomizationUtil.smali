.class public Landroid/media/CustomizationUtil;
.super Ljava/lang/Object;
.source "CustomizationUtil.java"


# static fields
.field public static final SENSE_STOCK:Z

.field public static final SENSE_VERSION:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "MediaFramework_CustomizationUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    invoke-static {}, Landroid/media/CustomizationUtil;->loadSense()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/CustomizationUtil;->SENSE_VERSION:Ljava/lang/String;

    .line 10
    sget-object v0, Landroid/media/CustomizationUtil;->SENSE_VERSION:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/media/CustomizationUtil;->SENSE_STOCK:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final loadSense()Ljava/lang/String;
    .locals 4

    .prologue
    .line 13
    const-string/jumbo v1, "sense_version"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/htc/customization/HtcCustomizationSystemReaderImpl;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 15
    .local v0, "sense_version":Ljava/lang/String;
    const-string v1, "MediaFramework_CustomizationUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sense_version:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    return-object v0
.end method
