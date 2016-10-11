.class public Lcom/htc/lockscreen/framework/wrapper/IRotationWatcherWrapper;
.super Landroid/view/IRotationWatcher$Stub;
.source "IRotationWatcherWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/lockscreen/framework/wrapper/IRotationWatcherWrapper$HtcIRotationWatcherInvokeHandler;
    }
.end annotation


# instance fields
.field private iRwIH:Lcom/htc/lockscreen/framework/wrapper/IRotationWatcherWrapper$HtcIRotationWatcherInvokeHandler;


# direct methods
.method public constructor <init>(Lcom/htc/lockscreen/framework/wrapper/IRotationWatcherWrapper$HtcIRotationWatcherInvokeHandler;)V
    .locals 0
    .param p1, "rotationWatcherIH"    # Lcom/htc/lockscreen/framework/wrapper/IRotationWatcherWrapper$HtcIRotationWatcherInvokeHandler;

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/view/IRotationWatcher$Stub;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/htc/lockscreen/framework/wrapper/IRotationWatcherWrapper;->iRwIH:Lcom/htc/lockscreen/framework/wrapper/IRotationWatcherWrapper$HtcIRotationWatcherInvokeHandler;

    .line 27
    return-void
.end method


# virtual methods
.method public onRotationChanged(I)V
    .locals 1
    .param p1, "rotation"    # I

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/IRotationWatcherWrapper;->iRwIH:Lcom/htc/lockscreen/framework/wrapper/IRotationWatcherWrapper$HtcIRotationWatcherInvokeHandler;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/IRotationWatcherWrapper;->iRwIH:Lcom/htc/lockscreen/framework/wrapper/IRotationWatcherWrapper$HtcIRotationWatcherInvokeHandler;

    invoke-interface {v0, p1}, Lcom/htc/lockscreen/framework/wrapper/IRotationWatcherWrapper$HtcIRotationWatcherInvokeHandler;->onRotationChanged(I)V

    .line 38
    :cond_0
    return-void
.end method
