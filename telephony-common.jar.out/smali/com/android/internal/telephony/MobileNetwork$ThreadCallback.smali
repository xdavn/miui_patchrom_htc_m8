.class public Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;
.super Ljava/lang/Object;
.source "MobileNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/MobileNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThreadCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public monitorTheseCustomizationUpdate()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2486
    const/4 v0, 0x0

    return-object v0
.end method

.method public needDataPathUpdate()Z
    .locals 1

    .prologue
    .line 2466
    const/4 v0, 0x0

    return v0
.end method

.method public needDataRoamingSoundUpdate()Z
    .locals 1

    .prologue
    .line 2433
    const/4 v0, 0x0

    return v0
.end method

.method public needDataRoamingUpdate()Z
    .locals 1

    .prologue
    .line 2412
    const/4 v0, 0x0

    return v0
.end method

.method public needMobileDataMenuUpdate()Z
    .locals 1

    .prologue
    .line 2391
    const/4 v0, 0x0

    return v0
.end method

.method public needMobileDataUpdate()Z
    .locals 1

    .prologue
    .line 2370
    const/4 v0, 0x0

    return v0
.end method

.method public updateCustomization(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p3, "customize"    # Ljava/lang/String;
    .param p4, "value"    # [Ljava/lang/String;

    .prologue
    .line 2500
    return-void
.end method

.method public updateDataPath(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;

    .prologue
    .line 2478
    return-void
.end method

.method public updateDataRoaming(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p3, "status"    # Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    .prologue
    .line 2425
    return-void
.end method

.method public updateDataRoamingSound(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Lcom/android/internal/telephony/MobileNetwork$Setting;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p3, "status"    # Lcom/android/internal/telephony/MobileNetwork$Setting;

    .prologue
    .line 2446
    return-void
.end method

.method public updateDialogDisplay(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p3, "extra"    # Landroid/os/Bundle;

    .prologue
    .line 2458
    return-void
.end method

.method public updateMobileData(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Lcom/android/internal/telephony/MobileNetwork$Setting;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p3, "status"    # Lcom/android/internal/telephony/MobileNetwork$Setting;

    .prologue
    .line 2383
    return-void
.end method

.method public updateMobileDataMenu(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Lcom/android/internal/telephony/MobileNetwork$Menu;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p3, "menu"    # Lcom/android/internal/telephony/MobileNetwork$Menu;

    .prologue
    .line 2404
    return-void
.end method
