.class public Lcom/android/server/audio/htcsoundfx/AudioSphereDolbyAdapter;
.super Lcom/android/server/audio/htcsoundfx/AudioSphereManager;
.source "AudioSphereDolbyAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioSphereDolbyAdapter"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/audio/AudioService;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "as"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/audio/AudioService;)V

    .line 17
    return-void
.end method


# virtual methods
.method public onMessageBeatsNotify(Z)V
    .locals 5
    .param p1, "refresh"    # Z

    .prologue
    .line 22
    iget-object v3, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereDolbyAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 23
    :try_start_0
    iget v2, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereDolbyAdapter;->mCurrentSoundEffect:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereDolbyAdapter;->mCurrentSoundEffect:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    const/4 v1, 0x1

    .line 24
    .local v1, "enabled":Z
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    iget-object v2, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereDolbyAdapter;->mAudioDevice:Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;

    invoke-virtual {v2}, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;->isMusicActiveLocally()Z

    move-result v0

    .line 27
    .local v0, "active":Z
    const-string v2, "AudioSphereDolbyAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMessageBeatsNotify active="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", enabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", refresh="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    return-void

    .line 23
    .end local v0    # "active":Z
    .end local v1    # "enabled":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 24
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public setSystemProperty(II)V
    .locals 4
    .param p1, "name"    # I
    .param p2, "value"    # I

    .prologue
    .line 31
    const-string v1, "AudioSphereDolbyAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSystemProperty name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    if-nez p1, :cond_0

    .line 34
    iget-object v1, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereDolbyAdapter;->mAudioDevice:Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;

    invoke-virtual {v1}, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;->isDeviceOutput_Speaker()Z

    move-result v0

    .line 35
    .local v0, "isSpeaker":Z
    if-eqz v0, :cond_1

    .line 36
    const/4 p1, 0x2

    .line 40
    :goto_0
    const-string v1, "AudioSphereDolbyAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convert name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .end local v0    # "isSpeaker":Z
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 56
    const-string v1, "AudioSphereDolbyAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown property name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :goto_1
    return-void

    .line 38
    .restart local v0    # "isSpeaker":Z
    :cond_1
    const/4 p1, 0x3

    goto :goto_0

    .line 46
    .end local v0    # "isSpeaker":Z
    :pswitch_0
    const/4 p1, 0x0

    .line 60
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->setSystemProperty(II)V

    goto :goto_1

    .line 49
    :pswitch_1
    const/4 p1, 0x1

    .line 50
    if-nez p2, :cond_2

    .line 51
    const/4 p2, 0x0

    goto :goto_2

    .line 53
    :cond_2
    const/4 p2, 0x1

    .line 54
    goto :goto_2

    .line 43
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
