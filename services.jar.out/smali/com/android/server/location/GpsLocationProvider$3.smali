.class Lcom/android/server/location/GpsLocationProvider$3;
.super Landroid/content/BroadcastReceiver;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0

    .prologue
    .line 636
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$3;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    .line 638
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 640
    .local v0, "action":Ljava/lang/String;
    const-string v5, "GpsLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "receive broadcast intent, action: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    const-string v5, "com.android.internal.location.ALARM_WAKEUP"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 642
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$3;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->startNavigating(Z)V
    invoke-static {v5, v8}, Lcom/android/server/location/GpsLocationProvider;->access$200(Lcom/android/server/location/GpsLocationProvider;Z)V

    .line 720
    :cond_0
    :goto_0
    return-void

    .line 643
    :cond_1
    const-string v5, "com.android.internal.location.ALARM_TIMEOUT"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 644
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$3;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->hibernate()V
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider;->access$300(Lcom/android/server/location/GpsLocationProvider;)V

    goto :goto_0

    .line 645
    :cond_2
    const-string v5, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 646
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$3;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->checkSmsSuplInit(Landroid/content/Intent;)V
    invoke-static {v5, p2}, Lcom/android/server/location/GpsLocationProvider;->access$400(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Intent;)V

    goto :goto_0

    .line 647
    :cond_3
    const-string v5, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 648
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$3;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->checkWapSuplInit(Landroid/content/Intent;)V
    invoke-static {v5, p2}, Lcom/android/server/location/GpsLocationProvider;->access$500(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Intent;)V

    goto :goto_0

    .line 649
    :cond_4
    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 651
    const-string v5, "networkInfo"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 653
    .local v2, "info":Landroid/net/NetworkInfo;
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$3;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider;->access$600(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 655
    .local v1, "connManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 658
    const-string v5, "noConnectivity"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-nez v5, :cond_6

    .line 660
    :cond_5
    const/4 v4, 0x1

    .line 665
    .local v4, "networkState":I
    :goto_1
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$3;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-virtual {v5, v4, v2}, Lcom/android/server/location/GpsLocationProvider;->updateNetworkState(ILandroid/net/NetworkInfo;)V

    goto :goto_0

    .line 662
    .end local v4    # "networkState":I
    :cond_6
    const/4 v4, 0x2

    .restart local v4    # "networkState":I
    goto :goto_1

    .line 666
    .end local v1    # "connManager":Landroid/net/ConnectivityManager;
    .end local v2    # "info":Landroid/net/NetworkInfo;
    .end local v4    # "networkState":I
    :cond_7
    const-string v5, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "android.intent.action.SCREEN_ON"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 670
    :cond_8
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$3;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->updateLowPowerMode()V
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider;->access$700(Lcom/android/server/location/GpsLocationProvider;)V

    goto/16 :goto_0

    .line 671
    :cond_9
    const-string v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 672
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$3;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->subscriptionOrSimChanged(Landroid/content/Context;)V
    invoke-static {v5, p1}, Lcom/android/server/location/GpsLocationProvider;->access$800(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 674
    :cond_a
    const-string v5, "com.htc.location.XTRA_ALARM_TIMEOUT"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 675
    const-string v5, "GpsLocationProvider"

    const-string v6, "ALARM_XTRA_TIMEOUT"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$3;->this$0:Lcom/android/server/location/GpsLocationProvider;

    const/4 v6, 0x6

    const/4 v7, 0x0

    # invokes: Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V
    invoke-static {v5, v6, v8, v7}, Lcom/android/server/location/GpsLocationProvider;->access$900(Lcom/android/server/location/GpsLocationProvider;IILjava/lang/Object;)V

    goto/16 :goto_0

    .line 680
    :cond_b
    const-string v5, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 681
    const-string v5, "GpsLocationProvider"

    const-string v6, "receive TelephonyIntents.ACTION_EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$3;->this$0:Lcom/android/server/location/GpsLocationProvider;

    const-string v6, "phoneinECMState"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    # setter for: Lcom/android/server/location/GpsLocationProvider;->mECMState:Z
    invoke-static {v5, v6}, Lcom/android/server/location/GpsLocationProvider;->access$1002(Lcom/android/server/location/GpsLocationProvider;Z)Z

    .line 683
    const-string v5, "GpsLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mECMState="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider$3;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mECMState:Z
    invoke-static {v7}, Lcom/android/server/location/GpsLocationProvider;->access$1000(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    # getter for: Lcom/android/server/location/GpsLocationProvider;->mIsVZW:Z
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$1100()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 687
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$3;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mECMState:Z
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider;->access$1000(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 688
    const-string v5, "GpsLocationProvider"

    const-string v6, "[GICON] ### GPS_ENABLED_CHANGE_ACTION ###  (E911)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.location.GPS_ENABLED_CHANGE"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 690
    .local v3, "intent2":Landroid/content/Intent;
    const-string v5, "enabled"

    invoke-virtual {v3, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 691
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$3;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider;->access$600(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v3, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 692
    const-string v5, "GpsLocationProvider"

    const-string v6, "GPS_ENABLED_CHANGE_ACTION: android.location.GPS_ENABLED_CHANGE EXTRA_GPS_ENABLED: false"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    .end local v3    # "intent2":Landroid/content/Intent;
    :cond_c
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$3;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mStarted:Z
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider;->access$1200(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 699
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$3;->this$0:Lcom/android/server/location/GpsLocationProvider;

    const/4 v6, 0x1

    # setter for: Lcom/android/server/location/GpsLocationProvider;->mECMStateUpdate:Z
    invoke-static {v5, v6}, Lcom/android/server/location/GpsLocationProvider;->access$1302(Lcom/android/server/location/GpsLocationProvider;Z)Z

    .line 700
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$3;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mECMState:Z
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider;->access$1000(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 701
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$3;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->stopNavigating()V
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider;->access$1400(Lcom/android/server/location/GpsLocationProvider;)V

    .line 705
    :goto_2
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$3;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # setter for: Lcom/android/server/location/GpsLocationProvider;->mECMStateUpdate:Z
    invoke-static {v5, v8}, Lcom/android/server/location/GpsLocationProvider;->access$1302(Lcom/android/server/location/GpsLocationProvider;Z)Z

    goto/16 :goto_0

    .line 703
    :cond_d
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$3;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->startNavigating(Z)V
    invoke-static {v5, v8}, Lcom/android/server/location/GpsLocationProvider;->access$200(Lcom/android/server/location/GpsLocationProvider;Z)V

    goto :goto_2

    .line 710
    :cond_e
    const-string v5, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 711
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$3;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider;->access$1600(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/android/server/location/GpsLocationProvider$3$1;

    invoke-direct {v6, p0}, Lcom/android/server/location/GpsLocationProvider$3$1;-><init>(Lcom/android/server/location/GpsLocationProvider$3;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method
