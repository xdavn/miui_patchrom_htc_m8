.class Lcom/android/server/wifi/HtcScanAvoidance$1;
.super Landroid/content/BroadcastReceiver;
.source "HtcScanAvoidance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/HtcScanAvoidance;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/HtcScanAvoidance;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/HtcScanAvoidance;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/server/wifi/HtcScanAvoidance$1;->this$0:Lcom/android/server/wifi/HtcScanAvoidance;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 37
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 39
    const-string v2, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 40
    .local v1, "btState":I
    const-string v2, "HtcScanAvoidance"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "btstate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    packed-switch v1, :pswitch_data_0

    .line 51
    :pswitch_0
    const-string v2, "HtcScanAvoidance"

    const-string v3, "unkown BT SCO state"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v2, p0, Lcom/android/server/wifi/HtcScanAvoidance$1;->this$0:Lcom/android/server/wifi/HtcScanAvoidance;

    # setter for: Lcom/android/server/wifi/HtcScanAvoidance;->mBtScoConnected:Z
    invoke-static {v2, v5}, Lcom/android/server/wifi/HtcScanAvoidance;->access$002(Lcom/android/server/wifi/HtcScanAvoidance;Z)Z

    .line 60
    .end local v1    # "btState":I
    :cond_0
    :goto_0
    return-void

    .line 43
    .restart local v1    # "btState":I
    :pswitch_1
    const-string v2, "HtcScanAvoidance"

    const-string v3, "BT SCO on"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object v2, p0, Lcom/android/server/wifi/HtcScanAvoidance$1;->this$0:Lcom/android/server/wifi/HtcScanAvoidance;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/wifi/HtcScanAvoidance;->mBtScoConnected:Z
    invoke-static {v2, v3}, Lcom/android/server/wifi/HtcScanAvoidance;->access$002(Lcom/android/server/wifi/HtcScanAvoidance;Z)Z

    goto :goto_0

    .line 47
    :pswitch_2
    const-string v2, "HtcScanAvoidance"

    const-string v3, "BT SCO off"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v2, p0, Lcom/android/server/wifi/HtcScanAvoidance$1;->this$0:Lcom/android/server/wifi/HtcScanAvoidance;

    # setter for: Lcom/android/server/wifi/HtcScanAvoidance;->mBtScoConnected:Z
    invoke-static {v2, v5}, Lcom/android/server/wifi/HtcScanAvoidance;->access$002(Lcom/android/server/wifi/HtcScanAvoidance;Z)Z

    goto :goto_0

    .line 56
    .end local v1    # "btState":I
    :cond_1
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    const-string v2, "HtcScanAvoidance"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BT state changed state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v2, p0, Lcom/android/server/wifi/HtcScanAvoidance$1;->this$0:Lcom/android/server/wifi/HtcScanAvoidance;

    # setter for: Lcom/android/server/wifi/HtcScanAvoidance;->mBtScoConnected:Z
    invoke-static {v2, v5}, Lcom/android/server/wifi/HtcScanAvoidance;->access$002(Lcom/android/server/wifi/HtcScanAvoidance;Z)Z

    goto :goto_0

    .line 41
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
