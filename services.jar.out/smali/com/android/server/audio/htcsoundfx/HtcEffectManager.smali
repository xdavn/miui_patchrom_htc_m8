.class public Lcom/android/server/audio/htcsoundfx/HtcEffectManager;
.super Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;
.source "HtcEffectManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/htcsoundfx/HtcEffectManager$1;,
        Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;
    }
.end annotation


# static fields
.field private static final SET_SYSTEM_EFFECT_PROFILE:I = 0x0

.field private static final SOUND_ENHANCER_EFFECT:Ljava/lang/String; = "audio.soundenhancer.effect"

.field private static final TAG:Ljava/lang/String; = "HtcEffectManager"


# instance fields
.field private mDefaultSoundEffect:I

.field private mDtsIcon:Lcom/android/server/audio/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;

.field private mEffectIcon:Lcom/android/server/audio/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;

.field private mEffectIconView:Lcom/android/server/audio/htcsoundfx/view/EffectViewInterface;

.field private mEffectNotification:Ljava/lang/Object;

.field private mEffectNotificationStatus:Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

.field private mVideoEvent:Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$VideoEvent;

.field private mVideoOn:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/audio/AudioService;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "as"    # Lcom/android/server/audio/AudioService;
    .param p4, "type"    # I

    .prologue
    const/16 v6, -0x64

    const/16 v5, 0x386

    const/16 v4, 0x384

    const/16 v3, 0x320

    const/4 v2, 0x0

    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/audio/AudioService;I)V

    .line 26
    iput-object v2, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mEffectIcon:Lcom/android/server/audio/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;

    .line 27
    iput-object v2, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mDtsIcon:Lcom/android/server/audio/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;

    .line 28
    iput-object v2, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mEffectIconView:Lcom/android/server/audio/htcsoundfx/view/EffectViewInterface;

    .line 30
    iput-object v2, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mEffectNotification:Ljava/lang/Object;

    .line 46
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mEffectCommands:Landroid/util/SparseArray;

    .line 47
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mEffectCommands:Landroid/util/SparseArray;

    const-string v1, "global_effect=none"

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 48
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mEffectCommands:Landroid/util/SparseArray;

    const-string v1, "global_effect=Beats"

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 49
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mEffectCommands:Landroid/util/SparseArray;

    const-string v1, "global_effect=SRS"

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 51
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mValidEffectCommands:Landroid/util/SparseArray;

    .line 52
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mValidEffectCommands:Landroid/util/SparseArray;

    const-string v1, "global_effect=none"

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 53
    iput v3, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mDefaultSoundEffect:I

    .line 54
    iget v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 55
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mValidEffectCommands:Landroid/util/SparseArray;

    const-string v1, "global_effect=Beats"

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 56
    iput v4, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mDefaultSoundEffect:I

    .line 62
    :cond_0
    :goto_0
    iput v6, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mSystemSoundEffect:I

    .line 63
    iput v6, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mCurrentSoundEffect:I

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mVideoOn:Z

    .line 65
    iput-object v2, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mVideoEvent:Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$VideoEvent;

    .line 67
    sget-object v0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;->No:Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

    iput-object v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mEffectNotificationStatus:Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

    .line 68
    invoke-direct {p0}, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->initEffectView()V

    .line 69
    return-void

    .line 57
    :cond_1
    iget v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 58
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mValidEffectCommands:Landroid/util/SparseArray;

    const-string v1, "global_effect=SRS"

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 59
    iput v5, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mDefaultSoundEffect:I

    goto :goto_0
.end method

