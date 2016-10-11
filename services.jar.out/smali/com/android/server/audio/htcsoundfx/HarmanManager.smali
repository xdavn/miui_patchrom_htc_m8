.class public Lcom/android/server/audio/htcsoundfx/HarmanManager;
.super Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;
.source "HarmanManager.java"


# static fields
.field private static final DB_HARMAN_PROPERTY_NAME:[Ljava/lang/String;

.field public static final HARMAN_LIVESTAGE_BUNDLED:I = 0x1

.field public static final HARMAN_LIVESTAGE_CL:I = 0x4

.field public static final HARMAN_LIVESTAGE_ENABLE:I = 0x1

.field public static final HARMAN_LIVESTAGE_ERROR:I = -0x1

.field public static final HARMAN_LIVESTAGE_NC:I = 0x3

.field public static final HARMAN_LIVESTAGE_OFF:I = 0x0

.field public static final HARMAN_LIVESTAGE_OTHER:I = 0x5

.field public static final HARMAN_LIVESTAGE_PROFILE:I = 0x2

.field public static final HARMAN_LIVESTAGE_SOHO:I = 0x2

.field public static final HARMAN_SIGNALDOCTOR_ENABLE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HarmanManager"


# instance fields
.field private mLSIconOn:Z

.field private mLiveStageEnabled:I

.field private mSDIconOn:Z

.field private mSignalDoctorEnabled:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "audio.harman.signaldoctor.enabled"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "audio.harman.livestage.enabled"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "audio.harman.livestage.profile"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/audio/htcsoundfx/HarmanManager;->DB_HARMAN_PROPERTY_NAME:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/audio/AudioService;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "as"    # Lcom/android/server/audio/AudioService;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, -0x1

    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 43
    invoke-direct {p0, p1, p2, p3, v4}, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/audio/AudioService;I)V

    .line 45
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/htcsoundfx/HarmanManager;->mEffectCommands:Landroid/util/SparseArray;

    .line 46
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/HarmanManager;->mEffectCommands:Landroid/util/SparseArray;

    const/4 v1, 0x0

    const-string v2, "global_HarmanLS=OFF"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 47
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/HarmanManager;->mEffectCommands:Landroid/util/SparseArray;

    const-string v1, "global_HarmanLS=Bundle"

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 48
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/HarmanManager;->mEffectCommands:Landroid/util/SparseArray;

    const-string v1, "global_HarmanLS=Soho"

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 49
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/HarmanManager;->mEffectCommands:Landroid/util/SparseArray;

    const-string v1, "global_HarmanLS=NC"

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 50
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/HarmanManager;->mEffectCommands:Landroid/util/SparseArray;

    const-string v1, "global_HarmanLS=CL"

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 51
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/HarmanManager;->mEffectCommands:Landroid/util/SparseArray;

    const/4 v1, 0x5

    const-string v2, "global_HarmanLS=Other"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 53
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/htcsoundfx/HarmanManager;->mValidEffectCommands:Landroid/util/SparseArray;

    .line 55
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/HarmanManager;->mValidEffectCommands:Landroid/util/SparseArray;

    const/16 v1, 0x320

    const-string v2, "global_HarmanLS=OFF"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 56
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/HarmanManager;->mValidEffectCommands:Landroid/util/SparseArray;

    const-string v1, "global_HarmanLS=Bundle"

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 57
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/HarmanManager;->mValidEffectCommands:Landroid/util/SparseArray;

    const-string v1, "global_HarmanLS=Soho"

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 58
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/HarmanManager;->mValidEffectCommands:Landroid/util/SparseArray;

    const-string v1, "global_HarmanLS=NC"

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 59
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/HarmanManager;->mValidEffectCommands:Landroid/util/SparseArray;

    const-string v1, "global_HarmanLS=CL"

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 60
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/HarmanManager;->mValidEffectCommands:Landroid/util/SparseArray;

    const/4 v1, 0x5

    const-string v2, "global_HarmanLS=Other"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 62
    iput v5, p0, Lcom/android/server/audio/htcsoundfx/HarmanManager;->mSystemSoundEffect:I

    .line 63
    iput v5, p0, Lcom/android/server/audio/htcsoundfx/HarmanManager;->mCurrentSoundEffect:I

    .line 64
    iput v3, p0, Lcom/android/server/audio/htcsoundfx/HarmanManager;->mSignalDoctorEnabled:I

    .line 65
    iput v3, p0, Lcom/android/server/audio/htcsoundfx/HarmanManager;->mLiveStageEnabled:I

    .line 66
    return-void
