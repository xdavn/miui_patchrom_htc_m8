.class Lcom/android/server/wifi/HtcWifiEnableNotificationImpl$4;
.super Ljava/lang/Object;
.source "HtcWifiEnableNotification.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 118
    iput-object p1, p0, Lcom/android/server/wifi/HtcWifiEnableNotificationImpl$4;->this$0:Lcom/android/server/wifi/HtcWifiEnableNotificationImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/server/wifi/HtcWifiEnableNotificationImpl$4;->this$0:Lcom/android/server/wifi/HtcWifiEnableNotificationImpl;

    # getter for: Lcom/android/server/wifi/HtcWifiEnableNotificationImpl;->mWifiServiceImpl:Lcom/android/server/wifi/WifiServiceImpl;
    invoke-static {v0}, Lcom/android/server/wifi/HtcWifiEnableNotificationImpl;->access$200(Lcom/android/server/wifi/HtcWifiEnableNotificationImpl;)Lcom/android/server/wifi/WifiServiceImpl;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiEnabled(Z)Z

    .line 121
    iget-object v0, p0, Lcom/android/server/wifi/HtcWifiEnableNotificationImpl$4;->this$0:Lcom/android/server/wifi/HtcWifiEnableNotificationImpl;

    const-string v1, "Click OK to permit turning on WLAN"

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/HtcWifiEnableNotificationImpl;->log(Ljava/lang/String;)V

    .line 122
    return-void
.end method
