.class public Lcom/android/server/audio/htcsoundfx/DolbyAudioSphereAdapter;
.super Lcom/android/server/audio/htcsoundfx/DolbyManager;
.source "DolbyAudioSphereAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/htcsoundfx/DolbyAudioSphereAdapter$1;
    }
.end annotation


# static fields
.field private static final DB_DOLBY_PROPERTY_SPEAKER_NAME:Ljava/lang/String; = "audio.dolby.speaker.enabled"

.field public static final DOLBY_HEADSET_ENABLE:I = 0x3

.field public static final DOLBY_SPEAKER_ENALBE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DolbyAudioSphereAdapter"

.field private static final forceSpeakerDolbyOn:Z


# instance fields
.field private mDolbySpeakerEnabled:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    sget v0, Lcom/android/server/audio/htcsoundfx/CustomizationUtil;->NOTIFICATION_VIEW_TYPE:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/server/audio/htcsoundfx/DolbyAudioSphereAdapter;->forceSpeakerDolbyOn:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/audio/AudioService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "as"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/htcsoundfx/DolbyManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/audio/AudioService;)V

    .line 22
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyAudioSphereAdapter;->mDolbySpeakerEnabled:I

    .line 29
    return-void
.end method


# virtual methods
.method _loadSoundEffect(II)V
    .locals 4
    .param p1, "enable"    # I
    .param p2, "effect"    # I

    .prologue
    .line 33
    iget-object v1, p0, Lcom/android/server/audio/htcsoundfx/DolbyAudioSphereAdapter;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "audio.dolby.speaker.enabled"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 34
    .local v0, "speakerEnable":I
    const-string v1, "DolbyAudioSphereAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "speakerEnable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ForceEnableDolbyOnSpeaker = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/audio/htcsoundfx/DolbyAudioSphereAdapter;->forceSpeakerDolbyOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    if-nez v0, :cond_0

    sget-boolean v1, Lcom/android/server/audio/htcsoundfx/DolbyAudioSphereAdapter;->forceSpeakerDolbyOn:Z

    if-eqz v1, :cond_1

    .line 37
    :cond_0
    const-string v1, "DolbyAudioSphereAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load speaker enable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", reset to enable"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const/4 v0, 0x1

    .line 41
    :cond_1
    const-string v1, "DolbyAudioSphereAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadSoundEffect dolby_enable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dolby_speaker_enable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " effect="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object v2, p0, Lcom/android/server/audio/htcsoundfx/DolbyAudioSphereAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 43
    :try_start_0
    iput p1, p0, Lcom/android/server/audio/htcsoundfx/DolbyAudioSphereAdapter;->mDolbyEnabled:I

    .line 44
    iput v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyAudioSphereAdapter;->mDolbySpeakerEnabled:I

    .line 45
    iput p2, p0, Lcom/android/server/audio/htcsoundfx/DolbyAudioSphereAdapter;->mSystemSoundEffect:I

    .line 46
    invoke-virtual {p0}, Lcom/android/server/audio/htcsoundfx/DolbyAudioSphereAdapter;->updateSoundEffect()V

    .line 47
    monitor-exit v2

    .line 48
    return-void

    .line 47
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method checkDolbySupport()Z
    .locals 3

    .prologue
    .line 153
    const-string v0, "DolbyAudioSphereAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkDolbySupport mDolbyEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/audio/htcsoundfx/DolbyAudioSphereAdapter;->mDolbyEnabled:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mDolbySpeakerEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/audio/htcsoundfx/DolbyAudioSphereAdapter;->mDolbySpeakerEnabled:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-super {p0}, Lcom/android/server/audio/htcsoundfx/DolbyManager;->checkDolbySupport()Z

    move-result v0

    return v0
.end method

