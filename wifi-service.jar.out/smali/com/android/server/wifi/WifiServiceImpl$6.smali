.class Lcom/android/server/wifi/WifiServiceImpl$6;
.super Landroid/content/BroadcastReceiver;
.source "WifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiServiceImpl;->registerForHtcFeature()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiServiceImpl;)V
    .locals 0

    .prologue
    .line 2534
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$6;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2543
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2544
    iget-object v8, p0, Lcom/android/server/wifi/WifiServiceImpl$6;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v8, v8, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v8}, Lcom/android/server/wifi/WifiStateMachine;->getNetworkDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    .line 2545
    .local v7, "state":Landroid/net/NetworkInfo$DetailedState;
    if-eqz v7, :cond_1

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v7, v8, :cond_1

    .line 2547
    iget-object v8, p0, Lcom/android/server/wifi/WifiServiceImpl$6;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v9, p0, Lcom/android/server/wifi/WifiServiceImpl$6;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v9}, Lcom/android/server/wifi/WifiServiceImpl;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v9

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiServiceImpl;->access$1902(Lcom/android/server/wifi/WifiServiceImpl;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;

    .line 2549
    iget-object v8, p0, Lcom/android/server/wifi/WifiServiceImpl$6;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v8}, Lcom/android/server/wifi/WifiServiceImpl;->access$1900(Lcom/android/server/wifi/WifiServiceImpl;)Landroid/net/wifi/WifiInfo;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 2550
    const-string v8, "WifiService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " wifi info = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/WifiServiceImpl$6;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v10}, Lcom/android/server/wifi/WifiServiceImpl;->access$1900(Lcom/android/server/wifi/WifiServiceImpl;)Landroid/net/wifi/WifiInfo;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mWifiInfo.getBSSID() == "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/WifiServiceImpl$6;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v10}, Lcom/android/server/wifi/WifiServiceImpl;->access$1900(Lcom/android/server/wifi/WifiServiceImpl;)Landroid/net/wifi/WifiInfo;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2551
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v8, 0xa

    if-ge v1, v8, :cond_1

    .line 2552
    const-string v8, "WifiService"

    const-string v9, "leave multicast group for SSDP first, create socket enter"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2554
    :try_start_0
    const-string v8, "239.255.255.250"

    invoke-static {v8}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    .line 2555
    .local v2, "mGroupAddr":Ljava/net/InetAddress;
    new-instance v3, Ljava/net/MulticastSocket;

    const/16 v8, 0x76c

    invoke-direct {v3, v8}, Ljava/net/MulticastSocket;-><init>(I)V

    .line 2556
    .local v3, "mSocket":Ljava/net/MulticastSocket;
    invoke-virtual {v3, v2}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/InetAddress;)V

    .line 2557
    invoke-virtual {v3, v2}, Ljava/net/MulticastSocket;->leaveGroup(Ljava/net/InetAddress;)V

    .line 2558
    invoke-virtual {v3}, Ljava/net/MulticastSocket;->close()V

    .line 2559
    const-string v8, "WifiService"

    const-string v9, "SSDP IPv4 multicast socket closed"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2560
    const-string v8, "ff02::c"

    invoke-static {v8}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    .line 2561
    .local v4, "mV6GroupAddr":Ljava/net/InetAddress;
    new-instance v5, Ljava/net/MulticastSocket;

    invoke-direct {v5}, Ljava/net/MulticastSocket;-><init>()V

    .line 2562
    .local v5, "mV6Socket":Ljava/net/MulticastSocket;
    const-string v8, "wlan0"

    invoke-static {v8}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v6

    .line 2563
    .local v6, "nif":Ljava/net/NetworkInterface;
    if-eqz v6, :cond_0

    .line 2564
    const-string v8, "WifiService"

    const-string v9, "SSDP IPv6 multicast socket set to wlan0"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2565
    invoke-virtual {v5, v6}, Ljava/net/MulticastSocket;->setNetworkInterface(Ljava/net/NetworkInterface;)V

    .line 2567
    :cond_0
    new-instance v8, Ljava/net/InetSocketAddress;

    const/16 v9, 0x76c

    invoke-direct {v8, v4, v9}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v5, v8, v6}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V

    .line 2568
    invoke-virtual {v5, v4}, Ljava/net/MulticastSocket;->leaveGroup(Ljava/net/InetAddress;)V

    .line 2569
    invoke-virtual {v5}, Ljava/net/MulticastSocket;->close()V

    .line 2570
    const-string v8, "WifiService"

    const-string v9, "SSDP IPv6 multicast socket closed"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2589
    .end local v1    # "i":I
    .end local v2    # "mGroupAddr":Ljava/net/InetAddress;
    .end local v3    # "mSocket":Ljava/net/MulticastSocket;
    .end local v4    # "mV6GroupAddr":Ljava/net/InetAddress;
    .end local v5    # "mV6Socket":Ljava/net/MulticastSocket;
    .end local v6    # "nif":Ljava/net/NetworkInterface;
    .end local v7    # "state":Landroid/net/NetworkInfo$DetailedState;
    :cond_1
    :goto_1
    return-void

    .line 2572
    .restart local v1    # "i":I
    .restart local v7    # "state":Landroid/net/NetworkInfo$DetailedState;
    :catch_0
    move-exception v0

    .line 2573
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2574
    const-string v8, "WifiService"

    const-string v9, "multicast socket exception"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2578
    const-wide/16 v8, 0x5

    :try_start_1
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2551
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2579
    .restart local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 2580
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v8, "WifiService"

    const-string v9, "LOG , InterruptedException was received "

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2584
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "i":I
    :cond_2
    const-string v8, "WifiService"

    const-string v9, "mWifiInfo is null when try to check bssid"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
