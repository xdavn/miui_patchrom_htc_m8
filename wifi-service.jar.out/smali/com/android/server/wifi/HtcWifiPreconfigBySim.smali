.class public Lcom/android/server/wifi/HtcWifiPreconfigBySim;
.super Ljava/lang/Object;
.source "HtcWifiPreconfigBySim.java"


# static fields
.field private static DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "HtcWifiPreconfigBySim"

.field private static final WIFI_SIM_PRECONFIG:Ljava/lang/String; = "wifi_sim_preconfig"


# instance fields
.field private InsertSIMBeforeWifiOn:I

.field private mContext:Landroid/content/Context;

.field private mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

.field private final mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiConfigStore;Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wifiConfigStore"    # Lcom/android/server/wifi/WifiConfigStore;
    .param p3, "wifistatemachine"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->InsertSIMBeforeWifiOn:I

    .line 41
    iput-object p1, p0, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->mContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    .line 43
    iput-object p3, p0, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 45
    invoke-virtual {p0}, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->registerSIMReceiver()V

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifi/HtcWifiPreconfigBySim;)Lcom/android/server/wifi/WifiStateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/HtcWifiPreconfigBySim;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    return-object v0
.end method

.method private getSIMPreConfigState()I
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 325
    iget-object v3, p0, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 327
    .local v0, "cr":Landroid/content/ContentResolver;
    :try_start_0
    const-string v3, "wifi_sim_preconfig"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 331
    :goto_0
    return v2

    .line 328
    :catch_0
    move-exception v1

    .line 329
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "HtcWifiPreconfigBySim"

    const-string v4, "Exception: return WIFI_SIM_PRECONFIG as 0"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const-string v3, "wifi_sim_preconfig"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private setPreconfigBySIM(Ljava/lang/String;I)Z
    .locals 13
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    const/4 v12, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 247
    const-string v9, "HtcWifiPreconfigBySim"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "WD setPreconfigBySIM-SSID: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " type:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const/4 v1, 0x0

    .line 249
    .local v1, "getPreconfig":I
    const/4 v4, 0x0

    .line 250
    .local v4, "isSet":Z
    iget-object v9, p0, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v9}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v9

    if-eq v9, v12, :cond_0

    .line 314
    :goto_0
    return v7

    .line 256
    :cond_0
    const-string v9, "\"CHT Wi-Fi Auto\""

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 257
    invoke-direct {p0}, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->getSIMPreConfigState()I

    move-result v1

    .line 258
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_1

    move v4, v8

    .line 259
    :goto_1
    if-eqz v4, :cond_8

    .line 260
    const-string v7, "HtcWifiPreconfigBySim"

    const-string v9, "setPreconfigBySIM: skip CHT"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 261
    goto :goto_0

    :cond_1
    move v4, v7

    .line 258
    goto :goto_1

    .line 263
    :cond_2
    const-string v9, "\"FET Wi-Fi Auto\""

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 264
    invoke-direct {p0}, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->getSIMPreConfigState()I

    move-result v1

    .line 265
    and-int/lit16 v9, v1, 0x100

    if-eqz v9, :cond_3

    move v4, v8

    .line 266
    :goto_2
    if-eqz v4, :cond_8

    .line 267
    const-string v7, "HtcWifiPreconfigBySim"

    const-string v9, "setPreconfigBySIM: skip FET"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 268
    goto :goto_0

    :cond_3
    move v4, v7

    .line 265
    goto :goto_2

    .line 270
    :cond_4
    const-string v9, "\"TWM WiFi Auto\""

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 271
    invoke-direct {p0}, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->getSIMPreConfigState()I

    move-result v1

    .line 272
    and-int/lit16 v9, v1, 0x200

    if-eqz v9, :cond_5

    move v4, v8

    .line 273
    :goto_3
    if-eqz v4, :cond_8

    .line 274
    const-string v7, "HtcWifiPreconfigBySim"

    const-string v9, "setPreconfigBySIM: skip TWM"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 275
    goto :goto_0

    :cond_5
    move v4, v7

    .line 272
    goto :goto_3

    .line 277
    :cond_6
    const-string v9, "\"Telekom_SIM\""

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 278
    invoke-direct {p0}, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->getSIMPreConfigState()I

    move-result v1

    .line 279
    and-int/lit16 v9, v1, 0x2000

    if-eqz v9, :cond_7

    move v4, v8

    .line 280
    :goto_4
    if-eqz v4, :cond_8

    .line 281
    const-string v7, "HtcWifiPreconfigBySim"

    const-string v9, "setPreconfigBySIM: skip Telekom_SIM"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 282
    goto :goto_0

    :cond_7
    move v4, v7

    .line 279
    goto :goto_4

    .line 288
    :cond_8
    iget-object v9, p0, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v9}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v5

    .line 289
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v5, :cond_e

    .line 290
    const/4 v0, 0x0

    .line 291
    .local v0, "IsSSIDexist":Z
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_9
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 293
    .local v2, "i":Landroid/net/wifi/WifiConfiguration;
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v7, :cond_9

    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 294
    const/4 v0, 0x1

    goto :goto_5

    .line 296
    .end local v2    # "i":Landroid/net/wifi/WifiConfiguration;
    :cond_a
    if-nez v0, :cond_d

    .line 298
    new-instance v6, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v6}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 299
    .local v6, "wc":Landroid/net/wifi/WifiConfiguration;
    new-instance v7, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v7}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    iput-object v7, v6, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 300
    iput-object p1, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 301
    iget-object v7, v6, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v9, 0x2

    invoke-virtual {v7, v9}, Ljava/util/BitSet;->set(I)V

    .line 302
    iget-object v7, v6, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v7, v12}, Ljava/util/BitSet;->set(I)V

    .line 303
    iget-object v7, v6, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7, p2}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 304
    const-string v7, "\"BELL_WIFI\""

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    const-string v7, "\"5099251212\""

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    const-string v7, "\"SaskTel Select Wi-Fi 1\""

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 305
    :cond_b
    iput-boolean v8, v6, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 307
    :cond_c
    iget-object v7, p0, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    const/4 v9, -0x1

    invoke-virtual {v7, v6, v9}, Lcom/android/server/wifi/WifiConfigStore;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;I)I

    .line 308
    iget-object v7, p0, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiConfigStore;->saveConfig()Z

    .end local v6    # "wc":Landroid/net/wifi/WifiConfiguration;
    :cond_d
    move v7, v8

    .line 314
    goto/16 :goto_0

    .line 311
    .end local v0    # "IsSSIDexist":Z
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_e
    const-string v8, "HtcWifiPreconfigBySim"

    const-string v9, "list is null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private setSIMPreConfigState(I)V
    .locals 4
    .param p1, "configIndex"    # I

    .prologue
    .line 318
    invoke-direct {p0}, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->getSIMPreConfigState()I

    move-result v0

    .line 319
    .local v0, "getPreconfig":I
    const-string v1, "HtcWifiPreconfigBySim"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSIMPreConfigState configIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const/4 v1, 0x1

    shl-int/2addr v1, p1

    or-int/2addr v0, v1

    .line 321
    iget-object v1, p0, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_sim_preconfig"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 322
    return-void
