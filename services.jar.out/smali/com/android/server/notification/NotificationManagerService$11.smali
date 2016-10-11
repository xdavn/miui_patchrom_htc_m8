.class Lcom/android/server/notification/NotificationManagerService$11;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    .prologue
    .line 4125
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 27

    .prologue
    .line 4128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    monitor-enter v24

    .line 4129
    const/4 v5, 0x0

    .line 4130
    .local v5, "buzzBeepBlinked":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mReminderLedRecord:Lcom/android/server/notification/NotificationRecord;
    invoke-static/range {v23 .. v23}, Lcom/android/server/notification/NotificationManagerService;->access$2300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v23

    if-nez v23, :cond_0

    .line 4131
    const-string v23, "NotificationService"

    const-string v25, "reminderEx:fail since null record"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4132
    monitor-exit v24

    .line 4210
    :goto_0
    return-void

    .line 4134
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mDisableNotificationEffects:Z
    invoke-static/range {v23 .. v23}, Lcom/android/server/notification/NotificationManagerService;->access$100(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 4135
    const-string v23, "NotificationService"

    const-string v25, "reminderEx:fail since disable effects"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4136
    monitor-exit v24

    goto :goto_0

    .line 4209
    :catchall_0
    move-exception v23

    monitor-exit v24
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v23

    .line 4138
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I
    invoke-static/range {v23 .. v23}, Lcom/android/server/notification/NotificationManagerService;->access$4400(Lcom/android/server/notification/NotificationManagerService;)I

    move-result v23

    and-int/lit8 v23, v23, 0x1

    if-eqz v23, :cond_2

    .line 4139
    const-string v23, "NotificationService"

    const-string v25, "reminderEx:fail since disable effects hints"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4140
    monitor-exit v24

    goto :goto_0

    .line 4143
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mReminderLedRecord:Lcom/android/server/notification/NotificationRecord;
    invoke-static/range {v23 .. v23}, Lcom/android/server/notification/NotificationManagerService;->access$2300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v14

    .line 4144
    .local v14, "record":Lcom/android/server/notification/NotificationRecord;
    iget-object v0, v14, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v12

    .line 4146
    .local v12, "notification":Landroid/app/Notification;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v20

    .line 4148
    .local v20, "token":J
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v6

    .line 4150
    .local v6, "currentUser":I
    :try_start_3
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4152
    invoke-virtual {v14}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v23

    const/16 v25, -0x1

    move/from16 v0, v23

    move/from16 v1, v25

    if-eq v0, v1, :cond_3

    invoke-virtual {v14}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v23

    move/from16 v0, v23

    if-eq v0, v6, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;
    invoke-static/range {v23 .. v23}, Lcom/android/server/notification/NotificationManagerService;->access$1900(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ManagedServices$UserProfiles;

    move-result-object v23

    invoke-virtual {v14}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v25

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/notification/ManagedServices$UserProfiles;->isCurrentProfile(I)Z

    move-result v23

    if-eqz v23, :cond_8

    :cond_3
    const/16 v19, 0x1

    .line 4157
    .local v19, "userMatch":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService;->mSystemReady:Z

    move/from16 v23, v0

    if-eqz v23, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v23, v0

    if-eqz v23, :cond_7

    if-eqz v19, :cond_7

    .line 4158
    const-string v23, "NotificationService"

    const-string v25, "remindEx:perform sound/vibrate effect"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move-object/from16 v23, v0

    iget-object v0, v14, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v12, v1}, Lcom/android/server/notification/NotificationManagerService;->sendAccessibilityEvent(Landroid/app/Notification;Ljava/lang/CharSequence;)V

    .line 4164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    .line 4165
    .local v15, "resolver":Landroid/content/ContentResolver;
    sget-object v17, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    .line 4166
    .local v17, "soundUri":Landroid/net/Uri;
    sget-object v4, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    .line 4168
    .local v4, "audioAttributes":Landroid/media/AudioAttributes;
    const/4 v9, 0x0

    .line 4169
    .local v9, "looping":Z
    const-string v23, "notification_sound"

    move-object/from16 v0, v23

    invoke-static {v15, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_9

    const/4 v8, 0x1

    .line 4171
    .local v8, "hasValidSound":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/media/AudioManager;->isAudioFocusExclusive()Z

    move-result v7

    .line 4172
    .local v7, "focusExclusive":Z
    invoke-static {v4}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v18

    .line 4173
    .local v18, "stream":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v22

    .line 4175
    .local v22, "volume":I
    const-string v23, "NotificationService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "remindEx(valid:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " stream:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " volume:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " focus:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ")"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4179
    if-eqz v8, :cond_5

    if-eqz v22, :cond_5

    if-nez v7, :cond_5

    .line 4180
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v10

    .line 4182
    .local v10, "identity":J
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v13

    .line 4184
    .local v13, "player":Landroid/media/IRingtonePlayer;
    if-eqz v13, :cond_4

    .line 4185
    iget-object v0, v14, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-interface {v13, v0, v1, v9, v4}, Landroid/media/IRingtonePlayer;->playAsync(Landroid/net/Uri;Landroid/os/UserHandle;ZLandroid/media/AudioAttributes;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 4187
    const/4 v5, 0x1

    .line 4191
    :cond_4
    :try_start_5
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4196
    .end local v10    # "identity":J
    .end local v13    # "player":Landroid/media/IRingtonePlayer;
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v16

    .line 4197
    .local v16, "ringerMode":I
    if-eqz v16, :cond_6

    .line 4198
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-wide v10

    .line 4200
    .restart local v10    # "identity":J
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/os/Vibrator;->cancel()V

    .line 4201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mDefaultVibrationPattern:[J
    invoke-static/range {v25 .. v25}, Lcom/android/server/notification/NotificationManagerService;->access$7700(Lcom/android/server/notification/NotificationManagerService;)[J

    move-result-object v25

    const/16 v26, -0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 4202
    const/4 v5, 0x1

    .line 4204
    :try_start_7
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4207
    .end local v10    # "identity":J
    :cond_6
    const-string v23, "NotificationService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "remindEx(ringer:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ")"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4209
    .end local v4    # "audioAttributes":Landroid/media/AudioAttributes;
    .end local v7    # "focusExclusive":Z
    .end local v8    # "hasValidSound":Z
    .end local v9    # "looping":Z
    .end local v15    # "resolver":Landroid/content/ContentResolver;
    .end local v16    # "ringerMode":I
    .end local v17    # "soundUri":Landroid/net/Uri;
    .end local v18    # "stream":I
    .end local v22    # "volume":I
    :cond_7
    monitor-exit v24

    goto/16 :goto_0

    .line 4150
    .end local v6    # "currentUser":I
    .end local v19    # "userMatch":Z
    :catchall_1
    move-exception v23

    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v23

    .line 4152
    .restart local v6    # "currentUser":I
    :cond_8
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 4169
    .restart local v4    # "audioAttributes":Landroid/media/AudioAttributes;
    .restart local v9    # "looping":Z
    .restart local v15    # "resolver":Landroid/content/ContentResolver;
    .restart local v17    # "soundUri":Landroid/net/Uri;
    .restart local v19    # "userMatch":Z
    :cond_9
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 4189
    .restart local v7    # "focusExclusive":Z
    .restart local v8    # "hasValidSound":Z
    .restart local v10    # "identity":J
    .restart local v18    # "stream":I
    .restart local v22    # "volume":I
    :catch_0
    move-exception v23

    .line 4191
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_3

    :catchall_2
    move-exception v23

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v23

    .line 4204
    .restart local v16    # "ringerMode":I
    :catchall_3
    move-exception v23

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v23
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method
