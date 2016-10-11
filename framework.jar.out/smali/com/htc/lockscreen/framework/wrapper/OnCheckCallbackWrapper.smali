.class public Lcom/htc/lockscreen/framework/wrapper/OnCheckCallbackWrapper;
.super Ljava/lang/Object;
.source "OnCheckCallbackWrapper.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/lockscreen/framework/wrapper/OnCheckCallbackWrapper$OnCheckCallbackIf;
    }
.end annotation


# instance fields
.field private LOG_PREFIX:Ljava/lang/String;

.field private mCallback:Lcom/htc/lockscreen/framework/wrapper/OnCheckCallbackWrapper$OnCheckCallbackIf;


# direct methods
.method public constructor <init>(Lcom/htc/lockscreen/framework/wrapper/OnCheckCallbackWrapper$OnCheckCallbackIf;)V
    .locals 1
    .param p1, "callback"    # Lcom/htc/lockscreen/framework/wrapper/OnCheckCallbackWrapper$OnCheckCallbackIf;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, "OnCheckCallbackWrapper"

    iput-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/OnCheckCallbackWrapper;->LOG_PREFIX:Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/htc/lockscreen/framework/wrapper/OnCheckCallbackWrapper;->mCallback:Lcom/htc/lockscreen/framework/wrapper/OnCheckCallbackWrapper$OnCheckCallbackIf;

    .line 32
    return-void
.end method


# virtual methods
.method public onChecked(ZI)V
    .locals 1
    .param p1, "matched"    # Z
    .param p2, "timeoutMs"    # I

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/OnCheckCallbackWrapper;->mCallback:Lcom/htc/lockscreen/framework/wrapper/OnCheckCallbackWrapper$OnCheckCallbackIf;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/OnCheckCallbackWrapper;->mCallback:Lcom/htc/lockscreen/framework/wrapper/OnCheckCallbackWrapper$OnCheckCallbackIf;

    invoke-interface {v0, p1, p2}, Lcom/htc/lockscreen/framework/wrapper/OnCheckCallbackWrapper$OnCheckCallbackIf;->onChecked(ZI)V

    .line 42
    :cond_0
    return-void
.end method
