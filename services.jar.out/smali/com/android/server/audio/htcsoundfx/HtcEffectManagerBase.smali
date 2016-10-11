.class public abstract Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;
.super Ljava/lang/Object;
.source "HtcEffectManagerBase.java"

# interfaces
.implements Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$VideoEvent;,
        Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;,
        Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ManagerEventHandler;
    }
.end annotation


# static fields
.field public static final KEY_EFFECT_ENABLE:Ljava/lang/String; = "effect_enable"

.field public static final KEY_EFFECT_NAME:Ljava/lang/String; = "effect_name"

.field public static final MSG_ASYNC_UPDATE_SOUNDEFFECT:I = 0x2

.field public static final MSG_BEATS_NOTIFY:I = 0x0

.field public static final MSG_SET_SYSTEM_PROPERTY:I = 0x1

.field public static final PERSIST_DELAY:I = 0x1f4

.field public static final PROPERTY_EFFECT_ENABLE:I = 0x0

.field public static final PROPERTY_EFFECT_PROFILE:I = 0x1

.field public static final SENDMSG_NOOP:I = 0x1

.field public static final SENDMSG_QUEUE:I = 0x2

.field public static final SENDMSG_REPLACE:I = 0x0

.field public static final STATUSBAR_ICON_NAME:Ljava/lang/String; = "beats_effect"

.field private static final TAG:Ljava/lang/String; = "HtcEffectManagerBase"

.field public static final TYPE_BEATS:I = 0x1

.field public static final TYPE_BOOMSOUND:I = 0x2

.field public static final TYPE_HARMAN:I = 0x3

.field public static final TYPE_INVALID:I = -0x1

.field public static final TYPE_JBL:I = 0x4

.field public static final TYPE_NONE:I


# instance fields
.field protected mAudioDevice:Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;

.field private final mAudioDeviceStateObserver:Lcom/android/server/audio/htcsoundfx/HtcAudioDevice$HtcAudioDeviceStateObserver;

.field final mAudioService:Lcom/android/server/audio/AudioService;

.field final mContentResolver:Landroid/content/ContentResolver;

.field final mContext:Landroid/content/Context;

.field mCurrentSoundEffect:I

.field mEffectCommands:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mEventHandler:Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ManagerEventHandler;

.field mForcedEffectStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;",
            ">;"
        }
    .end annotation
.end field

.field final mLock:Ljava/lang/Object;

.field mStatusBarManager:Landroid/app/StatusBarManager;

.field mSystemSoundEffect:I

.field mType:I

