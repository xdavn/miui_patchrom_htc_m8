.class Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ManagerEventHandler;
.super Landroid/os/Handler;
.source "HtcEffectManagerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ManagerEventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;


# direct methods
.method constructor <init>(Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ManagerEventHandler;->this$0:Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;

    .line 242
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 243
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 247
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 264
    :goto_0
    return-void

    .line 249
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_0

    .line 250
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ManagerEventHandler;->this$0:Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;

    invoke-virtual {v0, v1}, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;->onMessageBeatsNotify(Z)V

    goto :goto_0

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ManagerEventHandler;->this$0:Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;

    invoke-virtual {v0}, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;->onMessageBeatsNotify()V

    goto :goto_0

    .line 256
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ManagerEventHandler;->this$0:Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;->onPersistProperty(II)V

    goto :goto_0

    .line 259
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ManagerEventHandler;->this$0:Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;

    iget-object v1, v0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 260
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ManagerEventHandler;->this$0:Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;

    invoke-virtual {v0}, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;->updateSoundEffect()V

    .line 261
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 247
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
