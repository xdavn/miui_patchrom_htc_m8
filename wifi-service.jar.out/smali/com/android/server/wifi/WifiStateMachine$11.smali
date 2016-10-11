.class Lcom/android/server/wifi/WifiStateMachine$11;
.super Landroid/content/BroadcastReceiver;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiStateMachine;->registerSIMReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 1806
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$11;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1809
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1810
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1811
    const-string v3, "WifiStateMachine"

    const-string v4, "Got ACTION_SIM_STATE_CHANGED"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    const-string v3, "ss"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1813
    .local v1, "simState":Ljava/lang/String;
    const-string v3, "LOADED"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1815
    const-string v3, "WifiStateMachine"

    const-string v4, "AKA: SIM state is LOADED for EAP-SIM"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1820
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$11;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 1821
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1822
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$11;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->setWiFiSIMAuthenticationEnabled(Z)V

    .line 1824
    :cond_0
    sget-object v3, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;->HTC_EAP_SIM_FIX:Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

    invoke-static {v3}, Landroid/net/wifi/HtcWifiCustomizeReader;->support(Landroid/net/wifi/HtcWifiCustomizeReader$Feature;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1825
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$11;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v4, 0x20106

    const-wide/16 v6, 0x1f4

    invoke-virtual {v3, v4, v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(IJ)V

    .line 1829
    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$11;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiStateMachine;->isSupportHS20()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$11;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiStateMachine;->getAutoInterworkingState()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Landroid/net/wifi/HtcWifiCustomizeReader;->supportHtcSense()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1830
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$11;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v4, 0x20101

    const-wide/16 v6, 0xbb8

    invoke-virtual {v3, v4, v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(IJ)V

    .line 1852
    .end local v1    # "simState":Ljava/lang/String;
    .end local v2    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_2
    :goto_0
    return-void

    .line 1838
    .restart local v1    # "simState":Ljava/lang/String;
    :cond_3
    const-string v3, "WifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AKA: SIM state is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", skip EAP-SIM connection"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$11;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 1842
    .restart local v2    # "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1843
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$11;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->setWiFiSIMAuthenticationEnabled(Z)V

    .line 1847
    :cond_4
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$11;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiStateMachine;->isSupportHS20()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "ABSENT"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Landroid/net/wifi/HtcWifiCustomizeReader;->supportHtcSense()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1848
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$11;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v4, 0x20102

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto :goto_0
.end method
