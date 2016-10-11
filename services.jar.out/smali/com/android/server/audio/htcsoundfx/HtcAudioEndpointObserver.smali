.class Lcom/android/server/audio/htcsoundfx/HtcAudioEndpointObserver;
.super Ljava/lang/Object;
.source "HtcAudioEndpointObserver.java"


# static fields
.field private static final AUDIO_ENDPOINT:Ljava/lang/String; = "htc.audio.effectendpoint"

.field private static final FILE_DIR:Ljava/lang/String; = "/data"

.field private static final FILE_PATH:Ljava/lang/String; = "effect_endpoint_update"

.field private static final TAG:Ljava/lang/String; = "HtcAudioEndpointObserver"


# instance fields
.field private mAudioDevice:Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;

.field private mFileObserver:Landroid/os/FileObserver;

.field private mStarted:Z


# direct methods
.method public constructor <init>(Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;)V
    .locals 2
    .param p1, "audioDevice"    # Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/htcsoundfx/HtcAudioEndpointObserver;->mStarted:Z

    .line 16
    iput-object v1, p0, Lcom/android/server/audio/htcsoundfx/HtcAudioEndpointObserver;->mFileObserver:Landroid/os/FileObserver;

    .line 17
    iput-object v1, p0, Lcom/android/server/audio/htcsoundfx/HtcAudioEndpointObserver;->mAudioDevice:Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;

    .line 20
    const-string v0, "HtcAudioEndpointObserver"

    const-string v1, "Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    iput-object p1, p0, Lcom/android/server/audio/htcsoundfx/HtcAudioEndpointObserver;->mAudioDevice:Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;

    .line 22
    invoke-direct {p0}, Lcom/android/server/audio/htcsoundfx/HtcAudioEndpointObserver;->startObserver()V

    .line 23
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/audio/htcsoundfx/HtcAudioEndpointObserver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/htcsoundfx/HtcAudioEndpointObserver;

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/android/server/audio/htcsoundfx/HtcAudioEndpointObserver;->updateAudioEndpoint()V

    return-void
.end method

.method private getDeviceFromSystemProperty()I
    .locals 2

    .prologue
    .line 31
    const-string v0, "htc.audio.effectendpoint"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private declared-synchronized releaseObserver()V
    .locals 1

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/HtcAudioEndpointObserver;->mFileObserver:Landroid/os/FileObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 73
    :goto_0
    monitor-exit p0

    return-void

    .line 70
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/HtcAudioEndpointObserver;->mFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/audio/htcsoundfx/HtcAudioEndpointObserver;->mFileObserver:Landroid/os/FileObserver;

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/htcsoundfx/HtcAudioEndpointObserver;->mStarted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized startObserver()V
    .locals 3

    .prologue
    .line 40
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/audio/htcsoundfx/HtcAudioEndpointObserver;->mStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 59
    :goto_0
    monitor-exit p0

    return-void

    .line 42
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/audio/htcsoundfx/HtcAudioEndpointObserver;->mStarted:Z

    .line 43
    const-string v0, "HtcAudioEndpointObserver"

    const-string v1, "startObserver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    new-instance v0, Lcom/android/server/audio/htcsoundfx/HtcAudioEndpointObserver$1;

    const-string v1, "/data"

    const/16 v2, 0x408

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/audio/htcsoundfx/HtcAudioEndpointObserver$1;-><init>(Lcom/android/server/audio/htcsoundfx/HtcAudioEndpointObserver;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/audio/htcsoundfx/HtcAudioEndpointObserver;->mFileObserver:Landroid/os/FileObserver;

    .line 57
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/HtcAudioEndpointObserver;->mFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    .line 58
    invoke-direct {p0}, Lcom/android/server/audio/htcsoundfx/HtcAudioEndpointObserver;->updateAudioEndpoint()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateAudioEndpoint()V
    .locals 2

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/server/audio/htcsoundfx/HtcAudioEndpointObserver;->getDeviceFromSystemProperty()I

    move-result v0

    .line 63
    .local v0, "endpoint":I
    iget-object v1, p0, Lcom/android/server/audio/htcsoundfx/HtcAudioEndpointObserver;->mAudioDevice:Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;

    invoke-virtual {v1, v0}, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;->onDeviceStateChange(I)V

    .line 64
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/server/audio/htcsoundfx/HtcAudioEndpointObserver;->releaseObserver()V

    .line 28
    return-void
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method
