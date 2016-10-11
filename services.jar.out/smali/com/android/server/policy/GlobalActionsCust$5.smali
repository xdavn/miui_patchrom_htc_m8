.class Lcom/android/server/policy/GlobalActionsCust$5;
.super Ljava/lang/Object;
.source "GlobalActionsCust.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActionsCust;->adjustHtcGlobalActionsDialog(Landroid/content/Context;Landroid/app/Dialog;Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$MyAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActionsCust;

.field final synthetic val$adapter:Lcom/android/server/policy/GlobalActions$MyAdapter;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActionsCust;Lcom/android/server/policy/GlobalActions$MyAdapter;)V
    .locals 0

    .prologue
    .line 743
    iput-object p1, p0, Lcom/android/server/policy/GlobalActionsCust$5;->this$0:Lcom/android/server/policy/GlobalActionsCust;

    iput-object p2, p0, Lcom/android/server/policy/GlobalActionsCust$5;->val$adapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 747
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/server/policy/GlobalActionsCust$5;->val$adapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v1, p3}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v0

    .line 748
    .local v0, "action":Lcom/android/server/policy/GlobalActions$Action;
    instance-of v1, v0, Lcom/android/server/policy/GlobalActionsCust$HtcSinglePressAction;

    if-eqz v1, :cond_0

    .line 749
    check-cast v0, Lcom/android/server/policy/GlobalActionsCust$HtcSinglePressAction;

    .end local v0    # "action":Lcom/android/server/policy/GlobalActions$Action;
    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActionsCust$HtcSinglePressAction;->onLongPress()Z

    move-result v1

    .line 751
    :goto_0
    return v1

    .restart local v0    # "action":Lcom/android/server/policy/GlobalActions$Action;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
