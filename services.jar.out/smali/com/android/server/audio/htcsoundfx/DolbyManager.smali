.class public Lcom/android/server/audio/htcsoundfx/DolbyManager;
.super Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;
.source "DolbyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/htcsoundfx/DolbyManager$2;,
        Lcom/android/server/audio/htcsoundfx/DolbyManager$EffectNotificationStatus;
    }
.end annotation


# static fields
.field static final DB_DOLBY_PROPERTY_NAME:[Ljava/lang/String;

.field public static final DOLBY_EARBUDS:I = 0x2

.field private static final DOLBY_EARBUDS_NAME:Ljava/lang/String; = "Earbuds"

.field public static final DOLBY_ENABLE:I = 0x0

.field public static final DOLBY_ERROR:I = -0x1

.field public static final DOLBY_HIRES:I = 0x4

.field private static final DOLBY_HIRES_NAME:Ljava/lang/String; = "Hi_Res"

.field public static final DOLBY_INEAR:I = 0x3

.field private static final DOLBY_INEAR_NAME:Ljava/lang/String; = "In_Ear"

.field public static final DOLBY_OFF:I = 0x0

.field private static final DOLBY_OFF_NAME:Ljava/lang/String; = "Off"

.field public static final DOLBY_OTHER:I = 0x5

.field private static final DOLBY_OTHER_NAME:Ljava/lang/String; = "Others"

.field public static final DOLBY_PROFILE:I = 0x1

.field public static final DOLBY_SPEAKER:I = 0x1

.field private static final DOLBY_SPEAKER_NAME:Ljava/lang/String; = "Speaker"

.field private static final TAG:Ljava/lang/String; = "DolbyManager"


# instance fields
.field private mDefaultSoundEffect:I

.field private mDolbyController:Lcom/android/server/audio/htcsoundfx/DolbyController;

.field mDolbyEnabled:I

.field private final mDsClientListener:Lcom/android/server/audio/htcsoundfx/dolby/IDsClientEvents;

.field private mEffectIconView:Lcom/android/server/audio/htcsoundfx/view/EffectViewInterface;

.field private mEffectNotification:Ljava/lang/Object;

.field mEffectNotificationStatus:Lcom/android/server/audio/htcsoundfx/DolbyManager$EffectNotificationStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "audio.dolby.enabled"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "audio.dolby.profile"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->DB_DOLBY_PROPERTY_NAME:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/audio/AudioService;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "as"    # Lcom/android/server/audio/AudioService;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 66
    invoke-direct {p0, p1, p2, p3, v3}, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/audio/AudioService;I)V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mEffectNotification:Ljava/lang/Object;

    .line 494
    new-instance v0, Lcom/android/server/audio/htcsoundfx/DolbyManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/audio/htcsoundfx/DolbyManager$1;-><init>(Lcom/android/server/audio/htcsoundfx/DolbyManager;)V

    iput-object v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mDsClientListener:Lcom/android/server/audio/htcsoundfx/dolby/IDsClientEvents;

    .line 68
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mEffectCommands:Landroid/util/SparseArray;

    .line 69
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mEffectCommands:Landroid/util/SparseArray;

    const-string v1, "Off"

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mEffectCommands:Landroid/util/SparseArray;

    const-string v1, "Speaker"

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 71
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mEffectCommands:Landroid/util/SparseArray;

    const-string v1, "Earbuds"

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 72
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mEffectCommands:Landroid/util/SparseArray;

    const-string v1, "In_Ear"

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 73
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mEffectCommands:Landroid/util/SparseArray;

    const/4 v1, 0x4

    const-string v2, "Hi_Res"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mEffectCommands:Landroid/util/SparseArray;

    const/4 v1, 0x5

    const-string v2, "Others"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 76
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mValidEffectCommands:Landroid/util/SparseArray;

    .line 78
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mValidEffectCommands:Landroid/util/SparseArray;

    const/16 v1, 0x320

    const-string v2, "Off"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 79
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mValidEffectCommands:Landroid/util/SparseArray;

    const-string v1, "Off"

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mValidEffectCommands:Landroid/util/SparseArray;

    const/16 v1, 0x386

    const-string v2, "In_Ear"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 81
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mValidEffectCommands:Landroid/util/SparseArray;

    const-string v1, "Earbuds"

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 82
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mValidEffectCommands:Landroid/util/SparseArray;

    const-string v1, "In_Ear"

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 83
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mValidEffectCommands:Landroid/util/SparseArray;

    const/4 v1, 0x4

    const-string v2, "Hi_Res"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 84
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mValidEffectCommands:Landroid/util/SparseArray;

    const/4 v1, 0x5

    const-string v2, "Others"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 86
    iput v5, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mSystemSoundEffect:I

    .line 87
    iput v5, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mCurrentSoundEffect:I

    .line 88
    iput v4, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mDefaultSoundEffect:I

    .line 89
    iput v7, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mDolbyEnabled:I

    .line 91
    new-instance v0, Lcom/android/server/audio/htcsoundfx/DolbyController;

    invoke-direct {v0, p1, p2}, Lcom/android/server/audio/htcsoundfx/DolbyController;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mDolbyController:Lcom/android/server/audio/htcsoundfx/DolbyController;

    .line 92
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mDolbyController:Lcom/android/server/audio/htcsoundfx/DolbyController;

    iget-object v1, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mDsClientListener:Lcom/android/server/audio/htcsoundfx/dolby/IDsClientEvents;

    invoke-virtual {v0, v1}, Lcom/android/server/audio/htcsoundfx/DolbyController;->setObserver(Lcom/android/server/audio/htcsoundfx/dolby/IDsClientEvents;)V

    .line 94
    sget-object v0, Lcom/android/server/audio/htcsoundfx/DolbyManager$EffectNotificationStatus;->No:Lcom/android/server/audio/htcsoundfx/DolbyManager$EffectNotificationStatus;

    iput-object v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mEffectNotificationStatus:Lcom/android/server/audio/htcsoundfx/DolbyManager$EffectNotificationStatus;

    .line 95
    invoke-direct {p0}, Lcom/android/server/audio/htcsoundfx/DolbyManager;->initEffectView()V

    .line 96
    return-void
