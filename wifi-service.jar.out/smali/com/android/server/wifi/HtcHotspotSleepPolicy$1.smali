.class Lcom/android/server/wifi/HtcHotspotSleepPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "HtcHotspotSleepPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/HtcHotspotSleepPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/HtcHotspotSleepPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/HtcHotspotSleepPolicy;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/server/wifi/HtcHotspotSleepPolicy$1;->this$0:Lcom/android/server/wifi/HtcHotspotSleepPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v12, 0xd

    const/16 v11, 0xb

    const/4 v8, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 68
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "action":Ljava/lang/String;
    const-string v5, "HtcHotspotSleepPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive, action:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const-string v5, "com.htc.wifi.action.WIFI_AP_DEVICE_IDLE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 71
    const-string v5, "HtcHotspotSleepPolicy"

    const-string v6, "Got WIFI_AP_IDLE"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v5, p0, Lcom/android/server/wifi/HtcHotspotSleepPolicy$1;->this$0:Lcom/android/server/wifi/HtcHotspotSleepPolicy;

    # getter for: Lcom/android/server/wifi/HtcHotspotSleepPolicy;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v5}, Lcom/android/server/wifi/HtcHotspotSleepPolicy;->access$000(Lcom/android/server/wifi/HtcHotspotSleepPolicy;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v5

    if-ne v5, v12, :cond_1

    iget-object v5, p0, Lcom/android/server/wifi/HtcHotspotSleepPolicy$1;->this$0:Lcom/android/server/wifi/HtcHotspotSleepPolicy;

    # getter for: Lcom/android/server/wifi/HtcHotspotSleepPolicy;->mCurrentHotspotClient:I
    invoke-static {v5}, Lcom/android/server/wifi/HtcHotspotSleepPolicy;->access$100(Lcom/android/server/wifi/HtcHotspotSleepPolicy;)I

    move-result v5

    if-nez v5, :cond_1

    .line 74
    const-string v5, "HtcHotspotSleepPolicy"

    const-string v6, "Got WIFI_AP_IDLE WIFI_AP_STATE_ENABLED and mCurrentHotspotClient is 0"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v5, p0, Lcom/android/server/wifi/HtcHotspotSleepPolicy$1;->this$0:Lcom/android/server/wifi/HtcHotspotSleepPolicy;

    # getter for: Lcom/android/server/wifi/HtcHotspotSleepPolicy;->mWifiServiceImpl:Lcom/android/server/wifi/WifiServiceImpl;
    invoke-static {v5}, Lcom/android/server/wifi/HtcHotspotSleepPolicy;->access$200(Lcom/android/server/wifi/HtcHotspotSleepPolicy;)Lcom/android/server/wifi/WifiServiceImpl;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v9}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 78
    invoke-static {}, Landroid/net/wifi/HtcWifiCustomizeReader;->getWifiStatusType()I

    move-result v5

    if-ne v5, v8, :cond_0

    .line 79
    const/4 v3, 0x0

    .line 80
    .local v3, "vzwHotspotPowerModeWifiOffToast":Landroid/widget/Toast;
    const-string v1, "Mobile Hotspot disconnected"

    .line 81
    .local v1, "details":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/wifi/HtcHotspotSleepPolicy$1;->this$0:Lcom/android/server/wifi/HtcHotspotSleepPolicy;

    # getter for: Lcom/android/server/wifi/HtcHotspotSleepPolicy;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/wifi/HtcHotspotSleepPolicy;->access$300(Lcom/android/server/wifi/HtcHotspotSleepPolicy;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v1, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 82
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 88
    .end local v1    # "details":Ljava/lang/String;
    .end local v3    # "vzwHotspotPowerModeWifiOffToast":Landroid/widget/Toast;
    :cond_0
    const/4 v4, 0x0

    .line 90
    .local v4, "wifiSavedState":I
    :try_start_0
    iget-object v5, p0, Lcom/android/server/wifi/HtcHotspotSleepPolicy$1;->this$0:Lcom/android/server/wifi/HtcHotspotSleepPolicy;

    # getter for: Lcom/android/server/wifi/HtcHotspotSleepPolicy;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/wifi/HtcHotspotSleepPolicy;->access$300(Lcom/android/server/wifi/HtcHotspotSleepPolicy;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_saved_state"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 93
    :goto_0
    if-ne v4, v10, :cond_1

    .line 94
    iget-object v5, p0, Lcom/android/server/wifi/HtcHotspotSleepPolicy$1;->this$0:Lcom/android/server/wifi/HtcHotspotSleepPolicy;

    # getter for: Lcom/android/server/wifi/HtcHotspotSleepPolicy;->mWifiServiceImpl:Lcom/android/server/wifi/WifiServiceImpl;
    invoke-static {v5}, Lcom/android/server/wifi/HtcHotspotSleepPolicy;->access$200(Lcom/android/server/wifi/HtcHotspotSleepPolicy;)Lcom/android/server/wifi/WifiServiceImpl;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiEnabled(Z)Z

    .line 95
    iget-object v5, p0, Lcom/android/server/wifi/HtcHotspotSleepPolicy$1;->this$0:Lcom/android/server/wifi/HtcHotspotSleepPolicy;

    # getter for: Lcom/android/server/wifi/HtcHotspotSleepPolicy;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/wifi/HtcHotspotSleepPolicy;->access$300(Lcom/android/server/wifi/HtcHotspotSleepPolicy;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_saved_state"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 96
    const-string v5, "HtcHotspotSleepPolicy"

    const-string v6, "Restore wifi when hotspot is off"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .end local v4    # "wifiSavedState":I
    :cond_1
    :goto_1
    return-void

    .line 99
    :cond_2
    const-string v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 100
    iget-object v5, p0, Lcom/android/server/wifi/HtcHotspotSleepPolicy$1;->this$0:Lcom/android/server/wifi/HtcHotspotSleepPolicy;

    # getter for: Lcom/android/server/wifi/HtcHotspotSleepPolicy;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v5}, Lcom/android/server/wifi/HtcHotspotSleepPolicy;->access$500(Lcom/android/server/wifi/HtcHotspotSleepPolicy;)Landroid/app/AlarmManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/HtcHotspotSleepPolicy$1;->this$0:Lcom/android/server/wifi/HtcHotspotSleepPolicy;

    # getter for: Lcom/android/server/wifi/HtcHotspotSleepPolicy;->mWifiApSleepIntent:Landroid/app/PendingIntent;
    invoke-static {v6}, Lcom/android/server/wifi/HtcHotspotSleepPolicy;->access$400(Lcom/android/server/wifi/HtcHotspotSleepPolicy;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_1

    .line 101
    :cond_3
    const-string v5, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 102
    iget-object v5, p0, Lcom/android/server/wifi/HtcHotspotSleepPolicy$1;->this$0:Lcom/android/server/wifi/HtcHotspotSleepPolicy;

    # getter for: Lcom/android/server/wifi/HtcHotspotSleepPolicy;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v5}, Lcom/android/server/wifi/HtcHotspotSleepPolicy;->access$500(Lcom/android/server/wifi/HtcHotspotSleepPolicy;)Landroid/app/AlarmManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/HtcHotspotSleepPolicy$1;->this$0:Lcom/android/server/wifi/HtcHotspotSleepPolicy;

    # getter for: Lcom/android/server/wifi/HtcHotspotSleepPolicy;->mWifiApSleepIntent:Landroid/app/PendingIntent;
    invoke-static {v6}, Lcom/android/server/wifi/HtcHotspotSleepPolicy;->access$400(Lcom/android/server/wifi/HtcHotspotSleepPolicy;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 103
    const-string v5, "wifi_state"

    invoke-virtual {p2, v5, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 104
    .local v2, "state":I
    if-ne v2, v11, :cond_4

    .line 105
    iget-object v5, p0, Lcom/android/server/wifi/HtcHotspotSleepPolicy$1;->this$0:Lcom/android/server/wifi/HtcHotspotSleepPolicy;

    # setter for: Lcom/android/server/wifi/HtcHotspotSleepPolicy;->mCurrentHotspotClient:I
    invoke-static {v5, v9}, Lcom/android/server/wifi/HtcHotspotSleepPolicy;->access$102(Lcom/android/server/wifi/HtcHotspotSleepPolicy;I)I

    .line 106
    const-string v5, "HtcHotspotSleepPolicy"

    const-string v6, "WIFI_AP_STATE_DISABLED, set up mCurrentHotspotClient is 0"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 107
    :cond_4
    if-ne v2, v12, :cond_1

    .line 108
    const-string v5, "HtcHotspotSleepPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WIFI_AP_STATE_ENABLED, checkSleepPolicy, mCurrentHotspotClient "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/HtcHotspotSleepPolicy$1;->this$0:Lcom/android/server/wifi/HtcHotspotSleepPolicy;

    # getter for: Lcom/android/server/wifi/HtcHotspotSleepPolicy;->mCurrentHotspotClient:I
    invoke-static {v7}, Lcom/android/server/wifi/HtcHotspotSleepPolicy;->access$100(Lcom/android/server/wifi/HtcHotspotSleepPolicy;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v5, p0, Lcom/android/server/wifi/HtcHotspotSleepPolicy$1;->this$0:Lcom/android/server/wifi/HtcHotspotSleepPolicy;

    iget-object v6, p0, Lcom/android/server/wifi/HtcHotspotSleepPolicy$1;->this$0:Lcom/android/server/wifi/HtcHotspotSleepPolicy;

    # getter for: Lcom/android/server/wifi/HtcHotspotSleepPolicy;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v6}, Lcom/android/server/wifi/HtcHotspotSleepPolicy;->access$000(Lcom/android/server/wifi/HtcHotspotSleepPolicy;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiStateMachine;->getAssocListStr()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/HtcHotspotSleepPolicy;->checkSleepPolicy(Ljava/lang/String;)V

    goto :goto_1

    .line 111
    .end local v2    # "state":I
    :cond_5
    const-string v5, "com.htc.hotspot.ASSOCLIST"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 112
    const-string v5, "HtcHotspotSleepPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WifiManager.ASSOC_LIST_CHANGE_ACTION , checkSleepPolicy, mCurrentHotspotClient "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/HtcHotspotSleepPolicy$1;->this$0:Lcom/android/server/wifi/HtcHotspotSleepPolicy;

    # getter for: Lcom/android/server/wifi/HtcHotspotSleepPolicy;->mCurrentHotspotClient:I
    invoke-static {v7}, Lcom/android/server/wifi/HtcHotspotSleepPolicy;->access$100(Lcom/android/server/wifi/HtcHotspotSleepPolicy;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v5, p0, Lcom/android/server/wifi/HtcHotspotSleepPolicy$1;->this$0:Lcom/android/server/wifi/HtcHotspotSleepPolicy;

    iget-object v6, p0, Lcom/android/server/wifi/HtcHotspotSleepPolicy$1;->this$0:Lcom/android/server/wifi/HtcHotspotSleepPolicy;

    # getter for: Lcom/android/server/wifi/HtcHotspotSleepPolicy;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v6}, Lcom/android/server/wifi/HtcHotspotSleepPolicy;->access$000(Lcom/android/server/wifi/HtcHotspotSleepPolicy;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiStateMachine;->getAssocListStr()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/HtcHotspotSleepPolicy;->checkSleepPolicy(Ljava/lang/String;)V

    .line 116
    const-string v5, "htc.build.stage"

    invoke-static {v5, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-ge v5, v8, :cond_1

    .line 117
    iget-object v5, p0, Lcom/android/server/wifi/HtcHotspotSleepPolicy$1;->this$0:Lcom/android/server/wifi/HtcHotspotSleepPolicy;

    # getter for: Lcom/android/server/wifi/HtcHotspotSleepPolicy;->mBiHotspotClientConnectionOn:Z
    invoke-static {v5}, Lcom/android/server/wifi/HtcHotspotSleepPolicy;->access$600(Lcom/android/server/wifi/HtcHotspotSleepPolicy;)Z

    move-result v5

    if-ne v5, v10, :cond_6

    iget-object v5, p0, Lcom/android/server/wifi/HtcHotspotSleepPolicy$1;->this$0:Lcom/android/server/wifi/HtcHotspotSleepPolicy;

    # getter for: Lcom/android/server/wifi/HtcHotspotSleepPolicy;->mCurrentHotspotClient:I
    invoke-static {v5}, Lcom/android/server/wifi/HtcHotspotSleepPolicy;->access$100(Lcom/android/server/wifi/HtcHotspotSleepPolicy;)I

    move-result v5

    if-nez v5, :cond_6

    .line 118
    iget-object v5, p0, Lcom/android/server/wifi/HtcHotspotSleepPolicy$1;->this$0:Lcom/android/server/wifi/HtcHotspotSleepPolicy;

    # setter for: Lcom/android/server/wifi/HtcHotspotSleepPolicy;->mBiHotspotClientConnectionOn:Z
    invoke-static {v5, v9}, Lcom/android/server/wifi/HtcHotspotSleepPolicy;->access$602(Lcom/android/server/wifi/HtcHotspotSleepPolicy;Z)Z

    .line 119
    const-string v5, "UTD_BI"

    const-string v6, "C0005"

    const-string v7, "A0002"

    const-string v8, "WiFi Hotspot_ClientConnection Off"

    invoke-static {v5, v6, v7, v8, v9}, Lcom/htc/server/report/up/HtcSystemUPLogger;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 120
    const-string v5, "HtcHotspotSleepPolicy"

    const-string v6, "[BI] WiFi Hotspot_ClientConnection Off"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 121
    :cond_6
    iget-object v5, p0, Lcom/android/server/wifi/HtcHotspotSleepPolicy$1;->this$0:Lcom/android/server/wifi/HtcHotspotSleepPolicy;

    # getter for: Lcom/android/server/wifi/HtcHotspotSleepPolicy;->mBiHotspotClientConnectionOn:Z
    invoke-static {v5}, Lcom/android/server/wifi/HtcHotspotSleepPolicy;->access$600(Lcom/android/server/wifi/HtcHotspotSleepPolicy;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/server/wifi/HtcHotspotSleepPolicy$1;->this$0:Lcom/android/server/wifi/HtcHotspotSleepPolicy;

    # getter for: Lcom/android/server/wifi/HtcHotspotSleepPolicy;->mCurrentHotspotClient:I
    invoke-static {v5}, Lcom/android/server/wifi/HtcHotspotSleepPolicy;->access$100(Lcom/android/server/wifi/HtcHotspotSleepPolicy;)I

    move-result v5

    if-eqz v5, :cond_1

    .line 122
    iget-object v5, p0, Lcom/android/server/wifi/HtcHotspotSleepPolicy$1;->this$0:Lcom/android/server/wifi/HtcHotspotSleepPolicy;

    # setter for: Lcom/android/server/wifi/HtcHotspotSleepPolicy;->mBiHotspotClientConnectionOn:Z
    invoke-static {v5, v10}, Lcom/android/server/wifi/HtcHotspotSleepPolicy;->access$602(Lcom/android/server/wifi/HtcHotspotSleepPolicy;Z)Z

    .line 123
    const-string v5, "UTD_BI"

    const-string v6, "C0005"

    const-string v7, "A0001"

    const-string v8, "WiFi Hotspot_ClientConnection On"

    invoke-static {v5, v6, v7, v8, v10}, Lcom/htc/server/report/up/HtcSystemUPLogger;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 124
    const-string v5, "HtcHotspotSleepPolicy"

    const-string v6, "[BI] WiFi Hotspot_ClientConnection On"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 91
    .restart local v4    # "wifiSavedState":I
    :catch_0
    move-exception v5

    goto/16 :goto_0
.end method
