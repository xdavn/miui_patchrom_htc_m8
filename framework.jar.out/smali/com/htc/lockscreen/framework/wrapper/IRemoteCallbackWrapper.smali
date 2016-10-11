.class public Lcom/htc/lockscreen/framework/wrapper/IRemoteCallbackWrapper;
.super Ljava/lang/Object;
.source "IRemoteCallbackWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/htc/lockscreen/framework/wrapper/IRemoteCallbackWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/lockscreen/framework/wrapper/IRemoteCallbackWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendResult(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 2
    .param p0, "callback"    # Ljava/lang/Object;
    .param p1, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 22
    if-eqz p0, :cond_0

    instance-of v0, p0, Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_0

    .line 23
    check-cast p0, Landroid/os/IRemoteCallback;

    .end local p0    # "callback":Ljava/lang/Object;
    invoke-interface {p0, p1}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 27
    :goto_0
    return-void

    .line 25
    .restart local p0    # "callback":Ljava/lang/Object;
    :cond_0
    sget-object v0, Lcom/htc/lockscreen/framework/wrapper/IRemoteCallbackWrapper;->TAG:Ljava/lang/String;

    const-string v1, "sendResult fail"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
