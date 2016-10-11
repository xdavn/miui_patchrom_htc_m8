.class public final enum Lcom/android/server/wifi/HtcHotspotManager$configUse;
.super Ljava/lang/Enum;
.source "HtcHotspotManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/HtcHotspotManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "configUse"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/wifi/HtcHotspotManager$configUse;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/wifi/HtcHotspotManager$configUse;

.field public static final enum CONFIG_DEFAULT:Lcom/android/server/wifi/HtcHotspotManager$configUse;

.field public static final enum CONFIG_GOOGLE:Lcom/android/server/wifi/HtcHotspotManager$configUse;

.field public static final enum CONFIG_HTC:Lcom/android/server/wifi/HtcHotspotManager$configUse;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    new-instance v0, Lcom/android/server/wifi/HtcHotspotManager$configUse;

    const-string v1, "CONFIG_GOOGLE"

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/HtcHotspotManager$configUse;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/HtcHotspotManager$configUse;->CONFIG_GOOGLE:Lcom/android/server/wifi/HtcHotspotManager$configUse;

    .line 36
    new-instance v0, Lcom/android/server/wifi/HtcHotspotManager$configUse;

    const-string v1, "CONFIG_HTC"

    invoke-direct {v0, v1, v3}, Lcom/android/server/wifi/HtcHotspotManager$configUse;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/HtcHotspotManager$configUse;->CONFIG_HTC:Lcom/android/server/wifi/HtcHotspotManager$configUse;

    .line 37
    new-instance v0, Lcom/android/server/wifi/HtcHotspotManager$configUse;

    const-string v1, "CONFIG_DEFAULT"

    invoke-direct {v0, v1, v4}, Lcom/android/server/wifi/HtcHotspotManager$configUse;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/HtcHotspotManager$configUse;->CONFIG_DEFAULT:Lcom/android/server/wifi/HtcHotspotManager$configUse;

    .line 34
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/server/wifi/HtcHotspotManager$configUse;

    sget-object v1, Lcom/android/server/wifi/HtcHotspotManager$configUse;->CONFIG_GOOGLE:Lcom/android/server/wifi/HtcHotspotManager$configUse;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/HtcHotspotManager$configUse;->CONFIG_HTC:Lcom/android/server/wifi/HtcHotspotManager$configUse;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/wifi/HtcHotspotManager$configUse;->CONFIG_DEFAULT:Lcom/android/server/wifi/HtcHotspotManager$configUse;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/wifi/HtcHotspotManager$configUse;->$VALUES:[Lcom/android/server/wifi/HtcHotspotManager$configUse;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/wifi/HtcHotspotManager$configUse;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 34
    const-class v0, Lcom/android/server/wifi/HtcHotspotManager$configUse;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/HtcHotspotManager$configUse;

    return-object v0
.end method

.method public static values()[Lcom/android/server/wifi/HtcHotspotManager$configUse;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/android/server/wifi/HtcHotspotManager$configUse;->$VALUES:[Lcom/android/server/wifi/HtcHotspotManager$configUse;

    invoke-virtual {v0}, [Lcom/android/server/wifi/HtcHotspotManager$configUse;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/wifi/HtcHotspotManager$configUse;

    return-object v0
.end method
