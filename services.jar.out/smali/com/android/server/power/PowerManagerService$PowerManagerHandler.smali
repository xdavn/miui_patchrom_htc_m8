.class final Lcom/android/server/power/PowerManagerService$PowerManagerHandler;
.super Landroid/os/Handler;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PowerManagerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 4126
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 4127
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 4128
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .line 4132
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 4159
    :cond_0
    :goto_0
    return-void

    .line 4134
    :sswitch_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->handleUserActivityTimeout()V
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$3600(Lcom/android/server/power/PowerManagerService;)V

    goto :goto_0

    .line 4137
    :sswitch_1
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->handleSandman()V
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$3700(Lcom/android/server/power/PowerManagerService;)V

    goto :goto_0

    .line 4140
    :sswitch_2
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->handleScreenBrightnessBoostTimeout()V
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$3800(Lcom/android/server/power/PowerManagerService;)V

    goto :goto_0

    .line 4144
    :sswitch_3
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/server/power/PowerManagerService;->sendClearScreenTimeoutTask(II)V
    invoke-static {v1, v2, v3}, Lcom/android/server/power/PowerManagerService;->access$3900(Lcom/android/server/power/PowerManagerService;II)V

    goto :goto_0

    .line 4149
    :sswitch_4
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v0, :cond_1

    .line 4151
    .local v0, "newDimAnimationCompleted":Z
    :goto_1
    const-string v1, "PMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG: UDAS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/server/power/PowerManagerService;->mDimAnimationCompleted:Z
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->access$2700()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4152
    # getter for: Lcom/android/server/power/PowerManagerService;->mDimAnimationCompleted:Z
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->access$2700()Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 4153
    # setter for: Lcom/android/server/power/PowerManagerService;->mDimAnimationCompleted:Z
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$2702(Z)Z

    .line 4154
    # invokes: Lcom/android/server/power/PowerManagerService;->nativeSetDimAnimationCompleted(Z)V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$4000(Z)V

    goto :goto_0

    .line 4149
    .end local v0    # "newDimAnimationCompleted":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 4132
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x8 -> :sswitch_3
        0xd -> :sswitch_4
    .end sparse-switch
.end method
