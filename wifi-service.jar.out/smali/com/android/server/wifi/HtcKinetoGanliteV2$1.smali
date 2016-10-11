.class Lcom/android/server/wifi/HtcKinetoGanliteV2$1;
.super Landroid/content/BroadcastReceiver;
.source "HtcKinetoGanliteV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/HtcKinetoGanliteV2;->registerKinetoGanliteReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/HtcKinetoGanliteV2;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/HtcKinetoGanliteV2;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/server/wifi/HtcKinetoGanliteV2$1;->this$0:Lcom/android/server/wifi/HtcKinetoGanliteV2;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 45
    const-string v1, "Event"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "myString":Ljava/lang/String;
    const-string v1, "WFC_DEREGISTERED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 48
    const-string v1, "HtcKinetoGanliteV2"

    const-string v2, "VoWIFI: Ganlite v2.0 intent received: WFC_DEREGISTERED"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v1, p0, Lcom/android/server/wifi/HtcKinetoGanliteV2$1;->this$0:Lcom/android/server/wifi/HtcKinetoGanliteV2;

    # getter for: Lcom/android/server/wifi/HtcKinetoGanliteV2;->mWifiServiceImpl:Lcom/android/server/wifi/WifiServiceImpl;
    invoke-static {v1}, Lcom/android/server/wifi/HtcKinetoGanliteV2;->access$000(Lcom/android/server/wifi/HtcKinetoGanliteV2;)Lcom/android/server/wifi/WifiServiceImpl;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/WifiServiceImpl;->enablePowerActiveMode(Z)Z

    .line 50
    iget-object v1, p0, Lcom/android/server/wifi/HtcKinetoGanliteV2$1;->this$0:Lcom/android/server/wifi/HtcKinetoGanliteV2;

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/HtcKinetoGanliteV2;->VoWIFILockCPU(Z)V

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    const-string v1, "WFC_REGISTERED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 52
    const-string v1, "HtcKinetoGanliteV2"

    const-string v2, "VoWIFI: Ganlite v2.0 intent received: WFC_REGISTERED"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v1, p0, Lcom/android/server/wifi/HtcKinetoGanliteV2$1;->this$0:Lcom/android/server/wifi/HtcKinetoGanliteV2;

    # getter for: Lcom/android/server/wifi/HtcKinetoGanliteV2;->mWifiServiceImpl:Lcom/android/server/wifi/WifiServiceImpl;
    invoke-static {v1}, Lcom/android/server/wifi/HtcKinetoGanliteV2;->access$000(Lcom/android/server/wifi/HtcKinetoGanliteV2;)Lcom/android/server/wifi/WifiServiceImpl;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/WifiServiceImpl;->enablePowerActiveMode(Z)Z

    goto :goto_0

    .line 54
    :cond_2
    const-string v1, "WFC_DEDICATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 55
    const-string v1, "HtcKinetoGanliteV2"

    const-string v2, "VoWIFI: Ganlite v2.0 intent received: WFC_DEDICATED"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v1, p0, Lcom/android/server/wifi/HtcKinetoGanliteV2$1;->this$0:Lcom/android/server/wifi/HtcKinetoGanliteV2;

    # getter for: Lcom/android/server/wifi/HtcKinetoGanliteV2;->mWifiServiceImpl:Lcom/android/server/wifi/WifiServiceImpl;
    invoke-static {v1}, Lcom/android/server/wifi/HtcKinetoGanliteV2;->access$000(Lcom/android/server/wifi/HtcKinetoGanliteV2;)Lcom/android/server/wifi/WifiServiceImpl;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/server/wifi/WifiServiceImpl;->enablePowerActiveMode(Z)Z

    .line 57
    iget-object v1, p0, Lcom/android/server/wifi/HtcKinetoGanliteV2$1;->this$0:Lcom/android/server/wifi/HtcKinetoGanliteV2;

    invoke-virtual {v1, v3}, Lcom/android/server/wifi/HtcKinetoGanliteV2;->VoWIFILockCPU(Z)V

    goto :goto_0

    .line 58
    :cond_3
    const-string v1, "WFC_VOICE_CALL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 59
    const-string v1, "HtcKinetoGanliteV2"

    const-string v2, "VoWIFI: Ganlite v2.0 intent received: WFC_VOICE_CALL"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v1, p0, Lcom/android/server/wifi/HtcKinetoGanliteV2$1;->this$0:Lcom/android/server/wifi/HtcKinetoGanliteV2;

    # getter for: Lcom/android/server/wifi/HtcKinetoGanliteV2;->mWifiServiceImpl:Lcom/android/server/wifi/WifiServiceImpl;
    invoke-static {v1}, Lcom/android/server/wifi/HtcKinetoGanliteV2;->access$000(Lcom/android/server/wifi/HtcKinetoGanliteV2;)Lcom/android/server/wifi/WifiServiceImpl;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/server/wifi/WifiServiceImpl;->enablePowerActiveMode(Z)Z

    .line 61
    iget-object v1, p0, Lcom/android/server/wifi/HtcKinetoGanliteV2$1;->this$0:Lcom/android/server/wifi/HtcKinetoGanliteV2;

    invoke-virtual {v1, v3}, Lcom/android/server/wifi/HtcKinetoGanliteV2;->VoWIFILockCPU(Z)V

    goto :goto_0

    .line 62
    :cond_4
    const-string v1, "WFC_BARRED_COUNTRY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 63
    const-string v1, "HtcKinetoGanliteV2"

    const-string v2, "VoWIFI: Ganlite v2.0 intent received: WFC_BARRED_COUNTRY"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 64
    :cond_5
    const-string v1, "WFC_SETTINGS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    const-string v1, "HtcKinetoGanliteV2"

    const-string v2, "VoWIFI: Ganlite v2.0 intent received: WFC_SETTINGS"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
