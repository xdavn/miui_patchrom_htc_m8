.class public Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;
.super Ljava/lang/Object;
.source "HtcEffectManagerBase.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ForcedEffectEntry"
.end annotation


# static fields
.field public static final ERROR:I = -0x1

.field public static final OK:I


# instance fields
.field public mCallingPid:I

.field public mCb:Landroid/os/IBinder;

.field public mClientId:Ljava/lang/String;

.field public mEffectId:I

.field public mPackageName:Ljava/lang/String;

.field private mSoundEffectManager:Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;

.field public mStatus:I

.field final synthetic this$0:Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;ILandroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p2, "manager"    # Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;
    .param p3, "effectId"    # I
    .param p4, "cb"    # Landroid/os/IBinder;
    .param p5, "clientId"    # Ljava/lang/String;
    .param p6, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 281
    iput-object p1, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;->this$0:Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    iput-object p2, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;->mSoundEffectManager:Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;

    .line 283
    iput p3, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;->mEffectId:I

    .line 284
    iput-object p4, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;->mCb:Landroid/os/IBinder;

    .line 285
    iput-object p5, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;->mClientId:Ljava/lang/String;

    .line 286
    iput-object p6, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;->mPackageName:Ljava/lang/String;

    .line 287
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    iput v2, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;->mCallingPid:I

    .line 289
    iget-object v2, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;->mCb:Landroid/os/IBinder;

    if-eqz v2, :cond_0

    .line 291
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;->mCb:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v2, p0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;->mCb:Landroid/os/IBinder;

    if-nez v2, :cond_1

    const/4 v1, -0x1

    :cond_1
    iput v1, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;->mStatus:I

    .line 299
    return-void

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "HtcEffectManagerBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ForcedEffectEntry() could not link to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " binder death"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;->mCb:Landroid/os/IBinder;

    goto :goto_0
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;->mSoundEffectManager:Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;

    iget-object v1, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;->restoreSoundEffect(Ljava/lang/String;)V

    .line 303
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;->unlinkToDeath()V

    .line 317
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 318
    return-void
.end method

.method public unlinkToDeath()V
    .locals 4

    .prologue
    .line 307
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;->mCb:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    .line 308
    iget-object v1, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;->mCb:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 309
    :catch_0
    move-exception v0

    .line 310
    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string v1, "HtcEffectManagerBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encountered "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in ForcedEffectEntry.unlinkToDeath()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
