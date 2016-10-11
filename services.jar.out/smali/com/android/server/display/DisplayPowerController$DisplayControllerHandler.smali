.class final Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;
.super Landroid/os/Handler;
.source "DisplayPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayControllerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayPowerController;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1337
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 1338
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1339
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, -0x1

    .line 1343
    # getter for: Lcom/android/server/display/DisplayPowerController;->DEBUG_ON:Z
    invoke-static {}, Lcom/android/server/display/DisplayPowerController;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1344
    const-string v0, "XAN-DPC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1392
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 1348
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    # invokes: Lcom/android/server/display/DisplayPowerController;->updatePowerState()V
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$600(Lcom/android/server/display/DisplayPowerController;)V

    goto :goto_0

    .line 1352
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    # invokes: Lcom/android/server/display/DisplayPowerController;->debounceProximitySensor()V
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$700(Lcom/android/server/display/DisplayPowerController;)V

    goto :goto_0

    .line 1356
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$800(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    .line 1357
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    # invokes: Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$900(Lcom/android/server/display/DisplayPowerController;)V

    .line 1358
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    # invokes: Lcom/android/server/display/DisplayPowerController;->updatePowerState()V
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$600(Lcom/android/server/display/DisplayPowerController;)V

    goto :goto_0

    .line 1365
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$1000(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/RampAnimator;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1367
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController;->setBurstModeLevel()V

    .line 1369
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-gtz v0, :cond_2

    .line 1370
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$1000(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/RampAnimator;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mButtonValue:I
    invoke-static {v2}, Lcom/android/server/display/DisplayPowerController;->access$1100(Lcom/android/server/display/DisplayPowerController;)I

    move-result v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/display/RampAnimator;->animateTo(III)Z

    goto :goto_0

    .line 1372
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$1000(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/RampAnimator;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/16 v2, 0xc8

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mButtonValue:I
    invoke-static {v3}, Lcom/android/server/display/DisplayPowerController;->access$1100(Lcom/android/server/display/DisplayPowerController;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/display/RampAnimator;->animateTo(III)Z

    goto :goto_0

    .line 1379
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$1000(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/RampAnimator;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1381
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController;->setBurstModeLevel()V

    .line 1383
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-gtz v0, :cond_3

    .line 1384
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$1000(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/RampAnimator;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mButtonValue:I
    invoke-static {v2}, Lcom/android/server/display/DisplayPowerController;->access$1100(Lcom/android/server/display/DisplayPowerController;)I

    move-result v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/display/RampAnimator;->animateTo(III)Z

    goto :goto_0

    .line 1386
    :cond_3
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$1000(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/RampAnimator;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/16 v2, 0x28

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mButtonValue:I
    invoke-static {v3}, Lcom/android/server/display/DisplayPowerController;->access$1100(Lcom/android/server/display/DisplayPowerController;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/display/RampAnimator;->animateTo(III)Z

    goto/16 :goto_0

    .line 1346
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
