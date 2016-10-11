.class Lcom/android/server/wifi/HtcWifiEmergencyImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "HtcWifiEmergency.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/HtcWifiEmergencyImpl;->registerForIntent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/HtcWifiEmergencyImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/HtcWifiEmergencyImpl;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/server/wifi/HtcWifiEmergencyImpl$1;->this$0:Lcom/android/server/wifi/HtcWifiEmergencyImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 143
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.htc.intent.action.HTC_EMERGENCY_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/android/server/wifi/HtcWifiEmergencyImpl$1;->this$0:Lcom/android/server/wifi/HtcWifiEmergencyImpl;

    const-string v1, "EMERGENCY_AND_CALLBACK_STATUS"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    # setter for: Lcom/android/server/wifi/HtcWifiEmergencyImpl;->mEmergencyModeChanged:Z
    invoke-static {v0, v1}, Lcom/android/server/wifi/HtcWifiEmergencyImpl;->access$002(Lcom/android/server/wifi/HtcWifiEmergencyImpl;Z)Z

    .line 145
    const-string v0, "HtcWifiEmergency"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTC_EMERGENCY_MODE_CHANGED:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/HtcWifiEmergencyImpl$1;->this$0:Lcom/android/server/wifi/HtcWifiEmergencyImpl;

    # getter for: Lcom/android/server/wifi/HtcWifiEmergencyImpl;->mEmergencyModeChanged:Z
    invoke-static {v2}, Lcom/android/server/wifi/HtcWifiEmergencyImpl;->access$000(Lcom/android/server/wifi/HtcWifiEmergencyImpl;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Previous:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/HtcWifiEmergencyImpl$1;->this$0:Lcom/android/server/wifi/HtcWifiEmergencyImpl;

    # getter for: Lcom/android/server/wifi/HtcWifiEmergencyImpl;->mPreEmergencyModeChanged:Z
    invoke-static {v2}, Lcom/android/server/wifi/HtcWifiEmergencyImpl;->access$100(Lcom/android/server/wifi/HtcWifiEmergencyImpl;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, p0, Lcom/android/server/wifi/HtcWifiEmergencyImpl$1;->this$0:Lcom/android/server/wifi/HtcWifiEmergencyImpl;

    invoke-virtual {v0}, Lcom/android/server/wifi/HtcWifiEmergencyImpl;->isSupportWifiCalling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    const-string v0, "HtcWifiEmergency"

    const-string v1, "support Kineto wifi calling, do not disable WiFi, set mEmergencyModeChanged = false"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lcom/android/server/wifi/HtcWifiEmergencyImpl$1;->this$0:Lcom/android/server/wifi/HtcWifiEmergencyImpl;

    # setter for: Lcom/android/server/wifi/HtcWifiEmergencyImpl;->mEmergencyModeChanged:Z
    invoke-static {v0, v3}, Lcom/android/server/wifi/HtcWifiEmergencyImpl;->access$002(Lcom/android/server/wifi/HtcWifiEmergencyImpl;Z)Z

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/HtcWifiEmergencyImpl$1;->this$0:Lcom/android/server/wifi/HtcWifiEmergencyImpl;

    # getter for: Lcom/android/server/wifi/HtcWifiEmergencyImpl;->mEmergencyModeChanged:Z
    invoke-static {v0}, Lcom/android/server/wifi/HtcWifiEmergencyImpl;->access$000(Lcom/android/server/wifi/HtcWifiEmergencyImpl;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wifi/HtcWifiEmergencyImpl$1;->this$0:Lcom/android/server/wifi/HtcWifiEmergencyImpl;

    # getter for: Lcom/android/server/wifi/HtcWifiEmergencyImpl;->mPreEmergencyModeChanged:Z
    invoke-static {v0}, Lcom/android/server/wifi/HtcWifiEmergencyImpl;->access$100(Lcom/android/server/wifi/HtcWifiEmergencyImpl;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 153
    const-string v0, "HtcWifiEmergency"

    const-string v1, "Don\'t have emergency call"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/HtcWifiEmergencyImpl$1;->this$0:Lcom/android/server/wifi/HtcWifiEmergencyImpl;

    iget-object v1, p0, Lcom/android/server/wifi/HtcWifiEmergencyImpl$1;->this$0:Lcom/android/server/wifi/HtcWifiEmergencyImpl;

    # getter for: Lcom/android/server/wifi/HtcWifiEmergencyImpl;->mEmergencyModeChanged:Z
    invoke-static {v1}, Lcom/android/server/wifi/HtcWifiEmergencyImpl;->access$000(Lcom/android/server/wifi/HtcWifiEmergencyImpl;)Z

    move-result v1

    # setter for: Lcom/android/server/wifi/HtcWifiEmergencyImpl;->mPreEmergencyModeChanged:Z
    invoke-static {v0, v1}, Lcom/android/server/wifi/HtcWifiEmergencyImpl;->access$102(Lcom/android/server/wifi/HtcWifiEmergencyImpl;Z)Z

    .line 159
    :cond_1
    return-void

    .line 155
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/HtcWifiEmergencyImpl$1;->this$0:Lcom/android/server/wifi/HtcWifiEmergencyImpl;

    # invokes: Lcom/android/server/wifi/HtcWifiEmergencyImpl;->updateWifiState()V
    invoke-static {v0}, Lcom/android/server/wifi/HtcWifiEmergencyImpl;->access$200(Lcom/android/server/wifi/HtcWifiEmergencyImpl;)V

    goto :goto_0
.end method
