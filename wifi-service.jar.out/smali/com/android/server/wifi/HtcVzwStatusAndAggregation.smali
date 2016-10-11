.class public Lcom/android/server/wifi/HtcVzwStatusAndAggregation;
.super Ljava/lang/Object;
.source "HtcVzwStatusAndAggregation.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HtcVzwStatusAndAggregation"

.field private static final VZW_STATUS_AP_DETECTED_BUT_NOT_CONNECTED:I = 0x2

.field private static final VZW_STATUS_CONNECTED:I = 0x3

.field private static final VZW_STATUS_DO_WIFI_AGGREGATION:I = 0x4

.field private static final VZW_STATUS_NO_AP_DETECTED:I = 0x1

.field private static final VZW_STATUS_WIFI_OFF:I = 0x0

.field public static final mVzwnotificationiId:I = 0x102000c


# instance fields
.field private mContext:Landroid/content/Context;

.field public mVzwNotificationEnabled:Z

.field private mVzwWifiAggregationFeature:Z

.field private mVzwWifiStatus:I

.field private mVzwWifiString:Ljava/lang/String;

.field private mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

.field private mWifiConnected:Z

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private mWifiNative:Lcom/android/server/wifi/WifiNative;

.field private mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiConfigStore;Landroid/net/wifi/WifiInfo;Lcom/android/server/wifi/WifiNative;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "w"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p3, "Store"    # Lcom/android/server/wifi/WifiConfigStore;
    .param p4, "wifiInfo"    # Landroid/net/wifi/WifiInfo;
    .param p5, "wifiNative"    # Lcom/android/server/wifi/WifiNative;

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean v1, p0, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->mVzwWifiAggregationFeature:Z

    .line 38
    const-string v0, "VerizonWiFi"

    iput-object v0, p0, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->mVzwWifiString:Ljava/lang/String;

    .line 39
    iput v1, p0, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->mVzwWifiStatus:I

    .line 40
    iput-boolean v1, p0, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->mWifiConnected:Z

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->mVzwNotificationEnabled:Z

    .line 64
    iput-object p1, p0, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->mContext:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 66
    iput-object p3, p0, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    .line 67
    iput-object p4, p0, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 68
    iput-object p5, p0, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    .line 69
    invoke-direct {p0}, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->setVzwStatusReceiver()V

    .line 70
    invoke-direct {p0}, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->setVzwWifiAggregationFeatureEnabled()V

    .line 71
    invoke-direct {p0}, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->setVzwWifiAggregationReceiver()V

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifi/HtcVzwStatusAndAggregation;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/HtcVzwStatusAndAggregation;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->mVzwWifiString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wifi/HtcVzwStatusAndAggregation;)Lcom/android/server/wifi/WifiConfigStore;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/HtcVzwStatusAndAggregation;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wifi/HtcVzwStatusAndAggregation;)Lcom/android/server/wifi/WifiNative;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/HtcVzwStatusAndAggregation;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    return-object v0
.end method