.end method

.method private doShowView(Ljava/lang/Object;)V
    .locals 2
    .param p1, "view"    # Ljava/lang/Object;

    .prologue
    .line 368
    if-eqz p1, :cond_0

    .line 369
    const-string v0, "DolbyManager"

    const-string v1, "enable Dolby notification!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mEffectIconView:Lcom/android/server/audio/htcsoundfx/view/EffectViewInterface;

    invoke-interface {v0, p1}, Lcom/android/server/audio/htcsoundfx/view/EffectViewInterface;->setView(Ljava/lang/Object;)V

    .line 371
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mEffectIconView:Lcom/android/server/audio/htcsoundfx/view/EffectViewInterface;

    invoke-interface {v0}, Lcom/android/server/audio/htcsoundfx/view/EffectViewInterface;->show()V

    .line 379
    :goto_0
    return-void

    .line 373
    :cond_0
    const-string v0, "DolbyManager"

    const-string v1, "disable Dolby notification!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mEffectIconView:Lcom/android/server/audio/htcsoundfx/view/EffectViewInterface;

    invoke-interface {v0}, Lcom/android/server/audio/htcsoundfx/view/EffectViewInterface;->hide()V

    .line 376
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mEffectNotification:Ljava/lang/Object;

    .line 377
    sget-object v0, Lcom/android/server/audio/htcsoundfx/DolbyManager$EffectNotificationStatus;->No:Lcom/android/server/audio/htcsoundfx/DolbyManager$EffectNotificationStatus;

    iput-object v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mEffectNotificationStatus:Lcom/android/server/audio/htcsoundfx/DolbyManager$EffectNotificationStatus;

    goto :goto_0
.end method