.end method

.method private checkLiveStageSupport()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 223
    const-string v2, "HarmanManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mLiveStageEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/audio/htcsoundfx/HarmanManager;->mLiveStageEnabled:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget v2, p0, Lcom/android/server/audio/htcsoundfx/HarmanManager;->mLiveStageEnabled:I

    if-ne v2, v1, :cond_1

    .line 225
    iget-object v2, p0, Lcom/android/server/audio/htcsoundfx/HarmanManager;->mAudioDevice:Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;

    invoke-virtual {v2}, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;->dump()V

    .line 226
    iget-object v2, p0, Lcom/android/server/audio/htcsoundfx/HarmanManager;->mAudioDevice:Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;

    invoke-virtual {v2}, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;->isDeviceOutput_Headset()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/audio/htcsoundfx/HarmanManager;->mAudioDevice:Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;

    invoke-virtual {v2}, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;->isDeviceOutput_BtHeadset()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 228
    :cond_1
    return v0
.end method

.method private showHarmanIcon(ZZ)V
    .locals 6
    .param p1, "SDEnabled"    # Z
    .param p2, "LSEnabled"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 239
    if-eqz p2, :cond_2

    iget-boolean v0, p0, Lcom/android/server/audio/htcsoundfx/HarmanManager;->mLSIconOn:Z

    if-nez v0, :cond_2

    .line 240
    const-string v0, "HarmanManager"

    const-string v1, "enable LiveStage notification!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/HarmanManager;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "beats_effect"

    const v2, 0x1020011

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 242
    iput-boolean v4, p0, Lcom/android/server/audio/htcsoundfx/HarmanManager;->mLSIconOn:Z

    .line 250
    :cond_0
    :goto_0
    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lcom/android/server/audio/htcsoundfx/HarmanManager;->mSDIconOn:Z

    if-nez v0, :cond_3

    .line 251
    const-string v0, "HarmanManager"

    const-string v1, "enable SignalDoctor notification!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/HarmanManager;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "signal_doctor"

    const v2, 0x1020013

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 253
    iput-boolean v4, p0, Lcom/android/server/audio/htcsoundfx/HarmanManager;->mSDIconOn:Z

    .line 260
    :cond_1
    :goto_1
    return-void

    .line 244
    :cond_2
    if-nez p2, :cond_0

    iget-boolean v0, p0, Lcom/android/server/audio/htcsoundfx/HarmanManager;->mLSIconOn:Z

    if-eqz v0, :cond_0

    .line 245
    const-string v0, "HarmanManager"

    const-string v1, "disable LiveStage notification!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/HarmanManager;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "beats_effect"

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    .line 247
    iput-boolean v3, p0, Lcom/android/server/audio/htcsoundfx/HarmanManager;->mLSIconOn:Z

    goto :goto_0

    .line 255
    :cond_3
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/audio/htcsoundfx/HarmanManager;->mSDIconOn:Z

    if-eqz v0, :cond_1

    .line 256
    const-string v0, "HarmanManager"

    const-string v1, "disable SignalDoctor notification!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/HarmanManager;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "signal_doctor"

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    .line 258
    iput-boolean v3, p0, Lcom/android/server/audio/htcsoundfx/HarmanManager;->mSDIconOn:Z

    goto :goto_1
.end method

.method private updateSignalDoctor()V
    .locals 4

    .prologue
    .line 233
    iget v1, p0, Lcom/android/server/audio/htcsoundfx/HarmanManager;->mSignalDoctorEnabled:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v0, "global_HarmanSD=ON"

    .line 234
    .local v0, "command":Ljava/lang/String;
    :goto_0
    const-string v1, "HarmanManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setParameters("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 236
    return-void

    .line 233
    .end local v0    # "command":Ljava/lang/String;
    :cond_0
    const-string v0, "global_HarmanSD=OFF"

    goto :goto_0
