.class Lcom/android/server/policy/GlobalActions$13;
.super Landroid/os/Handler;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;)V
    .locals 0

    .prologue
    .line 1215
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$13;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1217
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 1245
    :cond_0
    :goto_0
    return-void

    .line 1219
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$13;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->access$1800(Lcom/android/server/policy/GlobalActions;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1220
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$13;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->access$1800(Lcom/android/server/policy/GlobalActions;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1221
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$13;->this$0:Lcom/android/server/policy/GlobalActions;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/policy/GlobalActions;->mDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/android/server/policy/GlobalActions;->access$1802(Lcom/android/server/policy/GlobalActions;Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    .line 1225
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$13;->this$0:Lcom/android/server/policy/GlobalActions;

    # invokes: Lcom/android/server/policy/GlobalActions;->refreshSilentMode()V
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->access$1900(Lcom/android/server/policy/GlobalActions;)V

    .line 1226
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$13;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->access$700(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$MyAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1229
    :sswitch_2
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$13;->this$0:Lcom/android/server/policy/GlobalActions;

    # invokes: Lcom/android/server/policy/GlobalActions;->handleShow()V
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->access$2000(Lcom/android/server/policy/GlobalActions;)V

    goto :goto_0

    .line 1233
    :sswitch_3
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$13;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->access$700(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1234
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$13;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->access$700(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$MyAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1239
    :sswitch_4
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$13;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mIGlobalActionsCust:Lcom/android/server/policy/IGlobalActionsCust;
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->access$300(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/IGlobalActionsCust;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$13;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mIGlobalActionsCust:Lcom/android/server/policy/IGlobalActionsCust;
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->access$300(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/IGlobalActionsCust;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/android/server/policy/IGlobalActionsCust;->checkFlashlightMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1241
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$13;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->access$900(Lcom/android/server/policy/GlobalActions;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1217
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x182ad -> :sswitch_3
        0x182ae -> :sswitch_4
    .end sparse-switch
.end method
