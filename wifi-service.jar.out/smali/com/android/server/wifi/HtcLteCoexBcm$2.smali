.class Lcom/android/server/wifi/HtcLteCoexBcm$2;
.super Landroid/content/BroadcastReceiver;
.source "HtcLteCoex.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/HtcLteCoexBcm;->registerLteCoexReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/HtcLteCoexBcm;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/HtcLteCoexBcm;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lcom/android/server/wifi/HtcLteCoexBcm$2;->this$0:Lcom/android/server/wifi/HtcLteCoexBcm;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 343
    const-string v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 344
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    sget-object v1, Lcom/android/server/wifi/HtcLteCoexBcm$4;->$SwitchMap$android$net$NetworkInfo$DetailedState:[I

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 354
    :goto_0
    return-void

    .line 346
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/wifi/HtcLteCoexBcm$2;->this$0:Lcom/android/server/wifi/HtcLteCoexBcm;

    # invokes: Lcom/android/server/wifi/HtcLteCoexBcm;->enableLteCoexQmi()V
    invoke-static {v1}, Lcom/android/server/wifi/HtcLteCoexBcm;->access$500(Lcom/android/server/wifi/HtcLteCoexBcm;)V

    goto :goto_0

    .line 349
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/wifi/HtcLteCoexBcm$2;->this$0:Lcom/android/server/wifi/HtcLteCoexBcm;

    # invokes: Lcom/android/server/wifi/HtcLteCoexBcm;->disableLteCoexQmi()V
    invoke-static {v1}, Lcom/android/server/wifi/HtcLteCoexBcm;->access$600(Lcom/android/server/wifi/HtcLteCoexBcm;)V

    goto :goto_0

    .line 344
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
