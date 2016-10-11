.class Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$1;
.super Ljava/lang/Object;
.source "HtcEffectManagerBase.java"

# interfaces
.implements Lcom/android/server/audio/htcsoundfx/HtcAudioDevice$HtcAudioDeviceStateObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;


# direct methods
.method constructor <init>(Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$1;->this$0:Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioDeviceChange()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$1;->this$0:Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;

    iget-object v1, v0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$1;->this$0:Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;

    invoke-virtual {v0}, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;->updateSoundEffect()V

    .line 74
    monitor-exit v1

    .line 75
    return-void

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
