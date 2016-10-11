.class Lcom/android/internal/telephony/uicc/UiccCard$2;
.super Landroid/os/Handler;
.source "UiccCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/UiccCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/UiccCard;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/UiccCard;)V
    .locals 0

    .prologue
    .line 471
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    .line 475
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->mDestroyed:Z
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/UiccCard;->access$300(Lcom/android/internal/telephony/uicc/UiccCard;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 476
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received message "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] while being destroyed. Ignoring."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/internal/telephony/uicc/UiccCard;->loge(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/uicc/UiccCard;->access$400(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V

    .line 533
    :goto_0
    return-void

    .line 482
    :cond_0
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 531
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown Event "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/internal/telephony/uicc/UiccCard;->loge(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/uicc/UiccCard;->access$400(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V

    goto :goto_0

    .line 484
    :sswitch_0
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # invokes: Lcom/android/internal/telephony/uicc/UiccCard;->onIccSwap(Z)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/uicc/UiccCard;->access$500(Lcom/android/internal/telephony/uicc/UiccCard;Z)V

    goto :goto_0

    .line 487
    :sswitch_1
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    const/4 v5, 0x1

    # invokes: Lcom/android/internal/telephony/uicc/UiccCard;->onIccSwap(Z)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/uicc/UiccCard;->access$500(Lcom/android/internal/telephony/uicc/UiccCard;Z)V

    goto :goto_0

    .line 494
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 495
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_1

    .line 496
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/internal/telephony/uicc/UiccCard;->loglocal(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/uicc/UiccCard;->access$600(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V

    .line 497
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in SIM access with exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/uicc/UiccCard;->access$100(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V

    .line 499
    :cond_1
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v4, v5, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 500
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 503
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_3
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # invokes: Lcom/android/internal/telephony/uicc/UiccCard;->onCarrierPriviligesLoadedMessage()V
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/UiccCard;->access$700(Lcom/android/internal/telephony/uicc/UiccCard;)V

    goto/16 :goto_0

    .line 506
    :sswitch_4
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/UiccCard;->access$000(Lcom/android/internal/telephony/uicc/UiccCard;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 507
    :try_start_0
    sget-object v4, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v6}, Lcom/android/internal/telephony/uicc/UiccCard;->access$800(Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v6

    if-ne v4, v6, :cond_4

    .line 508
    const-string v4, "sys.shutdown.hibernate.mode"

    const/4 v6, 0x0

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 510
    .local v1, "hibernate":Z
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/UiccCard;->access$900(Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v4

    if-eqz v4, :cond_2

    if-eqz v1, :cond_2

    .line 511
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.htc.intent.action.clearSIMUI"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 512
    .local v3, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/UiccCard;->access$900(Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 515
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_2
    if-eqz v1, :cond_4

    .line 517
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    sget-object v6, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_NOT_INITIALIZED:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    # setter for: Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    invoke-static {v4, v6}, Lcom/android/internal/telephony/uicc/UiccCard;->access$1002(Lcom/android/internal/telephony/uicc/UiccCard;Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;)Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 520
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/UiccCard;->access$1100(Lcom/android/internal/telephony/uicc/UiccCard;)[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v4

    array-length v4, v4

    if-ge v2, v4, :cond_4

    .line 521
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/UiccCard;->access$1100(Lcom/android/internal/telephony/uicc/UiccCard;)[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v4

    aget-object v4, v4, v2

    if-eqz v4, :cond_3

    .line 522
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/UiccCard;->access$1100(Lcom/android/internal/telephony/uicc/UiccCard;)[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->resetLastAppState()V

    .line 520
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 528
    .end local v1    # "hibernate":Z
    .end local v2    # "i":I
    :cond_4
    monitor-exit v5

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 482
    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_0
        0xe -> :sswitch_1
        0xf -> :sswitch_2
        0x10 -> :sswitch_2
        0x11 -> :sswitch_2
        0x12 -> :sswitch_2
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x64 -> :sswitch_4
    .end sparse-switch
.end method
