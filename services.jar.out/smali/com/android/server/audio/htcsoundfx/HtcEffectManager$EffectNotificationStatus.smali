.class final enum Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;
.super Ljava/lang/Enum;
.source "HtcEffectManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/htcsoundfx/HtcEffectManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "EffectNotificationStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

.field public static final enum Beats:Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

.field public static final enum Dts:Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

.field public static final enum No:Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

.field public static final enum SRS_HeadsetOff:Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

.field public static final enum SRS_HeadsetOn:Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

.field public static final enum SRS_Speaker:Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 33
    new-instance v0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

    const-string v1, "Dts"

    invoke-direct {v0, v1, v3}, Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;->Dts:Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

    .line 34
    new-instance v0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

    const-string v1, "Beats"

    invoke-direct {v0, v1, v4}, Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;->Beats:Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

    .line 35
    new-instance v0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

    const-string v1, "SRS_Speaker"

    invoke-direct {v0, v1, v5}, Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;->SRS_Speaker:Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

    .line 36
    new-instance v0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

    const-string v1, "SRS_HeadsetOn"

    invoke-direct {v0, v1, v6}, Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;->SRS_HeadsetOn:Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

    .line 37
    new-instance v0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

    const-string v1, "SRS_HeadsetOff"

    invoke-direct {v0, v1, v7}, Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;->SRS_HeadsetOff:Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

    .line 38
    new-instance v0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

    const-string v1, "No"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;->No:Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

    .line 32
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

    sget-object v1, Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;->Dts:Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;->Beats:Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;->SRS_Speaker:Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;->SRS_HeadsetOn:Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;->SRS_HeadsetOff:Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;->No:Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;->$VALUES:[Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

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
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    const-class v0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

    return-object v0
.end method

.method public static values()[Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;->$VALUES:[Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

    invoke-virtual {v0}, [Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

    return-object v0
.end method
