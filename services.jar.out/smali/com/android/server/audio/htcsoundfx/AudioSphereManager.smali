.class public Lcom/android/server/audio/htcsoundfx/AudioSphereManager;
.super Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;
.source "AudioSphereManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/htcsoundfx/AudioSphereManager$1;,
        Lcom/android/server/audio/htcsoundfx/AudioSphereManager$EffectNotificationStatus;
    }
.end annotation


# static fields
.field public static final AS_ENABLE:I = 0x0

.field public static final AS_ERROR:I = -0x1

.field public static final AS_OFF:I = 0x0

.field public static final AS_PROFILE:I = 0x1

.field public static final AS_SPEAKER:I = 0x1

.field private static final DB_AS_PROPERTY_NAME:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "AudioSphereManager"


# instance fields
.field private mASEnabled:I

.field private mDefaultSoundEffect:I

.field private mEffectIconView:Lcom/android/server/audio/htcsoundfx/view/EffectViewInterface;

.field private mEffectNotification:Ljava/lang/Object;

.field private mEffectNotificationStatus:Lcom/android/server/audio/htcsoundfx/AudioSphereManager$EffectNotificationStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "audio.audiosphere.enabled"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "audio.audiosphere.profile"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->DB_AS_PROPERTY_NAME:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/audio/AudioService;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "as"    # Lcom/android/server/audio/AudioService;

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 46
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/audio/AudioService;I)V

    .line 34
    iput-object v1, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mEffectIconView:Lcom/android/server/audio/htcsoundfx/view/EffectViewInterface;

    .line 36
    iput-object v1, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mEffectNotification:Ljava/lang/Object;

    .line 48
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mEffectCommands:Landroid/util/SparseArray;

    .line 49
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mEffectCommands:Landroid/util/SparseArray;

    const-string v1, "surround_sound=none"

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 50
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mEffectCommands:Landroid/util/SparseArray;

    const-string v1, "surround_sound=Audiosphere"

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 52
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mValidEffectCommands:Landroid/util/SparseArray;

    .line 55
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mValidEffectCommands:Landroid/util/SparseArray;

    const/16 v1, 0x320

    const-string v2, "surround_sound=none"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 56
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mValidEffectCommands:Landroid/util/SparseArray;

    const/16 v1, 0x386

    const-string v2, "surround_sound=Audiosphere"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 57
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mValidEffectCommands:Landroid/util/SparseArray;

    const-string v1, "surround_sound=none"

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 58
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mValidEffectCommands:Landroid/util/SparseArray;

    const-string v1, "surround_sound=Audiosphere"

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 60
    iput v4, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mSystemSoundEffect:I

    .line 61
    iput v4, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mCurrentSoundEffect:I

    .line 62
    iput v3, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mDefaultSoundEffect:I

    .line 63
    iput v3, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mASEnabled:I

    .line 65
    sget-object v0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager$EffectNotificationStatus;->No:Lcom/android/server/audio/htcsoundfx/AudioSphereManager$EffectNotificationStatus;

    iput-object v0, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mEffectNotificationStatus:Lcom/android/server/audio/htcsoundfx/AudioSphereManager$EffectNotificationStatus;

    .line 66
    invoke-direct {p0}, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->initEffectView()V

    .line 67
    return-void
.end method

.method private checkSupport()Z
    .locals 3

    .prologue
    .line 292
    const-string v0, "AudioSphereManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mASEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mASEnabled:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mAudioDevice:Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;

    invoke-virtual {v0}, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;->dump()V

    .line 295
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mAudioDevice:Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;

    invoke-virtual {v0}, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;->isDeviceOutput_Speaker()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mAudioDevice:Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;

    invoke-virtual {v0}, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;->isDualSpeaker()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private doShowView(Ljava/lang/Object;)V
    .locals 2
    .param p1, "view"    # Ljava/lang/Object;

    .prologue
    .line 314
    if-eqz p1, :cond_0

    .line 315
    const-string v0, "AudioSphereManager"

    const-string v1, "enable AS notification!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mEffectIconView:Lcom/android/server/audio/htcsoundfx/view/EffectViewInterface;

    invoke-interface {v0, p1}, Lcom/android/server/audio/htcsoundfx/view/EffectViewInterface;->setView(Ljava/lang/Object;)V

    .line 317
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mEffectIconView:Lcom/android/server/audio/htcsoundfx/view/EffectViewInterface;

    invoke-interface {v0}, Lcom/android/server/audio/htcsoundfx/view/EffectViewInterface;->show()V

    .line 325
    :goto_0
    return-void

    .line 319
    :cond_0
    const-string v0, "AudioSphereManager"

    const-string v1, "disable AS notification!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mEffectIconView:Lcom/android/server/audio/htcsoundfx/view/EffectViewInterface;

    invoke-interface {v0}, Lcom/android/server/audio/htcsoundfx/view/EffectViewInterface;->hide()V

    .line 322
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mEffectNotification:Ljava/lang/Object;

    .line 323
    sget-object v0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager$EffectNotificationStatus;->No:Lcom/android/server/audio/htcsoundfx/AudioSphereManager$EffectNotificationStatus;

    iput-object v0, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mEffectNotificationStatus:Lcom/android/server/audio/htcsoundfx/AudioSphereManager$EffectNotificationStatus;

    goto :goto_0
