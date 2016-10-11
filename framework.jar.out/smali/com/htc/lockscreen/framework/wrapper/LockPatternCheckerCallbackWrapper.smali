.class public Lcom/htc/lockscreen/framework/wrapper/LockPatternCheckerCallbackWrapper;
.super Ljava/lang/Object;
.source "LockPatternCheckerCallbackWrapper.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/lockscreen/framework/wrapper/LockPatternCheckerCallbackWrapper$LockPatternCheckerCallbackInvokeHandler;
    }
.end annotation


# instance fields
.field private mHandler:Lcom/htc/lockscreen/framework/wrapper/LockPatternCheckerCallbackWrapper$LockPatternCheckerCallbackInvokeHandler;


# direct methods
.method public constructor <init>(Lcom/htc/lockscreen/framework/wrapper/LockPatternCheckerCallbackWrapper$LockPatternCheckerCallbackInvokeHandler;)V
    .locals 0
    .param p1, "handler"    # Lcom/htc/lockscreen/framework/wrapper/LockPatternCheckerCallbackWrapper$LockPatternCheckerCallbackInvokeHandler;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/htc/lockscreen/framework/wrapper/LockPatternCheckerCallbackWrapper;->mHandler:Lcom/htc/lockscreen/framework/wrapper/LockPatternCheckerCallbackWrapper$LockPatternCheckerCallbackInvokeHandler;

    .line 18
    return-void
.end method


# virtual methods
.method public onChecked(ZI)V
    .locals 1
    .param p1, "matched"    # Z
    .param p2, "throttleTimeoutMs"    # I

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/LockPatternCheckerCallbackWrapper;->mHandler:Lcom/htc/lockscreen/framework/wrapper/LockPatternCheckerCallbackWrapper$LockPatternCheckerCallbackInvokeHandler;

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/LockPatternCheckerCallbackWrapper;->mHandler:Lcom/htc/lockscreen/framework/wrapper/LockPatternCheckerCallbackWrapper$LockPatternCheckerCallbackInvokeHandler;

    invoke-interface {v0, p1, p2}, Lcom/htc/lockscreen/framework/wrapper/LockPatternCheckerCallbackWrapper$LockPatternCheckerCallbackInvokeHandler;->OnCheckCallback(ZI)V

    .line 24
    :cond_0
    return-void
.end method
