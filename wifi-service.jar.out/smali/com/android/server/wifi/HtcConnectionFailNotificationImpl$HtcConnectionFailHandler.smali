.class Lcom/android/server/wifi/HtcConnectionFailNotificationImpl$HtcConnectionFailHandler;
.super Landroid/os/Handler;
.source "HtcConnectionFailNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HtcConnectionFailHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl$HtcConnectionFailHandler;->this$0:Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;

    .line 146
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 147
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    .line 152
    const-string v0, "HtcConnectionFailNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage().what "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 168
    const-string v0, "HtcConnectionFailNotification"

    const-string v1, "handleMessage(default)"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 161
    :pswitch_0
    # getter for: Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->bAuthenticationFailuresFlag:Z
    invoke-static {}, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->access$000()Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    # setter for: Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->bAuthenticationFailuresFlag:Z
    invoke-static {v3}, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->access$002(Z)Z

    .line 163
    iget-object v0, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl$HtcConnectionFailHandler;->this$0:Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;

    iget-object v1, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl$HtcConnectionFailHandler;->this$0:Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;

    # getter for: Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static {v1}, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->access$200(Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wifi/SupplicantStateTracker;->incrAuthenticationFailureCount(IZ)I

    move-result v1

    # setter for: Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mAuthenticationFailuresNotificationCount:I
    invoke-static {v0, v1}, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->access$102(Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;I)I

    goto :goto_0

    .line 153
    :pswitch_data_0
    .packed-switch 0x2406d
        :pswitch_0
    .end packed-switch
.end method
