.class final Landroid/view/ViewRootImpl$ImeInputStage;
.super Landroid/view/ViewRootImpl$AsyncInputStage;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ImeInputStage"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V
    .locals 0
    .param p2, "next"    # Landroid/view/ViewRootImpl$InputStage;
    .param p3, "traceCounter"    # Ljava/lang/String;

    .prologue
    .line 4121
    iput-object p1, p0, Landroid/view/ViewRootImpl$ImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    .line 4122
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewRootImpl$AsyncInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V

    .line 4123
    return-void
.end method


# virtual methods
.method public onFinishedInputEvent(Ljava/lang/Object;Z)V
    .locals 4
    .param p1, "token"    # Ljava/lang/Object;
    .param p2, "handled"    # Z

    .prologue
    .line 4155
    move-object v0, p1

    check-cast v0, Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 4157
    .local v0, "q":Landroid/view/ViewRootImpl$QueuedInputEvent;
    # getter for: Landroid/view/ViewRootImpl;->DEBUG_IMF:Z
    invoke-static {}, Landroid/view/ViewRootImpl;->access$1300()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4158
    const-string v2, "ViewRootImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IME handled="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p2, :cond_1

    const-string v1, "T"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4161
    :cond_0
    if-eqz p2, :cond_2

    .line 4162
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewRootImpl$ImeInputStage;->finish(Landroid/view/ViewRootImpl$QueuedInputEvent;Z)V

    .line 4166
    :goto_1
    return-void

    .line 4158
    :cond_1
    const-string v1, "F"

    goto :goto_0

    .line 4165
    :cond_2
    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl$ImeInputStage;->forward(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    goto :goto_1
.end method

.method protected onProcess(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 8
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 4127
    iget-object v5, p0, Landroid/view/ViewRootImpl$ImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v5, v5, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/view/ViewRootImpl$ImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    # invokes: Landroid/view/ViewRootImpl;->isInLocalFocusMode()Z
    invoke-static {v5}, Landroid/view/ViewRootImpl;->access$900(Landroid/view/ViewRootImpl;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 4128
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 4129
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_4

    .line 4130
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    .line 4132
    .local v0, "event":Landroid/view/InputEvent;
    # getter for: Landroid/view/ViewRootImpl;->DEBUG_IMF:Z
    invoke-static {}, Landroid/view/ViewRootImpl;->access$1300()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4133
    const-string v5, "ViewRootImpl"

    const-string v6, "IME send"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4135
    :cond_0
    iget-object v5, p0, Landroid/view/ViewRootImpl$ImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0, p1, p0, v5}, Landroid/view/inputmethod/InputMethodManager;->dispatchInputEvent(Landroid/view/InputEvent;Ljava/lang/Object;Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;Landroid/os/Handler;)I

    move-result v2

    .line 4136
    .local v2, "result":I
    # getter for: Landroid/view/ViewRootImpl;->DEBUG_IMF:Z
    invoke-static {}, Landroid/view/ViewRootImpl;->access$1300()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4137
    const-string v5, "ViewRootImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IME dispatch="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4140
    :cond_1
    if-ne v2, v3, :cond_2

    .line 4150
    .end local v0    # "event":Landroid/view/InputEvent;
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v2    # "result":I
    :goto_0
    return v3

    .line 4142
    .restart local v0    # "event":Landroid/view/InputEvent;
    .restart local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .restart local v2    # "result":I
    :cond_2
    if-nez v2, :cond_3

    move v3, v4

    .line 4144
    goto :goto_0

    .line 4146
    :cond_3
    const/4 v3, 0x3

    goto :goto_0

    .end local v0    # "event":Landroid/view/InputEvent;
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v2    # "result":I
    :cond_4
    move v3, v4

    .line 4150
    goto :goto_0
.end method
