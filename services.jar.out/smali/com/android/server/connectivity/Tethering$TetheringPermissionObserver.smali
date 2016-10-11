.class Lcom/android/server/connectivity/Tethering$TetheringPermissionObserver;
.super Landroid/database/ContentObserver;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TetheringPermissionObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Tethering;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/Tethering;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 2635
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetheringPermissionObserver;->this$0:Lcom/android/server/connectivity/Tethering;

    .line 2636
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2637
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 2641
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetheringPermissionObserver;->this$0:Lcom/android/server/connectivity/Tethering;

    iget-boolean v0, v0, Lcom/android/server/connectivity/Tethering;->TETHERING_GUARD_support:Z

    if-eqz v0, :cond_0

    .line 2642
    const-string v0, "Tethering"

    const-string v1, "htcSetupPermittedTether ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2643
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetheringPermissionObserver;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$1000(Lcom/android/server/connectivity/Tethering;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetheringPermissionObserver;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$1000(Lcom/android/server/connectivity/Tethering;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2647
    :goto_0
    return-void

    .line 2645
    :cond_0
    const-string v0, "Tethering"

    const-string v1, "htcSetupPermittedTether: TetheringGuard not support"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