.method private getEffectItem(ZZ)Ljava/lang/Object;
    .locals 6
    .param p1, "active"    # Z
    .param p2, "enabled"    # Z

    .prologue
    const/4 v3, 0x0

    .line 407
    if-nez p1, :cond_1

    .line 432
    :cond_0
    :goto_0
    return-object v3

    .line 408
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/audio/htcsoundfx/DolbyManager;->checkDolbySupport()Z

    move-result v1

    .line 409
    .local v1, "isSupport":Z
    if-eqz v1, :cond_0

    .line 411
    iget-object v3, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mAudioDevice:Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;

    invoke-virtual {v3}, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;->isDeviceOutput_Speaker()Z

    move-result v0

    .line 413
    .local v0, "isSpeaker":Z
    sget-object v2, Lcom/android/server/audio/htcsoundfx/DolbyManager$EffectNotificationStatus;->No:Lcom/android/server/audio/htcsoundfx/DolbyManager$EffectNotificationStatus;

    .line 415
    .local v2, "status":Lcom/android/server/audio/htcsoundfx/DolbyManager$EffectNotificationStatus;
    if-eqz p2, :cond_5

    .line 416
    if-eqz v0, :cond_4

    .line 417
    sget-object v2, Lcom/android/server/audio/htcsoundfx/DolbyManager$EffectNotificationStatus;->SpeakerOn:Lcom/android/server/audio/htcsoundfx/DolbyManager$EffectNotificationStatus;

    .line 427
    :goto_1
    iget-object v3, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mEffectNotificationStatus:Lcom/android/server/audio/htcsoundfx/DolbyManager$EffectNotificationStatus;

    if-ne v3, v2, :cond_2

    iget-object v3, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mEffectNotificationStatus:Lcom/android/server/audio/htcsoundfx/DolbyManager$EffectNotificationStatus;

    if-nez v3, :cond_3

    .line 428
    :cond_2
    iput-object v2, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mEffectNotificationStatus:Lcom/android/server/audio/htcsoundfx/DolbyManager$EffectNotificationStatus;

    .line 429
    const-wide/16 v4, -0x1

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/server/audio/htcsoundfx/DolbyManager;->generateEffectItem(Lcom/android/server/audio/htcsoundfx/DolbyManager$EffectNotificationStatus;J)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mEffectNotification:Ljava/lang/Object;

    .line 432
    :cond_3
    iget-object v3, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mEffectNotification:Ljava/lang/Object;

    goto :goto_0

    .line 419
    :cond_4
    sget-object v2, Lcom/android/server/audio/htcsoundfx/DolbyManager$EffectNotificationStatus;->HeadsetOn:Lcom/android/server/audio/htcsoundfx/DolbyManager$EffectNotificationStatus;

    goto :goto_1

    .line 421
    :cond_5
    if-eqz v0, :cond_6

    .line 422
    sget-object v2, Lcom/android/server/audio/htcsoundfx/DolbyManager$EffectNotificationStatus;->SpeakerOff:Lcom/android/server/audio/htcsoundfx/DolbyManager$EffectNotificationStatus;

    goto :goto_1

    .line 424
    :cond_6
    sget-object v2, Lcom/android/server/audio/htcsoundfx/DolbyManager$EffectNotificationStatus;->HeadsetOff:Lcom/android/server/audio/htcsoundfx/DolbyManager$EffectNotificationStatus;

    goto :goto_1
.end method

.method private initEffectView()V
    .locals 5

    .prologue
    .line 397
    sget v1, Lcom/android/server/audio/htcsoundfx/CustomizationUtil;->SENSE_VERSION_NUM:F

    const/high16 v2, 0x40e00000    # 7.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 398
    const-string v1, "beats_effect"

    const v2, 0x102000e

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/audio/htcsoundfx/view/EffectViewStatusBar;->generateStatusBarIcon(Ljava/lang/String;IILjava/lang/String;)Lcom/android/server/audio/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;

    move-result-object v0

    .line 399
    .local v0, "icon":Lcom/android/server/audio/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;
    new-instance v1, Lcom/android/server/audio/htcsoundfx/view/EffectViewStatusBar;

    iget-object v2, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/android/server/audio/htcsoundfx/view/EffectViewStatusBar;-><init>(Landroid/content/Context;Lcom/android/server/audio/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;)V

    iput-object v1, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mEffectIconView:Lcom/android/server/audio/htcsoundfx/view/EffectViewInterface;

    .line 403
    .end local v0    # "icon":Lcom/android/server/audio/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;
    :goto_0
    return-void

    .line 401
    :cond_0
    new-instance v1, Lcom/android/server/audio/htcsoundfx/view/EffectViewNotification;

    iget-object v2, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/audio/htcsoundfx/view/EffectViewNotification;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mEffectIconView:Lcom/android/server/audio/htcsoundfx/view/EffectViewInterface;

    goto :goto_0
