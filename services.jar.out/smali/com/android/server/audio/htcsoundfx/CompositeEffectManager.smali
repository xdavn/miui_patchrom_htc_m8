.class public Lcom/android/server/audio/htcsoundfx/CompositeEffectManager;
.super Ljava/lang/Object;
.source "CompositeEffectManager.java"

# interfaces
.implements Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;


# instance fields
.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;)V
    .locals 1
    .param p1, "effect"    # Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/htcsoundfx/CompositeEffectManager;->mList:Ljava/util/ArrayList;

    .line 18
    invoke-virtual {p0, p1}, Lcom/android/server/audio/htcsoundfx/CompositeEffectManager;->addEffect(Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;)V

    .line 19
    return-void
.end method


# virtual methods
.method public addEffect(Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;)V
    .locals 1
    .param p1, "effect"    # Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;

    .prologue
    .line 26
    if-eqz p1, :cond_0

    .line 27
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/CompositeEffectManager;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 121
    iget-object v2, p0, Lcom/android/server/audio/htcsoundfx/CompositeEffectManager;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 122
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;

    .line 124
    .local v0, "fx":Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;
    invoke-interface {v0, p1}, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;->dump(Ljava/io/PrintWriter;)V

    goto :goto_0

    .line 126
    .end local v0    # "fx":Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/CompositeEffectManager;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 23
    return-void
.end method

.method public forceSoundEffect(ILandroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "effect"    # I
    .param p2, "cb"    # Landroid/os/IBinder;
    .param p3, "clientId"    # Ljava/lang/String;
    .param p4, "callingPackageName"    # Ljava/lang/String;

    .prologue
    .line 86
    iget-object v2, p0, Lcom/android/server/audio/htcsoundfx/CompositeEffectManager;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 87
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;

    .line 89
    .local v0, "fx":Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;->forceSoundEffect(ILandroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 91
    .end local v0    # "fx":Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;
    :cond_0
    return-void
.end method

.method public getSoundEffect(Z)I
    .locals 3
    .param p1, "isSystemWise"    # Z

    .prologue
    .line 34
    iget-object v1, p0, Lcom/android/server/audio/htcsoundfx/CompositeEffectManager;->mList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 35
    iget-object v1, p0, Lcom/android/server/audio/htcsoundfx/CompositeEffectManager;->mList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;

    .line 36
    .local v0, "effect":Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;
    invoke-interface {v0, p1}, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;->getSoundEffect(Z)I

    move-result v1

    .line 38
    .end local v0    # "effect":Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;
    :goto_0
    return v1

    :cond_0
    const/16 v1, 0x320

    goto :goto_0
.end method

.method public getSystemProperty(I)I
    .locals 3
    .param p1, "name"    # I

    .prologue
    .line 66
    iget-object v1, p0, Lcom/android/server/audio/htcsoundfx/CompositeEffectManager;->mList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/android/server/audio/htcsoundfx/CompositeEffectManager;->mList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;

    .line 68
    .local v0, "effect":Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;
    invoke-interface {v0, p1}, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;->getSystemProperty(I)I

    move-result v1

    .line 70
    .end local v0    # "effect":Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;
    :goto_0
    return v1

    :cond_0
    const/16 v1, 0x320

    goto :goto_0
.end method

.method public loadSoundEffect()V
    .locals 3

    .prologue
    .line 50
    iget-object v2, p0, Lcom/android/server/audio/htcsoundfx/CompositeEffectManager;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 51
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;

    .line 53
    .local v0, "fx":Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;
    invoke-interface {v0}, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;->loadSoundEffect()V

    goto :goto_0

    .line 55
    .end local v0    # "fx":Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;
    :cond_0
    return-void
.end method

.method public onVideoEvent(Landroid/os/IBinder;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "status"    # Z

    .prologue
    .line 105
    iget-object v2, p0, Lcom/android/server/audio/htcsoundfx/CompositeEffectManager;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 106
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;

    .line 108
    .local v0, "fx":Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;
    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;->onVideoEvent(Landroid/os/IBinder;Ljava/lang/String;Z)V

    goto :goto_0

    .line 110
    .end local v0    # "fx":Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;
    :cond_0
    return-void
.end method

.method public resetSoundEffect()V
    .locals 3

    .prologue
    .line 58
    iget-object v2, p0, Lcom/android/server/audio/htcsoundfx/CompositeEffectManager;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 59
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 60
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;

    .line 61
    .local v0, "fx":Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;
    invoke-interface {v0}, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;->resetSoundEffect()V

    goto :goto_0

    .line 63
    .end local v0    # "fx":Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;
    :cond_0
    return-void
.end method

.method public restoreSoundEffect(Ljava/lang/String;)V
    .locals 3
    .param p1, "clientId"    # Ljava/lang/String;

    .prologue
    .line 97
    iget-object v2, p0, Lcom/android/server/audio/htcsoundfx/CompositeEffectManager;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 98
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;

    .line 100
    .local v0, "fx":Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;
    invoke-interface {v0, p1}, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;->restoreSoundEffect(Ljava/lang/String;)V

    goto :goto_0

    .line 102
    .end local v0    # "fx":Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;
    :cond_0
    return-void
.end method

.method public sendMsg(IIIILjava/lang/Object;I)V
    .locals 8
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj"    # Ljava/lang/Object;
    .param p6, "delay"    # I

    .prologue
    .line 113
    iget-object v1, p0, Lcom/android/server/audio/htcsoundfx/CompositeEffectManager;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 114
    .local v7, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;>;"
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;

    .local v0, "fx":Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;
    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    .line 116
    invoke-interface/range {v0 .. v6}, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;->sendMsg(IIIILjava/lang/Object;I)V

    goto :goto_0

    .line 118
    .end local v0    # "fx":Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;
    :cond_0
    return-void
.end method

.method public setSystemProperty(II)V
    .locals 3
    .param p1, "name"    # I
    .param p2, "value"    # I

    .prologue
    .line 74
    iget-object v2, p0, Lcom/android/server/audio/htcsoundfx/CompositeEffectManager;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 75
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;

    .line 77
    .local v0, "fx":Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;
    invoke-interface {v0, p1, p2}, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;->setSystemProperty(II)V

    goto :goto_0

    .line 79
    .end local v0    # "fx":Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;
    :cond_0
    return-void
.end method

.method public setSystemSoundEffect(I)V
    .locals 3
    .param p1, "effect"    # I

    .prologue
    .line 42
    iget-object v2, p0, Lcom/android/server/audio/htcsoundfx/CompositeEffectManager;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 43
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;

    .line 45
    .local v0, "fx":Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;
    invoke-interface {v0, p1}, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;->setSystemSoundEffect(I)V

    goto :goto_0

    .line 47
    .end local v0    # "fx":Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;
    :cond_0
    return-void
.end method
