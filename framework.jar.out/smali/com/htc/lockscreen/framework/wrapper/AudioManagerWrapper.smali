.class public Lcom/htc/lockscreen/framework/wrapper/AudioManagerWrapper;
.super Ljava/lang/Object;
.source "AudioManagerWrapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUiSoundsStreamType(Landroid/media/AudioManager;)I
    .locals 1
    .param p0, "audioMng"    # Landroid/media/AudioManager;

    .prologue
    .line 14
    const/4 v0, 0x0

    .line 15
    .local v0, "type":I
    if-eqz p0, :cond_0

    .line 16
    invoke-virtual {p0}, Landroid/media/AudioManager;->getUiSoundsStreamType()I

    move-result v0

    .line 18
    :cond_0
    return v0
.end method

.method public static isStreamMute(Landroid/media/AudioManager;I)Z
    .locals 1
    .param p0, "audioMng"    # Landroid/media/AudioManager;
    .param p1, "type"    # I

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    return v0
.end method
