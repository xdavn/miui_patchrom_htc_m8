.class Lcom/android/internal/telephony/uicc/UiccCard$3;
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
    .line 1111
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    .line 1115
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 1154
    :cond_0
    :goto_0
    return-void

    .line 1118
    :pswitch_0
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    const-string v4, "EVENT_MDMRST_SIM_HOT_SWAP_STATUS"

    # invokes: Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/uicc/UiccCard;->access$100(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V

    .line 1120
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1121
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v0, v3

    check-cast v0, [I

    .line 1123
    .local v0, "SIMStatus":[I
    if-eqz v0, :cond_3

    array-length v3, v0

    if-lez v3, :cond_3

    .line 1124
    const/4 v3, 0x0

    aget v3, v0, v3

    if-nez v3, :cond_2

    .line 1125
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    const-string v4, "ICC_HOT_SWAP_ABSENT"

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/UiccCard;->setIccCardRemovedOrInsertedError(Ljava/lang/String;)V

    .line 1130
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportRebootAfterSimSwap()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1132
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UiccCard;->access$000(Lcom/android/internal/telephony/uicc/UiccCard;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1133
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UiccCard;->access$200(Lcom/android/internal/telephony/uicc/UiccCard;)Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1134
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # invokes: Lcom/android/internal/telephony/uicc/UiccCard;->shutDownDevice()V
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UiccCard;->access$1200(Lcom/android/internal/telephony/uicc/UiccCard;)V

    .line 1138
    :goto_1
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1136
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    const-string v5, "Can not shutdown device due to mContext is null"

    # invokes: Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V
    invoke-static {v3, v5}, Lcom/android/internal/telephony/uicc/UiccCard;->access$100(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1144
    :cond_2
    const-string v2, "ICC_HOT_SWAP_INSERTED"

    .line 1145
    .local v2, "ret":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->mSIMHotSwapStatusRegistrants:Landroid/os/RegistrantList;
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UiccCard;->access$1300(Lcom/android/internal/telephony/uicc/UiccCard;)Landroid/os/RegistrantList;

    move-result-object v3

    new-instance v4, Landroid/os/AsyncResult;

    invoke-direct {v4, v5, v2, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1148
    .end local v2    # "ret":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    const-string v4, "invalid MdmRst sim hot swap data"

    # invokes: Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/uicc/UiccCard;->access$100(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V

    goto :goto_0

    .line 1115
    :pswitch_data_0
    .packed-switch 0x67
        :pswitch_0
    .end packed-switch
.end method