.end method


# virtual methods
.method protected _loadSoundEffect()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 69
    iget-object v3, p0, Lcom/android/server/audio/htcsoundfx/HarmanManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/server/audio/htcsoundfx/HarmanManager;->DB_HARMAN_PROPERTY_NAME:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 70
    .local v1, "SDEnabled":I
    iget-object v3, p0, Lcom/android/server/audio/htcsoundfx/HarmanManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/server/audio/htcsoundfx/HarmanManager;->DB_HARMAN_PROPERTY_NAME:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 71
    .local v0, "LSEnabled":I
    iget-object v3, p0, Lcom/android/server/audio/htcsoundfx/HarmanManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/server/audio/htcsoundfx/HarmanManager;->DB_HARMAN_PROPERTY_NAME:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 74
    .local v2, "effect":I
    const/16 v3, 0x320

    if-eq v2, v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/server/audio/htcsoundfx/HarmanManager;->isValidSystemSoundEffect(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 75
    :cond_0
    const/4 v2, 0x1

    .line 76
    :cond_1
    const-string v3, "HarmanManager"

    const-string v4, "loadSoundEffect"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v4, p0, Lcom/android/server/audio/htcsoundfx/HarmanManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 78
    :try_start_0
    iput v1, p0, Lcom/android/server/audio/htcsoundfx/HarmanManager;->mSignalDoctorEnabled:I

    .line 79
    iput v0, p0, Lcom/android/server/audio/htcsoundfx/HarmanManager;->mLiveStageEnabled:I

    .line 80
    iput v2, p0, Lcom/android/server/audio/htcsoundfx/HarmanManager;->mSystemSoundEffect:I

    .line 82
    invoke-direct {p0}, Lcom/android/server/audio/htcsoundfx/HarmanManager;->updateSignalDoctor()V

    .line 83
    invoke-virtual {p0}, Lcom/android/server/audio/htcsoundfx/HarmanManager;->updateSoundEffect()V

    .line 84
    monitor-exit v4

    .line 85
    return-void

    .line 84
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method protected _resetSoundEffect()V
    .locals 2

    .prologue
    .line 88
    const-string v0, "HarmanManager"

    const-string v1, "resetSoundEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v1, p0, Lcom/android/server/audio/htcsoundfx/HarmanManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 90
    const/4 v0, -0x1

    :try_start_0
    iput v0, p0, Lcom/android/server/audio/htcsoundfx/HarmanManager;->mSystemSoundEffect:I

    .line 91
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/audio/htcsoundfx/HarmanManager;->mCurrentSoundEffect:I

    .line 92
    monitor-exit v1

    .line 93
    return-void

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSystemProperty(I)I
    .locals 4
    .param p1, "name"    # I

    .prologue
    .line 147
    const-string v0, "HarmanManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSystemProperty name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v1, p0, Lcom/android/server/audio/htcsoundfx/HarmanManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 149
    packed-switch p1, :pswitch_data_0

    .line 160
    :try_start_0
    const-string v0, "HarmanManager"

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

    .line 163
    monitor-exit v1

    .line 166
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 151
    :pswitch_0
    iget v0, p0, Lcom/android/server/audio/htcsoundfx/HarmanManager;->mSignalDoctorEnabled:I

    monitor-exit v1

    goto :goto_0

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 153
    :pswitch_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/audio/htcsoundfx/HarmanManager;->checkLiveStageSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    .line 156
    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 158
    :pswitch_2
    iget v0, p0, Lcom/android/server/audio/htcsoundfx/HarmanManager;->mSystemSoundEffect:I

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 149
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public declared-synchronized onMessageBeatsNotify(Z)V
    .locals 7
    .param p1, "refresh"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 99
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 110
    :goto_0
    monitor-exit p0

    return-void

    .line 101
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/android/server/audio/htcsoundfx/HarmanManager;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :try_start_1
    iget v6, p0, Lcom/android/server/audio/htcsoundfx/HarmanManager;->mSignalDoctorEnabled:I

    if-ne v6, v0, :cond_1

    move v1, v0

    .line 103
    .local v1, "SDEnabled":Z
    :goto_1
    iget v6, p0, Lcom/android/server/audio/htcsoundfx/HarmanManager;->mCurrentSoundEffect:I

    if-eqz v6, :cond_2

    .line 104
    .local v0, "LSEnabled":Z
    :goto_2
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 105
    :try_start_2
    iget-object v4, p0, Lcom/android/server/audio/htcsoundfx/HarmanManager;->mAudioDevice:Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;

    invoke-virtual {v4}, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;->isMusicActiveLocally()Z

    move-result v2

    .line 106
    .local v2, "active":Z
    iget-object v4, p0, Lcom/android/server/audio/htcsoundfx/HarmanManager;->mAudioDevice:Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;

    invoke-virtual {v4}, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;->isNotAudioHDStreamOnly()Z

    move-result v3

    .line 107
    .local v3, "notAudioHDStreamOnly":Z
    const-string v4, "HarmanManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onMessageBeatsNotify active="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", SDEnabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", LSEnabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", notAudioHDStreamOnly="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    and-int/2addr v2, v3

    .line 109
    and-int v4, v2, v1

    and-int v5, v2, v0

    invoke-direct {p0, v4, v5}, Lcom/android/server/audio/htcsoundfx/HarmanManager;->showHarmanIcon(ZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 99
    .end local v0    # "LSEnabled":Z
    .end local v1    # "SDEnabled":Z
    .end local v2    # "active":Z
    .end local v3    # "notAudioHDStreamOnly":Z
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_1
    move v1, v4

    .line 102
    goto :goto_1

    .restart local v1    # "SDEnabled":Z
    :cond_2
    move v0, v4

    .line 103
    goto :goto_2

    .line 104
    .end local v1    # "SDEnabled":Z
    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public onPersistProperty(II)V
    .locals 3
    .param p1, "name"    # I
    .param p2, "value"    # I

    .prologue
    .line 208
    packed-switch p1, :pswitch_data_0

    .line 217
    const-string v0, "HarmanManager"

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

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 212
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/HarmanManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/audio/htcsoundfx/HarmanManager;->DB_HARMAN_PROPERTY_NAME:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    const-string v0, "HarmanManager"

    const-string v1, "can\'t update harman property in system setting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 208
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setSystemProperty(II)V
    .locals 10
    .param p1, "name"    # I
    .param p2, "value"    # I

    .prologue
    const/4 v9, 0x0

    .line 170
    const-string v0, "HarmanManager"

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

    .line 171
    const/4 v7, 0x0

    .line 172
    .local v7, "changed":Z
    iget-object v8, p0, Lcom/android/server/audio/htcsoundfx/HarmanManager;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 173
    packed-switch p1, :pswitch_data_0

    .line 198
    :try_start_0
    const-string v0, "HarmanManager"

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

    .line 201
    :cond_0
    :goto_0
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    if-eqz v7, :cond_1

    .line 204
    const/4 v1, 0x1

    const/4 v2, 0x2

    const/16 v6, 0x1f4

    move-object v0, p0

    move v3, p1

    move v4, p2

    move-object v5, v9

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/audio/htcsoundfx/HarmanManager;->sendMsg(IIIILjava/lang/Object;I)V

    .line 205
    :cond_1
    return-void

    .line 175
    :pswitch_0
    :try_start_1
    iget v0, p0, Lcom/android/server/audio/htcsoundfx/HarmanManager;->mSignalDoctorEnabled:I

    if-eq v0, p2, :cond_0

    .line 176
    iput p2, p0, Lcom/android/server/audio/htcsoundfx/HarmanManager;->mSignalDoctorEnabled:I

    .line 177
    invoke-direct {p0}, Lcom/android/server/audio/htcsoundfx/HarmanManager;->updateSignalDoctor()V

    .line 178
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/audio/htcsoundfx/HarmanManager;->sendMsg(IIIILjava/lang/Object;I)V

    .line 180
    const/4 v7, 0x1

    goto :goto_0

    .line 184
    :pswitch_1
    iget v0, p0, Lcom/android/server/audio/htcsoundfx/HarmanManager;->mLiveStageEnabled:I

    if-eq v0, p2, :cond_0

    .line 185
    iput p2, p0, Lcom/android/server/audio/htcsoundfx/HarmanManager;->mLiveStageEnabled:I

    .line 186
    invoke-virtual {p0}, Lcom/android/server/audio/htcsoundfx/HarmanManager;->updateSoundEffect()V

    .line 187
    const/4 v7, 0x1

    goto :goto_0

    .line 191
    :pswitch_2
    iget v0, p0, Lcom/android/server/audio/htcsoundfx/HarmanManager;->mSystemSoundEffect:I

    if-eq v0, p2, :cond_0

    .line 192
    iput p2, p0, Lcom/android/server/audio/htcsoundfx/HarmanManager;->mSystemSoundEffect:I

    .line 193
    invoke-virtual {p0}, Lcom/android/server/audio/htcsoundfx/HarmanManager;->updateSoundEffect()V

    .line 194
    const/4 v7, 0x1

    goto :goto_0

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 173
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method updateSoundEffect()V
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 113
    const/4 v8, 0x0

    .line 114
    .local v8, "effectChanged":Z
    invoke-direct {p0}, Lcom/android/server/audio/htcsoundfx/HarmanManager;->checkLiveStageSupport()Z

    move-result v9

    .line 115
    .local v9, "isLiveStageSupport":Z
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/HarmanManager;->mEffectCommands:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/server/audio/htcsoundfx/HarmanManager;->mCurrentSoundEffect:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 117
    .local v10, "oldCommand":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/HarmanManager;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 118
    iget v2, p0, Lcom/android/server/audio/htcsoundfx/HarmanManager;->mCurrentSoundEffect:I

    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/HarmanManager;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;

    iget v0, v0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;->mEffectId:I

    if-eq v2, v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/HarmanManager;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;

    iget v0, v0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;->mEffectId:I

    const/16 v2, 0x320

    if-ne v0, v2, :cond_3

    .line 120
    iput v1, p0, Lcom/android/server/audio/htcsoundfx/HarmanManager;->mCurrentSoundEffect:I

    .line 123
    :goto_0
    const/4 v8, 0x1

    .line 135
    :cond_0
    :goto_1
    if-eqz v8, :cond_2

    .line 136
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/HarmanManager;->mEffectCommands:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/server/audio/htcsoundfx/HarmanManager;->mCurrentSoundEffect:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 137
    .local v7, "command":Ljava/lang/String;
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 138
    const-string v0, "HarmanManager"

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

    .line 139
    invoke-static {v7}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 141
    :cond_1
    const/4 v5, 0x0

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/audio/htcsoundfx/HarmanManager;->sendMsg(IIIILjava/lang/Object;I)V

    .line 144
    .end local v7    # "command":Ljava/lang/String;
    :cond_2
    return-void

    .line 122
    :cond_3
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/HarmanManager;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;

    iget v0, v0, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;->mEffectId:I

    iput v0, p0, Lcom/android/server/audio/htcsoundfx/HarmanManager;->mCurrentSoundEffect:I

    goto :goto_0

    .line 126
    :cond_4
    if-nez v9, :cond_5

    iget v0, p0, Lcom/android/server/audio/htcsoundfx/HarmanManager;->mCurrentSoundEffect:I

    if-eqz v0, :cond_5

    .line 127
    iput v1, p0, Lcom/android/server/audio/htcsoundfx/HarmanManager;->mCurrentSoundEffect:I

    .line 128
    const/4 v8, 0x1

    goto :goto_1

    .line 130
    :cond_5
    if-eqz v9, :cond_0

    iget v0, p0, Lcom/android/server/audio/htcsoundfx/HarmanManager;->mCurrentSoundEffect:I

    iget v2, p0, Lcom/android/server/audio/htcsoundfx/HarmanManager;->mSystemSoundEffect:I

    if-eq v0, v2, :cond_0

    .line 131
    iget v0, p0, Lcom/android/server/audio/htcsoundfx/HarmanManager;->mSystemSoundEffect:I

    iput v0, p0, Lcom/android/server/audio/htcsoundfx/HarmanManager;->mCurrentSoundEffect:I

    .line 132
    const/4 v8, 0x1

    goto :goto_1
.end method
