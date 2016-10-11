.class public Lcom/htc/lockscreen/framework/wrapper/OnPatternListenerWrapper;
.super Ljava/lang/Object;
.source "OnPatternListenerWrapper.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternView$OnPatternListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/lockscreen/framework/wrapper/OnPatternListenerWrapper$OnPatternListenerIf;
    }
.end annotation


# instance fields
.field private LOG_PREFIX:Ljava/lang/String;

.field private mListener:Lcom/htc/lockscreen/framework/wrapper/OnPatternListenerWrapper$OnPatternListenerIf;


# direct methods
.method public constructor <init>(Lcom/htc/lockscreen/framework/wrapper/OnPatternListenerWrapper$OnPatternListenerIf;)V
    .locals 1
    .param p1, "listener"    # Lcom/htc/lockscreen/framework/wrapper/OnPatternListenerWrapper$OnPatternListenerIf;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, "OnPatternListenerWrapper"

    iput-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/OnPatternListenerWrapper;->LOG_PREFIX:Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lcom/htc/lockscreen/framework/wrapper/OnPatternListenerWrapper;->mListener:Lcom/htc/lockscreen/framework/wrapper/OnPatternListenerWrapper$OnPatternListenerIf;

    .line 34
    return-void
.end method


# virtual methods
.method public onPatternCellAdded(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/OnPatternListenerWrapper;->mListener:Lcom/htc/lockscreen/framework/wrapper/OnPatternListenerWrapper$OnPatternListenerIf;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/OnPatternListenerWrapper;->mListener:Lcom/htc/lockscreen/framework/wrapper/OnPatternListenerWrapper$OnPatternListenerIf;

    invoke-interface {v0, p1}, Lcom/htc/lockscreen/framework/wrapper/OnPatternListenerWrapper$OnPatternListenerIf;->onPatternCellAdded(Ljava/util/List;)V

    .line 64
    :cond_0
    return-void
.end method

.method public onPatternCleared()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/OnPatternListenerWrapper;->mListener:Lcom/htc/lockscreen/framework/wrapper/OnPatternListenerWrapper$OnPatternListenerIf;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/OnPatternListenerWrapper;->mListener:Lcom/htc/lockscreen/framework/wrapper/OnPatternListenerWrapper$OnPatternListenerIf;

    invoke-interface {v0}, Lcom/htc/lockscreen/framework/wrapper/OnPatternListenerWrapper$OnPatternListenerIf;->onPatternCleared()V

    .line 53
    :cond_0
    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/OnPatternListenerWrapper;->mListener:Lcom/htc/lockscreen/framework/wrapper/OnPatternListenerWrapper$OnPatternListenerIf;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/OnPatternListenerWrapper;->mListener:Lcom/htc/lockscreen/framework/wrapper/OnPatternListenerWrapper$OnPatternListenerIf;

    invoke-interface {v0, p1}, Lcom/htc/lockscreen/framework/wrapper/OnPatternListenerWrapper$OnPatternListenerIf;->onPatternDetected(Ljava/util/List;)V

    .line 75
    :cond_0
    return-void
.end method

.method public onPatternStart()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/OnPatternListenerWrapper;->mListener:Lcom/htc/lockscreen/framework/wrapper/OnPatternListenerWrapper$OnPatternListenerIf;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/OnPatternListenerWrapper;->mListener:Lcom/htc/lockscreen/framework/wrapper/OnPatternListenerWrapper$OnPatternListenerIf;

    invoke-interface {v0}, Lcom/htc/lockscreen/framework/wrapper/OnPatternListenerWrapper$OnPatternListenerIf;->onPatternStart()V

    .line 43
    :cond_0
    return-void
.end method
