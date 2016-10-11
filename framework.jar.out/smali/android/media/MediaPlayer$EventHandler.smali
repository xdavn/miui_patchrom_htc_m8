.class Landroid/media/MediaPlayer$EventHandler;
.super Landroid/os/Handler;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field final synthetic this$0:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/os/Looper;)V
    .locals 0
    .param p2, "mp"    # Landroid/media/MediaPlayer;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2894
    iput-object p1, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    .line 2895
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2896
    iput-object p2, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 2897
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2901
    iget-object v10, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mNativeContext:J
    invoke-static {v10}, Landroid/media/MediaPlayer;->access$500(Landroid/media/MediaPlayer;)J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_1

    .line 2902
    const-string v10, "MediaPlayer"

    const-string/jumbo v11, "mediaplayer went away with unhandled events"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3128
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 2905
    :cond_1
    iget v10, p1, Landroid/os/Message;->what:I

    sparse-switch v10, :sswitch_data_0

    .line 3125
    const-string v10, "MediaPlayer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown message type "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p1, Landroid/os/Message;->what:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2908
    :sswitch_1
    :try_start_0
    iget-object v10, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # invokes: Landroid/media/MediaPlayer;->scanInternalSubtitleTracks()V
    invoke-static {v10}, Landroid/media/MediaPlayer;->access$600(Landroid/media/MediaPlayer;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2917
    :goto_1
    iget-object v10, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
    invoke-static {v10}, Landroid/media/MediaPlayer;->access$700(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 2918
    iget-object v10, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
    invoke-static {v10}, Landroid/media/MediaPlayer;->access$700(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v10

    iget-object v11, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v10, v11}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    goto :goto_0

    .line 2909
    :catch_0
    move-exception v2

    .line 2913
    .local v2, "e":Ljava/lang/RuntimeException;
    const/16 v10, 0x64

    const/4 v11, 0x1

    const/16 v12, -0x3f2

    const/4 v13, 0x0

    invoke-virtual {p0, v10, v11, v12, v13}, Landroid/media/MediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 2915
    .local v6, "msg2":Landroid/os/Message;
    invoke-virtual {p0, v6}, Landroid/media/MediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 2922
    .end local v2    # "e":Ljava/lang/RuntimeException;
    .end local v6    # "msg2":Landroid/os/Message;
    :sswitch_2
    iget-object v10, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v10}, Landroid/media/MediaPlayer;->access$800(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 2923
    iget-object v10, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v10}, Landroid/media/MediaPlayer;->access$800(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v10

    iget-object v11, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v10, v11}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 2924
    :cond_2
    iget-object v10, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    const/4 v11, 0x0

    # invokes: Landroid/media/MediaPlayer;->stayAwake(Z)V
    invoke-static {v10, v11}, Landroid/media/MediaPlayer;->access$900(Landroid/media/MediaPlayer;Z)V

    goto :goto_0

    .line 2929
    :sswitch_3
    iget-object v10, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;
    invoke-static {v10}, Landroid/media/MediaPlayer;->access$100(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v9

    .line 2930
    .local v9, "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    if-eqz v9, :cond_0

    .line 2931
    invoke-virtual {v9}, Landroid/media/MediaPlayer$TimeProvider;->onStopped()V

    goto :goto_0

    .line 2939
    .end local v9    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    :sswitch_4
    iget-object v10, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;
    invoke-static {v10}, Landroid/media/MediaPlayer;->access$100(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v9

    .line 2940
    .restart local v9    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    if-eqz v9, :cond_0

    .line 2941
    iget v10, p1, Landroid/os/Message;->what:I

    const/4 v11, 0x7

    if-ne v10, v11, :cond_3

    const/4 v10, 0x1

    :goto_2
    invoke-virtual {v9, v10}, Landroid/media/MediaPlayer$TimeProvider;->onPaused(Z)V

    goto :goto_0

    :cond_3
    const/4 v10, 0x0

    goto :goto_2

    .line 2947
    .end local v9    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    :sswitch_5
    iget-object v10, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    invoke-static {v10}, Landroid/media/MediaPlayer;->access$1000(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 2948
    iget-object v10, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    invoke-static {v10}, Landroid/media/MediaPlayer;->access$1000(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    move-result-object v10

    iget-object v11, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v12, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v10, v11, v12}, Landroid/media/MediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Landroid/media/MediaPlayer;I)V

    goto/16 :goto_0

    .line 2952
    :sswitch_6
    iget-object v10, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;
    invoke-static {v10}, Landroid/media/MediaPlayer;->access$1100(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSeekCompleteListener;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 2953
    iget-object v10, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;
    invoke-static {v10}, Landroid/media/MediaPlayer;->access$1100(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSeekCompleteListener;

    move-result-object v10

    iget-object v11, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v10, v11}, Landroid/media/MediaPlayer$OnSeekCompleteListener;->onSeekComplete(Landroid/media/MediaPlayer;)V

    .line 2959
    :cond_4
    :sswitch_7
    iget-object v10, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;
    invoke-static {v10}, Landroid/media/MediaPlayer;->access$100(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v9

    .line 2960
    .restart local v9    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    if-eqz v9, :cond_0

    .line 2961
    iget-object v10, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v9, v10}, Landroid/media/MediaPlayer$TimeProvider;->onSeekComplete(Landroid/media/MediaPlayer;)V

    goto/16 :goto_0

    .line 2967
    .end local v9    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    :sswitch_8
    iget-object v10, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
    invoke-static {v10}, Landroid/media/MediaPlayer;->access$1200(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 2968
    iget-object v10, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
    invoke-static {v10}, Landroid/media/MediaPlayer;->access$1200(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    move-result-object v10

    iget-object v11, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v12, p1, Landroid/os/Message;->arg1:I

    iget v13, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v10, v11, v12, v13}, Landroid/media/MediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Landroid/media/MediaPlayer;II)V

    goto/16 :goto_0

    .line 2974
    :sswitch_9
    const-string v10, "MediaPlayer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2975
    const/4 v3, 0x0

    .line 2976
    .local v3, "error_was_handled":Z
    iget-object v10, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
    invoke-static {v10}, Landroid/media/MediaPlayer;->access$1300(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 2977
    iget-object v10, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
    invoke-static {v10}, Landroid/media/MediaPlayer;->access$1300(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v10

    iget-object v11, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v12, p1, Landroid/os/Message;->arg1:I

    iget v13, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v10, v11, v12, v13}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v3

    .line 2979
    :cond_5
    iget-object v10, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v10}, Landroid/media/MediaPlayer;->access$800(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v10

    if-eqz v10, :cond_6

    if-nez v3, :cond_6

    .line 2980
    iget-object v10, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v10}, Landroid/media/MediaPlayer;->access$800(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v10

    iget-object v11, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v10, v11}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 2982
    :cond_6
    iget-object v10, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    const/4 v11, 0x0

    # invokes: Landroid/media/MediaPlayer;->stayAwake(Z)V
    invoke-static {v10, v11}, Landroid/media/MediaPlayer;->access$900(Landroid/media/MediaPlayer;Z)V

    goto/16 :goto_0

    .line 2986
    .end local v3    # "error_was_handled":Z
    :sswitch_a
    iget v10, p1, Landroid/os/Message;->arg1:I

    sparse-switch v10, :sswitch_data_1

    .line 3016
    :cond_7
    :goto_3
    iget-object v10, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;
    invoke-static {v10}, Landroid/media/MediaPlayer;->access$1400(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnInfoListener;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 3017
    iget-object v10, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;
    invoke-static {v10}, Landroid/media/MediaPlayer;->access$1400(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnInfoListener;

    move-result-object v10

    iget-object v11, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v12, p1, Landroid/os/Message;->arg1:I

    iget v13, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v10, v11, v12, v13}, Landroid/media/MediaPlayer$OnInfoListener;->onInfo(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0

    .line 2988
    :sswitch_b
    const-string v10, "MediaPlayer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Info ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2992
    :sswitch_c
    :try_start_1
    iget-object v10, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # invokes: Landroid/media/MediaPlayer;->scanInternalSubtitleTracks()V
    invoke-static {v10}, Landroid/media/MediaPlayer;->access$600(Landroid/media/MediaPlayer;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3001
    :goto_4
    :sswitch_d
    const/16 v10, 0x322

    iput v10, p1, Landroid/os/Message;->arg1:I

    .line 3003
    iget-object v10, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;
    invoke-static {v10}, Landroid/media/MediaPlayer;->access$000(Landroid/media/MediaPlayer;)Landroid/media/SubtitleController;

    move-result-object v10

    if-eqz v10, :cond_7

    .line 3004
    iget-object v10, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;
    invoke-static {v10}, Landroid/media/MediaPlayer;->access$000(Landroid/media/MediaPlayer;)Landroid/media/SubtitleController;

    move-result-object v10

    invoke-virtual {v10}, Landroid/media/SubtitleController;->selectDefaultTrack()V

    goto :goto_3

    .line 2993
    :catch_1
    move-exception v2

    .line 2994
    .restart local v2    # "e":Ljava/lang/RuntimeException;
    const/16 v10, 0x64

    const/4 v11, 0x1

    const/16 v12, -0x3f2

    const/4 v13, 0x0

    invoke-virtual {p0, v10, v11, v12, v13}, Landroid/media/MediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 2996
    .restart local v6    # "msg2":Landroid/os/Message;
    invoke-virtual {p0, v6}, Landroid/media/MediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4

    .line 3009
    .end local v2    # "e":Ljava/lang/RuntimeException;
    .end local v6    # "msg2":Landroid/os/Message;
    :sswitch_e
    iget-object v10, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;
    invoke-static {v10}, Landroid/media/MediaPlayer;->access$100(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v9

    .line 3010
    .restart local v9    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    if-eqz v9, :cond_7

    .line 3011
    iget v10, p1, Landroid/os/Message;->arg1:I

    const/16 v11, 0x2bd

    if-ne v10, v11, :cond_8

    const/4 v10, 0x1

    :goto_5
    invoke-virtual {v9, v10}, Landroid/media/MediaPlayer$TimeProvider;->onBuffering(Z)V

    goto/16 :goto_3

    :cond_8
    const/4 v10, 0x0

    goto :goto_5

    .line 3022
    .end local v9    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    :sswitch_f
    iget-object v10, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;
    invoke-static {v10}, Landroid/media/MediaPlayer;->access$1500(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedTextListener;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 3024
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v10, :cond_9

    .line 3025
    iget-object v10, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;
    invoke-static {v10}, Landroid/media/MediaPlayer;->access$1500(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedTextListener;

    move-result-object v10

    iget-object v11, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Landroid/media/MediaPlayer$OnTimedTextListener;->onTimedText(Landroid/media/MediaPlayer;Landroid/media/TimedText;)V

    goto/16 :goto_0

    .line 3027
    :cond_9
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v10, v10, Landroid/os/Parcel;

    if-eqz v10, :cond_0

    .line 3028
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/Parcel;

    .line 3029
    .local v7, "parcel":Landroid/os/Parcel;
    new-instance v8, Landroid/media/TimedText;

    invoke-direct {v8, v7}, Landroid/media/TimedText;-><init>(Landroid/os/Parcel;)V

    .line 3030
    .local v8, "text":Landroid/media/TimedText;
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 3031
    iget-object v10, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;
    invoke-static {v10}, Landroid/media/MediaPlayer;->access$1500(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedTextListener;

    move-result-object v10

    iget-object v11, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v10, v11, v8}, Landroid/media/MediaPlayer$OnTimedTextListener;->onTimedText(Landroid/media/MediaPlayer;Landroid/media/TimedText;)V

    goto/16 :goto_0

    .line 3037
    .end local v7    # "parcel":Landroid/os/Parcel;
    .end local v8    # "text":Landroid/media/TimedText;
    :sswitch_10
    iget-object v10, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;
    invoke-static {v10}, Landroid/media/MediaPlayer;->access$1600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSubtitleDataListener;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 3040
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v10, v10, Landroid/os/Parcel;

    if-eqz v10, :cond_0

    .line 3041
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/Parcel;

    .line 3042
    .restart local v7    # "parcel":Landroid/os/Parcel;
    new-instance v1, Landroid/media/SubtitleData;

    invoke-direct {v1, v7}, Landroid/media/SubtitleData;-><init>(Landroid/os/Parcel;)V

    .line 3043
    .local v1, "data":Landroid/media/SubtitleData;
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 3044
    iget-object v10, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;
    invoke-static {v10}, Landroid/media/MediaPlayer;->access$1600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSubtitleDataListener;

    move-result-object v10

    iget-object v11, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v10, v11, v1}, Landroid/media/MediaPlayer$OnSubtitleDataListener;->onSubtitleData(Landroid/media/MediaPlayer;Landroid/media/SubtitleData;)V

    goto/16 :goto_0

    .line 3049
    .end local v1    # "data":Landroid/media/SubtitleData;
    .end local v7    # "parcel":Landroid/os/Parcel;
    :sswitch_11
    iget-object v10, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnTimedMetaDataAvailableListener:Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;
    invoke-static {v10}, Landroid/media/MediaPlayer;->access$1700(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 3052
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v10, v10, Landroid/os/Parcel;

    if-eqz v10, :cond_0

    .line 3053
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/Parcel;

    .line 3054
    .restart local v7    # "parcel":Landroid/os/Parcel;
    invoke-static {v7}, Landroid/media/TimedMetaData;->createTimedMetaDataFromParcel(Landroid/os/Parcel;)Landroid/media/TimedMetaData;

    move-result-object v1

    .line 3055
    .local v1, "data":Landroid/media/TimedMetaData;
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 3056
    iget-object v10, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnTimedMetaDataAvailableListener:Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;
    invoke-static {v10}, Landroid/media/MediaPlayer;->access$1700(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;

    move-result-object v10

    iget-object v11, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v10, v11, v1}, Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;->onTimedMetaDataAvailable(Landroid/media/MediaPlayer;Landroid/media/TimedMetaData;)V

    goto/16 :goto_0

    .line 3065
    .end local v1    # "data":Landroid/media/TimedMetaData;
    .end local v7    # "parcel":Landroid/os/Parcel;
    :sswitch_12
    iget v10, p1, Landroid/os/Message;->arg1:I

    if-eqz v10, :cond_c

    const/4 v4, 0x1

    .line 3066
    .local v4, "isOffloadNow":Z
    :goto_6
    const-string v10, "MediaPlayer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Is using offload now: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3067
    iget-object v10, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mIsPartialWake:Z
    invoke-static {v10}, Landroid/media/MediaPlayer;->access$1800(Landroid/media/MediaPlayer;)Z

    move-result v10

    if-eqz v10, :cond_a

    if-eqz v4, :cond_a

    .line 3068
    iget-object v10, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    const/4 v11, 0x0

    # invokes: Landroid/media/MediaPlayer;->stayAwake(Z)V
    invoke-static {v10, v11}, Landroid/media/MediaPlayer;->access$900(Landroid/media/MediaPlayer;Z)V

    .line 3070
    :cond_a
    if-nez v4, :cond_b

    iget-object v10, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mAudioOffload:Z
    invoke-static {v10}, Landroid/media/MediaPlayer;->access$1900(Landroid/media/MediaPlayer;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 3071
    iget-object v10, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    const/4 v11, 0x1

    # invokes: Landroid/media/MediaPlayer;->stayAwake(Z)V
    invoke-static {v10, v11}, Landroid/media/MediaPlayer;->access$900(Landroid/media/MediaPlayer;Z)V

    .line 3073
    :cond_b
    iget-object v10, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # setter for: Landroid/media/MediaPlayer;->mAudioOffload:Z
    invoke-static {v10, v4}, Landroid/media/MediaPlayer;->access$1902(Landroid/media/MediaPlayer;Z)Z

    goto/16 :goto_0

    .line 3065
    .end local v4    # "isOffloadNow":Z
    :cond_c
    const/4 v4, 0x0

    goto :goto_6

    .line 3079
    :sswitch_13
    iget-object v10, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnClosedCaptionListener:Landroid/media/MediaPlayer$OnClosedCaptionListener;
    invoke-static {v10}, Landroid/media/MediaPlayer;->access$2000(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnClosedCaptionListener;

    move-result-object v10

    if-nez v10, :cond_d

    .line 3081
    const-string v10, "MediaPlayer"

    const-string v11, "MEDIA_CLOSED_CAPTION failed, no mOnClosedCaptionListener "

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3085
    :cond_d
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v10, :cond_e

    .line 3087
    const-string v10, "MediaPlayer"

    const-string v11, "MEDIA_CLOSED_CAPTION , onClosedCaption return null"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3088
    iget-object v10, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnClosedCaptionListener:Landroid/media/MediaPlayer$OnClosedCaptionListener;
    invoke-static {v10}, Landroid/media/MediaPlayer;->access$2000(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnClosedCaptionListener;

    move-result-object v10

    iget-object v11, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Landroid/media/MediaPlayer$OnClosedCaptionListener;->onClosedCaption(Landroid/media/MediaPlayer;Landroid/media/ClosedCaption;)V

    goto/16 :goto_0

    .line 3092
    :cond_e
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v10, v10, Landroid/os/Parcel;

    if-eqz v10, :cond_0

    .line 3093
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/Parcel;

    .line 3094
    .restart local v7    # "parcel":Landroid/os/Parcel;
    new-instance v0, Landroid/media/ClosedCaption;

    invoke-direct {v0, v7}, Landroid/media/ClosedCaption;-><init>(Landroid/os/Parcel;)V

    .line 3095
    .local v0, "cc":Landroid/media/ClosedCaption;
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 3097
    invoke-virtual {v0}, Landroid/media/ClosedCaption;->getLanguageList()Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_f

    .line 3099
    invoke-virtual {v0}, Landroid/media/ClosedCaption;->getLanguageList()Ljava/util/List;

    move-result-object v5

    .line 3100
    .local v5, "list":Ljava/util/List;
    iget-object v10, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnClosedCaptionListener:Landroid/media/MediaPlayer$OnClosedCaptionListener;
    invoke-static {v10}, Landroid/media/MediaPlayer;->access$2000(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnClosedCaptionListener;

    move-result-object v10

    iget-object v11, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v10, v11, v5}, Landroid/media/MediaPlayer$OnClosedCaptionListener;->onLanguageList(Landroid/media/MediaPlayer;Ljava/util/List;)V

    .line 3103
    .end local v5    # "list":Ljava/util/List;
    :cond_f
    invoke-virtual {v0}, Landroid/media/ClosedCaption;->getRegionList()Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_10

    .line 3105
    invoke-virtual {v0}, Landroid/media/ClosedCaption;->getRegionList()Ljava/util/List;

    move-result-object v5

    .line 3106
    .restart local v5    # "list":Ljava/util/List;
    iget-object v10, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnClosedCaptionListener:Landroid/media/MediaPlayer$OnClosedCaptionListener;
    invoke-static {v10}, Landroid/media/MediaPlayer;->access$2000(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnClosedCaptionListener;

    move-result-object v10

    iget-object v11, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v10, v11, v5}, Landroid/media/MediaPlayer$OnClosedCaptionListener;->onRegionList(Landroid/media/MediaPlayer;Ljava/util/List;)V

    .line 3109
    .end local v5    # "list":Ljava/util/List;
    :cond_10
    invoke-virtual {v0}, Landroid/media/ClosedCaption;->getLanguageList()Ljava/util/List;

    move-result-object v10

    if-nez v10, :cond_11

    invoke-virtual {v0}, Landroid/media/ClosedCaption;->getRegionList()Ljava/util/List;

    move-result-object v10

    if-nez v10, :cond_11

    .line 3111
    iget-object v10, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnClosedCaptionListener:Landroid/media/MediaPlayer$OnClosedCaptionListener;
    invoke-static {v10}, Landroid/media/MediaPlayer;->access$2000(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnClosedCaptionListener;

    move-result-object v10

    iget-object v11, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v10, v11, v0}, Landroid/media/MediaPlayer$OnClosedCaptionListener;->onClosedCaption(Landroid/media/MediaPlayer;Landroid/media/ClosedCaption;)V

    .line 3114
    :cond_11
    invoke-virtual {v0}, Landroid/media/ClosedCaption;->getLogoList()Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 3116
    const-string v10, "MediaPlayer"

    const-string v11, "MEDIA_CLOSED_CAPTION , onLogo"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3117
    iget-object v10, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnClosedCaptionListener:Landroid/media/MediaPlayer$OnClosedCaptionListener;
    invoke-static {v10}, Landroid/media/MediaPlayer;->access$2000(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnClosedCaptionListener;

    move-result-object v10

    iget-object v11, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v10, v11, v0}, Landroid/media/MediaPlayer$OnClosedCaptionListener;->onLogo(Landroid/media/MediaPlayer;Landroid/media/ClosedCaption;)V

    goto/16 :goto_0

    .line 2905
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_5
        0x4 -> :sswitch_6
        0x5 -> :sswitch_8
        0x6 -> :sswitch_4
        0x7 -> :sswitch_4
        0x8 -> :sswitch_3
        0x9 -> :sswitch_7
        0x63 -> :sswitch_f
        0x64 -> :sswitch_9
        0x69 -> :sswitch_13
        0xc8 -> :sswitch_a
        0xc9 -> :sswitch_10
        0xca -> :sswitch_11
        0x1f4 -> :sswitch_12
    .end sparse-switch

    .line 2986
    :sswitch_data_1
    .sparse-switch
        0x2bc -> :sswitch_b
        0x2bd -> :sswitch_e
        0x2be -> :sswitch_e
        0x322 -> :sswitch_c
        0x323 -> :sswitch_d
    .end sparse-switch
.end method
