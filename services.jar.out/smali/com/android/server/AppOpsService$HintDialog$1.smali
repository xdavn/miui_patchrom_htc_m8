.class Lcom/android/server/AppOpsService$HintDialog$1;
.super Ljava/lang/Object;
.source "AppOpsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/AppOpsService$HintDialog;-><init>(Lcom/android/server/AppOpsService;Lcom/android/server/AppOpsService$HintDialogData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/AppOpsService$HintDialog;

.field final synthetic val$checkBox:Landroid/widget/CheckBox;

.field final synthetic val$this$0:Lcom/android/server/AppOpsService;


# direct methods
.method constructor <init>(Lcom/android/server/AppOpsService$HintDialog;Lcom/android/server/AppOpsService;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 2096
    iput-object p1, p0, Lcom/android/server/AppOpsService$HintDialog$1;->this$1:Lcom/android/server/AppOpsService$HintDialog;

    iput-object p2, p0, Lcom/android/server/AppOpsService$HintDialog$1;->val$this$0:Lcom/android/server/AppOpsService;

    iput-object p3, p0, Lcom/android/server/AppOpsService$HintDialog$1;->val$checkBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2099
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2100
    .local v0, "r":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/server/AppOpsService$HintDialog$1;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->getHitRect(Landroid/graphics/Rect;)V

    .line 2101
    iget-object v1, p0, Lcom/android/server/AppOpsService$HintDialog$1;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    new-instance v2, Landroid/view/TouchDelegate;

    iget-object v3, p0, Lcom/android/server/AppOpsService$HintDialog$1;->val$checkBox:Landroid/widget/CheckBox;

    invoke-direct {v2, v0, v3}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 2103
    return-void
.end method
