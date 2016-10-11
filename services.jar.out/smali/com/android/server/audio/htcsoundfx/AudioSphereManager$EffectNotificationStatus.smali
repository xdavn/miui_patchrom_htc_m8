.class final enum Lcom/android/server/audio/htcsoundfx/AudioSphereManager$EffectNotificationStatus;
.super Ljava/lang/Enum;
.source "AudioSphereManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/htcsoundfx/AudioSphereManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "EffectNotificationStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/audio/htcsoundfx/AudioSphereManager$EffectNotificationStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/audio/htcsoundfx/AudioSphereManager$EffectNotificationStatus;

.field public static final enum No:Lcom/android/server/audio/htcsoundfx/AudioSphereManager$EffectNotificationStatus;

.field public static final enum SpeakerOff:Lcom/android/server/audio/htcsoundfx/AudioSphereManager$EffectNotificationStatus;

.field public static final enum SpeakerOn:Lcom/android/server/audio/htcsoundfx/AudioSphereManager$EffectNotificationStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-instance v0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager$EffectNotificationStatus;

    const-string v1, "SpeakerOn"

    invoke-direct {v0, v1, v2}, Lcom/android/server/audio/htcsoundfx/AudioSphereManager$EffectNotificationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager$EffectNotificationStatus;->SpeakerOn:Lcom/android/server/audio/htcsoundfx/AudioSphereManager$EffectNotificationStatus;

    .line 40
    new-instance v0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager$EffectNotificationStatus;

    const-string v1, "SpeakerOff"

    invoke-direct {v0, v1, v3}, Lcom/android/server/audio/htcsoundfx/AudioSphereManager$EffectNotificationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager$EffectNotificationStatus;->SpeakerOff:Lcom/android/server/audio/htcsoundfx/AudioSphereManager$EffectNotificationStatus;

    .line 41
    new-instance v0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager$EffectNotificationStatus;

    const-string v1, "No"

    invoke-direct {v0, v1, v4}, Lcom/android/server/audio/htcsoundfx/AudioSphereManager$EffectNotificationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager$EffectNotificationStatus;->No:Lcom/android/server/audio/htcsoundfx/AudioSphereManager$EffectNotificationStatus;

    .line 38
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/server/audio/htcsoundfx/AudioSphereManager$EffectNotificationStatus;

    sget-object v1, Lcom/android/server/audio/htcsoundfx/AudioSphereManager$EffectNotificationStatus;->SpeakerOn:Lcom/android/server/audio/htcsoundfx/AudioSphereManager$EffectNotificationStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/audio/htcsoundfx/AudioSphereManager$EffectNotificationStatus;->SpeakerOff:Lcom/android/server/audio/htcsoundfx/AudioSphereManager$EffectNotificationStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/audio/htcsoundfx/AudioSphereManager$EffectNotificationStatus;->No:Lcom/android/server/audio/htcsoundfx/AudioSphereManager$EffectNotificationStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager$EffectNotificationStatus;->$VALUES:[Lcom/android/server/audio/htcsoundfx/AudioSphereManager$EffectNotificationStatus;

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
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/audio/htcsoundfx/AudioSphereManager$EffectNotificationStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 38
    const-class v0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager$EffectNotificationStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager$EffectNotificationStatus;

    return-object v0
.end method

.method public static values()[Lcom/android/server/audio/htcsoundfx/AudioSphereManager$EffectNotificationStatus;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager$EffectNotificationStatus;->$VALUES:[Lcom/android/server/audio/htcsoundfx/AudioSphereManager$EffectNotificationStatus;

    invoke-virtual {v0}, [Lcom/android/server/audio/htcsoundfx/AudioSphereManager$EffectNotificationStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/audio/htcsoundfx/AudioSphereManager$EffectNotificationStatus;

    return-object v0
.end method
