.class Lcom/android/server/policy/GlobalActionsCust$HtcGlobalActionsDialog$1;
.super Ljava/lang/Object;
.source "GlobalActionsCust.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActionsCust$HtcGlobalActionsDialog;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActionsCust$HtcGlobalActionsDialog;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActionsCust$HtcGlobalActionsDialog;)V
    .locals 0

    .prologue
    .line 636
    iput-object p1, p0, Lcom/android/server/policy/GlobalActionsCust$HtcGlobalActionsDialog$1;->this$0:Lcom/android/server/policy/GlobalActionsCust$HtcGlobalActionsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Lcom/android/server/policy/GlobalActionsCust$HtcGlobalActionsDialog$1;->this$0:Lcom/android/server/policy/GlobalActionsCust$HtcGlobalActionsDialog;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActionsCust$HtcGlobalActionsDialog;->dismiss()V

    .line 640
    return-void
.end method
