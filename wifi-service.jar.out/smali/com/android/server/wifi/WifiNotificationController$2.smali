.class Lcom/android/server/wifi/WifiNotificationController$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiNotificationController;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiNotificationController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiNotificationController;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/server/wifi/WifiNotificationController$2;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 171
    if-nez p2, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "action":Ljava/lang/String;
    const/4 v1, 0x0

    .line 175
    .local v1, "lowSignal":Z
    const-string v2, "com.htc.intent.action.WFC_LOWSIGNAL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 176
    const-string v2, "WFC_LOWSIGNAL_STATUS"

    invoke-virtual {p2, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 178
    :cond_2
    const-string v2, "WifiNotificationController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive lowSignal = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mLowSignal = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiNotificationController$2;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # getter for: Lcom/android/server/wifi/WifiNotificationController;->mLowSignal:Z
    invoke-static {v4}, Lcom/android/server/wifi/WifiNotificationController;->access$500(Lcom/android/server/wifi/WifiNotificationController;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mNotificationShown = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiNotificationController$2;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # getter for: Lcom/android/server/wifi/WifiNotificationController;->mNotificationShown:Z
    invoke-static {v4}, Lcom/android/server/wifi/WifiNotificationController;->access$600(Lcom/android/server/wifi/WifiNotificationController;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    if-nez v1, :cond_3

    iget-object v2, p0, Lcom/android/server/wifi/WifiNotificationController$2;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # getter for: Lcom/android/server/wifi/WifiNotificationController;->mLowSignal:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiNotificationController;->access$500(Lcom/android/server/wifi/WifiNotificationController;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/wifi/WifiNotificationController$2;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # getter for: Lcom/android/server/wifi/WifiNotificationController;->mNotificationShown:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiNotificationController;->access$600(Lcom/android/server/wifi/WifiNotificationController;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 182
    iget-object v2, p0, Lcom/android/server/wifi/WifiNotificationController$2;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    const-wide/16 v4, 0x0

    # setter for: Lcom/android/server/wifi/WifiNotificationController;->mNotificationRepeatTime:J
    invoke-static {v2, v4, v5}, Lcom/android/server/wifi/WifiNotificationController;->access$702(Lcom/android/server/wifi/WifiNotificationController;J)J

    .line 183
    :cond_3
    iget-object v2, p0, Lcom/android/server/wifi/WifiNotificationController$2;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # setter for: Lcom/android/server/wifi/WifiNotificationController;->mLowSignal:Z
    invoke-static {v2, v1}, Lcom/android/server/wifi/WifiNotificationController;->access$502(Lcom/android/server/wifi/WifiNotificationController;Z)Z

    .line 184
    iget-object v2, p0, Lcom/android/server/wifi/WifiNotificationController$2;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # getter for: Lcom/android/server/wifi/WifiNotificationController;->mNotificationShown:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiNotificationController;->access$600(Lcom/android/server/wifi/WifiNotificationController;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 185
    const-string v2, "WifiNotificationController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive setNotificationVisible mLowSignalNWs = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiNotificationController$2;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # getter for: Lcom/android/server/wifi/WifiNotificationController;->mLowSignalNWs:I
    invoke-static {v4}, Lcom/android/server/wifi/WifiNotificationController;->access$800(Lcom/android/server/wifi/WifiNotificationController;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v2, p0, Lcom/android/server/wifi/WifiNotificationController$2;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/server/wifi/WifiNotificationController$2;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # getter for: Lcom/android/server/wifi/WifiNotificationController;->mLowSignalNWs:I
    invoke-static {v4}, Lcom/android/server/wifi/WifiNotificationController;->access$800(Lcom/android/server/wifi/WifiNotificationController;)I

    move-result v4

    # invokes: Lcom/android/server/wifi/WifiNotificationController;->setNotificationVisible(ZIZI)V
    invoke-static {v2, v3, v4, v6, v6}, Lcom/android/server/wifi/WifiNotificationController;->access$900(Lcom/android/server/wifi/WifiNotificationController;ZIZI)V

    goto/16 :goto_0
.end method
