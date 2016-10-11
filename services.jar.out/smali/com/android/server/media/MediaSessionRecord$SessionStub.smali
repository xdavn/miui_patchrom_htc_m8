.class final Lcom/android/server/media/MediaSessionRecord$SessionStub;
.super Landroid/media/session/ISession$Stub;
.source "MediaSessionRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SessionStub"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/MediaSessionRecord;


# direct methods
.method private constructor <init>(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 0

    .prologue
    .line 694
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-direct {p0}, Landroid/media/session/ISession$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/media/MediaSessionRecord;Lcom/android/server/media/MediaSessionRecord$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p2, "x1"    # Lcom/android/server/media/MediaSessionRecord$1;

    .prologue
    .line 694
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionRecord$SessionStub;-><init>(Lcom/android/server/media/MediaSessionRecord;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 697
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$600(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaSessionService;->destroySession(Lcom/android/server/media/MediaSessionRecord;)V

    .line 698
    return-void
.end method

.method public getController()Landroid/media/session/ISessionController;
    .locals 1

    .prologue
    .line 708
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mController:Lcom/android/server/media/MediaSessionRecord$ControllerStub;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$800(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$ControllerStub;

    move-result-object v0

    return-object v0
.end method

.method public sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 702
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$700(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    move-result-object v1

    const/4 v2, 0x6

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v2, p1, v0}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 704
    return-void

    .line 702
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public setActive(Z)V
    .locals 2
    .param p1, "active"    # Z

    .prologue
    .line 713
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # setter for: Lcom/android/server/media/MediaSessionRecord;->mIsActive:Z
    invoke-static {v0, p1}, Lcom/android/server/media/MediaSessionRecord;->access$902(Lcom/android/server/media/MediaSessionRecord;Z)Z

    .line 714
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$600(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaSessionService;->updateSession(Lcom/android/server/media/MediaSessionRecord;)V

    .line 715
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$700(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    .line 716
    return-void
.end method

.method public setCurrentVolume(I)V
    .locals 2
    .param p1, "volume"    # I

    .prologue
    .line 798
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # setter for: Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I
    invoke-static {v0, p1}, Lcom/android/server/media/MediaSessionRecord;->access$402(Lcom/android/server/media/MediaSessionRecord;I)I

    .line 799
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$700(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    .line 800
    return-void
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 785
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$1300(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 786
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    # setter for: Lcom/android/server/media/MediaSessionRecord;->mExtras:Landroid/os/Bundle;
    invoke-static {v2, v0}, Lcom/android/server/media/MediaSessionRecord;->access$1902(Lcom/android/server/media/MediaSessionRecord;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 787
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 788
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$700(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    .line 789
    return-void

    .line 786
    :cond_0
    :try_start_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    .line 787
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setFlags(I)V
    .locals 6
    .param p1, "flags"    # I

    .prologue
    .line 720
    const/high16 v2, 0x10000

    and-int/2addr v2, p1

    if-eqz v2, :cond_0

    .line 721
    invoke-static {}, Lcom/android/server/media/MediaSessionRecord$SessionStub;->getCallingPid()I

    move-result v0

    .line 722
    .local v0, "pid":I
    invoke-static {}, Lcom/android/server/media/MediaSessionRecord$SessionStub;->getCallingUid()I

    move-result v1

    .line 723
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;
    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord;->access$600(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/server/media/MediaSessionService;->enforcePhoneStatePermission(II)V

    .line 725
    .end local v0    # "pid":I
    .end local v1    # "uid":I
    :cond_0
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    int-to-long v4, p1

    # setter for: Lcom/android/server/media/MediaSessionRecord;->mFlags:J
    invoke-static {v2, v4, v5}, Lcom/android/server/media/MediaSessionRecord;->access$1002(Lcom/android/server/media/MediaSessionRecord;J)J

    .line 726
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;
    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord;->access$700(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    .line 727
    return-void
.end method

.method public setLaunchPendingIntent(Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 736
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # setter for: Lcom/android/server/media/MediaSessionRecord;->mLaunchIntent:Landroid/app/PendingIntent;
    invoke-static {v0, p1}, Lcom/android/server/media/MediaSessionRecord;->access$1202(Lcom/android/server/media/MediaSessionRecord;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 737
    return-void
.end method

.method public setMediaButtonReceiver(Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 731
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # setter for: Lcom/android/server/media/MediaSessionRecord;->mMediaButtonReceiver:Landroid/app/PendingIntent;
    invoke-static {v0, p1}, Lcom/android/server/media/MediaSessionRecord;->access$1102(Lcom/android/server/media/MediaSessionRecord;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 732
    return-void
.end method

.method public setMetadata(Landroid/media/MediaMetadata;)V
    .locals 3
    .param p1, "metadata"    # Landroid/media/MediaMetadata;

    .prologue
    .line 741
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->access$1300(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 742
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 747
    .local v0, "temp":Landroid/media/MediaMetadata;
    :goto_0
    if-eqz v0, :cond_0

    .line 748
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaMetadata;->size()I

    .line 750
    :cond_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # setter for: Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;
    invoke-static {v1, v0}, Lcom/android/server/media/MediaSessionRecord;->access$1402(Lcom/android/server/media/MediaSessionRecord;Landroid/media/MediaMetadata;)Landroid/media/MediaMetadata;

    .line 751
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 752
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;
    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->access$700(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    .line 753
    return-void

    .line 742
    .end local v0    # "temp":Landroid/media/MediaMetadata;
    :cond_1
    :try_start_1
    new-instance v1, Landroid/media/MediaMetadata$Builder;

    invoke-direct {v1, p1}, Landroid/media/MediaMetadata$Builder;-><init>(Landroid/media/MediaMetadata;)V

    invoke-virtual {v1}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    move-result-object v0

    goto :goto_0

    .line 751
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setPlaybackState(Landroid/media/session/PlaybackState;)V
    .locals 7
    .param p1, "state"    # Landroid/media/session/PlaybackState;

    .prologue
    const/4 v6, 0x2

    const/4 v0, 0x0

    .line 757
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;
    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord;->access$1500(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/session/PlaybackState;

    move-result-object v2

    if-nez v2, :cond_1

    move v1, v0

    .line 758
    .local v1, "oldState":I
    :goto_0
    if-nez p1, :cond_2

    .line 759
    .local v0, "newState":I
    :goto_1
    invoke-static {v1}, Landroid/media/session/MediaSession;->isActiveState(I)Z

    move-result v2

    if-eqz v2, :cond_0

    if-ne v0, v6, :cond_0

    .line 760
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    # setter for: Lcom/android/server/media/MediaSessionRecord;->mLastActiveTime:J
    invoke-static {v2, v4, v5}, Lcom/android/server/media/MediaSessionRecord;->access$1602(Lcom/android/server/media/MediaSessionRecord;J)J

    .line 762
    :cond_0
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord;->access$1300(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 763
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # setter for: Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;
    invoke-static {v2, p1}, Lcom/android/server/media/MediaSessionRecord;->access$1502(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/PlaybackState;)Landroid/media/session/PlaybackState;

    .line 764
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 765
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;
    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord;->access$600(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v2, v3, v1, v0}, Lcom/android/server/media/MediaSessionService;->onSessionPlaystateChange(Lcom/android/server/media/MediaSessionRecord;II)V

    .line 766
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;
    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord;->access$700(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    .line 767
    return-void

    .line 757
    .end local v0    # "newState":I
    .end local v1    # "oldState":I
    :cond_1
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;
    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord;->access$1500(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/session/PlaybackState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/session/PlaybackState;->getState()I

    move-result v1

    goto :goto_0

    .line 758
    .restart local v1    # "oldState":I
    :cond_2
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    goto :goto_1

    .line 764
    .restart local v0    # "newState":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public setPlaybackToLocal(Landroid/media/AudioAttributes;)V
    .locals 4
    .param p1, "attributes"    # Landroid/media/AudioAttributes;

    .prologue
    const/4 v0, 0x1

    .line 805
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->access$1300(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 806
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I
    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->access$2100(Lcom/android/server/media/MediaSessionRecord;)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 807
    .local v0, "typeChanged":Z
    :goto_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I
    invoke-static {v1, v3}, Lcom/android/server/media/MediaSessionRecord;->access$2102(Lcom/android/server/media/MediaSessionRecord;I)I

    .line 808
    if-eqz p1, :cond_2

    .line 809
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # setter for: Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;
    invoke-static {v1, p1}, Lcom/android/server/media/MediaSessionRecord;->access$2202(Lcom/android/server/media/MediaSessionRecord;Landroid/media/AudioAttributes;)Landroid/media/AudioAttributes;

    .line 813
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 814
    if-eqz v0, :cond_0

    .line 815
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;
    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->access$600(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v1, v2}, Lcom/android/server/media/MediaSessionService;->onSessionPlaybackTypeChanged(Lcom/android/server/media/MediaSessionRecord;)V

    .line 816
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;
    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->access$700(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    .line 818
    :cond_0
    return-void

    .line 806
    .end local v0    # "typeChanged":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 811
    .restart local v0    # "typeChanged":Z
    :cond_2
    :try_start_1
    const-string v1, "MediaSessionRecord"

    const-string v3, "Received null audio attributes, using existing attributes"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 813
    .end local v0    # "typeChanged":Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setPlaybackToRemote(II)V
    .locals 4
    .param p1, "control"    # I
    .param p2, "max"    # I

    .prologue
    const/4 v0, 0x1

    .line 823
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->access$1300(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 824
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I
    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->access$2100(Lcom/android/server/media/MediaSessionRecord;)I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 825
    .local v0, "typeChanged":Z
    :goto_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    const/4 v3, 0x2

    # setter for: Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I
    invoke-static {v1, v3}, Lcom/android/server/media/MediaSessionRecord;->access$2102(Lcom/android/server/media/MediaSessionRecord;I)I

    .line 826
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # setter for: Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I
    invoke-static {v1, p1}, Lcom/android/server/media/MediaSessionRecord;->access$2302(Lcom/android/server/media/MediaSessionRecord;I)I

    .line 827
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # setter for: Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I
    invoke-static {v1, p2}, Lcom/android/server/media/MediaSessionRecord;->access$2402(Lcom/android/server/media/MediaSessionRecord;I)I

    .line 828
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 829
    if-eqz v0, :cond_0

    .line 830
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;
    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->access$600(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v1, v2}, Lcom/android/server/media/MediaSessionService;->onSessionPlaybackTypeChanged(Lcom/android/server/media/MediaSessionRecord;)V

    .line 831
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;
    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->access$700(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    .line 833
    :cond_0
    return-void

    .line 824
    .end local v0    # "typeChanged":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 828
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setQueue(Landroid/content/pm/ParceledListSlice;)V
    .locals 2
    .param p1, "queue"    # Landroid/content/pm/ParceledListSlice;

    .prologue
    .line 771
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$1300(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 772
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # setter for: Lcom/android/server/media/MediaSessionRecord;->mQueue:Landroid/content/pm/ParceledListSlice;
    invoke-static {v0, p1}, Lcom/android/server/media/MediaSessionRecord;->access$1702(Lcom/android/server/media/MediaSessionRecord;Landroid/content/pm/ParceledListSlice;)Landroid/content/pm/ParceledListSlice;

    .line 773
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 774
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$700(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    .line 775
    return-void

    .line 773
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setQueueTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 779
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # setter for: Lcom/android/server/media/MediaSessionRecord;->mQueueTitle:Ljava/lang/CharSequence;
    invoke-static {v0, p1}, Lcom/android/server/media/MediaSessionRecord;->access$1802(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 780
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$700(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    .line 781
    return-void
.end method

.method public setRatingType(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 793
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # setter for: Lcom/android/server/media/MediaSessionRecord;->mRatingType:I
    invoke-static {v0, p1}, Lcom/android/server/media/MediaSessionRecord;->access$2002(Lcom/android/server/media/MediaSessionRecord;I)I

    .line 794
    return-void
.end method
