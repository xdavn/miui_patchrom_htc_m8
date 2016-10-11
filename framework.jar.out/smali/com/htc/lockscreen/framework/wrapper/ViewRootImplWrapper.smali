.class public Lcom/htc/lockscreen/framework/wrapper/ViewRootImplWrapper;
.super Ljava/lang/Object;
.source "ViewRootImplWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/htc/lockscreen/framework/wrapper/ViewRootImplWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/lockscreen/framework/wrapper/ViewRootImplWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dispatchKeyFromIme(Landroid/view/View;Landroid/view/KeyEvent;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "key"    # Landroid/view/KeyEvent;

    .prologue
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 19
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->dispatchKeyFromIme(Landroid/view/KeyEvent;)V

    .line 22
    :cond_0
    return-void
.end method