.end method

.method private refreshView()V
    .locals 5

    .prologue
    .line 382
    sget v3, Lcom/android/server/audio/htcsoundfx/CustomizationUtil;->SENSE_VERSION_NUM:F

    const/high16 v4, 0x40e00000    # 7.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    .line 394
    :goto_0
    return-void

    .line 384
    :cond_0
    const-string v3, "DolbyManager"

    const-string v4, "refreshView"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    const-wide/16 v0, -0x1

    .line 386
    .local v0, "notificationTimestamp":J
    iget-object v3, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mEffectNotification:Ljava/lang/Object;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mEffectNotification:Ljava/lang/Object;

    instance-of v3, v3, Landroid/app/Notification;

    if-eqz v3, :cond_1

    .line 387
    iget-object v3, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mEffectNotification:Ljava/lang/Object;

    check-cast v3, Landroid/app/Notification;

    iget-wide v0, v3, Landroid/app/Notification;->when:J

    .line 389
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mEffectNotification:Ljava/lang/Object;

    .line 391
    iget-object v3, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mEffectNotificationStatus:Lcom/android/server/audio/htcsoundfx/DolbyManager$EffectNotificationStatus;

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/server/audio/htcsoundfx/DolbyManager;->generateEffectItem(Lcom/android/server/audio/htcsoundfx/DolbyManager$EffectNotificationStatus;J)Ljava/lang/Object;

    move-result-object v2

    .line 392
    .local v2, "view":Ljava/lang/Object;
    invoke-direct {p0, v2}, Lcom/android/server/audio/htcsoundfx/DolbyManager;->doShowView(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private showView(ZZ)V
    .locals 3
    .param p1, "active"    # Z
    .param p2, "enabled"    # Z

    .prologue
    .line 353
    sget v1, Lcom/android/server/audio/htcsoundfx/CustomizationUtil;->SENSE_VERSION_NUM:F

    const/high16 v2, 0x40e00000    # 7.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 354
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 355
    const-string v1, "DolbyManager"

    const-string v2, "enable Dolby notification!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v1, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mEffectIconView:Lcom/android/server/audio/htcsoundfx/view/EffectViewInterface;

    invoke-interface {v1}, Lcom/android/server/audio/htcsoundfx/view/EffectViewInterface;->show()V

    .line 365
    :goto_0
    return-void

    .line 358
    :cond_0
    const-string v1, "DolbyManager"

    const-string v2, "disable Dolby notification!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-object v1, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mEffectIconView:Lcom/android/server/audio/htcsoundfx/view/EffectViewInterface;

    invoke-interface {v1}, Lcom/android/server/audio/htcsoundfx/view/EffectViewInterface;->hide()V

    goto :goto_0

    .line 362
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/htcsoundfx/DolbyManager;->getEffectItem(ZZ)Ljava/lang/Object;

    move-result-object v0

    .line 363
    .local v0, "view":Ljava/lang/Object;
    invoke-direct {p0, v0}, Lcom/android/server/audio/htcsoundfx/DolbyManager;->doShowView(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected _loadSoundEffect()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 99
    iget-object v2, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/server/audio/htcsoundfx/DolbyManager;->DB_DOLBY_PROPERTY_NAME:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 100
    .local v1, "enabled":I
    iget-object v2, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/server/audio/htcsoundfx/DolbyManager;->DB_DOLBY_PROPERTY_NAME:[Ljava/lang/String;

    aget-object v3, v3, v5

    iget v4, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mDefaultSoundEffect:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 102
    .local v0, "effect":I
    invoke-virtual {p0, v0}, Lcom/android/server/audio/htcsoundfx/DolbyManager;->isValidSystemSoundEffect(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 103
    iget v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mDefaultSoundEffect:I

    .line 106
    :cond_0
    sparse-switch v0, :sswitch_data_0

    .line 115
    :goto_0
    if-eqz v1, :cond_1

    .line 116
    const-string v2, "DolbyManager"

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

    .line 117
    const/4 v1, 0x1

    .line 120
    :cond_1
    invoke-virtual {p0, v1, v0}, Lcom/android/server/audio/htcsoundfx/DolbyManager;->_loadSoundEffect(II)V

    .line 121
    return-void

    .line 110
    :sswitch_0
    const-string v2, "DolbyManager"

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

    iget v4, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mDefaultSoundEffect:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mDefaultSoundEffect:I

    goto :goto_0

    .line 106
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x320 -> :sswitch_0
        0x386 -> :sswitch_0
    .end sparse-switch
.end method

.method _loadSoundEffect(II)V
    .locals 3
    .param p1, "enable"    # I
    .param p2, "effect"    # I

    .prologue
    .line 124
    const-string v0, "DolbyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadSoundEffect dolby_enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " effect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v1, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 126
    :try_start_0
    iput p1, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mDolbyEnabled:I

    .line 127
    iput p2, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mSystemSoundEffect:I

    .line 128
    invoke-virtual {p0}, Lcom/android/server/audio/htcsoundfx/DolbyManager;->updateSoundEffect()V

    .line 129
    monitor-exit v1

    .line 130
    return-void

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected _resetSoundEffect()V
    .locals 2

    .prologue
    .line 133
    const-string v0, "DolbyManager"

    const-string v1, "resetSoundEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v1, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 135
    const/4 v0, -0x1

    :try_start_0
    iput v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mSystemSoundEffect:I

    .line 136
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mCurrentSoundEffect:I

    .line 137
    monitor-exit v1

    .line 138
    return-void

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method _updateSoundEffect(ZI)V
    .locals 11
    .param p1, "support"    # Z
    .param p2, "effect"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 165
    const/4 v8, 0x0

    .line 166
    .local v8, "effectChanged":Z
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mEffectCommands:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mCurrentSoundEffect:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 168
    .local v9, "oldCommand":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 169
    iget v2, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mCurrentSoundEffect:I

    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;

    iget v0, v0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;->mEffectId:I

    if-eq v2, v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;

    iget v0, v0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;->mEffectId:I

    const/16 v2, 0x320

    if-ne v0, v2, :cond_4

    .line 171
    iput v1, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mCurrentSoundEffect:I

    .line 174
    :goto_0
    const/4 v8, 0x1

    .line 186
    :cond_0
    :goto_1
    if-eqz v8, :cond_9

    .line 187
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mEffectCommands:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mCurrentSoundEffect:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 188
    .local v7, "command":Ljava/lang/String;
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 189
    const-string v0, "DolbyManager"

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

    .line 190
    const/4 v10, 0x0

    .line 191
    .local v10, "res":Z
    iget v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mCurrentSoundEffect:I

    if-nez v0, :cond_7

    .line 192
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mDolbyController:Lcom/android/server/audio/htcsoundfx/DolbyController;

    invoke-virtual {v0, v1}, Lcom/android/server/audio/htcsoundfx/DolbyController;->setOn(Z)Z

    move-result v10

    .line 198
    :cond_1
    :goto_2
    if-nez v10, :cond_8

    .line 199
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mCurrentSoundEffect:I

    .line 200
    const-string v0, "DolbyManager"

    const-string v2, "updateSoundEffect failed"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v10    # "res":Z
    :cond_2
    :goto_3
    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v6, v1

    .line 204
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/audio/htcsoundfx/DolbyManager;->sendMsg(IIIILjava/lang/Object;I)V

    .line 211
    .end local v7    # "command":Ljava/lang/String;
    :cond_3
    :goto_4
    return-void

    .line 173
    :cond_4
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;

    iget v0, v0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;->mEffectId:I

    iput v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mCurrentSoundEffect:I

    goto :goto_0

    .line 177
    :cond_5
    if-nez p1, :cond_6

    iget v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mCurrentSoundEffect:I

    if-eqz v0, :cond_6

    .line 178
    iput v1, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mCurrentSoundEffect:I

    .line 179
    const/4 v8, 0x1

    goto :goto_1

    .line 181
    :cond_6
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mCurrentSoundEffect:I

    if-eq v0, p2, :cond_0

    .line 182
    iput p2, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mCurrentSoundEffect:I

    .line 183
    const/4 v8, 0x1

    goto :goto_1

    .line 194
    .restart local v7    # "command":Ljava/lang/String;
    .restart local v10    # "res":Z
    :cond_7
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mDolbyController:Lcom/android/server/audio/htcsoundfx/DolbyController;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/audio/htcsoundfx/DolbyController;->setOn(Z)Z

    move-result v10

    .line 195
    if-eqz v10, :cond_1

    .line 196
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mDolbyController:Lcom/android/server/audio/htcsoundfx/DolbyController;

    invoke-virtual {v0, v7}, Lcom/android/server/audio/htcsoundfx/DolbyController;->setProfile(Ljava/lang/String;)Z

    move-result v10

    goto :goto_2

    .line 202
    :cond_8
    const-string v0, "DolbyManager"

    const-string v2, "updateSoundEffect successful"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 206
    .end local v7    # "command":Ljava/lang/String;
    .end local v10    # "res":Z
    :cond_9
    sget v0, Lcom/android/server/audio/htcsoundfx/CustomizationUtil;->SENSE_VERSION_NUM:F

    const/high16 v2, 0x40e00000    # 7.0f

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_3

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v6, v1

    .line 208
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/audio/htcsoundfx/DolbyManager;->sendMsg(IIIILjava/lang/Object;I)V

    goto :goto_4
.end method

.method checkDolbySupport()Z
    .locals 3

    .prologue
    .line 346
    const-string v0, "DolbyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDolbyEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mDolbyEnabled:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mAudioDevice:Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;

    invoke-virtual {v0}, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;->dump()V

    .line 348
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mAudioDevice:Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;

    invoke-virtual {v0}, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;->isDeviceOutput_Speaker()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mAudioDevice:Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;

    invoke-virtual {v0}, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;->isDeviceOutput_Headset()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected generateEffectItem(Lcom/android/server/audio/htcsoundfx/DolbyManager$EffectNotificationStatus;J)Ljava/lang/Object;
    .locals 14
    .param p1, "status"    # Lcom/android/server/audio/htcsoundfx/DolbyManager$EffectNotificationStatus;
    .param p2, "when"    # J

    .prologue
    .line 436
    const v1, 0x1020007

    .line 437
    .local v1, "iconId":I
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v8, 0x1070073

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 438
    .local v2, "title":Ljava/lang/String;
    const/4 v3, 0x0

    .line 439
    .local v3, "text":Ljava/lang/String;
    const/4 v4, -0x1

    .line 440
    .local v4, "actionIcon":I
    const/4 v5, 0x0

    .line 441
    .local v5, "actionTitle":Ljava/lang/String;
    const/4 v6, 0x0

    .line 443
    .local v6, "actionIntent":Landroid/content/Intent;
    const/4 v11, -0x1

    .line 444
    .local v11, "actionTurnOn":I
    const/4 v10, -0x1

    .line 445
    .local v10, "actionTitleId":I
    const/4 v12, -0x1

    .line 446
    .local v12, "textId":I
    const/4 v7, 0x0

    .line 448
    .local v7, "hide":Z
    sget-object v0, Lcom/android/server/audio/htcsoundfx/DolbyManager$2;->$SwitchMap$com$android$server$audio$htcsoundfx$DolbyManager$EffectNotificationStatus:[I

    invoke-virtual {p1}, Lcom/android/server/audio/htcsoundfx/DolbyManager$EffectNotificationStatus;->ordinal()I

    move-result v8

    aget v0, v0, v8

    packed-switch v0, :pswitch_data_0

    .line 480
    const/4 v0, 0x0

    .line 491
    :goto_0
    return-object v0

    .line 450
    :pswitch_0
    const-string v0, "DolbyManager"

    const-string v8, "speaker on : show turn off"

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    const/4 v11, 0x0

    .line 452
    const v10, 0x1070070

    .line 453
    const v4, 0x1020001

    .line 454
    const v12, 0x107006e

    .line 483
    :goto_1
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 484
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 486
    const/4 v0, -0x1

    if-eq v11, v0, :cond_0

    .line 487
    new-instance v6, Landroid/content/Intent;

    .end local v6    # "actionIntent":Landroid/content/Intent;
    const-string v0, "com.htc.intent.action.SURROUNDSOUND_SETTINGS"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 488
    .restart local v6    # "actionIntent":Landroid/content/Intent;
    const-string v0, "DolbyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "actionTurnOn="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    const-string v0, "effect_enable"

    invoke-virtual {v6, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 491
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mContext:Landroid/content/Context;

    move-wide/from16 v8, p2

    invoke-static/range {v0 .. v9}, Lcom/android/server/audio/htcsoundfx/view/EffectViewNotification;->createNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;ZJ)Landroid/app/Notification;

    move-result-object v0

    goto :goto_0

    .line 457
    :pswitch_1
    const-string v0, "DolbyManager"

    const-string v8, "speaker off : show turn on"

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const/4 v11, 0x1

    .line 459
    const v10, 0x1070071

    .line 460
    const/high16 v4, 0x1020000

    .line 461
    const v12, 0x107006e

    .line 462
    const/4 v7, 0x1

    .line 463
    goto :goto_1

    .line 465
    :pswitch_2
    const-string v0, "DolbyManager"

    const-string v8, "headset on : show turn off"

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    const/4 v11, 0x0

    .line 467
    const v10, 0x1070070

    .line 468
    const v4, 0x1020001

    .line 469
    const v12, 0x1070078

    .line 470
    goto :goto_1

    .line 472
    :pswitch_3
    const-string v0, "DolbyManager"

    const-string v8, "headset off : show turn on"

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    const/4 v11, 0x1

    .line 474
    const v10, 0x1070071

    .line 475
    const/high16 v4, 0x1020000

    .line 476
    const v12, 0x1070077

    .line 477
    const/4 v7, 0x1

    .line 478
    goto :goto_1

    .line 448
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getSoundEffect(Z)I
    .locals 7
    .param p1, "isSystemWise"    # Z

    .prologue
    const/16 v2, 0x320

    .line 218
    const-string v3, "DolbyManager"

    const-string v4, "getSoundEffect"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/audio/htcsoundfx/DolbyManager;->getSystemProperty(I)I

    move-result v1

    .line 221
    .local v1, "enabled":I
    if-nez v1, :cond_0

    .line 241
    :goto_0
    :pswitch_0
    return v2

    .line 224
    :cond_0
    const/4 v0, -0x1

    .line 225
    .local v0, "effect":I
    iget-object v3, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 226
    if-eqz p1, :cond_1

    .line 227
    :try_start_0
    const-string v4, "DolbyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mSystemSoundEffect="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mSystemSoundEffect:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mSystemSoundEffect:I

    .line 233
    :goto_1
    monitor-exit v3

    .line 235
    packed-switch v0, :pswitch_data_0

    .line 241
    const/16 v2, 0x386

    goto :goto_0

    .line 230
    :cond_1
    const-string v4, "DolbyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCurrentSoundEffect="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mCurrentSoundEffect:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mCurrentSoundEffect:I

    goto :goto_1

    .line 233
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 239
    :pswitch_1
    const/16 v2, -0x64

    goto :goto_0

    .line 235
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

    .line 274
    const-string v1, "DolbyManager"

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

    .line 275
    iget-object v1, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 276
    packed-switch p1, :pswitch_data_0

    .line 285
    :try_start_0
    const-string v0, "DolbyManager"

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

    .line 288
    monitor-exit v1

    .line 291
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 278
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/audio/htcsoundfx/DolbyManager;->checkDolbySupport()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mDolbyEnabled:I

    if-ne v2, v0, :cond_0

    .line 279
    monitor-exit v1

    goto :goto_0

    .line 288
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 281
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    monitor-exit v1

    goto :goto_0

    .line 283
    :pswitch_1
    iget v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mSystemSoundEffect:I

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 276
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
    .line 143
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 144
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/audio/htcsoundfx/DolbyManager;->refreshView()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    :goto_0
    monitor-exit p0

    return-void

    .line 148
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    :try_start_2
    iget v2, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mCurrentSoundEffect:I

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mCurrentSoundEffect:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    const/4 v1, 0x1

    .line 150
    .local v1, "enabled":Z
    :goto_1
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 152
    :try_start_3
    iget-object v2, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mAudioDevice:Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;

    invoke-virtual {v2}, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;->isMusicActiveLocally()Z

    move-result v0

    .line 153
    .local v0, "active":Z
    const-string v2, "DolbyManager"

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

    .line 154
    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/htcsoundfx/DolbyManager;->showView(ZZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 143
    .end local v0    # "active":Z
    .end local v1    # "enabled":Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 149
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 150
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
    .line 331
    const-string v0, "DolbyManager"

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

    .line 332
    packed-switch p1, :pswitch_data_0

    .line 340
    const-string v0, "DolbyManager"

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

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 335
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/audio/htcsoundfx/DolbyManager;->DB_DOLBY_PROPERTY_NAME:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 336
    const-string v0, "DolbyManager"

    const-string v1, "can\'t update harman property in system setting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 332
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
    .line 295
    const-string v0, "DolbyManager"

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

    .line 296
    const/4 v7, 0x0

    .line 297
    .local v7, "changed":Z
    iget-object v1, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 298
    packed-switch p1, :pswitch_data_0

    .line 312
    :try_start_0
    const-string v0, "DolbyManager"

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

    .line 316
    :cond_0
    :goto_0
    if-nez v7, :cond_1

    iget v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mCurrentSoundEffect:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 317
    const/4 v7, 0x1

    .line 320
    :cond_1
    if-eqz v7, :cond_2

    .line 321
    invoke-virtual {p0}, Lcom/android/server/audio/htcsoundfx/DolbyManager;->updateSoundEffect()V

    .line 324
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    if-eqz v7, :cond_3

    .line 326
    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v5, 0x0

    const/16 v6, 0x1f4

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/audio/htcsoundfx/DolbyManager;->sendMsg(IIIILjava/lang/Object;I)V

    .line 328
    :cond_3
    return-void

    .line 300
    :pswitch_0
    :try_start_1
    iget v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mDolbyEnabled:I

    if-eq v0, p2, :cond_0

    .line 301
    iput p2, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mDolbyEnabled:I

    .line 302
    const/4 v7, 0x1

    goto :goto_0

    .line 306
    :pswitch_1
    iget v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mSystemSoundEffect:I

    if-eq v0, p2, :cond_0

    .line 307
    iput p2, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mSystemSoundEffect:I

    .line 308
    const/4 v7, 0x1

    goto :goto_0

    .line 324
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 298
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
    .line 250
    const-string v1, "DolbyManager"

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

    .line 252
    const/16 v1, -0x64

    if-ne p1, v1, :cond_0

    .line 253
    iget p1, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mDefaultSoundEffect:I

    .line 256
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/audio/htcsoundfx/DolbyManager;->isValidSystemSoundEffect(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 271
    :goto_0
    return-void

    .line 259
    :cond_1
    const/4 v0, 0x1

    .line 260
    .local v0, "enabled":I
    sparse-switch p1, :sswitch_data_0

    .line 267
    :goto_1
    iget p1, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mDefaultSoundEffect:I

    .line 268
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/audio/htcsoundfx/DolbyManager;->setSystemProperty(II)V

    .line 269
    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/audio/htcsoundfx/DolbyManager;->setSystemProperty(II)V

    goto :goto_0

    .line 263
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_1

    .line 260
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x320 -> :sswitch_0
    .end sparse-switch
.end method

.method updateSoundEffect()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 158
    invoke-virtual {p0}, Lcom/android/server/audio/htcsoundfx/DolbyManager;->checkDolbySupport()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mDolbyEnabled:I

    if-ne v3, v2, :cond_0

    move v1, v2

    .line 159
    .local v1, "isDolbySupport":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mAudioDevice:Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;

    invoke-virtual {v3}, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;->isDeviceOutput_Speaker()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyManager;->mSystemSoundEffect:I

    .line 161
    .local v0, "effect":I
    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/android/server/audio/htcsoundfx/DolbyManager;->_updateSoundEffect(ZI)V

    .line 162
    return-void

    .line 158
    .end local v0    # "effect":I
    .end local v1    # "isDolbySupport":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .restart local v1    # "isDolbySupport":Z
    :cond_1
    move v0, v2

    .line 159
    goto :goto_1
.end method
