.class public Lcom/htc/lockscreen/framework/wrapper/KeyEventWrapper;
.super Ljava/lang/Object;
.source "KeyEventWrapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isConfirmKey(Landroid/view/KeyEvent;I)Z
    .locals 1
    .param p0, "event"    # Landroid/view/KeyEvent;
    .param p1, "keyCode"    # I

    .prologue
    .line 9
    const/4 v0, 0x0

    .line 10
    .local v0, "isConfirmKey":Z
    if-eqz p0, :cond_0

    .line 11
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v0

    .line 13
    :cond_0
    return v0
.end method
