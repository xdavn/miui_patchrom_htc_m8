.class Lcom/android/server/wifi/WifiController$DefaultState;
.super Lcom/android/internal/util/State;
.source "WifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiController;)V
    .locals 0

    .prologue
    .line 331
    iput-object p1, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 334
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 406
    :pswitch_0
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WifiController.handleMessage "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 336
    :pswitch_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v4}, Lcom/android/server/wifi/WifiController;->access$500(Lcom/android/server/wifi/WifiController;)Landroid/app/AlarmManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static {v5}, Lcom/android/server/wifi/WifiController;->access$400(Lcom/android/server/wifi/WifiController;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 337
    iget-object v4, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # setter for: Lcom/android/server/wifi/WifiController;->mScreenOff:Z
    invoke-static {v4, v10}, Lcom/android/server/wifi/WifiController;->access$602(Lcom/android/server/wifi/WifiController;Z)Z

    .line 338
    iget-object v4, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # setter for: Lcom/android/server/wifi/WifiController;->mDeviceIdle:Z
    invoke-static {v4, v10}, Lcom/android/server/wifi/WifiController;->access$702(Lcom/android/server/wifi/WifiController;Z)Z

    .line 339
    iget-object v4, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # invokes: Lcom/android/server/wifi/WifiController;->updateBatteryWorkSource()V
    invoke-static {v4}, Lcom/android/server/wifi/WifiController;->access$800(Lcom/android/server/wifi/WifiController;)V

    .line 408
    :cond_0
    :goto_0
    :pswitch_2
    return v11

    .line 342
    :pswitch_3
    iget-object v4, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # setter for: Lcom/android/server/wifi/WifiController;->mScreenOff:Z
    invoke-static {v4, v11}, Lcom/android/server/wifi/WifiController;->access$602(Lcom/android/server/wifi/WifiController;Z)Z

    .line 349
    iget-object v4, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v5, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mPluggedType:I
    invoke-static {v5}, Lcom/android/server/wifi/WifiController;->access$900(Lcom/android/server/wifi/WifiController;)I

    move-result v5

    # invokes: Lcom/android/server/wifi/WifiController;->shouldWifiStayAwake(I)Z
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiController;->access$1000(Lcom/android/server/wifi/WifiController;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 351
    iget-object v4, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v4, v4, Lcom/android/server/wifi/WifiController;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v4, v5, :cond_1

    .line 353
    const-string v4, "WifiController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set idle timer: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mIdleMillis:J
    invoke-static {v6}, Lcom/android/server/wifi/WifiController;->access$1100(Lcom/android/server/wifi/WifiController;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v4, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v4}, Lcom/android/server/wifi/WifiController;->access$500(Lcom/android/server/wifi/WifiController;)Landroid/app/AlarmManager;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v5, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mIdleMillis:J
    invoke-static {v5}, Lcom/android/server/wifi/WifiController;->access$1100(Lcom/android/server/wifi/WifiController;)J

    move-result-wide v8

    add-long/2addr v6, v8

    iget-object v5, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static {v5}, Lcom/android/server/wifi/WifiController;->access$400(Lcom/android/server/wifi/WifiController;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v4, v10, v6, v7, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 357
    :cond_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    const v5, 0x26005

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    goto :goto_0

    .line 362
    :pswitch_4
    iget-object v4, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # setter for: Lcom/android/server/wifi/WifiController;->mDeviceIdle:Z
    invoke-static {v4, v11}, Lcom/android/server/wifi/WifiController;->access$702(Lcom/android/server/wifi/WifiController;Z)Z

    .line 363
    iget-object v4, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # invokes: Lcom/android/server/wifi/WifiController;->updateBatteryWorkSource()V
    invoke-static {v4}, Lcom/android/server/wifi/WifiController;->access$800(Lcom/android/server/wifi/WifiController;)V

    goto :goto_0

    .line 373
    :pswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 374
    .local v0, "pluggedType":I
    const-string v4, "WifiController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "battery changed pluggedType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v4, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mScreenOff:Z
    invoke-static {v4}, Lcom/android/server/wifi/WifiController;->access$600(Lcom/android/server/wifi/WifiController;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v5, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mPluggedType:I
    invoke-static {v5}, Lcom/android/server/wifi/WifiController;->access$900(Lcom/android/server/wifi/WifiController;)I

    move-result v5

    # invokes: Lcom/android/server/wifi/WifiController;->shouldWifiStayAwake(I)Z
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiController;->access$1000(Lcom/android/server/wifi/WifiController;I)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # invokes: Lcom/android/server/wifi/WifiController;->shouldWifiStayAwake(I)Z
    invoke-static {v4, v0}, Lcom/android/server/wifi/WifiController;->access$1000(Lcom/android/server/wifi/WifiController;I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 377
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mIdleMillis:J
    invoke-static {v6}, Lcom/android/server/wifi/WifiController;->access$1100(Lcom/android/server/wifi/WifiController;)J

    move-result-wide v6

    add-long v2, v4, v6

    .line 378
    .local v2, "triggerTime":J
    const-string v4, "WifiController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set idle timer for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mIdleMillis:J
    invoke-static {v6}, Lcom/android/server/wifi/WifiController;->access$1100(Lcom/android/server/wifi/WifiController;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v4, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v4}, Lcom/android/server/wifi/WifiController;->access$500(Lcom/android/server/wifi/WifiController;)Landroid/app/AlarmManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static {v5}, Lcom/android/server/wifi/WifiController;->access$400(Lcom/android/server/wifi/WifiController;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v4, v10, v2, v3, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 382
    .end local v2    # "triggerTime":J
    :cond_2
    iget-object v4, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # setter for: Lcom/android/server/wifi/WifiController;->mPluggedType:I
    invoke-static {v4, v0}, Lcom/android/server/wifi/WifiController;->access$902(Lcom/android/server/wifi/WifiController;I)I

    goto/16 :goto_0

    .line 393
    .end local v0    # "pluggedType":I
    :pswitch_6
    iget-object v4, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # setter for: Lcom/android/server/wifi/WifiController;->mFirstUserSignOnSeen:Z
    invoke-static {v4, v11}, Lcom/android/server/wifi/WifiController;->access$1202(Lcom/android/server/wifi/WifiController;Z)Z

    goto/16 :goto_0

    .line 396
    :pswitch_7
    iget-object v4, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v5, "DEFERRED_TOGGLE ignored due to state change"

    # invokes: Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiController;->access$1300(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 401
    :pswitch_8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wifi/HtcWifiEnableNotification;

    .line 402
    .local v1, "wifiEnableNotification":Lcom/android/server/wifi/HtcWifiEnableNotification;
    invoke-virtual {v1}, Lcom/android/server/wifi/HtcWifiEnableNotification;->showAlertDialog()V

    goto/16 :goto_0

    .line 334
    :pswitch_data_0
    .packed-switch 0x26001
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_7
        :pswitch_6
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method
