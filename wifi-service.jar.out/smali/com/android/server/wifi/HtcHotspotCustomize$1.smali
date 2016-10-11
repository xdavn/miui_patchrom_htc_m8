.class Lcom/android/server/wifi/HtcHotspotCustomize$1;
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
    .line 73
    iput-object p1, p0, Lcom/android/server/wifi/HtcHotspotCustomize$1;->this$0:Lcom/android/server/wifi/HtcHotspotCustomize;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 76
    const-string v3, "com.htc.CHAMELEON"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 77
    .local v0, "isChameleon":Z
    const-string v3, "HtcHotspotCustomize"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "receive BROADCAST_INTENT_ACTION_CUSTOMIZATION, isChameleon: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    if-eqz v0, :cond_0

    .line 79
    iget-object v3, p0, Lcom/android/server/wifi/HtcHotspotCustomize$1;->this$0:Lcom/android/server/wifi/HtcHotspotCustomize;

    # getter for: Lcom/android/server/wifi/HtcHotspotCustomize;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/wifi/HtcHotspotCustomize;->access$000(Lcom/android/server/wifi/HtcHotspotCustomize;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "EVER_DO_CHAMELEON"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    .line 80
    iget-object v3, p0, Lcom/android/server/wifi/HtcHotspotCustomize$1;->this$0:Lcom/android/server/wifi/HtcHotspotCustomize;

    # setter for: Lcom/android/server/wifi/HtcHotspotCustomize;->mCustomizeForChameleon:Z
    invoke-static {v3, v7}, Lcom/android/server/wifi/HtcHotspotCustomize;->access$102(Lcom/android/server/wifi/HtcHotspotCustomize;Z)Z

    .line 81
    iget-object v3, p0, Lcom/android/server/wifi/HtcHotspotCustomize$1;->this$0:Lcom/android/server/wifi/HtcHotspotCustomize;

    # getter for: Lcom/android/server/wifi/HtcHotspotCustomize;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/wifi/HtcHotspotCustomize;->access$000(Lcom/android/server/wifi/HtcHotspotCustomize;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "EVER_DO_CHAMELEON"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 84
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/HtcHotspotCustomize$1;->this$0:Lcom/android/server/wifi/HtcHotspotCustomize;

    # getter for: Lcom/android/server/wifi/HtcHotspotCustomize;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v3}, Lcom/android/server/wifi/HtcHotspotCustomize;->access$200(Lcom/android/server/wifi/HtcHotspotCustomize;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiStateMachine;->syncGetHtcWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 85
    .local v1, "mCurrentWifiConfiguration":Landroid/net/wifi/WifiConfiguration;
    new-instance v2, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v2, v1}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    .line 88
    .local v2, "mCustomizeWifiConfiguration":Landroid/net/wifi/WifiConfiguration;
    iget-object v3, p0, Lcom/android/server/wifi/HtcHotspotCustomize$1;->this$0:Lcom/android/server/wifi/HtcHotspotCustomize;

    iget-object v4, p0, Lcom/android/server/wifi/HtcHotspotCustomize$1;->this$0:Lcom/android/server/wifi/HtcHotspotCustomize;

    # getter for: Lcom/android/server/wifi/HtcHotspotCustomize;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/wifi/HtcHotspotCustomize;->access$000(Lcom/android/server/wifi/HtcHotspotCustomize;)Landroid/content/Context;

    move-result-object v4

    # invokes: Lcom/android/server/wifi/HtcHotspotCustomize;->checkSIECustomization(Landroid/content/Context;)Z
    invoke-static {v3, v4}, Lcom/android/server/wifi/HtcHotspotCustomize;->access$300(Lcom/android/server/wifi/HtcHotspotCustomize;Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 90
    iget-object v3, p0, Lcom/android/server/wifi/HtcHotspotCustomize$1;->this$0:Lcom/android/server/wifi/HtcHotspotCustomize;

    iget-object v4, p0, Lcom/android/server/wifi/HtcHotspotCustomize$1;->this$0:Lcom/android/server/wifi/HtcHotspotCustomize;

    # getter for: Lcom/android/server/wifi/HtcHotspotCustomize;->mDefaultCustomizedString:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/wifi/HtcHotspotCustomize;->access$500(Lcom/android/server/wifi/HtcHotspotCustomize;)Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/android/server/wifi/HtcHotspotCustomize;->mSIECustomize_HotspotSSID:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/server/wifi/HtcHotspotCustomize;->access$402(Lcom/android/server/wifi/HtcHotspotCustomize;Ljava/lang/String;)Ljava/lang/String;

    .line 94
    :cond_1
    invoke-static {}, Landroid/net/wifi/HtcWifiCustomizeReader;->isEnableMdnPassword()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 95
    iget-object v3, p0, Lcom/android/server/wifi/HtcHotspotCustomize$1;->this$0:Lcom/android/server/wifi/HtcHotspotCustomize;

    iget-object v4, p0, Lcom/android/server/wifi/HtcHotspotCustomize$1;->this$0:Lcom/android/server/wifi/HtcHotspotCustomize;

    invoke-virtual {v4}, Lcom/android/server/wifi/HtcHotspotCustomize;->getCustomizedPassword()Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/android/server/wifi/HtcHotspotCustomize;->mSIECustomize_HotspotPwd:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/server/wifi/HtcHotspotCustomize;->access$602(Lcom/android/server/wifi/HtcHotspotCustomize;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    iget-object v3, p0, Lcom/android/server/wifi/HtcHotspotCustomize$1;->this$0:Lcom/android/server/wifi/HtcHotspotCustomize;

    # getter for: Lcom/android/server/wifi/HtcHotspotCustomize;->mSIECustomize_HotspotPwd:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/wifi/HtcHotspotCustomize;->access$600(Lcom/android/server/wifi/HtcHotspotCustomize;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 97
    iget-object v3, p0, Lcom/android/server/wifi/HtcHotspotCustomize$1;->this$0:Lcom/android/server/wifi/HtcHotspotCustomize;

    iget-object v4, p0, Lcom/android/server/wifi/HtcHotspotCustomize$1;->this$0:Lcom/android/server/wifi/HtcHotspotCustomize;

    # getter for: Lcom/android/server/wifi/HtcHotspotCustomize;->mDefaultCustomizedString:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/wifi/HtcHotspotCustomize;->access$500(Lcom/android/server/wifi/HtcHotspotCustomize;)Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/android/server/wifi/HtcHotspotCustomize;->mSIECustomize_HotspotPwd:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/server/wifi/HtcHotspotCustomize;->access$602(Lcom/android/server/wifi/HtcHotspotCustomize;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    :cond_2
    iget-object v3, p0, Lcom/android/server/wifi/HtcHotspotCustomize$1;->this$0:Lcom/android/server/wifi/HtcHotspotCustomize;

    # invokes: Lcom/android/server/wifi/HtcHotspotCustomize;->updateCustomizeData()V
    invoke-static {v3}, Lcom/android/server/wifi/HtcHotspotCustomize;->access$700(Lcom/android/server/wifi/HtcHotspotCustomize;)V

    .line 102
    return-void
.end method
