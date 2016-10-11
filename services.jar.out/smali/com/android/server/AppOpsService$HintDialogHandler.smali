.class Lcom/android/server/AppOpsService$HintDialogHandler;
.super Landroid/os/Handler;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HintDialogHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AppOpsService;


# direct methods
.method public constructor <init>(Lcom/android/server/AppOpsService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2263
    iput-object p1, p0, Lcom/android/server/AppOpsService$HintDialogHandler;->this$0:Lcom/android/server/AppOpsService;

    .line 2264
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2265
    return-void
.end method

.method private handleMessageImpl(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v8, 0x3e8

    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 2277
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 2314
    :cond_0
    :goto_0
    return-void

    .line 2279
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/AppOpsService$HintDialogData;

    .line 2280
    .local v1, "data":Lcom/android/server/AppOpsService$HintDialogData;
    iget-boolean v3, v1, Lcom/android/server/AppOpsService$HintDialogData;->consumed:Z

    if-nez v3, :cond_0

    .line 2283
    new-instance v2, Lcom/android/server/AppOpsService$HintDialog;

    iget-object v3, p0, Lcom/android/server/AppOpsService$HintDialogHandler;->this$0:Lcom/android/server/AppOpsService;

    invoke-direct {v2, v3, v1}, Lcom/android/server/AppOpsService$HintDialog;-><init>(Lcom/android/server/AppOpsService;Lcom/android/server/AppOpsService$HintDialogData;)V

    .line 2284
    .local v2, "hintDialog":Lcom/android/server/AppOpsService$HintDialog;
    iput-object v2, v1, Lcom/android/server/AppOpsService$HintDialogData;->dialog:Lcom/android/server/AppOpsService$HintDialog;

    .line 2286
    iget-object v3, p0, Lcom/android/server/AppOpsService$HintDialogHandler;->this$0:Lcom/android/server/AppOpsService;

    # getter for: Lcom/android/server/AppOpsService;->mAms:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v3}, Lcom/android/server/AppOpsService;->access$500(Lcom/android/server/AppOpsService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2287
    iget-object v3, p0, Lcom/android/server/AppOpsService$HintDialogHandler;->this$0:Lcom/android/server/AppOpsService;

    # getter for: Lcom/android/server/AppOpsService;->mAms:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v3}, Lcom/android/server/AppOpsService;->access$500(Lcom/android/server/AppOpsService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    iget v4, v1, Lcom/android/server/AppOpsService$HintDialogData;->uid:I

    invoke-virtual {v2}, Lcom/android/server/AppOpsService$HintDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->stopFreezingTopActivity(ILandroid/view/Window;)V

    .line 2290
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/AppOpsService$HintDialog;->show()V

    .line 2291
    const/16 v3, 0xa

    invoke-virtual {p0, v7, v3, v6, v2}, Lcom/android/server/AppOpsService$HintDialogHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3, v8, v9}, Lcom/android/server/AppOpsService$HintDialogHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 2296
    .end local v1    # "data":Lcom/android/server/AppOpsService$HintDialogData;
    .end local v2    # "hintDialog":Lcom/android/server/AppOpsService$HintDialog;
    :pswitch_1
    iget v3, p1, Landroid/os/Message;->arg1:I

    add-int/lit8 v0, v3, -0x1

    .line 2297
    .local v0, "countDown":I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/AppOpsService$HintDialog;

    .line 2298
    .restart local v2    # "hintDialog":Lcom/android/server/AppOpsService$HintDialog;
    if-nez v0, :cond_2

    .line 2299
    invoke-virtual {v2, v4}, Lcom/android/server/AppOpsService$HintDialog;->dismiss(Z)V

    .line 2300
    iget-object v1, v2, Lcom/android/server/AppOpsService$HintDialog;->mData:Lcom/android/server/AppOpsService$HintDialogData;

    .line 2301
    .restart local v1    # "data":Lcom/android/server/AppOpsService$HintDialogData;
    monitor-enter v1

    .line 2302
    const/4 v3, 0x0

    :try_start_0
    iput-object v3, v1, Lcom/android/server/AppOpsService$HintDialogData;->dialog:Lcom/android/server/AppOpsService$HintDialog;

    .line 2303
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/server/AppOpsService$HintDialogData;->consumed:Z

    .line 2304
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 2305
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2307
    .end local v1    # "data":Lcom/android/server/AppOpsService$HintDialogData;
    :cond_2
    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Lcom/android/server/AppOpsService$HintDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    # invokes: Lcom/android/server/AppOpsService$HintDialog;->getDenyButtonString(I)Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/android/server/AppOpsService$HintDialog;->access$600(Lcom/android/server/AppOpsService$HintDialog;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2309
    invoke-virtual {p0, v7, v0, v6, v2}, Lcom/android/server/AppOpsService$HintDialogHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3, v8, v9}, Lcom/android/server/AppOpsService$HintDialogHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 2277
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2270
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService$HintDialogHandler;->handleMessageImpl(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2274
    :goto_0
    return-void

    .line 2271
    :catch_0
    move-exception v0

    .line 2272
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AppOps"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