.method private checkBeatsSupport()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 308
    iget-object v2, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mAudioDevice:Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;

    invoke-virtual {v2}, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;->dump()V

    .line 309
    iget v2, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mType:I

    if-ne v2, v1, :cond_3

    .line 310
    iget-object v2, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mAudioDevice:Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;

    invoke-virtual {v2}, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;->isDeviceOutput_Speaker()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mAudioDevice:Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;

    invoke-virtual {v2}, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;->isDualSpeaker()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mAudioDevice:Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;

    invoke-virtual {v2}, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;->isDeviceOutput_Headset()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mAudioDevice:Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;

    invoke-virtual {v2}, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;->isDeviceOutput_BtHeadset()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move v0, v1

    .line 314
    :cond_2
    :goto_0
    return v0

    .line 311
    :cond_3
    iget v2, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 312
    iget-object v2, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mAudioDevice:Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;

    invoke-virtual {v2}, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;->isDeviceOutput_Speaker()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mAudioDevice:Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;

    invoke-virtual {v2}, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;->isDualSpeaker()Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mAudioDevice:Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;

    invoke-virtual {v2}, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;->isDeviceOutput_Headset()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method private convertEffect(I)I
    .locals 4
    .param p1, "effect"    # I

    .prologue
    const/16 v0, 0x386

    .line 328
    const-string v1, "HtcEffectManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertEffect before="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const/16 v1, 0x320

    if-ne p1, v1, :cond_0

    .line 330
    iget v1, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 331
    iget-object v1, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mAudioDevice:Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;

    invoke-virtual {v1}, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;->isDualSpeaker()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mAudioDevice:Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;

    invoke-virtual {v1}, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;->isDeviceOutput_Speaker()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mVideoOn:Z

    if-nez v1, :cond_0

    move p1, v0

    .line 336
    :cond_0
    :goto_0
    const-string v0, "HtcEffectManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertEffect after="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    return p1

    .line 332
    :cond_1
    iget v1, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 333
    iget-object v1, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mAudioDevice:Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;

    invoke-virtual {v1}, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;->isDualSpeaker()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mAudioDevice:Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;

    invoke-virtual {v1}, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;->isDeviceOutput_Speaker()Z

    move-result v1

    if-eqz v1, :cond_2

    move p1, v0

    :cond_2
    goto :goto_0
.end method

.method private doShowView(Ljava/lang/Object;)V
    .locals 1
    .param p1, "view"    # Ljava/lang/Object;

    .prologue
    .line 360
    if-eqz p1, :cond_0

    .line 361
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mEffectIconView:Lcom/android/server/audio/htcsoundfx/view/EffectViewInterface;

    invoke-interface {v0, p1}, Lcom/android/server/audio/htcsoundfx/view/EffectViewInterface;->setView(Ljava/lang/Object;)V

    .line 362
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mEffectIconView:Lcom/android/server/audio/htcsoundfx/view/EffectViewInterface;

    invoke-interface {v0}, Lcom/android/server/audio/htcsoundfx/view/EffectViewInterface;->show()V

    .line 369
    :goto_0
    return-void

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mEffectIconView:Lcom/android/server/audio/htcsoundfx/view/EffectViewInterface;

    invoke-interface {v0}, Lcom/android/server/audio/htcsoundfx/view/EffectViewInterface;->hide()V

    .line 366
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mEffectNotification:Ljava/lang/Object;

    .line 367
    sget-object v0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;->No:Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

    iput-object v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mEffectNotificationStatus:Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

    goto :goto_0
.end method