.method private setVzwStatusReceiver()V
    .locals 4

    .prologue
    .line 75
    invoke-static {}, Landroid/net/wifi/HtcWifiCustomizeReader;->getWifiStatusType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/wifi/HtcVzwStatusAndAggregation$1;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/HtcVzwStatusAndAggregation$1;-><init>(Lcom/android/server/wifi/HtcVzwStatusAndAggregation;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 85
    iget-object v0, p0, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/wifi/HtcVzwStatusAndAggregation$2;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/HtcVzwStatusAndAggregation$2;-><init>(Lcom/android/server/wifi/HtcVzwStatusAndAggregation;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 94
    :cond_0
    return-void
.end method

.method private setVzwWifiAggregationFeatureEnabled()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 58
    sget-object v0, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;->VZW_WIFI_AGGREGATION:Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

    invoke-static {v0}, Landroid/net/wifi/HtcWifiCustomizeReader;->support(Landroid/net/wifi/HtcWifiCustomizeReader$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ro.st.agg"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iput-boolean v1, p0, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->mVzwWifiAggregationFeature:Z

    .line 61
    :cond_0
    return-void
.end method

.method private setVzwWifiAggregationReceiver()V
    .locals 4

    .prologue
    .line 97
    invoke-static {}, Landroid/net/wifi/HtcWifiCustomizeReader;->getWifiStatusType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->mVzwWifiAggregationFeature:Z

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/wifi/HtcVzwStatusAndAggregation$3;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/HtcVzwStatusAndAggregation$3;-><init>(Lcom/android/server/wifi/HtcVzwStatusAndAggregation;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.htc.wifi.PICK_VERIZON_WIFI_NETWORK"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 121
    :cond_0
    return-void
.end method


# virtual methods
.method public checkVzwShowNotification(Z)V
    .locals 3
    .param p1, "NotificationEnable"    # Z

    .prologue
    const/4 v2, 0x2

    .line 326
    invoke-static {}, Landroid/net/wifi/HtcWifiCustomizeReader;->getWifiStatusType()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    if-eqz p1, :cond_2

    .line 330
    invoke-virtual {p0}, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->sendVzwStatusNotification()I

    goto :goto_0

    .line 332
    :cond_2
    iget v1, p0, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->mVzwWifiStatus:I

    if-eq v1, v2, :cond_3

    iget v1, p0, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->mVzwWifiStatus:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 333
    :cond_3
    iget-object v1, p0, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 335
    .local v0, "nm":Landroid/app/NotificationManager;
    const v1, 0x102000c

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method public checkVzwWifiAggregation(Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "scanList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/ScanDetail;>;"
    const/4 v5, 0x0

    .line 280
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->mVzwWifiString:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, "VzwWifiConfString":Ljava/lang/String;
    iget-boolean v4, p0, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->mVzwWifiAggregationFeature:Z

    if-nez v4, :cond_0

    move v4, v5

    .line 307
    :goto_0
    return v4

    .line 285
    :cond_0
    iget-object v4, p0, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    .line 286
    .local v3, "wifiConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 287
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v4, :cond_1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 288
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v4, v4, v5

    if-nez v4, :cond_1

    move v4, v5

    .line 291
    goto :goto_0

    .line 286
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 297
    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 300
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wifi/ScanDetail;

    invoke-virtual {v4}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v2

    .line 301
    .local v2, "sr":Landroid/net/wifi/ScanResult;
    iget-object v4, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->mVzwWifiString:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v2, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, v2, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v6, "[ESS]"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 303
    const-string v4, "VzwWifiInScanList is true"

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->log(Ljava/lang/String;)V

    .line 304
    const/4 v4, 0x1

    goto :goto_0

    .line 297
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v2    # "sr":Landroid/net/wifi/ScanResult;
    :cond_4
    move v4, v5

    .line 307
    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 276
    const-string v0, "HtcVzwStatusAndAggregation"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 272
    const-string v0, "HtcVzwStatusAndAggregation"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    return-void
.end method

.method public sendVzwStatusNotification()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->mVzwWifiStatus:I

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->sendVzwStatusNotification(I)I

    move-result v0

    return v0
.end method

.method public sendVzwStatusNotification(I)I
    .locals 14
    .param p1, "iVzwStatus"    # I

    .prologue
    const/4 v11, 0x2

    const v13, 0x102000c

    const/4 v10, 0x1

    const/4 v12, 0x0

    .line 137
    iget-object v8, p0, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->mContext:Landroid/content/Context;

    const-string v9, "notification"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 144
    .local v3, "nm":Landroid/app/NotificationManager;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sendVzwStatusNotification iVzwStatus = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->log(Ljava/lang/String;)V

    .line 145
    iget-object v8, p0, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "wifi_networks_available_notification_on"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-nez v8, :cond_0

    .line 147
    iput-boolean v12, p0, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->mVzwNotificationEnabled:Z

    .line 148
    const-string v8, "do NOT show vzw notification since Wi-FI notification is NOT checked."

    invoke-virtual {p0, v8}, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->loge(Ljava/lang/String;)V

    .line 153
    :goto_0
    if-nez p1, :cond_1

    .line 154
    invoke-virtual {v3, v13}, Landroid/app/NotificationManager;->cancel(I)V

    .line 214
    :goto_1
    return v12

    .line 150
    :cond_0
    iput-boolean v10, p0, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->mVzwNotificationEnabled:Z

    goto :goto_0

    .line 161
    :cond_1
    if-ne p1, v10, :cond_2

    .line 162
    invoke-virtual {v3, v13}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_1

    .line 169
    :cond_2
    if-ne p1, v11, :cond_4

    iget-boolean v8, p0, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->mVzwNotificationEnabled:Z

    if-eqz v8, :cond_4

    .line 170
    const v1, 0x102000a

    .line 171
    .local v1, "iVzwStatusIcon":I
    iget-object v8, p0, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10700ee

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 172
    .local v6, "sTitle":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10700ef

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 173
    .local v5, "sText":Ljava/lang/String;
    const/4 v7, 0x1

    .line 174
    .local v7, "show":Z
    iget-object v8, p0, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.net.wifi.PICK_WIFI_NETWORK"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v8, v12, v9, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 192
    .local v4, "pPendingIntent":Landroid/app/PendingIntent;
    :goto_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 194
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v7, :cond_3

    const-string v8, "com.htc.features"

    invoke-virtual {v0, v8, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 197
    :cond_3
    new-instance v8, Landroid/app/Notification$Builder;

    iget-object v9, p0, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v8

    const-wide/16 v10, 0x0

    invoke-virtual {v8, v10, v11}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 210
    .local v2, "n":Landroid/app/Notification;
    const/16 v8, 0x10

    iput v8, v2, Landroid/app/Notification;->flags:I

    .line 212
    invoke-virtual {v3, v13, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_1

    .line 175
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "iVzwStatusIcon":I
    .end local v2    # "n":Landroid/app/Notification;
    .end local v4    # "pPendingIntent":Landroid/app/PendingIntent;
    .end local v5    # "sText":Ljava/lang/String;
    .end local v6    # "sTitle":Ljava/lang/String;
    .end local v7    # "show":Z
    :cond_4
    const/4 v8, 0x3

    if-ne p1, v8, :cond_5

    .line 176
    const v1, 0x1020016

    .line 177
    .restart local v1    # "iVzwStatusIcon":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10700f0

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 178
    .restart local v6    # "sTitle":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10700f1

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 179
    .restart local v5    # "sText":Ljava/lang/String;
    const/4 v7, 0x0

    .line 180
    .restart local v7    # "show":Z
    iget-object v8, p0, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.net.wifi.PICK_WIFI_NETWORK"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v8, v12, v9, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .restart local v4    # "pPendingIntent":Landroid/app/PendingIntent;
    goto :goto_2

    .line 181
    .end local v1    # "iVzwStatusIcon":I
    .end local v4    # "pPendingIntent":Landroid/app/PendingIntent;
    .end local v5    # "sText":Ljava/lang/String;
    .end local v6    # "sTitle":Ljava/lang/String;
    .end local v7    # "show":Z
    :cond_5
    const/4 v8, 0x4

    if-ne p1, v8, :cond_6

    iget-boolean v8, p0, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->mVzwNotificationEnabled:Z

    if-eqz v8, :cond_6

    .line 182
    const v1, 0x102000a

    .line 183
    .restart local v1    # "iVzwStatusIcon":I
    iget-object v8, p0, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10700f2

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 184
    .restart local v6    # "sTitle":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10700f3

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 185
    .restart local v5    # "sText":Ljava/lang/String;
    const/4 v7, 0x1

    .line 186
    .restart local v7    # "show":Z
    iget-object v8, p0, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.htc.wifi.PICK_VERIZON_WIFI_NETWORK"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v8, v12, v9, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .restart local v4    # "pPendingIntent":Landroid/app/PendingIntent;
    goto/16 :goto_2

    .line 188
    .end local v1    # "iVzwStatusIcon":I
    .end local v4    # "pPendingIntent":Landroid/app/PendingIntent;
    .end local v5    # "sText":Ljava/lang/String;
    .end local v6    # "sTitle":Ljava/lang/String;
    .end local v7    # "show":Z
    :cond_6
    const-string v8, "vzw wifi notification is disabled."

    invoke-virtual {p0, v8}, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->loge(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public setInitialVzwStatus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 218
    invoke-static {}, Landroid/net/wifi/HtcWifiCustomizeReader;->getWifiStatusType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->mVzwWifiStatus:I

    if-nez v0, :cond_0

    .line 219
    const-string v0, "VzwStatus[Initial Wifi_off]"

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->loge(Ljava/lang/String;)V

    .line 220
    iput v2, p0, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->mVzwWifiStatus:I

    .line 221
    iput-boolean v2, p0, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->mWifiConnected:Z

    .line 222
    invoke-virtual {p0, v2}, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->sendVzwStatusNotification(I)I

    .line 224
    :cond_0
    return-void
.end method

.method public setVzwWifiApDetected()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 240
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 241
    .local v1, "scanDetails":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/ScanDetail;>;"
    iget-object v2, p0, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->getScanResultsListNoCopyUnsync()Ljava/util/List;

    move-result-object v1

    .line 242
    invoke-static {}, Landroid/net/wifi/HtcWifiCustomizeReader;->getWifiStatusType()I

    move-result v2

    if-ne v2, v3, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->mVzwWifiStatus:I

    if-eq v2, v4, :cond_2

    iget-boolean v2, p0, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->mWifiConnected:Z

    if-nez v2, :cond_2

    .line 243
    iget-object v2, p0, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v2

    if-ne v2, v6, :cond_1

    .line 244
    const-string v2, "VzwStatus[No APs detected]"

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->loge(Ljava/lang/String;)V

    .line 245
    iput v4, p0, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->mVzwWifiStatus:I

    .line 246
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->sendVzwStatusNotification(I)I

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    const-string v2, "VzwStatus[No APs detected], but state is not enabled, ignore."

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 251
    :cond_2
    invoke-static {}, Landroid/net/wifi/HtcWifiCustomizeReader;->getWifiStatusType()I

    move-result v2

    if-ne v2, v3, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->mWifiConnected:Z

    if-nez v2, :cond_0

    .line 252
    iget-object v2, p0, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v2

    if-ne v2, v6, :cond_4

    .line 254
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->checkVzwWifiAggregation(Ljava/util/List;)Z

    move-result v0

    .line 255
    .local v0, "doWifiAggregation":Z
    iget v2, p0, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->mVzwWifiStatus:I

    if-eq v2, v3, :cond_3

    if-nez v0, :cond_3

    .line 256
    const-string v2, "VzwStatus[AP detected but not connected]"

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->loge(Ljava/lang/String;)V

    .line 257
    iput v3, p0, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->mVzwWifiStatus:I

    .line 258
    invoke-virtual {p0, v3}, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->sendVzwStatusNotification(I)I

    goto :goto_0

    .line 259
    :cond_3
    iget v2, p0, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->mVzwWifiStatus:I

    if-eq v2, v5, :cond_0

    if-eqz v0, :cond_0

    .line 260
    const-string v2, "VzwStatus[Verizon AP detected but not connected]"

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->loge(Ljava/lang/String;)V

    .line 261
    iput v5, p0, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->mVzwWifiStatus:I

    .line 262
    invoke-virtual {p0, v5}, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->sendVzwStatusNotification(I)I

    goto :goto_0

    .line 266
    .end local v0    # "doWifiAggregation":Z
    :cond_4
    const-string v2, "VzwStatus[AP detected or Verizon AP detected], but state is not enabled, ignore."

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setVzwWifiConnected()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 315
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->mWifiConnected:Z

    .line 316
    invoke-static {}, Landroid/net/wifi/HtcWifiCustomizeReader;->getWifiStatusType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->mVzwWifiStatus:I

    if-eq v0, v2, :cond_0

    .line 317
    const-string v0, "VzwStatus[Connected]"

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->loge(Ljava/lang/String;)V

    .line 318
    iput v2, p0, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->mVzwWifiStatus:I

    .line 319
    invoke-virtual {p0, v2}, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->sendVzwStatusNotification(I)I

    .line 321
    :cond_0
    return-void
.end method

.method public setVzwWifiDisconnected()V
    .locals 1

    .prologue
    .line 311
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->mWifiConnected:Z

    .line 312
    return-void
.end method

.method public setVzwWifiNoApDetected()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 227
    invoke-static {}, Landroid/net/wifi/HtcWifiCustomizeReader;->getWifiStatusType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->mVzwWifiStatus:I

    if-eq v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->mWifiConnected:Z

    if-nez v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 229
    const-string v0, "VzwStatus[No APs detected]"

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->loge(Ljava/lang/String;)V

    .line 230
    iput v2, p0, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->mVzwWifiStatus:I

    .line 231
    invoke-virtual {p0, v2}, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->sendVzwStatusNotification(I)I

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    const-string v0, "VzwStatus[No APs detected], but state is not enabled, ignore."

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setVzwWifiOff()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 124
    invoke-static {}, Landroid/net/wifi/HtcWifiCustomizeReader;->getWifiStatusType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->mVzwWifiStatus:I

    if-eqz v0, :cond_0

    .line 125
    const-string v0, "VzwStatus[Wifi_off]"

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->loge(Ljava/lang/String;)V

    .line 126
    iput v2, p0, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->mVzwWifiStatus:I

    .line 127
    iput-boolean v2, p0, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->mWifiConnected:Z

    .line 128
    invoke-virtual {p0, v2}, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->sendVzwStatusNotification(I)I

    .line 130
    :cond_0
    return-void
.end method
