.class Lcom/android/server/wifi/HtcWifiApStatusLed;
.super Ljava/lang/Object;
.source "HtcWifiApStatusLed.java"


# static fields
.field private static final FLASHLIGHT_FILE:Ljava/lang/String; = "/sys/camera_led_status/led_hotspot_status"


# instance fields
.field private TAG:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, "WifiApStatusLed"

    iput-object v0, p0, Lcom/android/server/wifi/HtcWifiApStatusLed;->TAG:Ljava/lang/String;

    .line 17
    return-void
.end method

.method private writeWifiApStatusForFlashlight(Z)V
    .locals 8
    .param p1, "enable"    # Z

    .prologue
    .line 28
    const/4 v2, 0x0

    .line 30
    .local v2, "fWriter":Ljava/io/FileWriter;
    :try_start_0
    new-instance v3, Ljava/io/FileWriter;

    const-string v4, "/sys/camera_led_status/led_hotspot_status"

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .end local v2    # "fWriter":Ljava/io/FileWriter;
    .local v3, "fWriter":Ljava/io/FileWriter;
    :try_start_1
    iget-object v4, p0, Lcom/android/server/wifi/HtcWifiApStatusLed;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set flash flag="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    if-eqz p1, :cond_1

    .line 33
    const-string v4, "1\n"

    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 41
    :goto_0
    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 45
    :cond_0
    :goto_1
    const/4 v2, 0x0

    .line 47
    .end local v3    # "fWriter":Ljava/io/FileWriter;
    .restart local v2    # "fWriter":Ljava/io/FileWriter;
    :goto_2
    return-void

    .line 35
    .end local v2    # "fWriter":Ljava/io/FileWriter;
    .restart local v3    # "fWriter":Ljava/io/FileWriter;
    :cond_1
    :try_start_3
    const-string v4, "0\n"

    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 38
    .end local v3    # "fWriter":Ljava/io/FileWriter;
    .local v0, "e":Ljava/io/IOException;
    .restart local v2    # "fWriter":Ljava/io/FileWriter;
    :goto_3
    :try_start_4
    iget-object v4, p0, Lcom/android/server/wifi/HtcWifiApStatusLed;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "1.set flash flag="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "exception="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 41
    if-eqz v2, :cond_2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 45
    :cond_2
    :goto_4
    const/4 v2, 0x0

    .line 46
    goto :goto_2

    .line 42
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fWriter":Ljava/io/FileWriter;
    .restart local v3    # "fWriter":Ljava/io/FileWriter;
    :catch_1
    move-exception v1

    .line 43
    .local v1, "exception":Ljava/io/IOException;
    iget-object v4, p0, Lcom/android/server/wifi/HtcWifiApStatusLed;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "2.set flash flag="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "exception="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 42
    .end local v1    # "exception":Ljava/io/IOException;
    .end local v3    # "fWriter":Ljava/io/FileWriter;
    .restart local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "fWriter":Ljava/io/FileWriter;
    :catch_2
    move-exception v1

    .line 43
    .restart local v1    # "exception":Ljava/io/IOException;
    iget-object v4, p0, Lcom/android/server/wifi/HtcWifiApStatusLed;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "2.set flash flag="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "exception="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 40
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "exception":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 41
    :goto_5
    if-eqz v2, :cond_3

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 45
    :cond_3
    :goto_6
    const/4 v2, 0x0

    throw v4

    .line 42
    :catch_3
    move-exception v1

    .line 43
    .restart local v1    # "exception":Ljava/io/IOException;
    iget-object v5, p0, Lcom/android/server/wifi/HtcWifiApStatusLed;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "2.set flash flag="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "exception="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 40
    .end local v1    # "exception":Ljava/io/IOException;
    .end local v2    # "fWriter":Ljava/io/FileWriter;
    .restart local v3    # "fWriter":Ljava/io/FileWriter;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "fWriter":Ljava/io/FileWriter;
    .restart local v2    # "fWriter":Ljava/io/FileWriter;
    goto :goto_5

    .line 37
    :catch_4
    move-exception v0

    goto/16 :goto_3
.end method


# virtual methods
.method public syncApStatusToLed(I)V
    .locals 1
    .param p1, "wifiApState"    # I

    .prologue
    .line 20
    const/16 v0, 0xd

    if-ne p1, v0, :cond_1

    .line 21
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wifi/HtcWifiApStatusLed;->writeWifiApStatusForFlashlight(Z)V

    .line 25
    :cond_0
    :goto_0
    return-void

    .line 22
    :cond_1
    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/HtcWifiApStatusLed;->writeWifiApStatusForFlashlight(Z)V

    goto :goto_0
.end method
