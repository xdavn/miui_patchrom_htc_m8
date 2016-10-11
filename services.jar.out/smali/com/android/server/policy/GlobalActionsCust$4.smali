.class Lcom/android/server/policy/GlobalActionsCust$4;
.super Ljava/lang/Object;
.source "GlobalActionsCust.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$globalActions:Lcom/android/server/policy/GlobalActions;

.field final synthetic val$htcDialog:Lcom/android/server/policy/GlobalActionsCust$HtcGlobalActionsDialog;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActionsCust;Lcom/android/server/policy/GlobalActions;Landroid/app/Dialog;Lcom/android/server/policy/GlobalActionsCust$HtcGlobalActionsDialog;)V
    .locals 0

    .prologue
    .line 732
    iput-object p1, p0, Lcom/android/server/policy/GlobalActionsCust$4;->this$0:Lcom/android/server/policy/GlobalActionsCust;

    iput-object p2, p0, Lcom/android/server/policy/GlobalActionsCust$4;->val$globalActions:Lcom/android/server/policy/GlobalActions;

    iput-object p3, p0, Lcom/android/server/policy/GlobalActionsCust$4;->val$dialog:Landroid/app/Dialog;

    iput-object p4, p0, Lcom/android/server/policy/GlobalActionsCust$4;->val$htcDialog:Lcom/android/server/policy/GlobalActionsCust$HtcGlobalActionsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 734
    iget-object v0, p0, Lcom/android/server/policy/GlobalActionsCust$4;->val$globalActions:Lcom/android/server/policy/GlobalActions;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActionsCust$4;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0, v1, p3}, Lcom/android/server/policy/GlobalActions;->onClick(Landroid/content/DialogInterface;I)V

    .line 735
    iget-object v0, p0, Lcom/android/server/policy/GlobalActionsCust$4;->val$htcDialog:Lcom/android/server/policy/GlobalActionsCust$HtcGlobalActionsDialog;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActionsCust$HtcGlobalActionsDialog;->dismiss()V

    .line 736
    return-void
.end method
