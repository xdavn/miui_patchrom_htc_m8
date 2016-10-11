.class public Lcom/htc/lockscreen/framework/wrapper/HandlerWrapper;
.super Ljava/lang/Object;
.source "HandlerWrapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)Landroid/os/Handler;
    .locals 1
    .param p0, "looper"    # Landroid/os/Looper;
    .param p1, "callback"    # Landroid/os/Handler$Callback;
    .param p2, "async"    # Z

    .prologue
    .line 12
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0, p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-object v0
.end method
