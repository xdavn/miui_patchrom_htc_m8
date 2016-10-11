.class Lcom/android/server/wifi/HtcMhsPermission$TetheringPermissionObserver;
.super Landroid/database/ContentObserver;
.source "HtcMhsPermission.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/HtcMhsPermission;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TetheringPermissionObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/HtcMhsPermission;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/HtcMhsPermission;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/server/wifi/HtcMhsPermission$TetheringPermissionObserver;->this$0:Lcom/android/server/wifi/HtcMhsPermission;

    .line 120
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 121
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 125
    const-string v2, "HtcMhsPermission"

    const-string v3, "MHS htcSetupPermittedTether ..."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v2, p0, Lcom/android/server/wifi/HtcMhsPermission$TetheringPermissionObserver;->this$0:Lcom/android/server/wifi/HtcMhsPermission;

    iget-object v3, p0, Lcom/android/server/wifi/HtcMhsPermission$TetheringPermissionObserver;->this$0:Lcom/android/server/wifi/HtcMhsPermission;

    invoke-virtual {v3}, Lcom/android/server/wifi/HtcMhsPermission;->internal_htcSetupPermittedTether()I

    move-result v3

    # setter for: Lcom/android/server/wifi/HtcMhsPermission;->status:I
    invoke-static {v2, v3}, Lcom/android/server/wifi/HtcMhsPermission;->access$002(Lcom/android/server/wifi/HtcMhsPermission;I)I

    .line 127
    iget-object v2, p0, Lcom/android/server/wifi/HtcMhsPermission$TetheringPermissionObserver;->this$0:Lcom/android/server/wifi/HtcMhsPermission;

    iget-object v3, p0, Lcom/android/server/wifi/HtcMhsPermission$TetheringPermissionObserver;->this$0:Lcom/android/server/wifi/HtcMhsPermission;

    # getter for: Lcom/android/server/wifi/HtcMhsPermission;->mWifiConfigMHS:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v3}, Lcom/android/server/wifi/HtcMhsPermission;->access$100(Lcom/android/server/wifi/HtcMhsPermission;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/HtcMhsPermission$TetheringPermissionObserver;->this$0:Lcom/android/server/wifi/HtcMhsPermission;

    # getter for: Lcom/android/server/wifi/HtcMhsPermission;->mEnableMHS:Z
    invoke-static {v4}, Lcom/android/server/wifi/HtcMhsPermission;->access$200(Lcom/android/server/wifi/HtcMhsPermission;)Z

    move-result v4

    # invokes: Lcom/android/server/wifi/HtcMhsPermission;->check_frisbee(Landroid/net/wifi/WifiConfiguration;Z)Z
    invoke-static {v2, v3, v4}, Lcom/android/server/wifi/HtcMhsPermission;->access$300(Lcom/android/server/wifi/HtcMhsPermission;Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/HtcMhsPermission$TetheringPermissionObserver;->this$0:Lcom/android/server/wifi/HtcMhsPermission;

    # getter for: Lcom/android/server/wifi/HtcMhsPermission;->mProcessingMHS:Z
    invoke-static {v2}, Lcom/android/server/wifi/HtcMhsPermission;->access$400(Lcom/android/server/wifi/HtcMhsPermission;)Z

    move-result v2

    if-ne v2, v0, :cond_5

    iget-object v2, p0, Lcom/android/server/wifi/HtcMhsPermission$TetheringPermissionObserver;->this$0:Lcom/android/server/wifi/HtcMhsPermission;

    # getter for: Lcom/android/server/wifi/HtcMhsPermission;->status:I
    invoke-static {v2}, Lcom/android/server/wifi/HtcMhsPermission;->access$000(Lcom/android/server/wifi/HtcMhsPermission;)I

    move-result v2

    if-nez v2, :cond_5

    .line 132
    const-string v2, "HtcMhsPermission"

    const-string v3, "MHS HTC_PERMITTED_TETHER_ALLOW"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v2, p0, Lcom/android/server/wifi/HtcMhsPermission$TetheringPermissionObserver;->this$0:Lcom/android/server/wifi/HtcMhsPermission;

    # setter for: Lcom/android/server/wifi/HtcMhsPermission;->mWifiApMhsPermission:Z
    invoke-static {v2, v0}, Lcom/android/server/wifi/HtcMhsPermission;->access$502(Lcom/android/server/wifi/HtcMhsPermission;Z)Z

    .line 134
    iget-object v2, p0, Lcom/android/server/wifi/HtcMhsPermission$TetheringPermissionObserver;->this$0:Lcom/android/server/wifi/HtcMhsPermission;

    # setter for: Lcom/android/server/wifi/HtcMhsPermission;->mProcessingMHS:Z
    invoke-static {v2, v1}, Lcom/android/server/wifi/HtcMhsPermission;->access$402(Lcom/android/server/wifi/HtcMhsPermission;Z)Z

    .line 135
    iget-object v2, p0, Lcom/android/server/wifi/HtcMhsPermission$TetheringPermissionObserver;->this$0:Lcom/android/server/wifi/HtcMhsPermission;

    # invokes: Lcom/android/server/wifi/HtcMhsPermission;->checkWifiApRemindDialog()Z
    invoke-static {v2}, Lcom/android/server/wifi/HtcMhsPermission;->access$600(Lcom/android/server/wifi/HtcMhsPermission;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    iget-object v2, p0, Lcom/android/server/wifi/HtcMhsPermission$TetheringPermissionObserver;->this$0:Lcom/android/server/wifi/HtcMhsPermission;

    # getter for: Lcom/android/server/wifi/HtcMhsPermission;->mWifiConfigMHS:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v2}, Lcom/android/server/wifi/HtcMhsPermission;->access$100(Lcom/android/server/wifi/HtcMhsPermission;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wifi/HtcMhsPermission$TetheringPermissionObserver;->this$0:Lcom/android/server/wifi/HtcMhsPermission;

    # getter for: Lcom/android/server/wifi/HtcMhsPermission;->mWifiServiceImpl:Lcom/android/server/wifi/WifiServiceImpl;
    invoke-static {v2}, Lcom/android/server/wifi/HtcMhsPermission;->access$700(Lcom/android/server/wifi/HtcMhsPermission;)Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v2, p0, Lcom/android/server/wifi/HtcMhsPermission$TetheringPermissionObserver;->this$0:Lcom/android/server/wifi/HtcMhsPermission;

    # getter for: Lcom/android/server/wifi/HtcMhsPermission;->mWifiConfigMHS:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v2}, Lcom/android/server/wifi/HtcMhsPermission;->access$100(Lcom/android/server/wifi/HtcMhsPermission;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wifi/WifiServiceImpl;->isValid(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 138
    :cond_2
    iget-object v2, p0, Lcom/android/server/wifi/HtcMhsPermission$TetheringPermissionObserver;->this$0:Lcom/android/server/wifi/HtcMhsPermission;

    # getter for: Lcom/android/server/wifi/HtcMhsPermission;->mWifiController:Lcom/android/server/wifi/WifiController;
    invoke-static {v2}, Lcom/android/server/wifi/HtcMhsPermission;->access$800(Lcom/android/server/wifi/HtcMhsPermission;)Lcom/android/server/wifi/WifiController;

    move-result-object v2

    const v3, 0x2600a

    iget-object v4, p0, Lcom/android/server/wifi/HtcMhsPermission$TetheringPermissionObserver;->this$0:Lcom/android/server/wifi/HtcMhsPermission;

    # getter for: Lcom/android/server/wifi/HtcMhsPermission;->mEnableMHS:Z
    invoke-static {v4}, Lcom/android/server/wifi/HtcMhsPermission;->access$200(Lcom/android/server/wifi/HtcMhsPermission;)Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_1
    iget-object v4, p0, Lcom/android/server/wifi/HtcMhsPermission$TetheringPermissionObserver;->this$0:Lcom/android/server/wifi/HtcMhsPermission;

    # getter for: Lcom/android/server/wifi/HtcMhsPermission;->mWifiConfigMHS:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v4}, Lcom/android/server/wifi/HtcMhsPermission;->access$100(Lcom/android/server/wifi/HtcMhsPermission;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/android/server/wifi/WifiController;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    .line 140
    :cond_4
    const-string v0, "HtcMhsPermission"

    const-string v1, "Invalid WifiConfiguration"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 143
    :cond_5
    iget-object v2, p0, Lcom/android/server/wifi/HtcMhsPermission$TetheringPermissionObserver;->this$0:Lcom/android/server/wifi/HtcMhsPermission;

    # getter for: Lcom/android/server/wifi/HtcMhsPermission;->status:I
    invoke-static {v2}, Lcom/android/server/wifi/HtcMhsPermission;->access$000(Lcom/android/server/wifi/HtcMhsPermission;)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 144
    const-string v0, "HtcMhsPermission"

    const-string v2, "MHS HTC_PERMITTED_TETHER_DENY"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lcom/android/server/wifi/HtcMhsPermission$TetheringPermissionObserver;->this$0:Lcom/android/server/wifi/HtcMhsPermission;

    # setter for: Lcom/android/server/wifi/HtcMhsPermission;->mWifiApMhsPermission:Z
    invoke-static {v0, v1}, Lcom/android/server/wifi/HtcMhsPermission;->access$502(Lcom/android/server/wifi/HtcMhsPermission;Z)Z

    .line 146
    iget-object v0, p0, Lcom/android/server/wifi/HtcMhsPermission$TetheringPermissionObserver;->this$0:Lcom/android/server/wifi/HtcMhsPermission;

    # setter for: Lcom/android/server/wifi/HtcMhsPermission;->mProcessingMHS:Z
    invoke-static {v0, v1}, Lcom/android/server/wifi/HtcMhsPermission;->access$402(Lcom/android/server/wifi/HtcMhsPermission;Z)Z

    .line 147
    iget-object v0, p0, Lcom/android/server/wifi/HtcMhsPermission$TetheringPermissionObserver;->this$0:Lcom/android/server/wifi/HtcMhsPermission;

    # getter for: Lcom/android/server/wifi/HtcMhsPermission;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v0}, Lcom/android/server/wifi/HtcMhsPermission;->access$900(Lcom/android/server/wifi/HtcMhsPermission;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_0

    .line 148
    const-string v0, "HtcMhsPermission"

    const-string v2, "disable wifi ap by HTC_PERMITTED_TETHER_DENY"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lcom/android/server/wifi/HtcMhsPermission$TetheringPermissionObserver;->this$0:Lcom/android/server/wifi/HtcMhsPermission;

    # getter for: Lcom/android/server/wifi/HtcMhsPermission;->mWifiServiceImpl:Lcom/android/server/wifi/WifiServiceImpl;
    invoke-static {v0}, Lcom/android/server/wifi/HtcMhsPermission;->access$700(Lcom/android/server/wifi/HtcMhsPermission;)Lcom/android/server/wifi/WifiServiceImpl;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    goto/16 :goto_0
.end method
