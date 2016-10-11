.class Lcom/android/server/wifi/HtcHotspotAllowUserOnly$1;
.super Landroid/content/BroadcastReceiver;
.source "HtcHotspotAllowUserOnly.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/HtcHotspotAllowUserOnly;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/HtcHotspotAllowUserOnly;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/HtcHotspotAllowUserOnly;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/server/wifi/HtcHotspotAllowUserOnly$1;->this$0:Lcom/android/server/wifi/HtcHotspotAllowUserOnly;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 75
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "action":Ljava/lang/String;
    const-string v1, "HtcHotspotAllowUserOnly"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive, action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const-string v1, "com.htc.wifi.action.WIFI_AP_CONN_REQ_TIMEOUT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    const-string v1, "HtcHotspotAllowUserOnly"

    const-string v2, "Got ACTION_WIFI_AP_CONN_REQ_TIMEOUT"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v1, p0, Lcom/android/server/wifi/HtcHotspotAllowUserOnly$1;->this$0:Lcom/android/server/wifi/HtcHotspotAllowUserOnly;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/HtcHotspotAllowUserOnly;->setConnectionReqNotificationVisible(Z)V

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/android/server/wifi/HtcHotspotAllowUserOnly$1;->this$0:Lcom/android/server/wifi/HtcHotspotAllowUserOnly;

    invoke-virtual {v1}, Lcom/android/server/wifi/HtcHotspotAllowUserOnly;->setConnectionReqNotificationVisible()V

    goto :goto_0
.end method
