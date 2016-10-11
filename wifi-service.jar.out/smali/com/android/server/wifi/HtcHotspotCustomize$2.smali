.class Lcom/android/server/wifi/HtcHotspotCustomize$2;
.super Landroid/content/BroadcastReceiver;
.source "HtcHotspotCustomize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/HtcHotspotCustomize;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/HtcHotspotCustomize;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/HtcHotspotCustomize;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/server/wifi/HtcHotspotCustomize$2;->this$0:Lcom/android/server/wifi/HtcHotspotCustomize;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    .line 111
    invoke-static {}, Landroid/net/wifi/HtcWifiCustomizeReader;->isEnableImeiPassword()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/wifi/HtcWifiCustomizeReader;->isEnableImeiSsid()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 112
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v0

    .line 113
    .local v0, "ss":Landroid/telephony/ServiceState;
    if-eqz v0, :cond_2

    .line 114
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 115
    .local v1, "state":I
    const-string v2, "HtcHotspotCustomize"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Customize hotspot by IMEI when receive TelephonyIntents.ACTION_SERVICE_STATE_CHANGED state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    if-eqz v1, :cond_1

    if-eq v1, v5, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 121
    :cond_1
    const-string v2, "HtcHotspotCustomize"

    const-string v3, "Got TelephonyIntents.ACTION_SERVICE_STATE_CHANGED: state not power off"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v2, p0, Lcom/android/server/wifi/HtcHotspotCustomize$2;->this$0:Lcom/android/server/wifi/HtcHotspotCustomize;

    # getter for: Lcom/android/server/wifi/HtcHotspotCustomize;->mHandledIMEICustomize:Z
    invoke-static {v2}, Lcom/android/server/wifi/HtcHotspotCustomize;->access$800(Lcom/android/server/wifi/HtcHotspotCustomize;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 141
    .end local v0    # "ss":Landroid/telephony/ServiceState;
    .end local v1    # "state":I
    :cond_2
    :goto_0
    return-void

    .line 124
    .restart local v0    # "ss":Landroid/telephony/ServiceState;
    .restart local v1    # "state":I
    :cond_3
    invoke-static {}, Landroid/net/wifi/HtcWifiCustomizeReader;->isEnableImeiSsid()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 125
    iget-object v2, p0, Lcom/android/server/wifi/HtcHotspotCustomize$2;->this$0:Lcom/android/server/wifi/HtcHotspotCustomize;

    # getter for: Lcom/android/server/wifi/HtcHotspotCustomize;->mIMEICustomize_HotspotSSID:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/wifi/HtcHotspotCustomize;->access$900(Lcom/android/server/wifi/HtcHotspotCustomize;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    .line 126
    iget-object v2, p0, Lcom/android/server/wifi/HtcHotspotCustomize$2;->this$0:Lcom/android/server/wifi/HtcHotspotCustomize;

    iget-object v3, p0, Lcom/android/server/wifi/HtcHotspotCustomize$2;->this$0:Lcom/android/server/wifi/HtcHotspotCustomize;

    # getter for: Lcom/android/server/wifi/HtcHotspotCustomize;->mDefaultCustomizedString:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/wifi/HtcHotspotCustomize;->access$500(Lcom/android/server/wifi/HtcHotspotCustomize;)Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/android/server/wifi/HtcHotspotCustomize;->mIMEICustomize_HotspotSSID:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/server/wifi/HtcHotspotCustomize;->access$902(Lcom/android/server/wifi/HtcHotspotCustomize;Ljava/lang/String;)Ljava/lang/String;

    .line 129
    :cond_4
    invoke-static {}, Landroid/net/wifi/HtcWifiCustomizeReader;->isEnableImeiPassword()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 130
    iget-object v2, p0, Lcom/android/server/wifi/HtcHotspotCustomize$2;->this$0:Lcom/android/server/wifi/HtcHotspotCustomize;

    iget-object v3, p0, Lcom/android/server/wifi/HtcHotspotCustomize$2;->this$0:Lcom/android/server/wifi/HtcHotspotCustomize;

    invoke-virtual {v3}, Lcom/android/server/wifi/HtcHotspotCustomize;->getCustomizedPassword()Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/android/server/wifi/HtcHotspotCustomize;->mIMEICustomize_HotspotPwd:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/server/wifi/HtcHotspotCustomize;->access$1002(Lcom/android/server/wifi/HtcHotspotCustomize;Ljava/lang/String;)Ljava/lang/String;

    .line 131
    iget-object v2, p0, Lcom/android/server/wifi/HtcHotspotCustomize$2;->this$0:Lcom/android/server/wifi/HtcHotspotCustomize;

    # getter for: Lcom/android/server/wifi/HtcHotspotCustomize;->mIMEICustomize_HotspotPwd:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/wifi/HtcHotspotCustomize;->access$1000(Lcom/android/server/wifi/HtcHotspotCustomize;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    .line 132
    iget-object v2, p0, Lcom/android/server/wifi/HtcHotspotCustomize$2;->this$0:Lcom/android/server/wifi/HtcHotspotCustomize;

    iget-object v3, p0, Lcom/android/server/wifi/HtcHotspotCustomize$2;->this$0:Lcom/android/server/wifi/HtcHotspotCustomize;

    # getter for: Lcom/android/server/wifi/HtcHotspotCustomize;->mDefaultCustomizedString:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/wifi/HtcHotspotCustomize;->access$500(Lcom/android/server/wifi/HtcHotspotCustomize;)Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/android/server/wifi/HtcHotspotCustomize;->mIMEICustomize_HotspotPwd:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/server/wifi/HtcHotspotCustomize;->access$1002(Lcom/android/server/wifi/HtcHotspotCustomize;Ljava/lang/String;)Ljava/lang/String;

    .line 136
    :cond_5
    iget-object v2, p0, Lcom/android/server/wifi/HtcHotspotCustomize$2;->this$0:Lcom/android/server/wifi/HtcHotspotCustomize;

    # invokes: Lcom/android/server/wifi/HtcHotspotCustomize;->updateCustomizeData()V
    invoke-static {v2}, Lcom/android/server/wifi/HtcHotspotCustomize;->access$700(Lcom/android/server/wifi/HtcHotspotCustomize;)V

    .line 137
    iget-object v2, p0, Lcom/android/server/wifi/HtcHotspotCustomize$2;->this$0:Lcom/android/server/wifi/HtcHotspotCustomize;

    # setter for: Lcom/android/server/wifi/HtcHotspotCustomize;->mHandledIMEICustomize:Z
    invoke-static {v2, v5}, Lcom/android/server/wifi/HtcHotspotCustomize;->access$802(Lcom/android/server/wifi/HtcHotspotCustomize;Z)Z

    goto :goto_0
.end method
