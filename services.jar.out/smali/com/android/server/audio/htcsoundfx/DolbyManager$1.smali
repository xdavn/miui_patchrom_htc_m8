.class Lcom/android/server/audio/htcsoundfx/DolbyManager$1;
.super Ljava/lang/Object;
.source "DolbyManager.java"

# interfaces
.implements Lcom/android/server/audio/htcsoundfx/dolby/IDsClientEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/htcsoundfx/DolbyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/htcsoundfx/DolbyManager;


# direct methods
.method constructor <init>(Lcom/android/server/audio/htcsoundfx/DolbyManager;)V
    .locals 0

    .prologue
    .line 494
    iput-object p1, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager$1;->this$0:Lcom/android/server/audio/htcsoundfx/DolbyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientConnected()V
    .locals 2

    .prologue
    .line 497
    const-string v0, "DolbyManager"

    const-string v1, "Dolby onClientConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager$1;->this$0:Lcom/android/server/audio/htcsoundfx/DolbyManager;

    iget-object v1, v0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 499
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager$1;->this$0:Lcom/android/server/audio/htcsoundfx/DolbyManager;

    invoke-virtual {v0}, Lcom/android/server/audio/htcsoundfx/DolbyManager;->updateSoundEffect()V

    .line 500
    monitor-exit v1

    .line 501
    return-void

    .line 500
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onClientDisconnected()V
    .locals 3

    .prologue
    .line 505
    const-string v0, "DolbyManager"

    const-string v1, "Dolby onClientDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager$1;->this$0:Lcom/android/server/audio/htcsoundfx/DolbyManager;

    iget-object v1, v0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 508
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager$1;->this$0:Lcom/android/server/audio/htcsoundfx/DolbyManager;

    const/4 v2, -0x1

    iput v2, v0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mCurrentSoundEffect:I

    .line 509
    monitor-exit v1

    .line 510
    return-void

    .line 509
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onDsOn(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 515
    const-string v0, "DolbyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onDsOn]+ on: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    return-void
.end method

.method public onEqSettingsChanged(II)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I

    .prologue
    .line 521
    return-void
.end method

.method public onProfileNameChanged(ILjava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    .line 526
    return-void
.end method

.method public onProfileSelected(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 531
    return-void
.end method

.method public onProfileSettingsChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 536
    return-void
.end method
