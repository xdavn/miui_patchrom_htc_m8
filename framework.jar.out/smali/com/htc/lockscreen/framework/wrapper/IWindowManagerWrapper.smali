.class public Lcom/htc/lockscreen/framework/wrapper/IWindowManagerWrapper;
.super Ljava/lang/Object;
.source "IWindowManagerWrapper.java"


# static fields
.field public static final OFF_BECAUSE_OF_ADMIN:I = 0x1

.field public static final TYPE_BOOT_PROGRESS:I = 0x7e5


# instance fields
.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {}, Lcom/htc/lockscreen/framework/wrapper/IWindowManagerWrapper;->getService()Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/IWindowManagerWrapper;->mWindowManager:Landroid/view/IWindowManager;

    .line 22
    return-void
.end method

.method public static getService()Landroid/view/IWindowManager;
    .locals 1

    .prologue
    .line 31
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    return-object v0
.end method

.method public static keyguardGoingAway(Landroid/view/IWindowManager;ZZ)V
    .locals 1
    .param p0, "iWm"    # Landroid/view/IWindowManager;
    .param p1, "disableWindowAnimations"    # Z
    .param p2, "keyguardGoingToNotificationShade"    # Z

    .prologue
    .line 90
    if-eqz p0, :cond_0

    .line 92
    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/view/IWindowManager;->keyguardGoingAway(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static lockNow(Landroid/view/IWindowManager;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "iWm"    # Landroid/view/IWindowManager;
    .param p1, "option"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 46
    if-eqz p0, :cond_0

    .line 47
    invoke-interface {p0, p1}, Landroid/view/IWindowManager;->lockNow(Landroid/os/Bundle;)V

    .line 49
    :cond_0
    return-void
.end method

.method public static removeRotationWatcher(Landroid/view/IWindowManager;Lcom/htc/lockscreen/framework/wrapper/IRotationWatcherWrapper;)V
    .locals 0
    .param p0, "iWm"    # Landroid/view/IWindowManager;
    .param p1, "iRw"    # Lcom/htc/lockscreen/framework/wrapper/IRotationWatcherWrapper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 82
    if-eqz p0, :cond_0

    .line 83
    invoke-interface {p0, p1}, Landroid/view/IWindowManager;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V

    .line 85
    :cond_0
    return-void
.end method

.method public static watchRotation(Landroid/view/IWindowManager;Lcom/htc/lockscreen/framework/wrapper/IRotationWatcherWrapper;)I
    .locals 1
    .param p0, "iWm"    # Landroid/view/IWindowManager;
    .param p1, "iRw"    # Lcom/htc/lockscreen/framework/wrapper/IRotationWatcherWrapper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, "rotation":I
    if-eqz p0, :cond_0

    .line 65
    invoke-interface {p0, p1}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;)I

    move-result v0

    .line 67
    :cond_0
    return v0
.end method


# virtual methods
.method public keyguardGoingAway(ZZ)V
    .locals 2
    .param p1, "disableWindowAnimations"    # Z
    .param p2, "keyguardGoingToNotificationShade"    # Z

    .prologue
    .line 146
    iget-object v1, p0, Lcom/htc/lockscreen/framework/wrapper/IWindowManagerWrapper;->mWindowManager:Landroid/view/IWindowManager;

    if-eqz v1, :cond_0

    .line 148
    :try_start_0
    iget-object v1, p0, Lcom/htc/lockscreen/framework/wrapper/IWindowManagerWrapper;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v1, p1, p2}, Landroid/view/IWindowManager;->keyguardGoingAway(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 150
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public lockNow(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "option"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/IWindowManagerWrapper;->mWindowManager:Landroid/view/IWindowManager;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/IWindowManagerWrapper;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->lockNow(Landroid/os/Bundle;)V

    .line 106
    :cond_0
    return-void
.end method

.method public overridePendingAppTransition(Ljava/lang/String;II)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enterAnim"    # I
    .param p3, "exitAnim"    # I

    .prologue
    .line 159
    iget-object v1, p0, Lcom/htc/lockscreen/framework/wrapper/IWindowManagerWrapper;->mWindowManager:Landroid/view/IWindowManager;

    if-eqz v1, :cond_0

    .line 161
    :try_start_0
    iget-object v1, p0, Lcom/htc/lockscreen/framework/wrapper/IWindowManagerWrapper;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x0

    invoke-interface {v1, p1, p2, p3, v2}, Landroid/view/IWindowManager;->overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 163
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public removeRotationWatcher(Lcom/htc/lockscreen/framework/wrapper/IRotationWatcherWrapper;)V
    .locals 1
    .param p1, "iRw"    # Lcom/htc/lockscreen/framework/wrapper/IRotationWatcherWrapper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/IWindowManagerWrapper;->mWindowManager:Landroid/view/IWindowManager;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/IWindowManagerWrapper;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V

    .line 142
    :cond_0
    return-void
.end method

.method public watchRotation(Lcom/htc/lockscreen/framework/wrapper/IRotationWatcherWrapper;)I
    .locals 2
    .param p1, "iRw"    # Lcom/htc/lockscreen/framework/wrapper/IRotationWatcherWrapper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 120
    const/4 v0, 0x0

    .line 121
    .local v0, "rotation":I
    iget-object v1, p0, Lcom/htc/lockscreen/framework/wrapper/IWindowManagerWrapper;->mWindowManager:Landroid/view/IWindowManager;

    if-eqz v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/htc/lockscreen/framework/wrapper/IWindowManagerWrapper;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v1, p1}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;)I

    move-result v0

    .line 124
    :cond_0
    return v0
.end method
