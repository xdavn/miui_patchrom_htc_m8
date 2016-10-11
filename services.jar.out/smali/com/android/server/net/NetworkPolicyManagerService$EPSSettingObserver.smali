.class Lcom/android/server/net/NetworkPolicyManagerService$EPSSettingObserver;
.super Landroid/database/ContentObserver;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EPSSettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 1025
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$EPSSettingObserver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 1026
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1027
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mResolver:Landroid/content/ContentResolver;

    .line 1028
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1042
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$EPSSettingObserver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$EPSSettingObserver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->access$200(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "htc_extreme_power_saver_state"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    move v0, v1

    :cond_0
    # setter for: Lcom/android/server/net/NetworkPolicyManagerService;->mEPSenable:Z
    invoke-static {v2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->access$102(Lcom/android/server/net/NetworkPolicyManagerService;Z)Z

    .line 1045
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$EPSSettingObserver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->WIFI_RESTRICT_ENABLED:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->access$300(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$EPSSettingObserver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mEPSenable:Z
    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->access$100(Lcom/android/server/net/NetworkPolicyManagerService;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "true"

    :goto_0
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$EPSSettingObserver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$EPSSettingObserver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mEPSenable:Z
    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->access$100(Lcom/android/server/net/NetworkPolicyManagerService;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setWiFiRestrict(Z)V

    .line 1049
    const-string v0, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EPS mode changed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$EPSSettingObserver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mEPSenable:Z
    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->access$100(Lcom/android/server/net/NetworkPolicyManagerService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", property="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$EPSSettingObserver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->WIFI_RESTRICT_ENABLED:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->access$300(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$EPSSettingObserver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$EPSSettingObserver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mEPSenable:Z
    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->access$100(Lcom/android/server/net/NetworkPolicyManagerService;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Enable"

    :goto_1
    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->addToHtcNetPolicyManSrvHistory(ILjava/lang/String;)V
    invoke-static {v2, v1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->access$400(Lcom/android/server/net/NetworkPolicyManagerService;ILjava/lang/String;)V

    .line 1055
    return-void

    .line 1045
    :cond_1
    const-string v0, "false"

    goto :goto_0

    .line 1053
    :cond_2
    const-string v0, "Disable"

    goto :goto_1
.end method

.method public register()V
    .locals 3

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$EPSSettingObserver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "htc_extreme_power_saver_state"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1033
    return-void
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$EPSSettingObserver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1037
    return-void
.end method