.end method


# virtual methods
.method public registerSIMReceiver()V
    .locals 4

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/wifi/HtcWifiPreconfigBySim$1;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/HtcWifiPreconfigBySim$1;-><init>(Lcom/android/server/wifi/HtcWifiPreconfigBySim;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 74
    iget-object v0, p0, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/wifi/HtcWifiPreconfigBySim$2;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/HtcWifiPreconfigBySim$2;-><init>(Lcom/android/server/wifi/HtcWifiPreconfigBySim;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 85
    return-void
.end method

.method public setOperatorNumber(Ljava/lang/String;)V
    .locals 7
    .param p1, "operator"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x6

    const/16 v5, 0x8

    const/4 v4, 0x7

    const/4 v3, 0x5

    const/4 v2, 0x4

    .line 88
    sget-boolean v0, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcWifiPreconfigBySim"

    const-string v1, "setOperatorNumber enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_0
    if-eqz p1, :cond_1

    .line 91
    invoke-static {v5}, Landroid/net/wifi/HtcWifiCustomizeReader;->isPreconfigFor(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "334020"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    const-string v0, "\"WiFi Telcel\""

    invoke-direct {p0, v0, v2}, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->setPreconfigBySIM(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 94
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->InsertSIMBeforeWifiOn:I

    .line 175
    :cond_1
    :goto_0
    return-void

    .line 95
    :cond_2
    invoke-static {v4}, Landroid/net/wifi/HtcWifiCustomizeReader;->isPreconfigFor(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "20416"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 97
    const-string v0, "\"T-MobileZone\""

    invoke-direct {p0, v0, v2}, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->setPreconfigBySIM(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 98
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->InsertSIMBeforeWifiOn:I

    goto :goto_0

    .line 99
    :cond_3
    invoke-static {v6}, Landroid/net/wifi/HtcWifiCustomizeReader;->isPreconfigFor(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "20815"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 101
    const-string v0, "\"FreeWifi_secure\""

    invoke-direct {p0, v0, v2}, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->setPreconfigBySIM(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 102
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->InsertSIMBeforeWifiOn:I

    goto :goto_0

    .line 103
    :cond_4
    const-string v0, "23415"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 106
    const-string v0, "\"VodafoneWiFi\""

    invoke-direct {p0, v0, v2}, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->setPreconfigBySIM(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 107
    iput v2, p0, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->InsertSIMBeforeWifiOn:I

    goto :goto_0

    .line 109
    :cond_5
    const-string v0, "persist.sys.wifi.vf.VFWiFi.auto"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "persist.sys.wifi.vf.VFWiFi.auto"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_6
    const-string v0, "22801"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 114
    const-string v0, "\"Free_Swisscom_Auto_Login\""

    invoke-direct {p0, v0, v2}, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->setPreconfigBySIM(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "\"Swisscom_Auto_Login\""

    invoke-direct {p0, v0, v2}, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->setPreconfigBySIM(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 115
    :cond_7
    iput v3, p0, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->InsertSIMBeforeWifiOn:I

    goto :goto_0

    .line 118
    :cond_8
    const-string v0, "persist.sys.wifi.vf.FSC.auto"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "persist.sys.wifi.vf.FSC.auto"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_9
    const-string v0, "persist.sys.wifi.vf.SC.auto"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "persist.sys.wifi.vf.SC.auto"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 121
    :cond_a
    const-string v0, "52501"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "52502"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 123
    :cond_b
    const-string v0, "\"Singtel WIFI\""

    invoke-direct {p0, v0, v2}, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->setPreconfigBySIM(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 124
    iput v6, p0, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->InsertSIMBeforeWifiOn:I

    goto/16 :goto_0

    .line 125
    :cond_c
    const-string v0, "46692"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 127
    const-string v0, "\"CHT Wi-Fi Auto\""

    invoke-direct {p0, v0, v2}, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->setPreconfigBySIM(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_d

    .line 128
    iput v4, p0, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->InsertSIMBeforeWifiOn:I

    goto/16 :goto_0

    .line 130
    :cond_d
    invoke-direct {p0, v4}, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->setSIMPreConfigState(I)V

    goto/16 :goto_0

    .line 131
    :cond_e
    const-string v0, "46601"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 133
    const-string v0, "\"FET Wi-Fi Auto\""

    invoke-direct {p0, v0, v2}, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->setPreconfigBySIM(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 134
    iput v5, p0, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->InsertSIMBeforeWifiOn:I

    goto/16 :goto_0

    .line 136
    :cond_f
    invoke-direct {p0, v5}, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->setSIMPreConfigState(I)V

    goto/16 :goto_0

    .line 137
    :cond_10
    const-string v0, "46697"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 139
    const-string v0, "\"TWM WiFi Auto\""

    invoke-direct {p0, v0, v2}, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->setPreconfigBySIM(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_11

    .line 140
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->InsertSIMBeforeWifiOn:I

    goto/16 :goto_0

    .line 142
    :cond_11
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->setSIMPreConfigState(I)V

    goto/16 :goto_0

    .line 143
    :cond_12
    const-string v0, "302610"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 145
    const-string v0, "\"BELL_WIFI\""

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->setPreconfigBySIM(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "\"5099251212\""

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->setPreconfigBySIM(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 146
    :cond_13
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->InsertSIMBeforeWifiOn:I

    goto/16 :goto_0

    .line 147
    :cond_14
    const-string v0, "302780"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 149
    const-string v0, "\"SaskTel Select Wi-Fi 1\""

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->setPreconfigBySIM(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 150
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->InsertSIMBeforeWifiOn:I

    goto/16 :goto_0

    .line 151
    :cond_15
    const-string v0, "52505"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 153
    const-string v0, "\"Wireless@SGx\""

    invoke-direct {p0, v0, v2}, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->setPreconfigBySIM(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 154
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->InsertSIMBeforeWifiOn:I

    goto/16 :goto_0

    .line 155
    :cond_16
    const-string v0, "26201"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 157
    const-string v0, "\"Telekom_SIM\""

    invoke-direct {p0, v0, v2}, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->setPreconfigBySIM(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_17

    .line 158
    const/16 v0, 0xd

    iput v0, p0, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->InsertSIMBeforeWifiOn:I

    goto/16 :goto_0

    .line 160
    :cond_17
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->setSIMPreConfigState(I)V

    goto/16 :goto_0

    .line 161
    :cond_18
    const-string v0, "20404"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 163
    const-string v0, "\"Vodafone NL Wifi\""

    invoke-direct {p0, v0, v2}, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->setPreconfigBySIM(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_19

    .line 164
    const/16 v0, 0xe

    iput v0, p0, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->InsertSIMBeforeWifiOn:I

    goto/16 :goto_0

    .line 166
    :cond_19
    const-string v0, "persist.sys.wifi.vf.VFNL.auto"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "persist.sys.wifi.vf.VFNL.auto"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 168
    :cond_1a
    const-string v0, "23410"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "23402"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "23411"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    :cond_1b
    const-string v0, "\"Wifi Extra\""

    invoke-direct {p0, v0, v2}, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->setPreconfigBySIM(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "\"Wifi+\""

    invoke-direct {p0, v0, v2}, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->setPreconfigBySIM(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "\" Wifi Extra\""

    invoke-direct {p0, v0, v2}, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->setPreconfigBySIM(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 172
    :cond_1c
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->InsertSIMBeforeWifiOn:I

    goto/16 :goto_0
.end method

.method public setOperatorSSID()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x4

    .line 178
    sget-boolean v0, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcWifiPreconfigBySim"

    const-string v1, "setOperatorSSID enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_0
    iget v0, p0, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->InsertSIMBeforeWifiOn:I

    if-eqz v0, :cond_2

    .line 181
    iget v0, p0, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->InsertSIMBeforeWifiOn:I

    packed-switch v0, :pswitch_data_0

    .line 242
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->InsertSIMBeforeWifiOn:I

    .line 244
    :cond_2
    return-void

    .line 183
    :pswitch_0
    const-string v0, "\"WiFi Telcel\""

    invoke-direct {p0, v0, v2}, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->setPreconfigBySIM(Ljava/lang/String;I)Z

    goto :goto_0

    .line 186
    :pswitch_1
    const-string v0, "\"T-MobileZone\""

    invoke-direct {p0, v0, v2}, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->setPreconfigBySIM(Ljava/lang/String;I)Z

    goto :goto_0

    .line 189
    :pswitch_2
    const-string v0, "\"FreeWifi_secure\""

    invoke-direct {p0, v0, v2}, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->setPreconfigBySIM(Ljava/lang/String;I)Z

    goto :goto_0

    .line 192
    :pswitch_3
    const-string v0, "\"VodafoneWiFi\""

    invoke-direct {p0, v0, v2}, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->setPreconfigBySIM(Ljava/lang/String;I)Z

    .line 193
    const-string v0, "persist.sys.wifi.vf.VFWiFi.auto"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "persist.sys.wifi.vf.VFWiFi.auto"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 196
    :pswitch_4
    const-string v0, "\"Free_Swisscom_Auto_Login\""

    invoke-direct {p0, v0, v2}, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->setPreconfigBySIM(Ljava/lang/String;I)Z

    .line 197
    const-string v0, "persist.sys.wifi.vf.FSC.auto"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "persist.sys.wifi.vf.FSC.auto"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :cond_3
    const-string v0, "\"Swisscom_Auto_Login\""

    invoke-direct {p0, v0, v2}, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->setPreconfigBySIM(Ljava/lang/String;I)Z

    .line 199
    const-string v0, "persist.sys.wifi.vf.SC.auto"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "persist.sys.wifi.vf.SC.auto"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 202
    :pswitch_5
    const-string v0, "\"Singtel WIFI\""

    invoke-direct {p0, v0, v2}, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->setPreconfigBySIM(Ljava/lang/String;I)Z

    goto :goto_0

    .line 205
    :pswitch_6
    const-string v0, "\"CHT Wi-Fi Auto\""

    invoke-direct {p0, v0, v2}, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->setPreconfigBySIM(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->setSIMPreConfigState(I)V

    goto :goto_0

    .line 209
    :pswitch_7
    const-string v0, "\"FET Wi-Fi Auto\""

    invoke-direct {p0, v0, v2}, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->setPreconfigBySIM(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->setSIMPreConfigState(I)V

    goto/16 :goto_0

    .line 213
    :pswitch_8
    const-string v0, "\"TWM WiFi Auto\""

    invoke-direct {p0, v0, v2}, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->setPreconfigBySIM(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->setSIMPreConfigState(I)V

    goto/16 :goto_0

    .line 217
    :pswitch_9
    const-string v0, "\"BELL_WIFI\""

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->setPreconfigBySIM(Ljava/lang/String;I)Z

    .line 218
    const-string v0, "\"5099251212\""

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->setPreconfigBySIM(Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 221
    :pswitch_a
    const-string v0, "\"SaskTel Select Wi-Fi 1\""

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->setPreconfigBySIM(Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 224
    :pswitch_b
    const-string v0, "\"Wireless@SGx\""

    invoke-direct {p0, v0, v2}, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->setPreconfigBySIM(Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 227
    :pswitch_c
    const-string v0, "\"Telekom_SIM\""

    invoke-direct {p0, v0, v2}, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->setPreconfigBySIM(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->setSIMPreConfigState(I)V

    goto/16 :goto_0

    .line 231
    :pswitch_d
    const-string v0, "\"Vodafone NL Wifi\""

    invoke-direct {p0, v0, v2}, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->setPreconfigBySIM(Ljava/lang/String;I)Z

    .line 232
    const-string v0, "persist.sys.wifi.vf.VFNL.auto"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "persist.sys.wifi.vf.VFNL.auto"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 235
    :pswitch_e
    const-string v0, "\"Wifi Extra\""

    invoke-direct {p0, v0, v2}, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->setPreconfigBySIM(Ljava/lang/String;I)Z

    .line 236
    const-string v0, "\"WiFi+\""

    invoke-direct {p0, v0, v2}, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->setPreconfigBySIM(Ljava/lang/String;I)Z

    .line 237
    const-string v0, "\" Wifi Extra\""

    invoke-direct {p0, v0, v2}, Lcom/android/server/wifi/HtcWifiPreconfigBySim;->setPreconfigBySIM(Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 181
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method
