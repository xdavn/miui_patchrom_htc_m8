.class Lcom/android/server/wifi/HtcWifiPreconfigBySim$1;
.super Landroid/content/BroadcastReceiver;
.source "HtcWifiPreconfigBySim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/HtcWifiPreconfigBySim;->registerSIMReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/HtcWifiPreconfigBySim;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/HtcWifiPreconfigBySim;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/server/wifi/HtcWifiPreconfigBySim$1;->this$0:Lcom/android/server/wifi/HtcWifiPreconfigBySim;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const v7, 0x200fc

    .line 53
    const-string v4, "ss"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, "simState":Ljava/lang/String;
    const-string v4, "LOADED"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 55
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 56
    .local v3, "telephonyManager":Landroid/telephony/TelephonyManager;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "operator":Ljava/lang/String;
    const-string v4, "HtcWifiPreconfigBySim"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SIM1 Latest MCC/MNC: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    if-eqz v0, :cond_0

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 60
    iget-object v4, p0, Lcom/android/server/wifi/HtcWifiPreconfigBySim$1;->this$0:Lcom/android/server/wifi/HtcWifiPreconfigBySim;

    # getter for: Lcom/android/server/wifi/HtcWifiPreconfigBySim;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v4}, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->access$000(Lcom/android/server/wifi/HtcWifiPreconfigBySim;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v4

    invoke-virtual {v4, v7, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 62
    :cond_0
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, "operator2":Ljava/lang/String;
    const-string v4, "HtcWifiPreconfigBySim"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SIM2 Latest MCC/MNC: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    if-eqz v1, :cond_2

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 65
    if-eqz v0, :cond_1

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 67
    :cond_1
    iget-object v4, p0, Lcom/android/server/wifi/HtcWifiPreconfigBySim$1;->this$0:Lcom/android/server/wifi/HtcWifiPreconfigBySim;

    # getter for: Lcom/android/server/wifi/HtcWifiPreconfigBySim;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v4}, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->access$000(Lcom/android/server/wifi/HtcWifiPreconfigBySim;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v4

    invoke-virtual {v4, v7, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 71
    .end local v0    # "operator":Ljava/lang/String;
    .end local v1    # "operator2":Ljava/lang/String;
    .end local v3    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_2
    return-void
.end method
