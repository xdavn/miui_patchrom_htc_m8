.class public Lcom/htc/lockscreen/framework/wrapper/ActivityManagerNativeWrapper;
.super Ljava/lang/Object;
.source "ActivityManagerNativeWrapper.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mActivityManagerNative:Landroid/app/IActivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/htc/lockscreen/framework/wrapper/ActivityManagerNativeWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/lockscreen/framework/wrapper/ActivityManagerNativeWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/ActivityManagerNativeWrapper;->mActivityManagerNative:Landroid/app/IActivityManager;

    .line 22
    return-void
.end method

.method public static isSystemReady()Z
    .locals 1

    .prologue
    .line 79
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public closeSystemDialogs(Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 69
    iget-object v1, p0, Lcom/htc/lockscreen/framework/wrapper/ActivityManagerNativeWrapper;->mActivityManagerNative:Landroid/app/IActivityManager;

    if-eqz v1, :cond_0

    .line 71
    :try_start_0
    iget-object v1, p0, Lcom/htc/lockscreen/framework/wrapper/ActivityManagerNativeWrapper;->mActivityManagerNative:Landroid/app/IActivityManager;

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public dismissKeyguardOnNextActivity()V
    .locals 2

    .prologue
    .line 43
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/IWindowManager;->dismissKeyguard()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getCurrentUserId()I
    .locals 3

    .prologue
    .line 84
    const/4 v1, 0x0

    .line 85
    .local v1, "id":I
    iget-object v2, p0, Lcom/htc/lockscreen/framework/wrapper/ActivityManagerNativeWrapper;->mActivityManagerNative:Landroid/app/IActivityManager;

    if-eqz v2, :cond_0

    .line 87
    :try_start_0
    iget-object v2, p0, Lcom/htc/lockscreen/framework/wrapper/ActivityManagerNativeWrapper;->mActivityManagerNative:Landroid/app/IActivityManager;

    invoke-interface {v2}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v2

    iget v1, v2, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :cond_0
    :goto_0
    return v1

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public keyguardGoingAway(ZZ)V
    .locals 2
    .param p1, "disableWindowAnimation"    # Z
    .param p2, "isGoingToNotificationShade"    # Z

    .prologue
    .line 99
    iget-object v1, p0, Lcom/htc/lockscreen/framework/wrapper/ActivityManagerNativeWrapper;->mActivityManagerNative:Landroid/app/IActivityManager;

    if-eqz v1, :cond_0

    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/htc/lockscreen/framework/wrapper/ActivityManagerNativeWrapper;->mActivityManagerNative:Landroid/app/IActivityManager;

    invoke-interface {v1, p1, p2}, Landroid/app/IActivityManager;->keyguardGoingAway(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public keyguardWaitingForActivityDrawn()V
    .locals 2

    .prologue
    .line 50
    iget-object v1, p0, Lcom/htc/lockscreen/framework/wrapper/ActivityManagerNativeWrapper;->mActivityManagerNative:Landroid/app/IActivityManager;

    if-eqz v1, :cond_0

    .line 52
    :try_start_0
    iget-object v1, p0, Lcom/htc/lockscreen/framework/wrapper/ActivityManagerNativeWrapper;->mActivityManagerNative:Landroid/app/IActivityManager;

    invoke-interface {v1}, Landroid/app/IActivityManager;->keyguardWaitingForActivityDrawn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public registerUserSwitchObserver(Lcom/htc/lockscreen/framework/wrapper/UserSwitchObserverWrapper;)V
    .locals 1
    .param p1, "Observer"    # Lcom/htc/lockscreen/framework/wrapper/UserSwitchObserverWrapper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/ActivityManagerNativeWrapper;->mActivityManagerNative:Landroid/app/IActivityManager;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/ActivityManagerNativeWrapper;->mActivityManagerNative:Landroid/app/IActivityManager;

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V

    .line 33
    :cond_0
    return-void
.end method

.method public setLockScreenShown(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 59
    iget-object v1, p0, Lcom/htc/lockscreen/framework/wrapper/ActivityManagerNativeWrapper;->mActivityManagerNative:Landroid/app/IActivityManager;

    if-eqz v1, :cond_0

    .line 61
    :try_start_0
    iget-object v1, p0, Lcom/htc/lockscreen/framework/wrapper/ActivityManagerNativeWrapper;->mActivityManagerNative:Landroid/app/IActivityManager;

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->setLockScreenShown(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public unregisterUserSwitchObserver(Lcom/htc/lockscreen/framework/wrapper/UserSwitchObserverWrapper;)V
    .locals 1
    .param p1, "Observer"    # Lcom/htc/lockscreen/framework/wrapper/UserSwitchObserverWrapper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/ActivityManagerNativeWrapper;->mActivityManagerNative:Landroid/app/IActivityManager;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/ActivityManagerNativeWrapper;->mActivityManagerNative:Landroid/app/IActivityManager;

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V

    .line 39
    :cond_0
    return-void
.end method
