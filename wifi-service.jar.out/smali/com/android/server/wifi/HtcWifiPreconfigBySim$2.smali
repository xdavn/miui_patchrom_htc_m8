.class Lcom/android/server/wifi/HtcWifiPreconfigBySim$2;
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
    .line 75
    iput-object p1, p0, Lcom/android/server/wifi/HtcWifiPreconfigBySim$2;->this$0:Lcom/android/server/wifi/HtcWifiPreconfigBySim;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 78
    const-string v1, "wifi_state"

    const/4 v2, 0x4

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 79
    .local v0, "wifiState":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/android/server/wifi/HtcWifiPreconfigBySim$2;->this$0:Lcom/android/server/wifi/HtcWifiPreconfigBySim;

    # getter for: Lcom/android/server/wifi/HtcWifiPreconfigBySim;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v1}, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->access$000(Lcom/android/server/wifi/HtcWifiPreconfigBySim;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v1

    const v2, 0x200fb

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 83
    :cond_0
    return-void
.end method
