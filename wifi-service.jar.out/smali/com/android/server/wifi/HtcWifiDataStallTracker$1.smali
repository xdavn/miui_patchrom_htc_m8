.class Lcom/android/server/wifi/HtcWifiDataStallTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "HtcWifiDataStallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/HtcWifiDataStallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/HtcWifiDataStallTracker;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/HtcWifiDataStallTracker;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker$1;->this$0:Lcom/android/server/wifi/HtcWifiDataStallTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 108
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "action":Ljava/lang/String;
    const-string v8, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 111
    iget-object v7, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker$1;->this$0:Lcom/android/server/wifi/HtcWifiDataStallTracker;

    # setter for: Lcom/android/server/wifi/HtcWifiDataStallTracker;->mIsScreenOn:Z
    invoke-static {v7, v6}, Lcom/android/server/wifi/HtcWifiDataStallTracker;->access$002(Lcom/android/server/wifi/HtcWifiDataStallTracker;Z)Z

    .line 112
    iget-object v6, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker$1;->this$0:Lcom/android/server/wifi/HtcWifiDataStallTracker;

    # getter for: Lcom/android/server/wifi/HtcWifiDataStallTracker;->mIsWifiConnected:Z
    invoke-static {v6}, Lcom/android/server/wifi/HtcWifiDataStallTracker;->access$100(Lcom/android/server/wifi/HtcWifiDataStallTracker;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 113
    iget-object v6, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker$1;->this$0:Lcom/android/server/wifi/HtcWifiDataStallTracker;

    invoke-virtual {v6}, Lcom/android/server/wifi/HtcWifiDataStallTracker;->startDataStallAlarm()V

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    const-string v8, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 115
    iget-object v6, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker$1;->this$0:Lcom/android/server/wifi/HtcWifiDataStallTracker;

    # setter for: Lcom/android/server/wifi/HtcWifiDataStallTracker;->mIsScreenOn:Z
    invoke-static {v6, v7}, Lcom/android/server/wifi/HtcWifiDataStallTracker;->access$002(Lcom/android/server/wifi/HtcWifiDataStallTracker;Z)Z

    .line 116
    iget-object v6, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker$1;->this$0:Lcom/android/server/wifi/HtcWifiDataStallTracker;

    invoke-virtual {v6}, Lcom/android/server/wifi/HtcWifiDataStallTracker;->stopDataStallAlarm()V

    goto :goto_0

    .line 123
    :cond_2
    const-string v8, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 124
    const-string v8, "networkInfo"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 126
    .local v3, "networkInfo":Landroid/net/NetworkInfo;
    iget-object v8, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker$1;->this$0:Lcom/android/server/wifi/HtcWifiDataStallTracker;

    # getter for: Lcom/android/server/wifi/HtcWifiDataStallTracker;->mIsWifiConnected:Z
    invoke-static {v8}, Lcom/android/server/wifi/HtcWifiDataStallTracker;->access$100(Lcom/android/server/wifi/HtcWifiDataStallTracker;)Z

    move-result v2

    .line 127
    .local v2, "mIsOldWifiConnected":Z
    iget-object v8, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker$1;->this$0:Lcom/android/server/wifi/HtcWifiDataStallTracker;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_4

    :goto_1
    # setter for: Lcom/android/server/wifi/HtcWifiDataStallTracker;->mIsWifiConnected:Z
    invoke-static {v8, v6}, Lcom/android/server/wifi/HtcWifiDataStallTracker;->access$102(Lcom/android/server/wifi/HtcWifiDataStallTracker;Z)Z

    .line 128
    iget-object v6, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker$1;->this$0:Lcom/android/server/wifi/HtcWifiDataStallTracker;

    # getter for: Lcom/android/server/wifi/HtcWifiDataStallTracker;->mIsWifiConnected:Z
    invoke-static {v6}, Lcom/android/server/wifi/HtcWifiDataStallTracker;->access$100(Lcom/android/server/wifi/HtcWifiDataStallTracker;)Z

    move-result v6

    if-eq v2, v6, :cond_0

    .line 130
    # getter for: Lcom/android/server/wifi/HtcWifiDataStallTracker;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/HtcWifiDataStallTracker;->access$200()Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "HtcWifiDataStallTracker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "NETWORK_STATE_CHANGED_ACTION: mIsWifiConnected="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker$1;->this$0:Lcom/android/server/wifi/HtcWifiDataStallTracker;

    # getter for: Lcom/android/server/wifi/HtcWifiDataStallTracker;->mIsWifiConnected:Z
    invoke-static {v9}, Lcom/android/server/wifi/HtcWifiDataStallTracker;->access$100(Lcom/android/server/wifi/HtcWifiDataStallTracker;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_3
    iget-object v6, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker$1;->this$0:Lcom/android/server/wifi/HtcWifiDataStallTracker;

    # getter for: Lcom/android/server/wifi/HtcWifiDataStallTracker;->mIsWifiConnected:Z
    invoke-static {v6}, Lcom/android/server/wifi/HtcWifiDataStallTracker;->access$100(Lcom/android/server/wifi/HtcWifiDataStallTracker;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 132
    iget-object v6, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker$1;->this$0:Lcom/android/server/wifi/HtcWifiDataStallTracker;

    invoke-virtual {v6}, Lcom/android/server/wifi/HtcWifiDataStallTracker;->startDataStallAlarm()V

    goto :goto_0

    :cond_4
    move v6, v7

    .line 127
    goto :goto_1

    .line 134
    :cond_5
    iget-object v6, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker$1;->this$0:Lcom/android/server/wifi/HtcWifiDataStallTracker;

    invoke-virtual {v6}, Lcom/android/server/wifi/HtcWifiDataStallTracker;->stopDataStallAlarm()V

    .line 135
    iget-object v6, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker$1;->this$0:Lcom/android/server/wifi/HtcWifiDataStallTracker;

    # setter for: Lcom/android/server/wifi/HtcWifiDataStallTracker;->mIsRoutingComplete:Z
    invoke-static {v6, v7}, Lcom/android/server/wifi/HtcWifiDataStallTracker;->access$302(Lcom/android/server/wifi/HtcWifiDataStallTracker;Z)Z

    .line 136
    iget-object v6, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker$1;->this$0:Lcom/android/server/wifi/HtcWifiDataStallTracker;

    # setter for: Lcom/android/server/wifi/HtcWifiDataStallTracker;->mRoamProcess:Z
    invoke-static {v6, v7}, Lcom/android/server/wifi/HtcWifiDataStallTracker;->access$402(Lcom/android/server/wifi/HtcWifiDataStallTracker;Z)Z

    .line 137
    iget-object v6, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker$1;->this$0:Lcom/android/server/wifi/HtcWifiDataStallTracker;

    const-wide/16 v8, 0x0

    # setter for: Lcom/android/server/wifi/HtcWifiDataStallTracker;->mSentSinceLastRecv:J
    invoke-static {v6, v8, v9}, Lcom/android/server/wifi/HtcWifiDataStallTracker;->access$502(Lcom/android/server/wifi/HtcWifiDataStallTracker;J)J

    goto/16 :goto_0

    .line 140
    .end local v2    # "mIsOldWifiConnected":Z
    .end local v3    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_6
    const-string v8, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 141
    const-string v6, "android.hardware.display.extra.WIFI_DISPLAY_STATUS"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/hardware/display/WifiDisplayStatus;

    .line 142
    .local v4, "status":Landroid/hardware/display/WifiDisplayStatus;
    if-eqz v4, :cond_b

    .line 144
    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v6

    if-ne v6, v9, :cond_8

    .line 145
    iget-object v6, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker$1;->this$0:Lcom/android/server/wifi/HtcWifiDataStallTracker;

    # getter for: Lcom/android/server/wifi/HtcWifiDataStallTracker;->mOldWifiDisplayStatus:I
    invoke-static {v6}, Lcom/android/server/wifi/HtcWifiDataStallTracker;->access$600(Lcom/android/server/wifi/HtcWifiDataStallTracker;)I

    move-result v6

    if-nez v6, :cond_0

    .line 146
    # getter for: Lcom/android/server/wifi/HtcWifiDataStallTracker;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/HtcWifiDataStallTracker;->access$200()Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "HtcWifiDataStallTracker"

    const-string v7, "WifiDisplay connected, stopDataStallAlarm"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_7
    iget-object v6, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker$1;->this$0:Lcom/android/server/wifi/HtcWifiDataStallTracker;

    # setter for: Lcom/android/server/wifi/HtcWifiDataStallTracker;->mOldWifiDisplayStatus:I
    invoke-static {v6, v9}, Lcom/android/server/wifi/HtcWifiDataStallTracker;->access$602(Lcom/android/server/wifi/HtcWifiDataStallTracker;I)I

    .line 148
    iget-object v6, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker$1;->this$0:Lcom/android/server/wifi/HtcWifiDataStallTracker;

    invoke-virtual {v6}, Lcom/android/server/wifi/HtcWifiDataStallTracker;->stopDataStallAlarm()V

    goto/16 :goto_0

    .line 150
    :cond_8
    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v6

    if-nez v6, :cond_0

    .line 151
    iget-object v6, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker$1;->this$0:Lcom/android/server/wifi/HtcWifiDataStallTracker;

    # getter for: Lcom/android/server/wifi/HtcWifiDataStallTracker;->mOldWifiDisplayStatus:I
    invoke-static {v6}, Lcom/android/server/wifi/HtcWifiDataStallTracker;->access$600(Lcom/android/server/wifi/HtcWifiDataStallTracker;)I

    move-result v6

    if-ne v6, v9, :cond_0

    .line 152
    # getter for: Lcom/android/server/wifi/HtcWifiDataStallTracker;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/HtcWifiDataStallTracker;->access$200()Z

    move-result v6

    if-eqz v6, :cond_9

    const-string v6, "HtcWifiDataStallTracker"

    const-string v8, "WifiDisplay disconnected, startDataStallAlarm if Wifi connected"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_9
    iget-object v6, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker$1;->this$0:Lcom/android/server/wifi/HtcWifiDataStallTracker;

    # setter for: Lcom/android/server/wifi/HtcWifiDataStallTracker;->mOldWifiDisplayStatus:I
    invoke-static {v6, v7}, Lcom/android/server/wifi/HtcWifiDataStallTracker;->access$602(Lcom/android/server/wifi/HtcWifiDataStallTracker;I)I

    .line 154
    iget-object v6, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker$1;->this$0:Lcom/android/server/wifi/HtcWifiDataStallTracker;

    # getter for: Lcom/android/server/wifi/HtcWifiDataStallTracker;->mIsWifiConnected:Z
    invoke-static {v6}, Lcom/android/server/wifi/HtcWifiDataStallTracker;->access$100(Lcom/android/server/wifi/HtcWifiDataStallTracker;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 155
    iget-object v6, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker$1;->this$0:Lcom/android/server/wifi/HtcWifiDataStallTracker;

    invoke-virtual {v6}, Lcom/android/server/wifi/HtcWifiDataStallTracker;->startDataStallAlarm()V

    goto/16 :goto_0

    .line 157
    :cond_a
    iget-object v6, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker$1;->this$0:Lcom/android/server/wifi/HtcWifiDataStallTracker;

    invoke-virtual {v6}, Lcom/android/server/wifi/HtcWifiDataStallTracker;->stopDataStallAlarm()V

    goto/16 :goto_0

    .line 161
    :cond_b
    # getter for: Lcom/android/server/wifi/HtcWifiDataStallTracker;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/HtcWifiDataStallTracker;->access$200()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "HtcWifiDataStallTracker"

    const-string v7, "Broadcast Receiver: DisplayManager.ACTION_WIFI_DISPLAY_STATUS_CHANGED, WifiDisplayStatus = null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 163
    .end local v4    # "status":Landroid/hardware/display/WifiDisplayStatus;
    :cond_c
    const-string v7, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 164
    const-string v7, "networkInfo"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 165
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 168
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 169
    # getter for: Lcom/android/server/wifi/HtcWifiDataStallTracker;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/HtcWifiDataStallTracker;->access$200()Z

    move-result v7

    if-eqz v7, :cond_d

    const-string v7, "HtcWifiDataStallTracker"

    const-string v8, "Set mIsRoutingComplete = true"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_d
    iget-object v7, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker$1;->this$0:Lcom/android/server/wifi/HtcWifiDataStallTracker;

    # setter for: Lcom/android/server/wifi/HtcWifiDataStallTracker;->mIsRoutingComplete:Z
    invoke-static {v7, v6}, Lcom/android/server/wifi/HtcWifiDataStallTracker;->access$302(Lcom/android/server/wifi/HtcWifiDataStallTracker;Z)Z

    goto/16 :goto_0

    .line 172
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :cond_e
    const-string v7, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 173
    const-string v7, "newState"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/SupplicantState;

    .line 174
    .local v5, "supplicantState":Landroid/net/wifi/SupplicantState;
    sget-object v7, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    if-ne v5, v7, :cond_0

    iget-object v7, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker$1;->this$0:Lcom/android/server/wifi/HtcWifiDataStallTracker;

    # getter for: Lcom/android/server/wifi/HtcWifiDataStallTracker;->mIsWifiConnected:Z
    invoke-static {v7}, Lcom/android/server/wifi/HtcWifiDataStallTracker;->access$100(Lcom/android/server/wifi/HtcWifiDataStallTracker;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 175
    iget-object v7, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker$1;->this$0:Lcom/android/server/wifi/HtcWifiDataStallTracker;

    # setter for: Lcom/android/server/wifi/HtcWifiDataStallTracker;->mRoamProcess:Z
    invoke-static {v7, v6}, Lcom/android/server/wifi/HtcWifiDataStallTracker;->access$402(Lcom/android/server/wifi/HtcWifiDataStallTracker;Z)Z

    .line 176
    iget-object v6, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker$1;->this$0:Lcom/android/server/wifi/HtcWifiDataStallTracker;

    iget-object v7, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker$1;->this$0:Lcom/android/server/wifi/HtcWifiDataStallTracker;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Lcom/android/server/wifi/HtcWifiDataStallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    const-wide/16 v8, 0x2710

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/wifi/HtcWifiDataStallTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 177
    # getter for: Lcom/android/server/wifi/HtcWifiDataStallTracker;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/HtcWifiDataStallTracker;->access$200()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "HtcWifiDataStallTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "wifi roaming, set mRoamProcess = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker$1;->this$0:Lcom/android/server/wifi/HtcWifiDataStallTracker;

    # getter for: Lcom/android/server/wifi/HtcWifiDataStallTracker;->mRoamProcess:Z
    invoke-static {v8}, Lcom/android/server/wifi/HtcWifiDataStallTracker;->access$400(Lcom/android/server/wifi/HtcWifiDataStallTracker;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
