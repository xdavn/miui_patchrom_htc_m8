.class public Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;
.super Ljava/lang/Object;
.source "HtcAudioDevice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/htcsoundfx/HtcAudioDevice$HtcAudioDeviceStateObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HtcAudioDevice"

.field public static final TYPE_BTA2DP:I = 0x80

.field public static final TYPE_BTSUBWOOFER:I = 0x82

.field public static final TYPE_HEADSET:I = 0x4

.field public static final TYPE_OTHERS:I = 0x40000000

.field public static final TYPE_SPEAKER:I = 0x2

.field private static sInstance:Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;


# instance fields
.field private mAudioEndpointObserver:Lcom/android/server/audio/htcsoundfx/HtcAudioEndpointObserver;

.field private mDeviceName:Ljava/lang/String;

.field private mDeviceType:I

.field private mDualSpeaker:Z

.field private final mHtcAudioDeviceStateObserverList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/audio/htcsoundfx/HtcAudioDevice$HtcAudioDeviceStateObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mObserverLock:Ljava/lang/Object;

.field private mOutputDevice:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;->sInstance:Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v1, p0, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;->mOutputDevice:I

    .line 35
    iput v1, p0, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;->mDeviceType:I

    .line 36
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;->mDeviceName:Ljava/lang/String;

    .line 38
    iput-boolean v2, p0, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;->mDualSpeaker:Z

    .line 40
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;->mHtcAudioDeviceStateObserverList:Ljava/util/LinkedList;

    .line 41
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;->mLock:Ljava/lang/Object;

    .line 42
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;->mObserverLock:Ljava/lang/Object;

    .line 43
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;->mAudioEndpointObserver:Lcom/android/server/audio/htcsoundfx/HtcAudioEndpointObserver;

    .line 51
    const-string v1, "htc.audio.global.speaker"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 52
    .local v0, "dualSpeaker":I
    if-ne v0, v3, :cond_0

    .line 53
    iput-boolean v3, p0, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;->mDualSpeaker:Z

    .line 54
    :cond_0
    new-instance v1, Lcom/android/server/audio/htcsoundfx/HtcAudioEndpointObserver;

    invoke-direct {v1, p0}, Lcom/android/server/audio/htcsoundfx/HtcAudioEndpointObserver;-><init>(Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;)V

    iput-object v1, p0, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;->mAudioEndpointObserver:Lcom/android/server/audio/htcsoundfx/HtcAudioEndpointObserver;

    .line 56
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;
    .locals 2

    .prologue
    .line 66
    const-class v1, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;->sInstance:Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;

    invoke-direct {v0}, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;-><init>()V

    sput-object v0, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;->sInstance:Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;

    .line 68
    :cond_0
    sget-object v0, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;->sInstance:Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private notifyAudioDeviceStateChange()V
    .locals 5

    .prologue
    .line 115
    const-string v2, "HtcAudioDevice"

    const-string v3, "notifyAudioDeviceStateChange E"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v2, p0, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;->mHtcAudioDeviceStateObserverList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 117
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/htcsoundfx/HtcAudioDevice$HtcAudioDeviceStateObserver;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 118
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice$HtcAudioDeviceStateObserver;

    .line 119
    .local v1, "observer":Lcom/android/server/audio/htcsoundfx/HtcAudioDevice$HtcAudioDeviceStateObserver;
    if-eqz v1, :cond_0

    .line 120
    const-string v2, "HtcAudioDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyAudioDeviceStateChange : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-interface {v1}, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice$HtcAudioDeviceStateObserver;->onAudioDeviceChange()V

    goto :goto_0

    .line 124
    .end local v1    # "observer":Lcom/android/server/audio/htcsoundfx/HtcAudioDevice$HtcAudioDeviceStateObserver;
    :cond_1
    const-string v2, "HtcAudioDevice"

    const-string v3, "notifyAudioDeviceStateChange X"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return-void
.end method

.method private notifyAudioDeviceStateChange(Lcom/android/server/audio/htcsoundfx/HtcAudioDevice$HtcAudioDeviceStateObserver;)V
    .locals 2
    .param p1, "observer"    # Lcom/android/server/audio/htcsoundfx/HtcAudioDevice$HtcAudioDeviceStateObserver;

    .prologue
    .line 106
    const-string v0, "HtcAudioDevice"

    const-string v1, "notifyAudioDeviceStateChange E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-interface {p1}, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice$HtcAudioDeviceStateObserver;->onAudioDeviceChange()V

    .line 108
    const-string v0, "HtcAudioDevice"

    const-string v1, "notifyAudioDeviceStateChange X"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-void
.end method