.field mValidEffectCommands:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/audio/AudioService;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "as"    # Lcom/android/server/audio/AudioService;
    .param p4, "type"    # I

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;->mLock:Ljava/lang/Object;

    .line 69
    invoke-static {}, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;->getInstance()Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;->mAudioDevice:Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;

    .line 70
    new-instance v0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$1;

    invoke-direct {v0, p0}, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$1;-><init>(Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;)V

    iput-object v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;->mAudioDeviceStateObserver:Lcom/android/server/audio/htcsoundfx/HtcAudioDevice$HtcAudioDeviceStateObserver;

    .line 104
    iput-object p1, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;->mContext:Landroid/content/Context;

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;->mContentResolver:Landroid/content/ContentResolver;

    .line 106
    iput-object p3, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 107
    new-instance v0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ManagerEventHandler;

    invoke-direct {v0, p0, p2}, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ManagerEventHandler;-><init>(Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;->mEventHandler:Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ManagerEventHandler;

    .line 108
    const-string v0, "statusbar"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 110
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;->mForcedEffectStack:Ljava/util/Stack;

    .line 111
    iput p4, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;->mType:I

    .line 112
    return-void
.end method

.method private removeForcedEffectEntry(Ljava/lang/String;)V
    .locals 3
    .param p1, "clientId"    # Ljava/lang/String;

    .prologue
    .line 208
    iget-object v2, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 209
    .local v1, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 210
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;

    .line 211
    .local v0, "fee":Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;
    iget-object v2, v0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 212
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 213
    invoke-virtual {v0}, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;->unlinkToDeath()V

    goto :goto_0

    .line 216
    .end local v0    # "fee":Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;
    :cond_1
    return-void
.end method


# virtual methods
.method protected abstract _loadSoundEffect()V
.end method

.method protected abstract _resetSoundEffect()V
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 195
    const-string v2, "\nHtcEffectManager ForcedEffect stack entries:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 196
    iget-object v3, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 197
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 198
    .local v1, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 199
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;

    .line 200
    .local v0, "fee":Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "     source:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;->mCb:Landroid/os/IBinder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " -- client: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " -- package: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " -- pid: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;->mCallingPid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 204
    .end local v0    # "fee":Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;
    .end local v1    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;>;"
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;->mAudioDevice:Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;

    iget-object v1, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;->mAudioDeviceStateObserver:Lcom/android/server/audio/htcsoundfx/HtcAudioDevice$HtcAudioDeviceStateObserver;

    invoke-virtual {v0, v1}, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;->unregisterAudioDeviceStateObserver(Lcom/android/server/audio/htcsoundfx/HtcAudioDevice$HtcAudioDeviceStateObserver;)V

    .line 117
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 118
    return-void
.end method

.method public forceSoundEffect(ILandroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "effect"    # I
    .param p2, "cb"    # Landroid/os/IBinder;
    .param p3, "clientId"    # Ljava/lang/String;
    .param p4, "callingPackageName"    # Ljava/lang/String;

    .prologue
    .line 143
    const-string v1, "HtcEffectManagerBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forceSoundEffect effect="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " client="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v7, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 145
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;

    iget-object v1, v1, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;

    iget v1, v1, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;->mEffectId:I

    if-ne v1, p1, :cond_0

    .line 147
    monitor-exit v7

    .line 160
    :goto_0
    return-void

    .line 150
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;->isValidSystemSoundEffect(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 151
    monitor-exit v7

    goto :goto_0

    .line 159
    :catchall_0
    move-exception v1

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 153
    :cond_1
    :try_start_1
    invoke-direct {p0, p3}, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;->removeForcedEffectEntry(Ljava/lang/String;)V

    .line 154
    new-instance v0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;

    move-object v1, p0

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;-><init>(Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;ILandroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .local v0, "fee":Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;
    iget v1, v0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;->mStatus:I

    if-nez v1, :cond_2

    .line 156
    iget-object v1, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    invoke-virtual {p0}, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;->updateSoundEffect()V

    .line 159
    :cond_2
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getSoundEffect(Z)I
    .locals 1
    .param p1, "isSystemWise"    # Z

    .prologue
    .line 132
    const/16 v0, 0x320

    return v0
.end method

.method public abstract getSystemProperty(I)I
.end method

.method isValidSystemSoundEffect(I)Z
    .locals 4
    .param p1, "effect"    # I

    .prologue
    .line 184
    const/4 v0, 0x0

    .line 185
    .local v0, "isValidEffect":Z
    iget-object v1, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;->mValidEffectCommands:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 186
    const/4 v0, 0x1

    .line 191
    :goto_0
    return v0

    .line 189
    :cond_0
    const-string v1, "HtcEffectManagerBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "this SystemSoundEffect("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is not valid!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public loadSoundEffect()V
    .locals 2

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;->_loadSoundEffect()V

    .line 122
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;->mAudioDevice:Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;

    iget-object v1, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;->mAudioDeviceStateObserver:Lcom/android/server/audio/htcsoundfx/HtcAudioDevice$HtcAudioDeviceStateObserver;

    invoke-virtual {v0, v1}, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;->registerAudioDeviceStateObserver(Lcom/android/server/audio/htcsoundfx/HtcAudioDevice$HtcAudioDeviceStateObserver;)V

    .line 123
    return-void
.end method

.method public onMessageBeatsNotify()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;->onMessageBeatsNotify(Z)V

    .line 90
    return-void
.end method

.method public abstract onMessageBeatsNotify(Z)V
.end method

.method public abstract onPersistProperty(II)V
.end method

.method public onVideoEvent(Landroid/os/IBinder;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "status"    # Z

    .prologue
    .line 181
    return-void
.end method

.method public resetSoundEffect()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;->mAudioDevice:Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;

    iget-object v1, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;->mAudioDeviceStateObserver:Lcom/android/server/audio/htcsoundfx/HtcAudioDevice$HtcAudioDeviceStateObserver;

    invoke-virtual {v0, v1}, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;->unregisterAudioDeviceStateObserver(Lcom/android/server/audio/htcsoundfx/HtcAudioDevice$HtcAudioDeviceStateObserver;)V

    .line 127
    invoke-virtual {p0}, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;->_resetSoundEffect()V

    .line 128
    return-void
.end method

.method public restoreSoundEffect(Ljava/lang/String;)V
    .locals 4
    .param p1, "clientId"    # Ljava/lang/String;

    .prologue
    .line 166
    const-string v1, "HtcEffectManagerBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restoreSoundEffect client="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v2, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 168
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;

    iget-object v1, v1, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;

    .line 170
    .local v0, "fee":Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;
    invoke-virtual {v0}, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;->unlinkToDeath()V

    .line 171
    invoke-virtual {p0}, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;->updateSoundEffect()V

    .line 175
    .end local v0    # "fee":Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;
    :goto_0
    monitor-exit v2

    .line 176
    return-void

    .line 174
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;->removeForcedEffectEntry(Ljava/lang/String;)V

    goto :goto_0

    .line 175
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendMsg(IIIILjava/lang/Object;I)V
    .locals 4
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj"    # Ljava/lang/Object;
    .param p6, "delay"    # I

    .prologue
    .line 229
    if-nez p2, :cond_1

    .line 230
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;->mEventHandler:Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ManagerEventHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ManagerEventHandler;->removeMessages(I)V

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;->mEventHandler:Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ManagerEventHandler;

    iget-object v1, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;->mEventHandler:Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ManagerEventHandler;

    invoke-virtual {v1, p1, p3, p4, p5}, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ManagerEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ManagerEventHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 236
    :goto_0
    return-void

    .line 231
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;->mEventHandler:Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ManagerEventHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ManagerEventHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public abstract setSystemProperty(II)V
.end method

.method public setSystemSoundEffect(I)V
    .locals 0
    .param p1, "effect"    # I

    .prologue
    .line 137
    return-void
.end method

.method abstract updateSoundEffect()V
.end method
