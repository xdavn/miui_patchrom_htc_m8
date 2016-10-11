.class Lcom/android/server/AppOpsService$3;
.super Landroid/app/IUserSwitchObserver$Stub;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/AppOpsService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AppOpsService;


# direct methods
.method constructor <init>(Lcom/android/server/AppOpsService;)V
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, Lcom/android/server/AppOpsService$3;->this$0:Lcom/android/server/AppOpsService;

    invoke-direct {p0}, Landroid/app/IUserSwitchObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundProfileSwitch(I)V
    .locals 0
    .param p1, "newProfileId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 399
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 0
    .param p1, "newUserId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 386
    return-void
.end method

.method public onUserSwitching(ILandroid/os/IRemoteCallback;)V
    .locals 1
    .param p1, "newUserId"    # I
    .param p2, "reply"    # Landroid/os/IRemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/server/AppOpsService$3;->this$0:Lcom/android/server/AppOpsService;

    # invokes: Lcom/android/server/AppOpsService;->updateCurrentProfileIds(I)V
    invoke-static {v0, p1}, Lcom/android/server/AppOpsService;->access$000(Lcom/android/server/AppOpsService;I)V

    .line 392
    if-eqz p2, :cond_0

    .line 393
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 395
    :cond_0
    return-void
.end method
