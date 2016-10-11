.class Lcom/android/server/wifi/HtcConnectionFailNotificationImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "HtcConnectionFailNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->setupAuthFailReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl$1;->this$0:Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 218
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    const-string v1, "HtcConnectionFailNotification"

    const-string v2, "Receive Intent.ACTION_LOCALE_CHANGED"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v1, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl$1;->this$0:Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;

    iget-object v2, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl$1;->this$0:Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;

    # getter for: Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mWifiWepErrorNotificationShown:Z
    invoke-static {v2}, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->access$300(Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;)Z

    move-result v2

    # invokes: Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->setWepErrorNotificationVisible(Z)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->access$400(Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;Z)V

    .line 224
    :cond_0
    return-void
.end method
