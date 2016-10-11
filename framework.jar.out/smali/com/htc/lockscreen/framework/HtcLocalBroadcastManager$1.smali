.class Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager$1;
.super Landroid/os/Handler;
.source "HtcLocalBroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager;


# direct methods
.method constructor <init>(Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager$1;->this$0:Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 87
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 92
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 94
    :goto_0
    return-void

    .line 89
    :pswitch_0
    iget-object v0, p0, Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager$1;->this$0:Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager;

    # invokes: Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager;->executePendingBroadcasts()V
    invoke-static {v0}, Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager;->access$000(Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager;)V

    goto :goto_0

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
