.class Lcom/android/server/notification/NotificationManagerService$3;
.super Landroid/content/BroadcastReceiver;
.source "NotificationManagerService.java"


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
    .line 775
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 778
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    .line 780
    .local v11, "action":Ljava/lang/String;
    if-nez v11, :cond_1

    .line 864
    :cond_0
    :goto_0
    return-void

    .line 783
    :cond_1
    sget-boolean v1, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERNAL:Z

    if-eqz v1, :cond_2

    .line 784
    const-string v1, "NotificationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    :cond_2
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 790
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mScreenOn:Z
    invoke-static {v1, v2}, Lcom/android/server/notification/NotificationManagerService;->access$1102(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 791
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$1200(Lcom/android/server/notification/NotificationManagerService;)V

    goto :goto_0

    .line 792
    :cond_3
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 793
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mScreenOn:Z
    invoke-static {v1, v2}, Lcom/android/server/notification/NotificationManagerService;->access$1102(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 794
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mUserPresent:Z
    invoke-static {v1, v2}, Lcom/android/server/notification/NotificationManagerService;->access$1302(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 795
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$1200(Lcom/android/server/notification/NotificationManagerService;)V

    goto :goto_0

    .line 796
    :cond_4
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 797
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    const-string v3, "state"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mInCall:Z
    invoke-static {v1, v2}, Lcom/android/server/notification/NotificationManagerService;->access$1402(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 799
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$1200(Lcom/android/server/notification/NotificationManagerService;)V

    goto :goto_0

    .line 800
    :cond_5
    const-string v1, "android.intent.action.USER_STOPPED"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 801
    const-string v1, "android.intent.extra.user_handle"

    const/4 v2, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 802
    .local v8, "userHandle":I
    if-ltz v8, :cond_0

    .line 803
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->MY_UID:I
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$600()I

    move-result v2

    # getter for: Lcom/android/server/notification/NotificationManagerService;->MY_PID:I
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$700()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x6

    const/4 v10, 0x0

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    goto/16 :goto_0

    .line 806
    .end local v8    # "userHandle":I
    :cond_6
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 807
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mUserPresent:Z
    invoke-static {v1, v2}, Lcom/android/server/notification/NotificationManagerService;->access$1302(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 808
    const-string v13, ""

    .line 809
    .local v13, "decision":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/notification/NotificationManagerService;->SENSE_STOCK:Z

    if-eqz v1, :cond_7

    .line 811
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$1500(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/lights/Light;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/lights/Light;->turnOff()V

    .line 812
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-interface {v1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->notificationLightOff()V

    .line 813
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v2, 0x0

    # invokes: Lcom/android/server/notification/NotificationManagerService;->updateLightCondition(I)V
    invoke-static {v1, v2}, Lcom/android/server/notification/NotificationManagerService;->access$1600(Lcom/android/server/notification/NotificationManagerService;I)V

    .line 814
    const-string v13, "turn-off light for user present"

    .line 823
    :goto_1
    invoke-static {v13}, Lcom/android/server/EventLogTags;->writeNotificationLightDecision(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 816
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mReminderEnable:Z
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 817
    const-string v13, "do nothing for user present"

    goto :goto_1

    .line 819
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$1700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationDelegate;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/notification/NotificationDelegate;->clearEffects()V

    .line 820
    const-string v13, "clear all light for user present"

    goto :goto_1

    .line 824
    .end local v13    # "decision":Ljava/lang/String;
    :cond_9
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 825
    const-string v1, "android.intent.extra.user_handle"

    const/16 v2, -0x2710

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 827
    .local v16, "user":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$1800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->update(Landroid/net/Uri;)V

    .line 828
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$1900(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ManagedServices$UserProfiles;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/android/server/notification/ManagedServices$UserProfiles;->updateCache(Landroid/content/Context;)V

    .line 830
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$900(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v1

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Lcom/android/server/notification/ConditionProviders;->onUserSwitched(I)V

    .line 831
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v1

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->onUserSwitched(I)V

    .line 832
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$2000(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ZenModeHelper;

    move-result-object v1

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Lcom/android/server/notification/ZenModeHelper;->onUserSwitched(I)V

    .line 833
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move/from16 v0, v16

    # invokes: Lcom/android/server/notification/NotificationManagerService;->userSwitched(I)V
    invoke-static {v1, v0}, Lcom/android/server/notification/NotificationManagerService;->access$2100(Lcom/android/server/notification/NotificationManagerService;I)V

    goto/16 :goto_0

    .line 834
    .end local v16    # "user":I
    :cond_a
    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 835
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$1900(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ManagedServices$UserProfiles;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/android/server/notification/ManagedServices$UserProfiles;->updateCache(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 836
    :cond_b
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 837
    const-string v1, "android.intent.extra.user_handle"

    const/16 v2, -0x2710

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 838
    .restart local v16    # "user":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$2000(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ZenModeHelper;

    move-result-object v1

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Lcom/android/server/notification/ZenModeHelper;->onUserRemoved(I)V

    goto/16 :goto_0

    .line 839
    .end local v16    # "user":I
    :cond_c
    const-string v1, "com.htc.action.REMINDER_TIME_TICK"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 842
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mReminderAlarmPost:Z
    invoke-static {v1, v2}, Lcom/android/server/notification/NotificationManagerService;->access$2202(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 843
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mReminderEnable:Z
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 844
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mReminderLedRecord:Lcom/android/server/notification/NotificationRecord;
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$2300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v15

    .line 845
    .local v15, "record":Lcom/android/server/notification/NotificationRecord;
    if-eqz v15, :cond_f

    const/4 v12, 0x1

    .line 846
    .local v12, "alarmEnable":Z
    :goto_2
    if-eqz v15, :cond_10

    sget-boolean v1, Lcom/android/server/notification/NotificationManagerService;->is10brand:Z

    if-eqz v1, :cond_10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mReminderObserver:Lcom/android/server/notification/NotificationManagerService$ReminderObserver;
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$2400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$ReminderObserver;

    move-result-object v1

    iget-object v2, v15, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/notification/NotificationManagerService$ReminderObserver;->isPackageEnabled(Ljava/lang/String;)Z

    move-result v14

    .line 849
    .local v14, "packageEnable":Z
    :goto_3
    sget-boolean v1, Lcom/android/server/notification/NotificationManagerService;->is10brand:Z

    if-eqz v1, :cond_d

    .line 850
    const-string v1, "NotificationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reminder(alarm="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    :cond_d
    if-eqz v12, :cond_e

    if-eqz v14, :cond_e

    .line 854
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v2, 0x1

    # invokes: Lcom/android/server/notification/NotificationManagerService;->updateReminderAlarm(Z)V
    invoke-static {v1, v2}, Lcom/android/server/notification/NotificationManagerService;->access$2500(Lcom/android/server/notification/NotificationManagerService;Z)V

    .line 858
    .end local v12    # "alarmEnable":Z
    .end local v14    # "packageEnable":Z
    .end local v15    # "record":Lcom/android/server/notification/NotificationRecord;
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$2700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mReminderEffect:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$2600(Lcom/android/server/notification/NotificationManagerService;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 859
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$2700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mReminderEffect:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$2600(Lcom/android/server/notification/NotificationManagerService;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 845
    .restart local v15    # "record":Lcom/android/server/notification/NotificationRecord;
    :cond_f
    const/4 v12, 0x0

    goto :goto_2

    .line 846
    .restart local v12    # "alarmEnable":Z
    :cond_10
    const/4 v14, 0x1

    goto :goto_3

    .line 860
    .end local v12    # "alarmEnable":Z
    .end local v15    # "record":Lcom/android/server/notification/NotificationRecord;
    :cond_11
    const-string v1, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "com.htc.intent.action.QUICKBOOT_POWEROFF"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 862
    :cond_12
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->clearAllEffects()V
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$2800(Lcom/android/server/notification/NotificationManagerService;)V

    goto/16 :goto_0
.end method
