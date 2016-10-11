.class public Lcom/htc/lockscreen/framework/wrapper/UserSwitchObserverWrapper;
.super Landroid/app/IUserSwitchObserver$Stub;
.source "UserSwitchObserverWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/lockscreen/framework/wrapper/UserSwitchObserverWrapper$UserSwitchObserverIf;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private moberserver:Lcom/htc/lockscreen/framework/wrapper/UserSwitchObserverWrapper$UserSwitchObserverIf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/htc/lockscreen/framework/wrapper/UserSwitchObserverWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/lockscreen/framework/wrapper/UserSwitchObserverWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/htc/lockscreen/framework/wrapper/UserSwitchObserverWrapper$UserSwitchObserverIf;)V
    .locals 0
    .param p1, "observer"    # Lcom/htc/lockscreen/framework/wrapper/UserSwitchObserverWrapper$UserSwitchObserverIf;

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/IUserSwitchObserver$Stub;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/htc/lockscreen/framework/wrapper/UserSwitchObserverWrapper;->moberserver:Lcom/htc/lockscreen/framework/wrapper/UserSwitchObserverWrapper$UserSwitchObserverIf;

    .line 32
    return-void
.end method


# virtual methods
.method public onForegroundProfileSwitch(I)V
    .locals 1
    .param p1, "newProfileId"    # I

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/UserSwitchObserverWrapper;->moberserver:Lcom/htc/lockscreen/framework/wrapper/UserSwitchObserverWrapper$UserSwitchObserverIf;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/UserSwitchObserverWrapper;->moberserver:Lcom/htc/lockscreen/framework/wrapper/UserSwitchObserverWrapper$UserSwitchObserverIf;

    invoke-interface {v0, p1}, Lcom/htc/lockscreen/framework/wrapper/UserSwitchObserverWrapper$UserSwitchObserverIf;->onForegroundProfileSwitch(I)V

    .line 66
    :cond_0
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 1
    .param p1, "newUserId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/UserSwitchObserverWrapper;->moberserver:Lcom/htc/lockscreen/framework/wrapper/UserSwitchObserverWrapper$UserSwitchObserverIf;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/UserSwitchObserverWrapper;->moberserver:Lcom/htc/lockscreen/framework/wrapper/UserSwitchObserverWrapper$UserSwitchObserverIf;

    invoke-interface {v0, p1}, Lcom/htc/lockscreen/framework/wrapper/UserSwitchObserverWrapper$UserSwitchObserverIf;->onUserSwitchComplete(I)V

    .line 45
    :cond_0
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
    .line 56
    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/UserSwitchObserverWrapper;->moberserver:Lcom/htc/lockscreen/framework/wrapper/UserSwitchObserverWrapper$UserSwitchObserverIf;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/UserSwitchObserverWrapper;->moberserver:Lcom/htc/lockscreen/framework/wrapper/UserSwitchObserverWrapper$UserSwitchObserverIf;

    invoke-interface {v0, p1, p2}, Lcom/htc/lockscreen/framework/wrapper/UserSwitchObserverWrapper$UserSwitchObserverIf;->onUserSwitching(ILandroid/os/IRemoteCallback;)V

    .line 59
    :cond_0
    return-void
.end method
