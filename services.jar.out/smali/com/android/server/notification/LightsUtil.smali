.class public Lcom/android/server/notification/LightsUtil;
.super Ljava/lang/Object;
.source "LightsUtil.java"


# static fields
.field static final FLASH_UNDER_CHARGE:Z

.field public static final SERVICE_BATTERY:I = 0x0

.field public static final SERVICE_NOTIFICATION:I = 0x1

.field static final TAG:Ljava/lang/String; = "LightsUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->SENSE_STOCK:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/notification/LightsUtil;->loadFlashPolicy()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/server/notification/LightsUtil;->FLASH_UNDER_CHARGE:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getLightId(I)I
    .locals 4
    .param p0, "mode"    # I

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x3

    .line 17
    const/4 v0, 0x4

    .line 19
    .local v0, "lightId":I
    packed-switch p0, :pswitch_data_0

    .line 31
    :goto_0
    const-string v1, "LightsUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLightId("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    return v0

    .line 21
    :pswitch_0
    sget-boolean v3, Lcom/android/server/notification/LightsUtil;->FLASH_UNDER_CHARGE:Z

    if-eqz v3, :cond_0

    move v0, v1

    .line 24
    :goto_1
    goto :goto_0

    :cond_0
    move v0, v2

    .line 21
    goto :goto_1

    .line 26
    :pswitch_1
    sget-boolean v3, Lcom/android/server/notification/LightsUtil;->FLASH_UNDER_CHARGE:Z

    if-eqz v3, :cond_1

    move v0, v2

    :goto_2
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_2

    .line 19
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static final loadFlashPolicy()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 37
    const/4 v0, 0x0

    .line 38
    .local v0, "flashUnderCharge":Z
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v1

    .line 39
    .local v1, "manager":Lcom/htc/customization/HtcCustomizationManager;
    if-nez v1, :cond_0

    move v0, v3

    .line 50
    .end local v0    # "flashUnderCharge":Z
    :goto_0
    return v0

    .line 42
    .restart local v0    # "flashUnderCharge":Z
    :cond_0
    const-string v4, "Android_App_Framework"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5, v3}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v2

    .line 44
    .local v2, "reader":Lcom/htc/customization/HtcCustomizationReader;
    if-nez v2, :cond_1

    move v0, v3

    .line 45
    goto :goto_0

    .line 47
    :cond_1
    const-string v4, "NMS_feature_flashlight_during_charging"

    invoke-interface {v2, v4, v3}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 49
    const-string v3, "LightsUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "flashUnderCharge:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
