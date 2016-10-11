.class Lcom/android/server/wifi/HtcWifiWanDetectImpl$3;
.super Ljava/lang/Object;
.source "HtcWifiWanDetect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/HtcWifiWanDetectImpl;->doWanDetection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/HtcWifiWanDetectImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/HtcWifiWanDetectImpl;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl$3;->this$0:Lcom/android/server/wifi/HtcWifiWanDetectImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 307
    iget-object v7, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl$3;->this$0:Lcom/android/server/wifi/HtcWifiWanDetectImpl;

    # getter for: Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v7}, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->access$100(Lcom/android/server/wifi/HtcWifiWanDetectImpl;)Landroid/net/wifi/WifiInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v6

    .line 308
    .local v6, "networkId":I
    const/4 v5, 0x0

    .line 309
    .local v5, "inetAddress":Ljava/net/InetAddress;
    const-string v0, "www.htc.com"

    .line 310
    .local v0, "DnsAddressForWAN1":Ljava/lang/String;
    invoke-static {}, Landroid/net/wifi/HtcWifiCustomizeReader;->getDnsAddressForWanDetection()Ljava/lang/String;

    move-result-object v1

    .line 312
    .local v1, "DnsAddressForWAN2":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/4 v7, 0x2

    if-ge v4, v7, :cond_3

    .line 313
    iget-object v7, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl$3;->this$0:Lcom/android/server/wifi/HtcWifiWanDetectImpl;

    # invokes: Lcom/android/server/wifi/HtcWifiWanDetectImpl;->waitDNS()V
    invoke-static {v7}, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->access$900(Lcom/android/server/wifi/HtcWifiWanDetectImpl;)V

    .line 314
    iget-object v7, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl$3;->this$0:Lcom/android/server/wifi/HtcWifiWanDetectImpl;

    # invokes: Lcom/android/server/wifi/HtcWifiWanDetectImpl;->checkStopWanDetection()Z
    invoke-static {v7}, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->access$1000(Lcom/android/server/wifi/HtcWifiWanDetectImpl;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 363
    :cond_0
    :goto_1
    return-void

    .line 316
    :cond_1
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    .line 317
    const-string v7, "HtcWifiWanDetect"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Find DNS Address "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v7, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl$3;->this$0:Lcom/android/server/wifi/HtcWifiWanDetectImpl;

    # invokes: Lcom/android/server/wifi/HtcWifiWanDetectImpl;->checkDNSIP()Z
    invoke-static {v7}, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->access$1100(Lcom/android/server/wifi/HtcWifiWanDetectImpl;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 319
    const-string v7, "HtcWifiWanDetect"

    const-string v8, "check dns address for htc"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-virtual {v5}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v2, v7, v8

    .line 321
    .local v2, "address":Ljava/lang/String;
    const-string v7, "dhcp.wlan0.gateway"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 322
    const-string v7, "HtcWifiWanDetect"

    const-string v8, "Find DNS Address the same as gateway, ignore it"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    .end local v2    # "address":Ljava/lang/String;
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 329
    :catch_0
    move-exception v3

    .line 330
    .local v3, "e":Ljava/lang/Exception;
    const-string v7, "HtcWifiWanDetect"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "WAN problem detected A. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v7, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl$3;->this$0:Lcom/android/server/wifi/HtcWifiWanDetectImpl;

    # invokes: Lcom/android/server/wifi/HtcWifiWanDetectImpl;->checkStopWanDetection()Z
    invoke-static {v7}, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->access$1000(Lcom/android/server/wifi/HtcWifiWanDetectImpl;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 333
    iget-object v7, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl$3;->this$0:Lcom/android/server/wifi/HtcWifiWanDetectImpl;

    # invokes: Lcom/android/server/wifi/HtcWifiWanDetectImpl;->waitDNS()V
    invoke-static {v7}, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->access$900(Lcom/android/server/wifi/HtcWifiWanDetectImpl;)V

    .line 334
    iget-object v7, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl$3;->this$0:Lcom/android/server/wifi/HtcWifiWanDetectImpl;

    # invokes: Lcom/android/server/wifi/HtcWifiWanDetectImpl;->checkStopWanDetection()Z
    invoke-static {v7}, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->access$1000(Lcom/android/server/wifi/HtcWifiWanDetectImpl;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 336
    :try_start_1
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    .line 337
    const-string v7, "HtcWifiWanDetect"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Find DNS Address "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v7, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl$3;->this$0:Lcom/android/server/wifi/HtcWifiWanDetectImpl;

    # invokes: Lcom/android/server/wifi/HtcWifiWanDetectImpl;->checkDNSIP()Z
    invoke-static {v7}, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->access$1100(Lcom/android/server/wifi/HtcWifiWanDetectImpl;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 339
    const-string v7, "HtcWifiWanDetect"

    const-string v8, "check dns address for google"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-virtual {v5}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v2, v7, v8

    .line 341
    .restart local v2    # "address":Ljava/lang/String;
    const-string v7, "dhcp.wlan0.gateway"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 342
    const-string v7, "HtcWifiWanDetect"

    const-string v8, "Find DNS Address the same as gateway, ignore it"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 349
    .end local v2    # "address":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 350
    const-string v7, "HtcWifiWanDetect"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "WAN problem detected B. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v7, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl$3;->this$0:Lcom/android/server/wifi/HtcWifiWanDetectImpl;

    # invokes: Lcom/android/server/wifi/HtcWifiWanDetectImpl;->checkStopWanDetection()Z
    invoke-static {v7}, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->access$1000(Lcom/android/server/wifi/HtcWifiWanDetectImpl;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto/16 :goto_1

    .line 357
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v7, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl$3;->this$0:Lcom/android/server/wifi/HtcWifiWanDetectImpl;

    invoke-virtual {v7}, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->isVzwAvoidBadConnection()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 358
    iget-object v7, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl$3;->this$0:Lcom/android/server/wifi/HtcWifiWanDetectImpl;

    const/16 v8, 0x17

    # invokes: Lcom/android/server/wifi/HtcWifiWanDetectImpl;->sendVzwErrorBroadcast(II)V
    invoke-static {v7, v8, v6}, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->access$1200(Lcom/android/server/wifi/HtcWifiWanDetectImpl;II)V

    goto/16 :goto_1

    .line 361
    :cond_4
    iget-object v7, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl$3;->this$0:Lcom/android/server/wifi/HtcWifiWanDetectImpl;

    const/16 v8, 0x16

    # invokes: Lcom/android/server/wifi/HtcWifiWanDetectImpl;->sendErrorBroadcast(II)V
    invoke-static {v7, v8, v6}, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->access$1300(Lcom/android/server/wifi/HtcWifiWanDetectImpl;II)V

    goto/16 :goto_1
.end method
