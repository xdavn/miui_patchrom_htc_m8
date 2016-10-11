.class Lcom/android/server/policy/GlobalActionsCust$2$1;
.super Ljava/lang/Object;
.source "GlobalActionsCust.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActionsCust$2;->onPress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/GlobalActionsCust$2;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActionsCust$2;)V
    .locals 0

    .prologue
    .line 553
    iput-object p1, p0, Lcom/android/server/policy/GlobalActionsCust$2$1;->this$1:Lcom/android/server/policy/GlobalActionsCust$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 555
    iget-object v0, p0, Lcom/android/server/policy/GlobalActionsCust$2$1;->this$1:Lcom/android/server/policy/GlobalActionsCust$2;

    iget-object v0, v0, Lcom/android/server/policy/GlobalActionsCust$2;->val$wfuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->shutdown(Z)V

    .line 556
    return-void
.end method
