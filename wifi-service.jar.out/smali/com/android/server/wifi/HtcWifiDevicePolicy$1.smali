.class Lcom/android/server/wifi/HtcWifiDevicePolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "HtcWifiDevicePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/HtcWifiDevicePolicy;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiServiceImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/HtcWifiDevicePolicy;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/HtcWifiDevicePolicy;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/server/wifi/HtcWifiDevicePolicy$1;->this$0:Lcom/android/server/wifi/HtcWifiDevicePolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 33
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 34
    iget-object v1, p0, Lcom/android/server/wifi/HtcWifiDevicePolicy$1;->this$0:Lcom/android/server/wifi/HtcWifiDevicePolicy;

    # getter for: Lcom/android/server/wifi/HtcWifiDevicePolicy;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;
    invoke-static {v1}, Lcom/android/server/wifi/HtcWifiDevicePolicy;->access$000(Lcom/android/server/wifi/HtcWifiDevicePolicy;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getAllowWifiStatus(Landroid/content/ComponentName;)I

    move-result v0

    .line 35
    .local v0, "allowStatus":I
    const-string v1, "WifiDevicePolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDevicePolicy Exchange policy allowStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object v1, p0, Lcom/android/server/wifi/HtcWifiDevicePolicy$1;->this$0:Lcom/android/server/wifi/HtcWifiDevicePolicy;

    # invokes: Lcom/android/server/wifi/HtcWifiDevicePolicy;->updateDevicePolicy(I)V
    invoke-static {v1, v0}, Lcom/android/server/wifi/HtcWifiDevicePolicy;->access$100(Lcom/android/server/wifi/HtcWifiDevicePolicy;I)V

    .line 42
    .end local v0    # "allowStatus":I
    :cond_0
    :goto_0
    return-void

    .line 37
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.htc.admin.ALLOW_WIFI_CHANGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    const-string v1, "com.htc.admin.extra.ALLOW_STATUS"

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 39
    .restart local v0    # "allowStatus":I
    const-string v1, "WifiDevicePolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GOT INTENT_ALLOW_WIFI_CHANGE: status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object v1, p0, Lcom/android/server/wifi/HtcWifiDevicePolicy$1;->this$0:Lcom/android/server/wifi/HtcWifiDevicePolicy;

    # invokes: Lcom/android/server/wifi/HtcWifiDevicePolicy;->updateDevicePolicy(I)V
    invoke-static {v1, v0}, Lcom/android/server/wifi/HtcWifiDevicePolicy;->access$100(Lcom/android/server/wifi/HtcWifiDevicePolicy;I)V

    goto :goto_0
.end method
