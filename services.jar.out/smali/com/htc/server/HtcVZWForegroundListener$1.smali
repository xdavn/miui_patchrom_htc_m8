.class Lcom/htc/server/HtcVZWForegroundListener$1;
.super Landroid/os/Handler;
.source "HtcVZWForegroundListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/server/HtcVZWForegroundListener;->createReportHandler(Landroid/content/Context;Landroid/os/Looper;)Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private mPending:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/server/HtcVZWForegroundListener$Report;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/server/HtcVZWForegroundListener;


# direct methods
.method constructor <init>(Lcom/htc/server/HtcVZWForegroundListener;Landroid/os/Looper;)V
    .locals 1
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/htc/server/HtcVZWForegroundListener$1;->this$0:Lcom/htc/server/HtcVZWForegroundListener;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/server/HtcVZWForegroundListener$1;->mPending:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x0

    .line 72
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 74
    :pswitch_0
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v5, :cond_0

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v5, v5, Landroid/content/Context;

    if-eqz v5, :cond_0

    .line 75
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/content/Context;

    iput-object v5, p0, Lcom/htc/server/HtcVZWForegroundListener$1;->context:Landroid/content/Context;

    goto :goto_0

    .line 79
    :pswitch_1
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v5, :cond_0

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v5, v5, Lcom/htc/server/HtcVZWForegroundListener$Report;

    if-eqz v5, :cond_0

    .line 80
    iget-object v5, p0, Lcom/htc/server/HtcVZWForegroundListener$1;->mPending:Ljava/util/LinkedList;

    if-nez v5, :cond_1

    .line 81
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    iput-object v5, p0, Lcom/htc/server/HtcVZWForegroundListener$1;->mPending:Ljava/util/LinkedList;

    .line 82
    const/4 v5, 0x3

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v5, v6}, Lcom/htc/server/HtcVZWForegroundListener$1;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/server/HtcVZWForegroundListener$1;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 85
    :cond_1
    iget-object v6, p0, Lcom/htc/server/HtcVZWForegroundListener$1;->mPending:Ljava/util/LinkedList;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/htc/server/HtcVZWForegroundListener$Report;

    invoke-virtual {v6, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 90
    :pswitch_2
    const/4 v1, 0x0

    .line 91
    .local v1, "isInCall":Ljava/lang/Boolean;
    iget-object v5, p0, Lcom/htc/server/HtcVZWForegroundListener$1;->context:Landroid/content/Context;

    if-eqz v5, :cond_2

    .line 93
    :try_start_0
    iget-object v5, p0, Lcom/htc/server/HtcVZWForegroundListener$1;->context:Landroid/content/Context;

    const-string v6, "telecom"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/TelecomManager;

    .line 94
    .local v4, "tm":Landroid/telecom/TelecomManager;
    if-eqz v4, :cond_2

    .line 95
    invoke-virtual {v4}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 101
    .end local v4    # "tm":Landroid/telecom/TelecomManager;
    :cond_2
    :goto_1
    const/4 v2, 0x0

    .line 102
    .local v2, "notifyApk":I
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 103
    const/4 v2, 0x1

    .line 105
    :cond_3
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v9, v2, v8, v5}, Lcom/htc/server/HtcVZWForegroundListener$1;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/server/HtcVZWForegroundListener$1;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 97
    .end local v2    # "notifyApk":I
    :catch_0
    move-exception v0

    .line 98
    .local v0, "ex":Ljava/lang/Throwable;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fail to get call status "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/htc/server/HtcVZWForegroundListener;->logException(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/htc/server/HtcVZWForegroundListener;->access$300(Ljava/lang/String;)V

    goto :goto_1

    .line 108
    .end local v0    # "ex":Ljava/lang/Throwable;
    .end local v1    # "isInCall":Ljava/lang/Boolean;
    :pswitch_3
    const/4 v3, 0x0

    .line 109
    .local v3, "report":Lcom/htc/server/HtcVZWForegroundListener$Report;
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v5, :cond_4

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v5, v5, Lcom/htc/server/HtcVZWForegroundListener$Report;

    if-eqz v5, :cond_4

    .line 110
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v3    # "report":Lcom/htc/server/HtcVZWForegroundListener$Report;
    check-cast v3, Lcom/htc/server/HtcVZWForegroundListener$Report;

    .line 111
    .restart local v3    # "report":Lcom/htc/server/HtcVZWForegroundListener$Report;
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_4

    # getter for: Lcom/htc/server/HtcVZWForegroundListener$Report;->packageName:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/server/HtcVZWForegroundListener$Report;->access$200(Lcom/htc/server/HtcVZWForegroundListener$Report;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    # getter for: Lcom/htc/server/HtcVZWForegroundListener$Report;->componentName:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/server/HtcVZWForegroundListener$Report;->access$100(Lcom/htc/server/HtcVZWForegroundListener$Report;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 114
    iget-object v5, p0, Lcom/htc/server/HtcVZWForegroundListener$1;->context:Landroid/content/Context;

    # getter for: Lcom/htc/server/HtcVZWForegroundListener$Report;->packageName:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/server/HtcVZWForegroundListener$Report;->access$200(Lcom/htc/server/HtcVZWForegroundListener$Report;)Ljava/lang/String;

    move-result-object v6

    # getter for: Lcom/htc/server/HtcVZWForegroundListener$Report;->componentName:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/server/HtcVZWForegroundListener$Report;->access$100(Lcom/htc/server/HtcVZWForegroundListener$Report;)Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/htc/server/HtcVZWForegroundListener;->sendIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v6, v7}, Lcom/htc/server/HtcVZWForegroundListener;->access$400(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_4
    iget-object v5, p0, Lcom/htc/server/HtcVZWForegroundListener$1;->mPending:Ljava/util/LinkedList;

    if-eqz v5, :cond_0

    .line 118
    iget-object v5, p0, Lcom/htc/server/HtcVZWForegroundListener$1;->mPending:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 119
    iget-object v5, p0, Lcom/htc/server/HtcVZWForegroundListener$1;->mPending:Ljava/util/LinkedList;

    invoke-virtual {v5, v8}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "report":Lcom/htc/server/HtcVZWForegroundListener$Report;
    check-cast v3, Lcom/htc/server/HtcVZWForegroundListener$Report;

    .line 120
    .restart local v3    # "report":Lcom/htc/server/HtcVZWForegroundListener$Report;
    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v9, v5, v6, v3}, Lcom/htc/server/HtcVZWForegroundListener$1;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/server/HtcVZWForegroundListener$1;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 123
    :cond_5
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/htc/server/HtcVZWForegroundListener$1;->mPending:Ljava/util/LinkedList;

    goto/16 :goto_0

    .line 72
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