.end method

.method private generateEffectItem(Lcom/android/server/audio/htcsoundfx/AudioSphereManager$EffectNotificationStatus;J)Ljava/lang/Object;
    .locals 12
    .param p1, "status"    # Lcom/android/server/audio/htcsoundfx/AudioSphereManager$EffectNotificationStatus;
    .param p2, "when"    # J

    .prologue
    .line 385
    const v1, 0x1020007

    .line 386
    .local v1, "iconId":I
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v8, 0x107006d

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 388
    .local v2, "title":Ljava/lang/String;
    const/4 v4, -0x1

    .line 389
    .local v4, "actionIcon":I
    const/4 v3, 0x0

    .line 390
    .local v3, "text":Ljava/lang/String;
    const/4 v5, 0x0

    .line 391
    .local v5, "actionTitle":Ljava/lang/String;
    const/4 v6, 0x0

    .line 393
    .local v6, "actionIntent":Landroid/content/Intent;
    const/4 v11, -0x1

    .line 394
    .local v11, "actionTurnOn":I
    const/4 v10, -0x1

    .line 395
    .local v10, "actionTitleId":I
    const/4 v7, 0x0

    .line 396
    .local v7, "hide":Z
    sget-object v0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager$1;->$SwitchMap$com$android$server$audio$htcsoundfx$AudioSphereManager$EffectNotificationStatus:[I

    invoke-virtual {p1}, Lcom/android/server/audio/htcsoundfx/AudioSphereManager$EffectNotificationStatus;->ordinal()I

    move-result v8

    aget v0, v0, v8

    packed-switch v0, :pswitch_data_0

    .line 411
    const/4 v0, 0x0

    .line 420
    :goto_0
    return-object v0

    .line 398
    :pswitch_0
    const-string v0, "AudioSphereManager"

    const-string v8, "speaker on"

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const/4 v11, 0x0

    .line 400
    const v10, 0x1070070

    .line 401
    const v4, 0x1020001

    .line 414
    :goto_1
    const/4 v0, -0x1

    if-eq v11, v0, :cond_0

    .line 415
    new-instance v6, Landroid/content/Intent;

    .end local v6    # "actionIntent":Landroid/content/Intent;
    const-string v0, "com.htc.intent.action.SURROUNDSOUND_SETTINGS"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 416
    .restart local v6    # "actionIntent":Landroid/content/Intent;
    const-string v0, "effect_enable"

    invoke-virtual {v6, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 417
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mContext:Landroid/content/Context;

    move-wide v8, p2

    invoke-static/range {v0 .. v9}, Lcom/android/server/audio/htcsoundfx/view/EffectViewNotification;->createNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;ZJ)Landroid/app/Notification;

    move-result-object v0

    goto :goto_0

    .line 404
    :pswitch_1
    const-string v0, "AudioSphereManager"

    const-string v8, "speaker off"

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    const/4 v11, 0x1

    .line 406
    const v10, 0x1070071

    .line 407
    const/high16 v4, 0x1020000

    .line 408
    const/4 v7, 0x1

    .line 409
    goto :goto_1

    .line 396
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getEffectItem(ZZ)Ljava/lang/Object;
    .locals 12
    .param p1, "active"    # Z
    .param p2, "enabled"    # Z

    .prologue
    .line 357
    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->checkSupport()Z

    move-result v9

    if-nez v9, :cond_0

    const/4 v9, 0x0

    .line 381
    :goto_0
    return-object v9

    .line 359
    :cond_0
    const v5, 0x1020007

    .line 360
    .local v5, "iconId":I
    iget-object v9, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x107006d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 362
    .local v8, "title":Ljava/lang/String;
    const/4 v0, -0x1

    .line 363
    .local v0, "actionIcon":I
    const/4 v7, 0x0

    .line 364
    .local v7, "text":Ljava/lang/String;
    const/4 v2, 0x0

    .line 365
    .local v2, "actionTitle":Ljava/lang/String;
    const/4 v1, 0x0

    .line 367
    .local v1, "actionIntent":Landroid/content/Intent;
    const/4 v4, -0x1

    .line 368
    .local v4, "actionTurnOn":I
    const/4 v3, -0x1

    .line 369
    .local v3, "actionTitleId":I
    sget-object v6, Lcom/android/server/audio/htcsoundfx/AudioSphereManager$EffectNotificationStatus;->No:Lcom/android/server/audio/htcsoundfx/AudioSphereManager$EffectNotificationStatus;

    .line 370
    .local v6, "status":Lcom/android/server/audio/htcsoundfx/AudioSphereManager$EffectNotificationStatus;
    if-eqz p2, :cond_3

    .line 371
    sget-object v6, Lcom/android/server/audio/htcsoundfx/AudioSphereManager$EffectNotificationStatus;->SpeakerOn:Lcom/android/server/audio/htcsoundfx/AudioSphereManager$EffectNotificationStatus;

    .line 376
    :goto_1
    iget-object v9, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mEffectNotificationStatus:Lcom/android/server/audio/htcsoundfx/AudioSphereManager$EffectNotificationStatus;

    if-ne v9, v6, :cond_1

    iget-object v9, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mEffectNotificationStatus:Lcom/android/server/audio/htcsoundfx/AudioSphereManager$EffectNotificationStatus;

    if-nez v9, :cond_2

    .line 377
    :cond_1
    iput-object v6, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mEffectNotificationStatus:Lcom/android/server/audio/htcsoundfx/AudioSphereManager$EffectNotificationStatus;

    .line 378
    const-wide/16 v10, -0x1

    invoke-direct {p0, v6, v10, v11}, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->generateEffectItem(Lcom/android/server/audio/htcsoundfx/AudioSphereManager$EffectNotificationStatus;J)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mEffectNotification:Ljava/lang/Object;

    .line 381
    :cond_2
    iget-object v9, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mEffectNotification:Ljava/lang/Object;

    goto :goto_0

    .line 373
    :cond_3
    sget-object v6, Lcom/android/server/audio/htcsoundfx/AudioSphereManager$EffectNotificationStatus;->SpeakerOff:Lcom/android/server/audio/htcsoundfx/AudioSphereManager$EffectNotificationStatus;

    goto :goto_1
.end method

.method private initEffectView()V
    .locals 5

    .prologue
    .line 343
    sget v1, Lcom/android/server/audio/htcsoundfx/CustomizationUtil;->SENSE_VERSION_NUM:F

    const/high16 v2, 0x40e00000    # 7.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 344
    const-string v1, "beats_effect"

    const v2, 0x102000e

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/audio/htcsoundfx/view/EffectViewStatusBar;->generateStatusBarIcon(Ljava/lang/String;IILjava/lang/String;)Lcom/android/server/audio/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;

    move-result-object v0

    .line 345
    .local v0, "icon":Lcom/android/server/audio/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;
    new-instance v1, Lcom/android/server/audio/htcsoundfx/view/EffectViewStatusBar;

    iget-object v2, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/android/server/audio/htcsoundfx/view/EffectViewStatusBar;-><init>(Landroid/content/Context;Lcom/android/server/audio/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;)V

    iput-object v1, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mEffectIconView:Lcom/android/server/audio/htcsoundfx/view/EffectViewInterface;

    .line 349
    .end local v0    # "icon":Lcom/android/server/audio/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;
    :goto_0
    return-void

    .line 347
    :cond_0
    new-instance v1, Lcom/android/server/audio/htcsoundfx/view/EffectViewNotification;

    iget-object v2, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/audio/htcsoundfx/view/EffectViewNotification;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mEffectIconView:Lcom/android/server/audio/htcsoundfx/view/EffectViewInterface;

    goto :goto_0
.end method

.method private refreshView()V
    .locals 5

    .prologue
    .line 328
    sget v3, Lcom/android/server/audio/htcsoundfx/CustomizationUtil;->SENSE_VERSION_NUM:F

    const/high16 v4, 0x40e00000    # 7.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    .line 340
    :goto_0
    return-void

    .line 330
    :cond_0
    const-string v3, "AudioSphereManager"

    const-string v4, "refreshView"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const-wide/16 v0, -0x1

    .line 332
    .local v0, "notificationTimestamp":J
    iget-object v3, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mEffectNotification:Ljava/lang/Object;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mEffectNotification:Ljava/lang/Object;

    instance-of v3, v3, Landroid/app/Notification;

    if-eqz v3, :cond_1

    .line 333
    iget-object v3, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mEffectNotification:Ljava/lang/Object;

    check-cast v3, Landroid/app/Notification;

    iget-wide v0, v3, Landroid/app/Notification;->when:J

    .line 335
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mEffectNotification:Ljava/lang/Object;

    .line 337
    iget-object v3, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mEffectNotificationStatus:Lcom/android/server/audio/htcsoundfx/AudioSphereManager$EffectNotificationStatus;

    invoke-direct {p0, v3, v0, v1}, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->generateEffectItem(Lcom/android/server/audio/htcsoundfx/AudioSphereManager$EffectNotificationStatus;J)Ljava/lang/Object;

    move-result-object v2

    .line 338
    .local v2, "view":Ljava/lang/Object;
    invoke-direct {p0, v2}, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->doShowView(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private showView(ZZ)V
    .locals 3
    .param p1, "active"    # Z
    .param p2, "enabled"    # Z

    .prologue
    .line 299
    sget v1, Lcom/android/server/audio/htcsoundfx/CustomizationUtil;->SENSE_VERSION_NUM:F

    const/high16 v2, 0x40e00000    # 7.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 300
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 301
    const-string v1, "AudioSphereManager"

    const-string v2, "enable AS notification!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v1, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mEffectIconView:Lcom/android/server/audio/htcsoundfx/view/EffectViewInterface;

    invoke-interface {v1}, Lcom/android/server/audio/htcsoundfx/view/EffectViewInterface;->show()V

    .line 311
    :goto_0
    return-void

    .line 304
    :cond_0
    const-string v1, "AudioSphereManager"

    const-string v2, "disable AS notification!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v1, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mEffectIconView:Lcom/android/server/audio/htcsoundfx/view/EffectViewInterface;

    invoke-interface {v1}, Lcom/android/server/audio/htcsoundfx/view/EffectViewInterface;->hide()V

    goto :goto_0

    .line 308
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->getEffectItem(ZZ)Ljava/lang/Object;

    move-result-object v0

    .line 309
    .local v0, "view":Ljava/lang/Object;
    invoke-direct {p0, v0}, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->doShowView(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected _loadSoundEffect()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 70
    iget-object v2, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->DB_AS_PROPERTY_NAME:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 71
    .local v1, "enabled":I
    iget-object v2, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->DB_AS_PROPERTY_NAME:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 73
    .local v0, "effect":I
    invoke-virtual {p0, v0}, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->isValidSystemSoundEffect(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 74
    iget v0, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mDefaultSoundEffect:I

    .line 77
    :cond_0
    sparse-switch v0, :sswitch_data_0

    .line 86
    :goto_0
    if-eqz v1, :cond_1

    .line 87
    const-string v2, "AudioSphereManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load enabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", reset to enable"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const/4 v1, 0x1

    .line 91
    :cond_1
    const-string v2, "AudioSphereManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadSoundEffect audio_sphere enable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " effect="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v3, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 93
    :try_start_0
    iput v1, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mASEnabled:I

    .line 94
    iput v0, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mSystemSoundEffect:I

    .line 95
    invoke-virtual {p0}, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->updateSoundEffect()V

    .line 96
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    return-void

    .line 81
    :sswitch_0
    const-string v2, "AudioSphereManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load effect="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", reset to default="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mDefaultSoundEffect:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget v0, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mDefaultSoundEffect:I

    goto :goto_0

    .line 96
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 77
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x320 -> :sswitch_0
        0x386 -> :sswitch_0
    .end sparse-switch
.end method

.method protected _resetSoundEffect()V
    .locals 2

    .prologue
    .line 101
    iget-object v1, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 102
    const/4 v0, -0x1

    :try_start_0
    iput v0, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mSystemSoundEffect:I

    .line 103
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mCurrentSoundEffect:I

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
    .locals 7
    .param p1, "isSystemWise"    # Z

    .prologue
    const/16 v2, 0x320

    .line 168
    const-string v3, "AudioSphereManager"

    const-string v4, "getSoundEffect"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->getSystemProperty(I)I

    move-result v1

    .line 171
    .local v1, "enabled":I
    if-nez v1, :cond_0

    .line 191
    :goto_0
    :pswitch_0
    return v2

    .line 174
    :cond_0
    const/4 v0, -0x1

    .line 175
    .local v0, "effect":I
    iget-object v3, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 176
    if-eqz p1, :cond_1

    .line 177
    :try_start_0
    const-string v4, "AudioSphereManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mSystemSoundEffect="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mSystemSoundEffect:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget v0, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mSystemSoundEffect:I

    .line 183
    :goto_1
    monitor-exit v3

    .line 185
    packed-switch v0, :pswitch_data_0

    .line 191
    const/16 v2, 0x386

    goto :goto_0

    .line 180
    :cond_1
    const-string v4, "AudioSphereManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCurrentSoundEffect="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mCurrentSoundEffect:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget v0, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mCurrentSoundEffect:I

    goto :goto_1

    .line 183
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 189
    :pswitch_1
    const/16 v2, -0x64

    goto :goto_0

    .line 185
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSystemProperty(I)I
    .locals 4
    .param p1, "name"    # I

    .prologue
    const/4 v0, 0x1

    .line 224
    const-string v1, "AudioSphereManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSystemProperty name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v1, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 226
    packed-switch p1, :pswitch_data_0

    .line 235
    :try_start_0
    const-string v0, "AudioSphereManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown property name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    monitor-exit v1

    .line 241
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 228
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->checkSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mASEnabled:I

    if-ne v2, v0, :cond_0

    .line 229
    monitor-exit v1

    goto :goto_0

    .line 238
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 231
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    monitor-exit v1

    goto :goto_0

    .line 233
    :pswitch_1
    iget v0, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mSystemSoundEffect:I

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 226
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized onMessageBeatsNotify(Z)V
    .locals 5
    .param p1, "refresh"    # Z

    .prologue
    const/4 v1, 0x1

    .line 110
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 111
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->refreshView()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :goto_0
    monitor-exit p0

    return-void

    .line 115
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    :try_start_2
    iget v2, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mCurrentSoundEffect:I

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mCurrentSoundEffect:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    iget v2, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mASEnabled:I

    if-ne v2, v1, :cond_1

    .line 117
    .local v1, "enabled":Z
    :goto_1
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 118
    :try_start_3
    iget-object v2, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mAudioDevice:Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;

    invoke-virtual {v2}, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;->isMusicActiveLocally()Z

    move-result v0

    .line 119
    .local v0, "active":Z
    const-string v2, "AudioSphereManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMessageBeatsNotify active="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", enabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->showView(ZZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 110
    .end local v0    # "active":Z
    .end local v1    # "enabled":Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 116
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 117
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
    .line 277
    const-string v0, "AudioSphereManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPersistProperty name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    packed-switch p1, :pswitch_data_0

    .line 286
    const-string v0, "AudioSphereManager"

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

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 281
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->DB_AS_PROPERTY_NAME:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    const-string v0, "AudioSphereManager"

    const-string v1, "can\'t update harman property in system setting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 278
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setSystemProperty(II)V
    .locals 8
    .param p1, "name"    # I
    .param p2, "value"    # I

    .prologue
    .line 245
    const-string v0, "AudioSphereManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSystemProperty name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const/4 v7, 0x0

    .line 247
    .local v7, "changed":Z
    iget-object v1, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 248
    packed-switch p1, :pswitch_data_0

    .line 264
    :try_start_0
    const-string v0, "AudioSphereManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown property name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    if-nez v7, :cond_1

    iget v0, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mCurrentSoundEffect:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 270
    const/4 v7, 0x1

    .line 272
    :cond_1
    if-eqz v7, :cond_2

    .line 273
    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v5, 0x0

    const/16 v6, 0x1f4

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->sendMsg(IIIILjava/lang/Object;I)V

    .line 274
    :cond_2
    return-void

    .line 250
    :pswitch_0
    :try_start_1
    iget v0, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mASEnabled:I

    if-eq v0, p2, :cond_0

    .line 251
    iput p2, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mASEnabled:I

    .line 252
    invoke-virtual {p0}, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->updateSoundEffect()V

    .line 253
    const/4 v7, 0x1

    goto :goto_0

    .line 257
    :pswitch_1
    iget v0, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mSystemSoundEffect:I

    if-eq v0, p2, :cond_0

    .line 258
    iput p2, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mSystemSoundEffect:I

    .line 259
    invoke-virtual {p0}, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->updateSoundEffect()V

    .line 260
    const/4 v7, 0x1

    goto :goto_0

    .line 267
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 248
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setSystemSoundEffect(I)V
    .locals 4
    .param p1, "effect"    # I

    .prologue
    .line 200
    const-string v1, "AudioSphereManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSystemSoundEffect id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const/16 v1, -0x64

    if-ne p1, v1, :cond_0

    .line 203
    iget p1, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mDefaultSoundEffect:I

    .line 206
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->isValidSystemSoundEffect(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 221
    :goto_0
    return-void

    .line 209
    :cond_1
    const/4 v0, 0x1

    .line 210
    .local v0, "enabled":I
    sparse-switch p1, :sswitch_data_0

    .line 216
    :goto_1
    iget p1, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mDefaultSoundEffect:I

    .line 218
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->setSystemProperty(II)V

    .line 219
    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->setSystemProperty(II)V

    goto :goto_0

    .line 213
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_1

    .line 210
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x320 -> :sswitch_0
    .end sparse-switch
.end method

.method updateSoundEffect()V
    .locals 12

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 124
    const/4 v9, 0x0

    .line 125
    .local v9, "effectChanged":Z
    invoke-direct {p0}, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->checkSupport()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mASEnabled:I

    if-ne v0, v10, :cond_3

    .line 126
    .local v10, "isSupport":Z
    :goto_0
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mEffectCommands:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mCurrentSoundEffect:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 127
    .local v11, "oldCommand":Ljava/lang/String;
    iget v8, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mSystemSoundEffect:I

    .line 129
    .local v8, "effect":I
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 130
    iget v2, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mCurrentSoundEffect:I

    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;

    iget v0, v0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;->mEffectId:I

    if-eq v2, v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;

    iget v0, v0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;->mEffectId:I

    const/16 v2, 0x320

    if-ne v0, v2, :cond_4

    .line 132
    iput v1, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mCurrentSoundEffect:I

    .line 135
    :goto_1
    const/4 v9, 0x1

    .line 147
    :cond_0
    :goto_2
    if-eqz v9, :cond_7

    .line 148
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mEffectCommands:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mCurrentSoundEffect:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 149
    .local v7, "command":Ljava/lang/String;
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 150
    const-string v0, "AudioSphereManager"

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

    .line 151
    invoke-static {v7}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 152
    const-string v0, "AudioSphereManager"

    const-string v2, "updateSoundEffect successful"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v6, v1

    .line 154
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->sendMsg(IIIILjava/lang/Object;I)V

    .line 161
    .end local v7    # "command":Ljava/lang/String;
    :cond_2
    :goto_3
    return-void

    .end local v8    # "effect":I
    .end local v10    # "isSupport":Z
    .end local v11    # "oldCommand":Ljava/lang/String;
    :cond_3
    move v10, v1

    .line 125
    goto :goto_0

    .line 134
    .restart local v8    # "effect":I
    .restart local v10    # "isSupport":Z
    .restart local v11    # "oldCommand":Ljava/lang/String;
    :cond_4
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;

    iget v0, v0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;->mEffectId:I

    iput v0, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mCurrentSoundEffect:I

    goto :goto_1

    .line 138
    :cond_5
    if-nez v10, :cond_6

    iget v0, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mCurrentSoundEffect:I

    if-eqz v0, :cond_6

    .line 139
    iput v1, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mCurrentSoundEffect:I

    .line 140
    const/4 v9, 0x1

    goto :goto_2

    .line 142
    :cond_6
    if-eqz v10, :cond_0

    iget v0, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mCurrentSoundEffect:I

    if-eq v0, v8, :cond_0

    .line 143
    iput v8, p0, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->mCurrentSoundEffect:I

    .line 144
    const/4 v9, 0x1

    goto :goto_2

    .line 156
    :cond_7
    sget v0, Lcom/android/server/audio/htcsoundfx/CustomizationUtil;->SENSE_VERSION_NUM:F

    const/high16 v2, 0x40e00000    # 7.0f

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_2

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v6, v1

    .line 158
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/audio/htcsoundfx/AudioSphereManager;->sendMsg(IIIILjava/lang/Object;I)V

    goto :goto_3
.end method
