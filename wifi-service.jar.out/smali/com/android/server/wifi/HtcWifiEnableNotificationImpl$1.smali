.class Lcom/android/server/wifi/HtcWifiEnableNotificationImpl$1;
.super Ljava/lang/Object;
.source "HtcWifiEnableNotification.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/HtcWifiEnableNotificationImpl;->showAlertDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/HtcWifiEnableNotificationImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/HtcWifiEnableNotificationImpl;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/server/wifi/HtcWifiEnableNotificationImpl$1;->this$0:Lcom/android/server/wifi/HtcWifiEnableNotificationImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/wifi/HtcWifiEnableNotificationImpl$1;->this$0:Lcom/android/server/wifi/HtcWifiEnableNotificationImpl;

    const-string v1, "Dialog dismiss, reset FLAG"

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/HtcWifiEnableNotificationImpl;->log(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/android/server/wifi/HtcWifiEnableNotificationImpl$1;->this$0:Lcom/android/server/wifi/HtcWifiEnableNotificationImpl;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/wifi/HtcWifiEnableNotificationImpl;->mEnableConfDialog:Z
    invoke-static {v0, v1}, Lcom/android/server/wifi/HtcWifiEnableNotificationImpl;->access$002(Lcom/android/server/wifi/HtcWifiEnableNotificationImpl;Z)Z

    .line 153
    return-void
.end method
