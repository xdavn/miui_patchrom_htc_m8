.class Lcom/android/server/wifi/WifiApConfigStore$DefaultState;
.super Lcom/android/internal/util/State;
.source "WifiApConfigStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiApConfigStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiApConfigStore;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiApConfigStore;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/server/wifi/WifiApConfigStore$DefaultState;->this$0:Lcom/android/server/wifi/WifiApConfigStore;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    const v2, 0x2001c

    .line 120
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 150
    :pswitch_0
    const-string v0, "WifiApConfigStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :goto_0
    return v3

    .line 123
    :pswitch_1
    const-string v0, "WifiApConfigStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 126
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore$DefaultState;->this$0:Lcom/android/server/wifi/WifiApConfigStore;

    # getter for: Lcom/android/server/wifi/WifiApConfigStore;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0}, Lcom/android/server/wifi/WifiApConfigStore;->access$100(Lcom/android/server/wifi/WifiApConfigStore;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiApConfigStore$DefaultState;->this$0:Lcom/android/server/wifi/WifiApConfigStore;

    # getter for: Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v1}, Lcom/android/server/wifi/WifiApConfigStore;->access$000(Lcom/android/server/wifi/WifiApConfigStore;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-virtual {v0, p1, v2, v1}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    goto :goto_0

    .line 134
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore$DefaultState;->this$0:Lcom/android/server/wifi/WifiApConfigStore;

    # getter for: Lcom/android/server/wifi/WifiApConfigStore;->mGoogleApConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v0}, Lcom/android/server/wifi/WifiApConfigStore;->access$200(Lcom/android/server/wifi/WifiApConfigStore;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore$DefaultState;->this$0:Lcom/android/server/wifi/WifiApConfigStore;

    # getter for: Lcom/android/server/wifi/WifiApConfigStore;->mGoogleApConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v0}, Lcom/android/server/wifi/WifiApConfigStore;->access$200(Lcom/android/server/wifi/WifiApConfigStore;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore$DefaultState;->this$0:Lcom/android/server/wifi/WifiApConfigStore;

    # getter for: Lcom/android/server/wifi/WifiApConfigStore;->mGoogleApConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v0}, Lcom/android/server/wifi/WifiApConfigStore;->access$200(Lcom/android/server/wifi/WifiApConfigStore;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->hotspotType:I

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore$DefaultState;->this$0:Lcom/android/server/wifi/WifiApConfigStore;

    # getter for: Lcom/android/server/wifi/WifiApConfigStore;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0}, Lcom/android/server/wifi/WifiApConfigStore;->access$100(Lcom/android/server/wifi/WifiApConfigStore;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiApConfigStore$DefaultState;->this$0:Lcom/android/server/wifi/WifiApConfigStore;

    # getter for: Lcom/android/server/wifi/WifiApConfigStore;->mGoogleApConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v1}, Lcom/android/server/wifi/WifiApConfigStore;->access$200(Lcom/android/server/wifi/WifiApConfigStore;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-virtual {v0, p1, v2, v1}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    goto :goto_0

    .line 143
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore$DefaultState;->this$0:Lcom/android/server/wifi/WifiApConfigStore;

    # getter for: Lcom/android/server/wifi/WifiApConfigStore;->mHtcApConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v0}, Lcom/android/server/wifi/WifiApConfigStore;->access$300(Lcom/android/server/wifi/WifiApConfigStore;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore$DefaultState;->this$0:Lcom/android/server/wifi/WifiApConfigStore;

    # getter for: Lcom/android/server/wifi/WifiApConfigStore;->mHtcApConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v0}, Lcom/android/server/wifi/WifiApConfigStore;->access$300(Lcom/android/server/wifi/WifiApConfigStore;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore$DefaultState;->this$0:Lcom/android/server/wifi/WifiApConfigStore;

    # getter for: Lcom/android/server/wifi/WifiApConfigStore;->mHtcApConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v0}, Lcom/android/server/wifi/WifiApConfigStore;->access$300(Lcom/android/server/wifi/WifiApConfigStore;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v0

    iput v3, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->hotspotType:I

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore$DefaultState;->this$0:Lcom/android/server/wifi/WifiApConfigStore;

    # getter for: Lcom/android/server/wifi/WifiApConfigStore;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0}, Lcom/android/server/wifi/WifiApConfigStore;->access$100(Lcom/android/server/wifi/WifiApConfigStore;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiApConfigStore$DefaultState;->this$0:Lcom/android/server/wifi/WifiApConfigStore;

    # getter for: Lcom/android/server/wifi/WifiApConfigStore;->mHtcApConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v1}, Lcom/android/server/wifi/WifiApConfigStore;->access$300(Lcom/android/server/wifi/WifiApConfigStore;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-virtual {v0, p1, v2, v1}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x20019
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