.method private generateEffectItem(Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;J)Ljava/lang/Object;
    .locals 14
    .param p1, "status"    # Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;
    .param p2, "when"    # J

    .prologue
    .line 452
    const/4 v1, -0x1

    .line 453
    .local v1, "iconId":I
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v8, 0x107006d

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 454
    .local v2, "title":Ljava/lang/String;
    const/4 v3, 0x0

    .line 455
    .local v3, "text":Ljava/lang/String;
    const/4 v4, -0x1

    .line 456
    .local v4, "actionIcon":I
    const/4 v5, 0x0

    .line 457
    .local v5, "actionTitle":Ljava/lang/String;
    const/4 v6, 0x0

    .line 458
    .local v6, "actionIntent":Landroid/content/Intent;
    const/4 v10, -0x1

    .line 459
    .local v10, "actionTurnOn":I
    const/4 v7, 0x0

    .line 461
    .local v7, "hide":Z
    sget-object v0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager$1;->$SwitchMap$com$android$server$audio$htcsoundfx$HtcEffectManager$EffectNotificationStatus:[I

    invoke-virtual {p1}, Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;->ordinal()I

    move-result v8

    aget v0, v0, v8

    packed-switch v0, :pswitch_data_0

    .line 495
    const/4 v0, 0x0

    .line 503
    :goto_0
    return-object v0

    .line 463
    :pswitch_0
    const-string v0, "HtcEffectManager"

    const-string v8, "dts"

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    const v1, 0x102000f

    .line 498
    :goto_1
    const/4 v0, -0x1

    if-eq v10, v0, :cond_0

    .line 499
    new-instance v6, Landroid/content/Intent;

    .end local v6    # "actionIntent":Landroid/content/Intent;
    const-string v0, "com.htc.intent.action.SURROUNDSOUND_SETTINGS"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 500
    .restart local v6    # "actionIntent":Landroid/content/Intent;
    const-string v0, "effect_enable"

    invoke-virtual {v6, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mContext:Landroid/content/Context;

    move-wide/from16 v8, p2

    invoke-static/range {v0 .. v9}, Lcom/android/server/audio/htcsoundfx/view/EffectViewNotification;->createNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;ZJ)Landroid/app/Notification;

    move-result-object v0

    goto :goto_0

    .line 467
    :pswitch_1
    const-string v0, "HtcEffectManager"

    const-string v8, "beats"

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    const v1, 0x102000d

    .line 469
    goto :goto_1

    .line 471
    :pswitch_2
    const-string v0, "HtcEffectManager"

    const-string v8, "speaker"

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const v1, 0x1020007

    .line 473
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v8, 0x107007a

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v11, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x107006e

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v9

    invoke-static {v0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 474
    goto :goto_1

    .line 476
    :pswitch_3
    const-string v0, "HtcEffectManager"

    const-string v8, "headset on : show turn off"

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const v1, 0x1020007

    .line 478
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v8, 0x1070078

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 479
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v8, 0x1070070

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 480
    const v4, 0x1020001

    .line 481
    const/4 v10, 0x0

    .line 482
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v8, 0x107007a

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v11, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x107006f

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v9

    invoke-static {v0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 483
    goto/16 :goto_1

    .line 485
    :pswitch_4
    const v1, 0x1020007

    .line 486
    const-string v0, "HtcEffectManager"

    const-string v8, "headset off : show turn on"

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v8, 0x1070077

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 488
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v8, 0x1070071

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 489
    const/high16 v4, 0x1020000

    .line 490
    const/4 v10, 0x1

    .line 491
    const/4 v7, 0x1

    .line 492
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v8, 0x1070079

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v11, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x107006f

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v9

    invoke-static {v0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 493
    goto/16 :goto_1

    .line 461
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getEffectItem(ZI)Ljava/lang/Object;
    .locals 6
    .param p1, "active"    # Z
    .param p2, "effect"    # I

    .prologue
    const/4 v3, 0x0

    .line 409
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->checkBeatsSupport()Z

    move-result v4

    if-nez v4, :cond_1

    .line 448
    :cond_0
    :goto_0
    return-object v3

    .line 411
    :cond_1
    iget v4, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mCurrentSoundEffect:I

    const/16 v5, 0x320

    if-eq v4, v5, :cond_5

    iget v4, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mCurrentSoundEffect:I

    const/16 v5, -0x64

    if-eq v4, v5, :cond_5

    const/4 v0, 0x1

    .line 412
    .local v0, "enabled":Z
    :goto_1
    iget-object v4, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mAudioDevice:Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;

    invoke-virtual {v4}, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;->isDeviceOutput_Speaker()Z

    move-result v1

    .line 414
    .local v1, "isSpeaker":Z
    sget-object v2, Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;->No:Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

    .line 416
    .local v2, "status":Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;
    if-eqz v0, :cond_7

    .line 417
    packed-switch p2, :pswitch_data_0

    .line 441
    :cond_2
    :goto_2
    sget-object v4, Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;->No:Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

    if-eq v2, v4, :cond_0

    .line 444
    iget-object v3, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mEffectNotificationStatus:Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

    if-ne v3, v2, :cond_3

    iget-object v3, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mEffectNotification:Ljava/lang/Object;

    if-nez v3, :cond_4

    .line 445
    :cond_3
    iput-object v2, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mEffectNotificationStatus:Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

    .line 446
    const-wide/16 v4, -0x1

    invoke-direct {p0, v2, v4, v5}, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->generateEffectItem(Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;J)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mEffectNotification:Ljava/lang/Object;

    .line 448
    :cond_4
    iget-object v3, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mEffectNotification:Ljava/lang/Object;

    goto :goto_0

    .line 411
    .end local v0    # "enabled":Z
    .end local v1    # "isSpeaker":Z
    .end local v2    # "status":Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 419
    .restart local v0    # "enabled":Z
    .restart local v1    # "isSpeaker":Z
    .restart local v2    # "status":Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;
    :pswitch_0
    sget-object v2, Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;->Dts:Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

    .line 420
    goto :goto_2

    .line 422
    :pswitch_1
    sget-object v2, Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;->Beats:Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

    .line 423
    goto :goto_2

    .line 425
    :pswitch_2
    if-eqz v1, :cond_6

    .line 426
    sget-object v2, Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;->SRS_Speaker:Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

    goto :goto_2

    .line 428
    :cond_6
    sget-object v2, Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;->SRS_HeadsetOn:Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

    goto :goto_2

    .line 432
    :cond_7
    iget v4, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 433
    if-eqz v1, :cond_8

    .line 434
    const-string v4, "HtcEffectManager"

    const-string v5, "speaker : srs disable"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    sget-object v2, Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;->SRS_Speaker:Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

    goto :goto_2

    .line 437
    :cond_8
    sget-object v2, Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;->SRS_HeadsetOff:Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

    goto :goto_2

    .line 417
    nop

    :pswitch_data_0
    .packed-switch 0x384
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private initEffectView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 387
    const-string v0, "HtcEffectManager"

    const-string v1, "initEffectView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    sget v0, Lcom/android/server/audio/htcsoundfx/CustomizationUtil;->SENSE_VERSION_NUM:F

    const/high16 v1, 0x40e00000    # 7.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 389
    iget v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 390
    const-string v0, "beats_effect"

    const v1, 0x102000d

    invoke-static {v0, v1, v4, v3}, Lcom/android/server/audio/htcsoundfx/view/EffectViewStatusBar;->generateStatusBarIcon(Ljava/lang/String;IILjava/lang/String;)Lcom/android/server/audio/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mEffectIcon:Lcom/android/server/audio/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;

    .line 397
    :goto_0
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mEffectIcon:Lcom/android/server/audio/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;

    if-eqz v0, :cond_0

    .line 398
    new-instance v0, Lcom/android/server/audio/htcsoundfx/view/EffectViewStatusBar;

    iget-object v1, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mEffectIcon:Lcom/android/server/audio/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;

    invoke-direct {v0, v1, v2}, Lcom/android/server/audio/htcsoundfx/view/EffectViewStatusBar;-><init>(Landroid/content/Context;Lcom/android/server/audio/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;)V

    iput-object v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mEffectIconView:Lcom/android/server/audio/htcsoundfx/view/EffectViewInterface;

    .line 399
    sget-boolean v0, Lcom/android/server/audio/htcsoundfx/CustomizationUtil;->SUPPORT_DTS:Z

    if-eqz v0, :cond_0

    .line 400
    const-string v0, "beats_effect"

    const v1, 0x102000f

    invoke-static {v0, v1, v4, v3}, Lcom/android/server/audio/htcsoundfx/view/EffectViewStatusBar;->generateStatusBarIcon(Ljava/lang/String;IILjava/lang/String;)Lcom/android/server/audio/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mDtsIcon:Lcom/android/server/audio/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;

    .line 405
    :cond_0
    :goto_1
    return-void

    .line 391
    :cond_1
    iget v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 392
    const-string v0, "beats_effect"

    const v1, 0x102000e

    invoke-static {v0, v1, v4, v3}, Lcom/android/server/audio/htcsoundfx/view/EffectViewStatusBar;->generateStatusBarIcon(Ljava/lang/String;IILjava/lang/String;)Lcom/android/server/audio/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mEffectIcon:Lcom/android/server/audio/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;

    goto :goto_0

    .line 394
    :cond_2
    iput-object v3, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mEffectIcon:Lcom/android/server/audio/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;

    goto :goto_0

    .line 403
    :cond_3
    new-instance v0, Lcom/android/server/audio/htcsoundfx/view/EffectViewNotification;

    iget-object v1, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/audio/htcsoundfx/view/EffectViewNotification;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mEffectIconView:Lcom/android/server/audio/htcsoundfx/view/EffectViewInterface;

    goto :goto_1
.end method

.method private refreshView()V
    .locals 5

    .prologue
    .line 373
    sget v3, Lcom/android/server/audio/htcsoundfx/CustomizationUtil;->SENSE_VERSION_NUM:F

    const/high16 v4, 0x40e00000    # 7.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    .line 384
    :goto_0
    return-void

    .line 375
    :cond_0
    const-string v3, "HtcEffectManager"

    const-string v4, "refreshView"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const-wide/16 v0, -0x1

    .line 377
    .local v0, "notificationTimestamp":J
    iget-object v3, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mEffectNotification:Ljava/lang/Object;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mEffectNotification:Ljava/lang/Object;

    instance-of v3, v3, Landroid/app/Notification;

    if-eqz v3, :cond_1

    .line 378
    iget-object v3, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mEffectNotification:Ljava/lang/Object;

    check-cast v3, Landroid/app/Notification;

    iget-wide v0, v3, Landroid/app/Notification;->when:J

    .line 380
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mEffectNotification:Ljava/lang/Object;

    .line 382
    iget-object v3, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mEffectNotificationStatus:Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

    invoke-direct {p0, v3, v0, v1}, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->generateEffectItem(Lcom/android/server/audio/htcsoundfx/HtcEffectManager$EffectNotificationStatus;J)Ljava/lang/Object;

    move-result-object v2

    .line 383
    .local v2, "view":Ljava/lang/Object;
    invoke-direct {p0, v2}, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->doShowView(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private showView(ZI)V
    .locals 4
    .param p1, "active"    # Z
    .param p2, "effect"    # I

    .prologue
    const/16 v3, 0x385

    .line 341
    sget v1, Lcom/android/server/audio/htcsoundfx/CustomizationUtil;->SENSE_VERSION_NUM:F

    const/high16 v2, 0x40e00000    # 7.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_6

    .line 342
    iget v1, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 343
    if-eqz p1, :cond_2

    const/16 v1, 0x384

    if-eq p2, v1, :cond_0

    if-ne p2, v3, :cond_2

    .line 344
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->showBeatsIcon(I)V

    .line 358
    :cond_1
    :goto_0
    return-void

    .line 346
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->hideBeatsIcon()V

    goto :goto_0

    .line 348
    :cond_3
    iget v1, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 349
    if-eqz p1, :cond_5

    const/16 v1, 0x386

    if-eq p2, v1, :cond_4

    if-ne p2, v3, :cond_5

    .line 350
    :cond_4
    invoke-virtual {p0, p2}, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->showBeatsIcon(I)V

    goto :goto_0

    .line 352
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->hideBeatsIcon()V

    goto :goto_0

    .line 355
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->getEffectItem(ZI)Ljava/lang/Object;

    move-result-object v0

    .line 356
    .local v0, "view":Ljava/lang/Object;
    invoke-direct {p0, v0}, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->doShowView(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected _loadSoundEffect()V
    .locals 4

    .prologue
    .line 157
    iget-object v1, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "audio.soundenhancer.effect"

    const/16 v3, -0x64

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 158
    .local v0, "effect":I
    const-string v1, "HtcEffectManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadSoundEffect id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v2, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 160
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->isValidSystemSoundEffect(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    iput v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mSystemSoundEffect:I

    .line 164
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->updateSoundEffect()V

    .line 165
    monitor-exit v2

    .line 166
    return-void

    .line 163
    :cond_0
    iget v1, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mDefaultSoundEffect:I

    iput v1, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mSystemSoundEffect:I

    goto :goto_0

    .line 165
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected _resetSoundEffect()V
    .locals 2

    .prologue
    .line 100
    const-string v0, "HtcEffectManager"

    const-string v1, "resetSoundEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v1, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 102
    const/16 v0, -0x64

    :try_start_0
    iput v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mSystemSoundEffect:I

    .line 103
    const/16 v0, -0x64

    iput v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mCurrentSoundEffect:I

    .line 104
    monitor-exit v1

    .line 105
    return-void

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSoundEffect(Z)I
    .locals 2
    .param p1, "isSystemWise"    # Z

    .prologue
    .line 112
    const-string v0, "HtcEffectManager"

    const-string v1, "getSoundEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v1, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 114
    if-eqz p1, :cond_0

    .line 115
    :try_start_0
    iget v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mSystemSoundEffect:I

    monitor-exit v1

    .line 117
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mCurrentSoundEffect:I

    monitor-exit v1

    goto :goto_0

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSystemProperty(I)I
    .locals 3
    .param p1, "name"    # I

    .prologue
    const/4 v1, 0x1

    .line 231
    invoke-virtual {p0, v1}, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->getSoundEffect(Z)I

    move-result v0

    .line 232
    .local v0, "effect":I
    if-nez p1, :cond_1

    .line 233
    const/16 v2, 0x320

    if-eq v0, v2, :cond_0

    const/16 v2, -0x64

    if-ne v0, v2, :cond_2

    .line 234
    :cond_0
    const/4 v0, 0x0

    .line 238
    .end local v0    # "effect":I
    :cond_1
    :goto_0
    return v0

    .restart local v0    # "effect":I
    :cond_2
    move v0, v1

    .line 236
    goto :goto_0
.end method

.method public hideBeatsIcon()V
    .locals 2

    .prologue
    .line 92
    const-string v0, "HtcEffectManager"

    const-string v1, "disableBeats notification!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mEffectIconView:Lcom/android/server/audio/htcsoundfx/view/EffectViewInterface;

    invoke-interface {v0}, Lcom/android/server/audio/htcsoundfx/view/EffectViewInterface;->hide()V

    .line 94
    return-void
.end method

.method public declared-synchronized onMessageBeatsNotify(Z)V
    .locals 5
    .param p1, "refresh"    # Z

    .prologue
    .line 197
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 198
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->refreshView()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    :goto_0
    monitor-exit p0

    return-void

    .line 202
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 203
    :try_start_2
    iget v1, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mCurrentSoundEffect:I

    .line 205
    .local v1, "effect":I
    sget-boolean v2, Lcom/android/server/audio/htcsoundfx/CustomizationUtil;->SUPPORT_DTS:Z

    if-eqz v2, :cond_1

    .line 206
    const/16 v2, 0x320

    if-ne v1, v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mVideoOn:Z

    if-eqz v2, :cond_1

    .line 207
    const/16 v1, 0x385

    .line 209
    :cond_1
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 211
    :try_start_3
    iget-object v2, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mAudioDevice:Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;

    invoke-virtual {v2}, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;->isMusicActiveLocally()Z

    move-result v0

    .line 212
    .local v0, "active":Z
    const-string v2, "HtcEffectManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMessageBeatsNotify active="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " effect="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->showView(ZI)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 197
    .end local v0    # "active":Z
    .end local v1    # "effect":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 209
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public onPersistProperty(II)V
    .locals 3
    .param p1, "name"    # I
    .param p2, "value"    # I

    .prologue
    .line 217
    packed-switch p1, :pswitch_data_0

    .line 225
    const-string v0, "HtcEffectManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown property name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 219
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "audio.soundenhancer.effect"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    const-string v0, "HtcEffectManager"

    const-string v1, "can\'t update system sound effect in system setting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 217
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onVideoEvent(Landroid/os/IBinder;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "status"    # Z

    .prologue
    .line 169
    const-string v0, "HtcEffectManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoEvent client="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v1, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 171
    if-eqz p3, :cond_2

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mVideoEvent:Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$VideoEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mVideoEvent:Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$VideoEvent;

    iget-object v0, v0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$VideoEvent;->mClientId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mVideoEvent:Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$VideoEvent;

    invoke-virtual {v0}, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$VideoEvent;->unlinkToDeath()V

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mVideoEvent:Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$VideoEvent;

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mVideoEvent:Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$VideoEvent;

    if-nez v0, :cond_1

    .line 177
    new-instance v0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$VideoEvent;

    invoke-direct {v0, p0, p0, p1, p2}, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$VideoEvent;-><init>(Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;Landroid/os/IBinder;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mVideoEvent:Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$VideoEvent;

    .line 186
    :cond_1
    :goto_0
    iput-boolean p3, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mVideoOn:Z

    .line 187
    invoke-virtual {p0}, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->updateSoundEffect()V

    .line 188
    monitor-exit v1

    .line 189
    return-void

    .line 180
    :cond_2
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mVideoEvent:Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$VideoEvent;

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mVideoEvent:Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$VideoEvent;

    invoke-virtual {v0}, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$VideoEvent;->unlinkToDeath()V

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mVideoEvent:Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$VideoEvent;

    goto :goto_0

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSystemProperty(II)V
    .locals 1
    .param p1, "name"    # I
    .param p2, "value"    # I

    .prologue
    .line 242
    if-nez p1, :cond_2

    .line 243
    if-nez p2, :cond_1

    .line 244
    const/16 v0, 0x320

    invoke-virtual {p0, v0}, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->setSystemSoundEffect(I)V

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 246
    iget v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mDefaultSoundEffect:I

    invoke-virtual {p0, v0}, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->setSystemSoundEffect(I)V

    goto :goto_0

    .line 249
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->setSystemSoundEffect(I)V

    goto :goto_0
.end method

.method public setSystemSoundEffect(I)V
    .locals 8
    .param p1, "effect"    # I

    .prologue
    .line 125
    const-string v0, "HtcEffectManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSystemSoundEffect id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v7, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 127
    :try_start_0
    iget v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mSystemSoundEffect:I

    if-ne v0, p1, :cond_0

    .line 128
    const-string v0, "HtcEffectManager"

    const-string v1, "system sound effect is the same as previous"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    monitor-exit v7

    .line 149
    :goto_0
    return-void

    .line 131
    :cond_0
    const/16 v0, -0x64

    if-eq p1, v0, :cond_2

    .line 132
    invoke-virtual {p0, p1}, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->isValidSystemSoundEffect(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    iput p1, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mSystemSoundEffect:I

    .line 141
    :goto_1
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mSystemSoundEffect:I

    const/4 v5, 0x0

    const/16 v6, 0x1f4

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->sendMsg(IIIILjava/lang/Object;I)V

    .line 147
    invoke-virtual {p0}, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->updateSoundEffect()V

    .line 148
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 135
    :cond_1
    :try_start_1
    monitor-exit v7

    goto :goto_0

    .line 138
    :cond_2
    iget v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mDefaultSoundEffect:I

    iput v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mSystemSoundEffect:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public showBeatsIcon(I)V
    .locals 2
    .param p1, "effect"    # I

    .prologue
    .line 75
    const-string v0, "HtcEffectManager"

    const-string v1, "enableBeats notification!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    packed-switch p1, :pswitch_data_0

    .line 82
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mEffectIconView:Lcom/android/server/audio/htcsoundfx/view/EffectViewInterface;

    iget-object v1, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mEffectIcon:Lcom/android/server/audio/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;

    invoke-interface {v0, v1}, Lcom/android/server/audio/htcsoundfx/view/EffectViewInterface;->setView(Ljava/lang/Object;)V

    .line 85
    :goto_0
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mEffectIconView:Lcom/android/server/audio/htcsoundfx/view/EffectViewInterface;

    invoke-interface {v0}, Lcom/android/server/audio/htcsoundfx/view/EffectViewInterface;->show()V

    .line 86
    return-void

    .line 79
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mEffectIconView:Lcom/android/server/audio/htcsoundfx/view/EffectViewInterface;

    iget-object v1, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mDtsIcon:Lcom/android/server/audio/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;

    invoke-interface {v0, v1}, Lcom/android/server/audio/htcsoundfx/view/EffectViewInterface;->setView(Ljava/lang/Object;)V

    goto :goto_0

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x385
        :pswitch_0
    .end packed-switch
.end method

.method updateSoundEffect()V
    .locals 12

    .prologue
    const/4 v5, 0x0

    const/16 v3, 0x320

    const/4 v1, 0x0

    .line 259
    const/4 v9, 0x0

    .line 260
    .local v9, "effectChanged":Z
    invoke-direct {p0}, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->checkBeatsSupport()Z

    move-result v10

    .line 261
    .local v10, "isBeatsSupport":Z
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mEffectCommands:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mCurrentSoundEffect:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 263
    .local v11, "oldCommand":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 264
    iget v2, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mCurrentSoundEffect:I

    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;

    iget v0, v0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;->mEffectId:I

    if-eq v2, v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;

    iget v0, v0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;->mEffectId:I

    iput v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mCurrentSoundEffect:I

    .line 266
    const/4 v9, 0x1

    .line 281
    :cond_0
    :goto_0
    if-eqz v9, :cond_5

    .line 282
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mEffectCommands:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mCurrentSoundEffect:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 283
    .local v7, "command":Ljava/lang/String;
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 284
    const-string v0, "HtcEffectManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setParameters("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-static {v7}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :cond_1
    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v6, v1

    .line 287
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->sendMsg(IIIILjava/lang/Object;I)V

    .line 289
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mAudioService:Lcom/android/server/audio/AudioService;

    iget v1, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mCurrentSoundEffect:I

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService;->broadcastSoundEffectChanged(I)V

    .line 295
    .end local v7    # "command":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 269
    :cond_3
    if-nez v10, :cond_4

    iget v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mCurrentSoundEffect:I

    if-eq v0, v3, :cond_4

    .line 270
    iput v3, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mCurrentSoundEffect:I

    .line 271
    const/4 v9, 0x1

    goto :goto_0

    .line 273
    :cond_4
    if-eqz v10, :cond_0

    .line 274
    iget v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mSystemSoundEffect:I

    invoke-direct {p0, v0}, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->convertEffect(I)I

    move-result v8

    .line 275
    .local v8, "effect":I
    iget v0, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mCurrentSoundEffect:I

    if-eq v0, v8, :cond_0

    .line 276
    iput v8, p0, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->mCurrentSoundEffect:I

    .line 277
    const/4 v9, 0x1

    goto :goto_0

    .line 290
    .end local v8    # "effect":I
    :cond_5
    sget v0, Lcom/android/server/audio/htcsoundfx/CustomizationUtil;->SENSE_VERSION_NUM:F

    const/high16 v2, 0x40e00000    # 7.0f

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_2

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v6, v1

    .line 292
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/audio/htcsoundfx/HtcEffectManager;->sendMsg(IIIILjava/lang/Object;I)V

    goto :goto_1
.end method