.method protected generateEffectItem(Lcom/android/server/audio/htcsoundfx/DolbyManager$EffectNotificationStatus;J)Ljava/lang/Object;
    .locals 14
    .param p1, "status"    # Lcom/android/server/audio/htcsoundfx/DolbyManager$EffectNotificationStatus;
    .param p2, "when"    # J

    .prologue
    .line 158
    const v1, 0x1020007

    .line 159
    .local v1, "iconId":I
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyAudioSphereAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v8, 0x1070073

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, "title":Ljava/lang/String;
    const/4 v3, 0x0

    .line 161
    .local v3, "text":Ljava/lang/String;
    const/4 v4, -0x1

    .line 162
    .local v4, "actionIcon":I
    const/4 v10, -0x1

    .line 163
    .local v10, "actionTitleId":I
    const/4 v5, 0x0

    .line 164
    .local v5, "actionTitle":Ljava/lang/String;
    const/4 v6, 0x0

    .line 165
    .local v6, "actionIntent":Landroid/content/Intent;
    const/4 v11, -0x1

    .line 166
    .local v11, "actionTurnOn":I
    const/4 v13, -0x1

    .line 167
    .local v13, "textId":I
    const/4 v7, 0x0

    .line 168
    .local v7, "hide":Z
    const/4 v12, -0x1

    .line 170
    .local v12, "name":I
    sget-object v0, Lcom/android/server/audio/htcsoundfx/DolbyAudioSphereAdapter$1;->$SwitchMap$com$android$server$audio$htcsoundfx$DolbyManager$EffectNotificationStatus:[I

    invoke-virtual {p1}, Lcom/android/server/audio/htcsoundfx/DolbyManager$EffectNotificationStatus;->ordinal()I

    move-result v8

    aget v0, v0, v8

    packed-switch v0, :pswitch_data_0

    .line 232
    const/4 v0, 0x0

    .line 244
    :goto_0
    return-object v0

    .line 172
    :pswitch_0
    const/4 v11, 0x0

    .line 173
    sget v0, Lcom/android/server/audio/htcsoundfx/CustomizationUtil;->NOTIFICATION_VIEW_TYPE:I

    packed-switch v0, :pswitch_data_1

    .line 184
    const-string v0, "DolbyAudioSphereAdapter"

    const-string v8, "speaker on : show switch therater mode"

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const v10, 0x1070074

    .line 186
    const/high16 v4, 0x1020000

    .line 187
    const v13, 0x1070075

    .line 190
    :goto_1
    const/4 v12, 0x2

    .line 234
    :goto_2
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyAudioSphereAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 235
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyAudioSphereAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 237
    const/4 v0, -0x1

    if-eq v11, v0, :cond_0

    .line 238
    new-instance v6, Landroid/content/Intent;

    .end local v6    # "actionIntent":Landroid/content/Intent;
    const-string v0, "com.htc.intent.action.SURROUNDSOUND_SETTINGS"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 239
    .restart local v6    # "actionIntent":Landroid/content/Intent;
    const-string v0, "DolbyAudioSphereAdapter"

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

    .line 240
    const-string v0, "effect_enable"

    invoke-virtual {v6, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 241
    const-string v0, "effect_name"

    invoke-virtual {v6, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyAudioSphereAdapter;->mContext:Landroid/content/Context;

    move-wide/from16 v8, p2

    invoke-static/range {v0 .. v9}, Lcom/android/server/audio/htcsoundfx/view/EffectViewNotification;->createNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;ZJ)Landroid/app/Notification;

    move-result-object v0

    goto :goto_0

    .line 175
    :pswitch_1
    const-string v0, "DolbyAudioSphereAdapter"

    const-string v8, "speaker on: do nothing"

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const/4 v0, 0x0

    goto :goto_0

    .line 178
    :pswitch_2
    const-string v0, "DolbyAudioSphereAdapter"

    const-string v8, "speaker on : show turn off"

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const v10, 0x1070070

    .line 180
    const v4, 0x1020001

    .line 181
    const v13, 0x1070078

    .line 182
    goto :goto_1

    .line 193
    :pswitch_3
    const/4 v11, 0x1

    .line 194
    sget v0, Lcom/android/server/audio/htcsoundfx/CustomizationUtil;->NOTIFICATION_VIEW_TYPE:I

    packed-switch v0, :pswitch_data_2

    .line 206
    const-string v0, "DolbyAudioSphereAdapter"

    const-string v8, "speaker off : show swithc music mode"

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const v10, 0x1070074

    .line 208
    const/high16 v4, 0x1020000

    .line 209
    const v13, 0x1070076

    .line 212
    :goto_3
    const/4 v12, 0x2

    .line 213
    goto :goto_2

    .line 196
    :pswitch_4
    const-string v0, "DolbyAudioSphereAdapter"

    const-string v8, "speaker off: do nothing"

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 199
    :pswitch_5
    const-string v0, "DolbyAudioSphereAdapter"

    const-string v8, "speaker off : show turn on"

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const v10, 0x1070071

    .line 201
    const/high16 v4, 0x1020000

    .line 202
    const v13, 0x1070077

    .line 203
    const/4 v7, 0x1

    .line 204
    goto :goto_3

    .line 215
    :pswitch_6
    const-string v0, "DolbyAudioSphereAdapter"

    const-string v8, "headset on : show turn off"

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const/4 v11, 0x0

    .line 217
    const v10, 0x1070070

    .line 218
    const v4, 0x1020001

    .line 219
    const v13, 0x1070078

    .line 220
    const/4 v12, 0x3

    .line 221
    goto/16 :goto_2

    .line 223
    :pswitch_7
    const-string v0, "DolbyAudioSphereAdapter"

    const-string v8, "headset off : show turn on"

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const/4 v11, 0x1

    .line 225
    const v10, 0x1070071

    .line 226
    const/high16 v4, 0x1020000

    .line 227
    const v13, 0x1070077

    .line 228
    const/4 v7, 0x1

    .line 229
    const/4 v12, 0x3

    .line 230
    goto/16 :goto_2

    .line 170
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 173
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 194
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public getSystemProperty(I)I
    .locals 8
    .param p1, "name"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 65
    const-string v4, "DolbyAudioSphereAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSystemProperty name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v4, p0, Lcom/android/server/audio/htcsoundfx/DolbyAudioSphereAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 68
    if-nez p1, :cond_4

    .line 69
    :try_start_0
    iget-object v5, p0, Lcom/android/server/audio/htcsoundfx/DolbyAudioSphereAdapter;->mAudioDevice:Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;

    invoke-virtual {v5}, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;->isDeviceOutput_Speaker()Z

    move-result v1

    .line 70
    .local v1, "isSpeaker":Z
    const/4 v0, 0x0

    .line 71
    .local v0, "enabled":Z
    if-eqz v1, :cond_1

    .line 72
    const/4 p1, 0x2

    .line 73
    iget v5, p0, Lcom/android/server/audio/htcsoundfx/DolbyAudioSphereAdapter;->mDolbySpeakerEnabled:I

    if-ne v5, v2, :cond_0

    move v0, v2

    .line 78
    :goto_0
    const-string v5, "DolbyAudioSphereAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "convert name="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {p0}, Lcom/android/server/audio/htcsoundfx/DolbyAudioSphereAdapter;->checkDolbySupport()Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v0, :cond_3

    .line 80
    monitor-exit v4

    .line 84
    .end local v0    # "enabled":Z
    .end local v1    # "isSpeaker":Z
    :goto_1
    return v2

    .restart local v0    # "enabled":Z
    .restart local v1    # "isSpeaker":Z
    :cond_0
    move v0, v3

    .line 73
    goto :goto_0

    .line 75
    :cond_1
    const/4 p1, 0x3

    .line 76
    iget v5, p0, Lcom/android/server/audio/htcsoundfx/DolbyAudioSphereAdapter;->mDolbyEnabled:I

    if-ne v5, v2, :cond_2

    move v0, v2

    :goto_2
    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_2

    .line 82
    :cond_3
    monitor-exit v4

    move v2, v3

    goto :goto_1

    .line 84
    .end local v0    # "enabled":Z
    .end local v1    # "isSpeaker":Z
    :cond_4
    invoke-super {p0, p1}, Lcom/android/server/audio/htcsoundfx/DolbyManager;->getSystemProperty(I)I

    move-result v2

    monitor-exit v4

    goto :goto_1

    .line 86
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onPersistProperty(II)V
    .locals 3
    .param p1, "name"    # I
    .param p2, "value"    # I

    .prologue
    .line 134
    const-string v0, "DolbyAudioSphereAdapter"

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

    .line 135
    packed-switch p1, :pswitch_data_0

    .line 147
    invoke-super {p0, p1, p2}, Lcom/android/server/audio/htcsoundfx/DolbyManager;->onPersistProperty(II)V

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 137
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyAudioSphereAdapter;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/audio/htcsoundfx/DolbyAudioSphereAdapter;->DB_DOLBY_PROPERTY_NAME:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    const-string v0, "DolbyAudioSphereAdapter"

    const-string v1, "can\'t update dolby enable"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 142
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyAudioSphereAdapter;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "audio.dolby.speaker.enabled"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    const-string v0, "DolbyAudioSphereAdapter"

    const-string v1, "can\'t update dolby speaker enable"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 135
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setSystemProperty(II)V
    .locals 9
    .param p1, "name"    # I
    .param p2, "value"    # I

    .prologue
    .line 90
    const-string v0, "DolbyAudioSphereAdapter"

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

    .line 91
    const/4 v7, 0x0

    .line 92
    .local v7, "changed":Z
    iget-object v1, p0, Lcom/android/server/audio/htcsoundfx/DolbyAudioSphereAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 94
    if-nez p1, :cond_0

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyAudioSphereAdapter;->mAudioDevice:Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;

    invoke-virtual {v0}, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;->isDeviceOutput_Speaker()Z

    move-result v8

    .line 96
    .local v8, "isSpeaker":Z
    if-eqz v8, :cond_2

    .line 97
    const/4 p1, 0x2

    .line 101
    :goto_0
    const-string v0, "DolbyAudioSphereAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convert name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .end local v8    # "isSpeaker":Z
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 118
    invoke-super {p0, p1, p2}, Lcom/android/server/audio/htcsoundfx/DolbyManager;->setSystemProperty(II)V

    .line 119
    monitor-exit v1

    .line 131
    :cond_1
    :goto_1
    return-void

    .line 99
    .restart local v8    # "isSpeaker":Z
    :cond_2
    const/4 p1, 0x3

    goto :goto_0

    .line 106
    .end local v8    # "isSpeaker":Z
    :pswitch_0
    iget v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyAudioSphereAdapter;->mDolbySpeakerEnabled:I

    if-eq v0, p2, :cond_3

    .line 107
    iput p2, p0, Lcom/android/server/audio/htcsoundfx/DolbyAudioSphereAdapter;->mDolbySpeakerEnabled:I

    .line 108
    const/4 v7, 0x1

    .line 121
    :cond_3
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    if-nez v7, :cond_4

    iget v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyAudioSphereAdapter;->mCurrentSoundEffect:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    .line 124
    const/4 v7, 0x1

    .line 127
    :cond_4
    if-eqz v7, :cond_1

    .line 128
    invoke-virtual {p0}, Lcom/android/server/audio/htcsoundfx/DolbyAudioSphereAdapter;->updateSoundEffect()V

    .line 129
    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v5, 0x0

    const/16 v6, 0x1f4

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/audio/htcsoundfx/DolbyAudioSphereAdapter;->sendMsg(IIIILjava/lang/Object;I)V

    goto :goto_1

    .line 112
    :pswitch_1
    :try_start_1
    iget v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyAudioSphereAdapter;->mDolbyEnabled:I

    if-eq v0, p2, :cond_3

    .line 113
    iput p2, p0, Lcom/android/server/audio/htcsoundfx/DolbyAudioSphereAdapter;->mDolbyEnabled:I

    .line 114
    const/4 v7, 0x1

    goto :goto_2

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method updateSoundEffect()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 52
    iget-object v6, p0, Lcom/android/server/audio/htcsoundfx/DolbyAudioSphereAdapter;->mAudioDevice:Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;

    invoke-virtual {v6}, Lcom/android/server/audio/htcsoundfx/HtcAudioDevice;->isDeviceOutput_Speaker()Z

    move-result v3

    .line 53
    .local v3, "isSpeaker":Z
    if-eqz v3, :cond_2

    iget v6, p0, Lcom/android/server/audio/htcsoundfx/DolbyAudioSphereAdapter;->mDolbySpeakerEnabled:I

    if-eq v6, v5, :cond_0

    sget-boolean v6, Lcom/android/server/audio/htcsoundfx/DolbyAudioSphereAdapter;->forceSpeakerDolbyOn:Z

    if-eqz v6, :cond_1

    :cond_0
    move v1, v5

    .line 55
    .local v1, "enabled":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/audio/htcsoundfx/DolbyAudioSphereAdapter;->checkDolbySupport()Z

    move-result v6

    if-eqz v6, :cond_4

    if-eqz v1, :cond_4

    move v2, v5

    .line 57
    .local v2, "isDolbySupport":Z
    :goto_1
    if-nez v3, :cond_5

    iget v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyAudioSphereAdapter;->mSystemSoundEffect:I

    .line 58
    .local v0, "effect":I
    :goto_2
    const-string v4, "DolbyAudioSphereAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isDolbySupport = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " enabled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " effect = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " forceSpeakerDolbyOn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/server/audio/htcsoundfx/DolbyAudioSphereAdapter;->forceSpeakerDolbyOn:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-virtual {p0, v2, v0}, Lcom/android/server/audio/htcsoundfx/DolbyAudioSphereAdapter;->_updateSoundEffect(ZI)V

    .line 62
    return-void

    .end local v0    # "effect":I
    .end local v1    # "enabled":Z
    .end local v2    # "isDolbySupport":Z
    :cond_1
    move v1, v4

    .line 53
    goto :goto_0

    :cond_2
    iget v6, p0, Lcom/android/server/audio/htcsoundfx/DolbyAudioSphereAdapter;->mDolbyEnabled:I

    if-ne v6, v5, :cond_3

    move v1, v5

    goto :goto_0

    :cond_3
    move v1, v4

    goto :goto_0

    .restart local v1    # "enabled":Z
    :cond_4
    move v2, v4

    .line 55
    goto :goto_1

    .restart local v2    # "isDolbySupport":Z
    :cond_5
    move v0, v5

    .line 57
    goto :goto_2
.end method