.method private onSystemReady(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 186
    return-void
.end method

.method public static systemReady(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 182
    return-void
.end method


# virtual methods
.method public dump()V
    .locals 3

    .prologue
    .line 166
    const-string v0, "HtcAudioDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOutputDevice="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;->mOutputDevice:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mDeviceType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;->mDeviceType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 171
    :try_start_0
    const-string v1, "\nHtcAudioDevice status:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOutputDevice="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;->mOutputDevice:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mDeviceType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;->mDeviceType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 173
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :goto_0
    return-void

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HtcAudioDevice"

    const-string v2, "Dump HtcSoundEffect failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const-string v1, "  Dump HtcAudioDevice status failed"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;->mHtcAudioDeviceStateObserverList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;->mAudioEndpointObserver:Lcom/android/server/audio/htcsoundfx/HtcAudioEndpointObserver;

    .line 62
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 63
    return-void
.end method

.method public isDeviceOutput_Bt()Z
    .locals 2

    .prologue
    .line 144
    iget v0, p0, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;->mDeviceType:I

    const/16 v1, 0x80

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;->mDeviceType:I

    const/16 v1, 0x82

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDeviceOutput_BtHeadset()Z
    .locals 2

    .prologue
    .line 140
    iget v0, p0, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;->mDeviceType:I

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDeviceOutput_Headset()Z
    .locals 2

    .prologue
    .line 136
    iget v0, p0, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;->mDeviceType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDeviceOutput_Remote()Z
    .locals 2

    .prologue
    .line 128
    iget v0, p0, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;->mDeviceType:I

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDeviceOutput_Speaker()Z
    .locals 2

    .prologue
    .line 132
    iget v0, p0, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;->mDeviceType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDualSpeaker()Z
    .locals 3

    .prologue
    .line 148
    const-string v0, "HtcAudioDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDualSpeaker="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;->mDualSpeaker:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-boolean v0, p0, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;->mDualSpeaker:Z

    return v0
.end method

.method public isMusicActiveLocally()Z
    .locals 6

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 153
    invoke-static {v3, v2}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    .line 154
    .local v0, "active":Z
    invoke-static {v3, v2}, Landroid/media/AudioSystem;->isStreamActiveRemotely(II)Z

    move-result v1

    .line 155
    .local v1, "activeRemotely":Z
    const-string v3, "HtcAudioDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "music active="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", activeRemotely="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public isNotAudioHDStreamOnly()Z
    .locals 4

    .prologue
    .line 160
    const-string v1, "HD_stream_only"

    invoke-static {v1}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "HDStatus":Ljava/lang/String;
    const-string v1, "HtcAudioDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HDStatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const-string v1, "HD_stream_only=F"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public onDeviceStateChange(I)V
    .locals 5
    .param p1, "device"    # I

    .prologue
    .line 193
    const-string v2, "HtcAudioDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDeviceStateChange device="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const/4 v0, 0x0

    .line 196
    .local v0, "changed":Z
    iget-object v3, p0, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 197
    :try_start_0
    iput p1, p0, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;->mOutputDevice:I

    .line 199
    sparse-switch p1, :sswitch_data_0

    .line 222
    const/high16 v1, 0x40000000    # 2.0f

    .line 225
    .local v1, "type":I
    :goto_0
    iget v2, p0, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;->mDeviceType:I

    if-eq v1, v2, :cond_0

    .line 226
    iput v1, p0, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;->mDeviceType:I

    .line 227
    const/4 v0, 0x1

    .line 229
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    if-eqz v0, :cond_1

    .line 231
    iget-object v3, p0, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;->mObserverLock:Ljava/lang/Object;

    monitor-enter v3

    .line 232
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;->notifyAudioDeviceStateChange()V

    .line 233
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 235
    :cond_1
    return-void

    .line 204
    .end local v1    # "type":I
    :sswitch_0
    const/4 v1, 0x4

    .line 205
    .restart local v1    # "type":I
    goto :goto_0

    .line 209
    .end local v1    # "type":I
    :sswitch_1
    const/4 v1, 0x2

    .line 210
    .restart local v1    # "type":I
    goto :goto_0

    .line 215
    .end local v1    # "type":I
    :sswitch_2
    const/16 v1, 0x80

    .line 216
    .restart local v1    # "type":I
    goto :goto_0

    .line 219
    .end local v1    # "type":I
    :sswitch_3
    const/16 v1, 0x82

    .line 220
    .restart local v1    # "type":I
    goto :goto_0

    .line 229
    .end local v1    # "type":I
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 233
    .restart local v1    # "type":I
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 199
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_0
        0x8 -> :sswitch_0
        0x80 -> :sswitch_2
        0x82 -> :sswitch_3
        0x100 -> :sswitch_2
        0x200 -> :sswitch_2
        0x400000 -> :sswitch_1
    .end sparse-switch
.end method

.method public registerAudioDeviceStateObserver(Lcom/android/server/audio/htcsoundfx/HtcAudioDevice$HtcAudioDeviceStateObserver;)V
    .locals 4
    .param p1, "observer"    # Lcom/android/server/audio/htcsoundfx/HtcAudioDevice$HtcAudioDeviceStateObserver;

    .prologue
    .line 76
    iget-object v1, p0, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;->mObserverLock:Ljava/lang/Object;

    monitor-enter v1

    .line 77
    if-eqz p1, :cond_0

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;->mHtcAudioDeviceStateObserverList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 79
    const-string v0, "HtcAudioDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerAudioDeviceStateObserver : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;->mHtcAudioDeviceStateObserverList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 85
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    invoke-direct {p0, p1}, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;->notifyAudioDeviceStateChange(Lcom/android/server/audio/htcsoundfx/HtcAudioDevice$HtcAudioDeviceStateObserver;)V

    .line 87
    return-void

    .line 82
    :cond_1
    :try_start_1
    const-string v0, "HtcAudioDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "observer : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " already exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public unregisterAudioDeviceStateObserver(Lcom/android/server/audio/htcsoundfx/HtcAudioDevice$HtcAudioDeviceStateObserver;)V
    .locals 4
    .param p1, "observer"    # Lcom/android/server/audio/htcsoundfx/HtcAudioDevice$HtcAudioDeviceStateObserver;

    .prologue
    .line 94
    iget-object v1, p0, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;->mObserverLock:Ljava/lang/Object;

    monitor-enter v1

    .line 95
    if-eqz p1, :cond_0

    .line 96
    :try_start_0
    const-string v0, "HtcAudioDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterAudioDeviceStateObserver : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;->mHtcAudioDeviceStateObserverList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 99
    :cond_0
    monitor-exit v1

    .line 100
    return-void

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
