.class final enum Lcom/android/server/audio/htcsoundfx/DolbyManager$EffectNotificationStatus;
.super Ljava/lang/Enum;
.source "DolbyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/htcsoundfx/DolbyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "EffectNotificationStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/audio/htcsoundfx/DolbyManager$EffectNotificationStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/audio/htcsoundfx/DolbyManager$EffectNotificationStatus;

.field public static final enum HeadsetOff:Lcom/android/server/audio/htcsoundfx/DolbyManager$EffectNotificationStatus;

.field public static final enum HeadsetOn:Lcom/android/server/audio/htcsoundfx/DolbyManager$EffectNotificationStatus;

.field public static final enum No:Lcom/android/server/audio/htcsoundfx/DolbyManager$EffectNotificationStatus;

.field public static final enum SpeakerOff:Lcom/android/server/audio/htcsoundfx/DolbyManager$EffectNotificationStatus;

.field public static final enum SpeakerOn:Lcom/android/server/audio/htcsoundfx/DolbyManager$EffectNotificationStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 56
    new-instance v0, Lcom/android/server/audio/htcsoundfx/DolbyManager$EffectNotificationStatus;

    const-string v1, "SpeakerOn"

    invoke-direct {v0, v1, v2}, Lcom/android/server/audio/htcsoundfx/DolbyManager$EffectNotificationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/audio/htcsoundfx/DolbyManager$EffectNotificationStatus;->SpeakerOn:Lcom/android/server/audio/htcsoundfx/DolbyManager$EffectNotificationStatus;

    .line 57
    new-instance v0, Lcom/android/server/audio/htcsoundfx/DolbyManager$EffectNotificationStatus;

    const-string v1, "SpeakerOff"

    invoke-direct {v0, v1, v3}, Lcom/android/server/audio/htcsoundfx/DolbyManager$EffectNotificationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/audio/htcsoundfx/DolbyManager$EffectNotificationStatus;->SpeakerOff:Lcom/android/server/audio/htcsoundfx/DolbyManager$EffectNotificationStatus;

    .line 58
    new-instance v0, Lcom/android/server/audio/htcsoundfx/DolbyManager$EffectNotificationStatus;

    const-string v1, "HeadsetOn"

    invoke-direct {v0, v1, v4}, Lcom/android/server/audio/htcsoundfx/DolbyManager$EffectNotificationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/audio/htcsoundfx/DolbyManager$EffectNotificationStatus;->HeadsetOn:Lcom/android/server/audio/htcsoundfx/DolbyManager$EffectNotificationStatus;

    .line 59
    new-instance v0, Lcom/android/server/audio/htcsoundfx/DolbyManager$EffectNotificationStatus;

    const-string v1, "HeadsetOff"

    invoke-direct {v0, v1, v5}, Lcom/android/server/audio/htcsoundfx/DolbyManager$EffectNotificationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/audio/htcsoundfx/DolbyManager$EffectNotificationStatus;->HeadsetOff:Lcom/android/server/audio/htcsoundfx/DolbyManager$EffectNotificationStatus;

    .line 60
    new-instance v0, Lcom/android/server/audio/htcsoundfx/DolbyManager$EffectNotificationStatus;

    const-string v1, "No"

    invoke-direct {v0, v1, v6}, Lcom/android/server/audio/htcsoundfx/DolbyManager$EffectNotificationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/audio/htcsoundfx/DolbyManager$EffectNotificationStatus;->No:Lcom/android/server/audio/htcsoundfx/DolbyManager$EffectNotificationStatus;

    .line 55
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/server/audio/htcsoundfx/DolbyManager$EffectNotificationStatus;

    sget-object v1, Lcom/android/server/audio/htcsoundfx/DolbyManager$EffectNotificationStatus;->SpeakerOn:Lcom/android/server/audio/htcsoundfx/DolbyManager$EffectNotificationStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/audio/htcsoundfx/DolbyManager$EffectNotificationStatus;->SpeakerOff:Lcom/android/server/audio/htcsoundfx/DolbyManager$EffectNotificationStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/audio/htcsoundfx/DolbyManager$EffectNotificationStatus;->HeadsetOn:Lcom/android/server/audio/htcsoundfx/DolbyManager$EffectNotificationStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/audio/htcsoundfx/DolbyManager$EffectNotificationStatus;->HeadsetOff:Lcom/android/server/audio/htcsoundfx/DolbyManager$EffectNotificationStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/audio/htcsoundfx/DolbyManager$EffectNotificationStatus;->No:Lcom/android/server/audio/htcsoundfx/DolbyManager$EffectNotificationStatus;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/server/audio/htcsoundfx/DolbyManager$EffectNotificationStatus;->$VALUES:[Lcom/android/server/audio/htcsoundfx/DolbyManager$EffectNotificationStatus;

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
    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/audio/htcsoundfx/DolbyManager$EffectNotificationStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 55
    const-class v0, Lcom/android/server/audio/htcsoundfx/DolbyManager$EffectNotificationStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/htcsoundfx/DolbyManager$EffectNotificationStatus;

    return-object v0
.end method

.method public static values()[Lcom/android/server/audio/htcsoundfx/DolbyManager$EffectNotificationStatus;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/android/server/audio/htcsoundfx/DolbyManager$EffectNotificationStatus;->$VALUES:[Lcom/android/server/audio/htcsoundfx/DolbyManager$EffectNotificationStatus;

    invoke-virtual {v0}, [Lcom/android/server/audio/htcsoundfx/DolbyManager$EffectNotificationStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/audio/htcsoundfx/DolbyManager$EffectNotificationStatus;

    return-object v0
.end method
