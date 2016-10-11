.class Lcom/android/server/policy/GlobalActionsCust$2;
.super Lcom/android/server/policy/GlobalActionsCust$HtcSinglePressAction;
.source "GlobalActionsCust.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActionsCust;->getPowerAction(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)Lcom/android/server/policy/GlobalActions$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActionsCust;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$wfuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActionsCust;IIILandroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 0
    .param p2, "x0"    # I
    .param p3, "x1"    # I
    .param p4, "x2"    # I

    .prologue
    .line 542
    iput-object p1, p0, Lcom/android/server/policy/GlobalActionsCust$2;->this$0:Lcom/android/server/policy/GlobalActionsCust;

    iput-object p5, p0, Lcom/android/server/policy/GlobalActionsCust$2;->val$context:Landroid/content/Context;

    iput-object p6, p0, Lcom/android/server/policy/GlobalActionsCust$2;->val$wfuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/policy/GlobalActionsCust$HtcSinglePressAction;-><init>(III)V

    return-void
.end method


# virtual methods
.method public onLongPress()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 565
    iget-object v0, p0, Lcom/android/server/policy/GlobalActionsCust$2;->val$wfuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->rebootSafeMode(Z)V

    .line 566
    return v1
.end method

.method public onPress()V
    .locals 5

    .prologue
    .line 545
    # getter for: Lcom/android/server/policy/GlobalActionsCust;->mIsChinaSense:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActionsCust;->access$300()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/GlobalActionsCust$2;->val$context:Landroid/content/Context;

    # invokes: Lcom/android/server/policy/GlobalActionsCust;->formatDiffTime(Landroid/content/Context;)Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/policy/GlobalActionsCust;->access$400(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 546
    .local v1, "message":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 547
    iget-object v2, p0, Lcom/android/server/policy/GlobalActionsCust$2;->val$wfuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->shutdown(Z)V

    .line 562
    :goto_1
    return-void

    .line 545
    .end local v1    # "message":Ljava/lang/String;
    :cond_0
    const-string v1, ""

    goto :goto_0

    .line 549
    .restart local v1    # "message":Ljava/lang/String;
    :cond_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/server/policy/GlobalActionsCust$2;->val$context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x10400f7

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040009

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040013

    new-instance v4, Lcom/android/server/policy/GlobalActionsCust$2$1;

    invoke-direct {v4, p0}, Lcom/android/server/policy/GlobalActionsCust$2$1;-><init>(Lcom/android/server/policy/GlobalActionsCust$2;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 559
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 560
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_1
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 574
    const/4 v0, 0x1

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 570
    const/4 v0, 0x1

    return v0
.end method
