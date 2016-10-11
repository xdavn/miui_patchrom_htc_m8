.class Lcom/android/server/display/HtcAutoBrightnessCtrl$2;
.super Landroid/content/BroadcastReceiver;
.source "HtcAutoBrightnessCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/HtcAutoBrightnessCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;


# direct methods
.method constructor <init>(Lcom/android/server/display/HtcAutoBrightnessCtrl;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$2;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 270
    if-nez p2, :cond_1

    .line 271
    const-string v7, "HABCtrl"

    const-string v8, "mBrighterOnlyReceiver intent is null"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 278
    const-string v7, "HABCtrl"

    const-string v8, "onReceive, action is null"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 282
    :cond_2
    iget-object v7, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$2;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->DEBUG_ON:Z
    invoke-static {v7}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$000(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 283
    const-string v7, "HABCtrl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onReceive, action = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_3
    const-string v7, "com.htc.intent.action.CAMERA_BRIGHTER_ONLY_ON"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 288
    iget-object v7, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$2;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$300(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$2;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->mBrighterOnlyOffCallbacks:Lcom/android/server/display/HtcAutoBrightnessCtrl$BrighterOnlyOffTimeoutTask;
    invoke-static {v8}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$200(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Lcom/android/server/display/HtcAutoBrightnessCtrl$BrighterOnlyOffTimeoutTask;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 290
    iget-object v7, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$2;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z
    invoke-static {v7}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$400(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 291
    iget-object v7, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$2;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$300(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$2;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->mBrighterOnlyTimeoutTask:Ljava/lang/Runnable;
    invoke-static {v8}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$500(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Ljava/lang/Runnable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 292
    iget-object v7, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$2;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$300(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$2;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->mBrighterOnlyTimeoutTask:Ljava/lang/Runnable;
    invoke-static {v8}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$500(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Ljava/lang/Runnable;

    move-result-object v8

    const-wide/32 v10, 0xea60

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 294
    iget-object v7, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$2;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->DEBUG_ON:Z
    invoke-static {v7}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$000(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 295
    const-string v7, "HABCtrl"

    const-string v8, "onReceive: ON, Skip"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 300
    :cond_4
    iget-object v7, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$2;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    const/4 v8, 0x1

    # setter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z
    invoke-static {v7, v8}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$402(Lcom/android/server/display/HtcAutoBrightnessCtrl;Z)Z

    .line 301
    iget-object v7, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$2;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    const-string v8, "entering.screen.brightness"

    const/16 v9, 0x7f

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    # setter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->mEnteringLcdValue:I
    invoke-static {v7, v8}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$602(Lcom/android/server/display/HtcAutoBrightnessCtrl;I)I

    .line 302
    const-string v7, "backlight.delay"

    const/16 v8, 0x14

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 303
    .local v3, "enteringDelay":I
    iget-object v7, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$2;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # setter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->mCameraEnteringDelay:I
    invoke-static {v7, v3}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$702(Lcom/android/server/display/HtcAutoBrightnessCtrl;I)I

    .line 305
    iget-object v7, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$2;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->mCallbacks:Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;
    invoke-static {v7}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$800(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;->getCurrentBrightness()I

    move-result v1

    .line 306
    .local v1, "curLcdValue":I
    iget-object v7, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$2;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->mCallbacks:Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;
    invoke-static {v7}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$800(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;->getTargetBrightness()I

    move-result v2

    .line 308
    .local v2, "endLcdValue":I
    iget-object v7, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$2;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->mEnteringLcdValue:I
    invoke-static {v7}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$600(Lcom/android/server/display/HtcAutoBrightnessCtrl;)I

    move-result v5

    .line 309
    .local v5, "newLcdValue":I
    if-le v5, v1, :cond_7

    .line 310
    :goto_1
    if-le v5, v2, :cond_8

    .line 312
    :goto_2
    iget-object v7, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$2;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->DEBUG_ON:Z
    invoke-static {v7}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$000(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 313
    const-string v7, "HABCtrl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onReceive: ON ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$2;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z
    invoke-static {v9}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$400(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$2;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->mScreenState:Z
    invoke-static {v9}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$900(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$2;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->mEnteringLcdValue:I
    invoke-static {v9}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$600(Lcom/android/server/display/HtcAutoBrightnessCtrl;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_5
    iget-object v7, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$2;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # invokes: Lcom/android/server/display/HtcAutoBrightnessCtrl;->getAutoBrightnessEnabled()Z
    invoke-static {v7}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$1000(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 325
    iget-object v7, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$2;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->mCallbacks:Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;
    invoke-static {v7}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$800(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;->setScreenBrightnessMode(I)V

    .line 328
    :cond_6
    iget-object v7, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$2;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$300(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$2;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->mBrighterOnlyTimeoutTask:Ljava/lang/Runnable;
    invoke-static {v8}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$500(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Ljava/lang/Runnable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 329
    iget-object v7, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$2;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$300(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$2;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->mBrighterOnlyTimeoutTask:Ljava/lang/Runnable;
    invoke-static {v8}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$500(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Ljava/lang/Runnable;

    move-result-object v8

    const-wide/32 v10, 0xea60

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 333
    iget-object v7, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$2;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->mScreenState:Z
    invoke-static {v7}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$900(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 334
    iget-object v7, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$2;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    const/4 v8, 0x1

    # setter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->mCameraForceUpdateBrightness:Z
    invoke-static {v7, v8}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$1102(Lcom/android/server/display/HtcAutoBrightnessCtrl;Z)Z

    .line 335
    iget-object v7, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$2;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->DEBUG_ON:Z
    invoke-static {v7}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$000(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "HABCtrl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BRIGHTER_ONLY_ON, set CFUB: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$2;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->mCameraForceUpdateBrightness:Z
    invoke-static {v9}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$1100(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    move v5, v1

    .line 309
    goto/16 :goto_1

    :cond_8
    move v5, v2

    .line 310
    goto/16 :goto_2

    .line 339
    :cond_9
    iget-object v7, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$2;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # invokes: Lcom/android/server/display/HtcAutoBrightnessCtrl;->getBrighterOnlyLcdValue(I)I
    invoke-static {v7, v5}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$1200(Lcom/android/server/display/HtcAutoBrightnessCtrl;I)I

    move-result v6

    .line 341
    .local v6, "target":I
    iget-object v7, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$2;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # invokes: Lcom/android/server/display/HtcAutoBrightnessCtrl;->setBacklight(II)V
    invoke-static {v7, v6, v3}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$1300(Lcom/android/server/display/HtcAutoBrightnessCtrl;II)V

    goto/16 :goto_0

    .line 343
    .end local v1    # "curLcdValue":I
    .end local v2    # "endLcdValue":I
    .end local v3    # "enteringDelay":I
    .end local v5    # "newLcdValue":I
    .end local v6    # "target":I
    :cond_a
    const-string v7, "com.htc.intent.action.CAMERA_BRIGHTER_ONLY_OFF"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 346
    const-string v7, "backlight.delay"

    const/16 v8, 0x28

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 347
    .local v4, "leavingDelay":I
    iget-object v7, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$2;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    new-instance v8, Lcom/android/server/display/HtcAutoBrightnessCtrl$BrighterOnlyOffTimeoutTask;

    iget-object v9, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$2;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    invoke-direct {v8, v9, v4}, Lcom/android/server/display/HtcAutoBrightnessCtrl$BrighterOnlyOffTimeoutTask;-><init>(Lcom/android/server/display/HtcAutoBrightnessCtrl;I)V

    # setter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->mBrighterOnlyOffCallbacks:Lcom/android/server/display/HtcAutoBrightnessCtrl$BrighterOnlyOffTimeoutTask;
    invoke-static {v7, v8}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$202(Lcom/android/server/display/HtcAutoBrightnessCtrl;Lcom/android/server/display/HtcAutoBrightnessCtrl$BrighterOnlyOffTimeoutTask;)Lcom/android/server/display/HtcAutoBrightnessCtrl$BrighterOnlyOffTimeoutTask;

    .line 348
    iget-object v7, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$2;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$300(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$2;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->mBrighterOnlyOffCallbacks:Lcom/android/server/display/HtcAutoBrightnessCtrl$BrighterOnlyOffTimeoutTask;
    invoke-static {v8}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$200(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Lcom/android/server/display/HtcAutoBrightnessCtrl$BrighterOnlyOffTimeoutTask;

    move-result-object v8

    const-wide/16 v10, 0x1f40

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 349
    iget-object v7, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$2;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->DEBUG_ON:Z
    invoke-static {v7}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$000(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 350
    const-string v7, "HABCtrl"

    const-string v8, "BRIGHTER_ONLY_OFF delay 8000"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 370
    .end local v4    # "leavingDelay":I
    :cond_b
    const-string v7, "HABCtrl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unknown intent: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
