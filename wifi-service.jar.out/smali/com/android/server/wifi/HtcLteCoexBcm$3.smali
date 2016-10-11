.class Lcom/android/server/wifi/HtcLteCoexBcm$3;
.super Landroid/telephony/PhoneStateListener;
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
    .line 358
    iput-object p1, p0, Lcom/android/server/wifi/HtcLteCoexBcm$3;->this$0:Lcom/android/server/wifi/HtcLteCoexBcm;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(II)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "networkType"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 361
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/16 v0, 0xd

    if-ne p2, v0, :cond_1

    .line 362
    const-string v0, "HtcLteCoex"

    const-string v1, "Wifi/LTE coex detect LTE connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v0, p0, Lcom/android/server/wifi/HtcLteCoexBcm$3;->this$0:Lcom/android/server/wifi/HtcLteCoexBcm;

    # setter for: Lcom/android/server/wifi/HtcLteCoexBcm;->mLteConnected:Z
    invoke-static {v0, v3}, Lcom/android/server/wifi/HtcLteCoexBcm;->access$702(Lcom/android/server/wifi/HtcLteCoexBcm;Z)Z

    .line 364
    iget-object v0, p0, Lcom/android/server/wifi/HtcLteCoexBcm$3;->this$0:Lcom/android/server/wifi/HtcLteCoexBcm;

    # setter for: Lcom/android/server/wifi/HtcLteCoexBcm;->mQmiFlag:Z
    invoke-static {v0, v3}, Lcom/android/server/wifi/HtcLteCoexBcm;->access$802(Lcom/android/server/wifi/HtcLteCoexBcm;Z)Z

    .line 365
    iget-object v0, p0, Lcom/android/server/wifi/HtcLteCoexBcm$3;->this$0:Lcom/android/server/wifi/HtcLteCoexBcm;

    # getter for: Lcom/android/server/wifi/HtcLteCoexBcm;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v0}, Lcom/android/server/wifi/HtcLteCoexBcm;->access$900(Lcom/android/server/wifi/HtcLteCoexBcm;)Lcom/android/server/wifi/WifiNative;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/HtcLteCoexBcm$3;->this$0:Lcom/android/server/wifi/HtcLteCoexBcm;

    # getter for: Lcom/android/server/wifi/HtcLteCoexBcm;->mBitmap:I
    invoke-static {v1}, Lcom/android/server/wifi/HtcLteCoexBcm;->access$400(Lcom/android/server/wifi/HtcLteCoexBcm;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->setLteCoex(I)V

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/HtcLteCoexBcm$3;->this$0:Lcom/android/server/wifi/HtcLteCoexBcm;

    # getter for: Lcom/android/server/wifi/HtcLteCoexBcm;->mLteConnected:Z
    invoke-static {v0}, Lcom/android/server/wifi/HtcLteCoexBcm;->access$700(Lcom/android/server/wifi/HtcLteCoexBcm;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    const-string v0, "HtcLteCoex"

    const-string v1, "Wifi/LTE coex detect LTE disconnected, disable LTE coex"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v0, p0, Lcom/android/server/wifi/HtcLteCoexBcm$3;->this$0:Lcom/android/server/wifi/HtcLteCoexBcm;

    # setter for: Lcom/android/server/wifi/HtcLteCoexBcm;->mLteConnected:Z
    invoke-static {v0, v2}, Lcom/android/server/wifi/HtcLteCoexBcm;->access$702(Lcom/android/server/wifi/HtcLteCoexBcm;Z)Z

    .line 369
    iget-object v0, p0, Lcom/android/server/wifi/HtcLteCoexBcm$3;->this$0:Lcom/android/server/wifi/HtcLteCoexBcm;

    # setter for: Lcom/android/server/wifi/HtcLteCoexBcm;->mQmiFlag:Z
    invoke-static {v0, v2}, Lcom/android/server/wifi/HtcLteCoexBcm;->access$802(Lcom/android/server/wifi/HtcLteCoexBcm;Z)Z

    .line 370
    iget-object v0, p0, Lcom/android/server/wifi/HtcLteCoexBcm$3;->this$0:Lcom/android/server/wifi/HtcLteCoexBcm;

    # getter for: Lcom/android/server/wifi/HtcLteCoexBcm;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v0}, Lcom/android/server/wifi/HtcLteCoexBcm;->access$900(Lcom/android/server/wifi/HtcLteCoexBcm;)Lcom/android/server/wifi/WifiNative;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiNative;->setLteCoex(I)V

    goto :goto_0
.end method
