.class Lcom/android/server/wifi/HtcManualAssociateImpl;
.super Lcom/android/server/wifi/HtcManualAssociate;
.source "HtcManualAssociate.java"


# static fields
.field private static final CMCC_REMINDER_BLOCK_TIMER:Ljava/lang/String; = "com.htc.intent.action.CMCC_REMINDER_BLOCK_TIMER"

.field private static final PROPERTY_ASSOCIATE_MODE:Ljava/lang/String; = "wlan.custom.assocmode"

.field private static final TAG:Ljava/lang/String; = "HtcManualAssociate"

.field private static WLAN_DETECTION_TYPE_ATT:I


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mCmccManualNoti:Z

.field public mCmccReminderBlock:Z

.field private mCmccReminderBlocker:Landroid/app/PendingIntent;

.field private mContext:Landroid/content/Context;

.field private mWifiNative:Lcom/android/server/wifi/WifiNative;

.field private mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x2

    sput v0, Lcom/android/server/wifi/HtcManualAssociateImpl;->WLAN_DETECTION_TYPE_ATT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Landroid/app/AlarmManager;Lcom/android/server/wifi/WifiNative;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "w"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p3, "alarm"    # Landroid/app/AlarmManager;
    .param p4, "wifiNative"    # Lcom/android/server/wifi/WifiNative;

    .prologue
    const/4 v2, 0x0

    .line 142
    invoke-direct {p0}, Lcom/android/server/wifi/HtcManualAssociate;-><init>()V

    .line 136
    iput-boolean v2, p0, Lcom/android/server/wifi/HtcManualAssociateImpl;->mCmccReminderBlock:Z

    .line 137
    iput-boolean v2, p0, Lcom/android/server/wifi/HtcManualAssociateImpl;->mCmccManualNoti:Z

    .line 143
    iput-object p1, p0, Lcom/android/server/wifi/HtcManualAssociateImpl;->mContext:Landroid/content/Context;

    .line 144
    iput-object p2, p0, Lcom/android/server/wifi/HtcManualAssociateImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 145
    iput-object p3, p0, Lcom/android/server/wifi/HtcManualAssociateImpl;->mAlarmManager:Landroid/app/AlarmManager;

    .line 146
    iput-object p4, p0, Lcom/android/server/wifi/HtcManualAssociateImpl;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    .line 148
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.intent.action.CMCC_REMINDER_BLOCK_TIMER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 149
    .local v0, "CmccReminderBlocker":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/wifi/HtcManualAssociateImpl;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/HtcManualAssociateImpl;->mCmccReminderBlocker:Landroid/app/PendingIntent;

    .line 152
    iget-object v1, p0, Lcom/android/server/wifi/HtcManualAssociateImpl;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/wifi/HtcManualAssociateImpl$1;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/HtcManualAssociateImpl$1;-><init>(Lcom/android/server/wifi/HtcManualAssociateImpl;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.htc.intent.action.CMCC_REMINDER_BLOCK_TIMER"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 161
    return-void
.end method

.method private getCmccNotiFlag()Z
    .locals 1

    .prologue
    .line 254
    iget-boolean v0, p0, Lcom/android/server/wifi/HtcManualAssociateImpl;->mCmccManualNoti:Z

    return v0
.end method

.method private getMobileDataConnected()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 205
    :try_start_0
    const-string v3, "connectivity"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    .line 206
    .local v0, "connMgr":Landroid/net/IConnectivityManager;
    if-eqz v0, :cond_0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_0

    .line 207
    const-string v3, "getMobileDataConnected true"

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/HtcManualAssociateImpl;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    const/4 v2, 0x1

    .line 215
    .end local v0    # "connMgr":Landroid/net/IConnectivityManager;
    :goto_0
    return v2

    .line 210
    :catch_0
    move-exception v1

    .line 211
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMobileDataConnected Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/HtcManualAssociateImpl;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 214
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "connMgr":Landroid/net/IConnectivityManager;
    :cond_0
    const-string v3, "getMobileDataConnected false"

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/HtcManualAssociateImpl;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setCmccNotiFlag(Z)V
    .locals 0
    .param p1, "isNoti"    # Z

    .prologue
    .line 250
    iput-boolean p1, p0, Lcom/android/server/wifi/HtcManualAssociateImpl;->mCmccManualNoti:Z

    .line 251
    return-void
.end method


# virtual methods
.method public broadcastCmccReminder()V
    .locals 3

    .prologue
    .line 279
    invoke-direct {p0}, Lcom/android/server/wifi/HtcManualAssociateImpl;->getMobileDataConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    const-string v0, "sendBroadcast CMCC_REMINDERT_NOTIFY_ACTION"

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/HtcManualAssociateImpl;->log(Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/android/server/wifi/HtcManualAssociateImpl;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.wifi.cmcc_reminder_noty"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 283
    :cond_0
    return-void
.end method

.method public cancelCmccNoti()V
    .locals 2

    .prologue
    .line 258
    invoke-static {}, Landroid/net/wifi/HtcWifiCustomizeReader;->getPreconfigType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 259
    const-string v0, "cancelCmccNoti 1"

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/HtcManualAssociateImpl;->log(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p0}, Lcom/android/server/wifi/HtcManualAssociateImpl;->getAssociationManual()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 261
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/HtcManualAssociateImpl;->setCmccNotiFlag(Z)V

    .line 264
    :cond_0
    return-void
.end method

.method public cancel_alarm()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/server/wifi/HtcManualAssociateImpl;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/wifi/HtcManualAssociateImpl;->mCmccReminderBlocker:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 195
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/HtcManualAssociateImpl;->mCmccReminderBlock:Z

    .line 196
    return-void
.end method

.method public getAssociationManual()I
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 219
    iget-object v3, p0, Lcom/android/server/wifi/HtcManualAssociateImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 225
    .local v0, "cr":Landroid/content/ContentResolver;
    :try_start_0
    invoke-static {}, Landroid/net/wifi/HtcWifiCustomizeReader;->getWlanDetectionType()I

    move-result v3

    sget v4, Lcom/android/server/wifi/HtcManualAssociateImpl;->WLAN_DETECTION_TYPE_ATT:I

    if-ne v3, v4, :cond_0

    const-string v3, "wifi_associate_manual"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 227
    const-string v3, "getAssociationManual: ATT Wlan, return WIFI_ASSOCIATE_MANUAL_PRECONFIG_ATT"

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/HtcManualAssociateImpl;->log(Ljava/lang/String;)V

    .line 228
    const/4 v2, 0x5

    .line 235
    :goto_0
    return v2

    .line 230
    :cond_0
    const-string v3, "getAssociationManual: from settings"

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/HtcManualAssociateImpl;->log(Ljava/lang/String;)V

    .line 231
    const-string v3, "wifi_associate_manual"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 232
    :catch_0
    move-exception v1

    .line 233
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "wifi_associate_manual"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 234
    const-string v3, "getAssociationManual:read error ,return WIFI_ASSOCIATE_AUTO"

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/HtcManualAssociateImpl;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCmccReminderBlock()Z
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/android/server/wifi/HtcManualAssociateImpl;->mCmccReminderBlock:Z

    return v0
.end method

.method public getVFAutoJoin(Ljava/util/List;I)I
    .locals 6
    .param p2, "netID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .local p1, "configNetworks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 356
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVFAutoJoin netID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/HtcManualAssociateImpl;->log(Ljava/lang/String;)V

    .line 357
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 358
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v4, p2, :cond_0

    .line 359
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v5, "\"VodafoneWiFi\""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 360
    const-string v4, "persist.sys.wifi.vf.VFWiFi.auto"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 361
    const-string v3, "VodafoneWiFi: auto-join"

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/HtcManualAssociateImpl;->log(Ljava/lang/String;)V

    .line 407
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    :goto_0
    return v2

    .line 365
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    const-string v2, "VodafoneWiFi: NO auto-join"

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/HtcManualAssociateImpl;->log(Ljava/lang/String;)V

    move v2, v3

    .line 366
    goto :goto_0

    .line 369
    :cond_3
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v4, :cond_5

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v5, "\"Free_Swisscom_Auto_Login\""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 370
    const-string v4, "persist.sys.wifi.vf.FSC.auto"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 371
    const-string v3, "Free_Swisscom_Auto_Login: auto-join"

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/HtcManualAssociateImpl;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 375
    :cond_4
    const-string v2, "Free_Swisscom_Auto_Login: NO auto-join"

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/HtcManualAssociateImpl;->log(Ljava/lang/String;)V

    move v2, v3

    .line 376
    goto :goto_0

    .line 379
    :cond_5
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v4, :cond_6

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v5, "\"Swisscom_Auto_Login\""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 380
    const-string v4, "persist.sys.wifi.vf.SC.auto"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    move v2, v3

    .line 383
    goto :goto_0

    .line 385
    :cond_6
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v4, :cond_8

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v5, "\"SFR WiFi Mobile\""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 386
    const-string v4, "persist.sys.wifi.vf.SFRM.auto"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 387
    const-string v3, "SFR WiFi Mobile: auto-join"

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/HtcManualAssociateImpl;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 391
    :cond_7
    const-string v2, "SFR WiFi Mobile: NO auto-join"

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/HtcManualAssociateImpl;->log(Ljava/lang/String;)V

    move v2, v3

    .line 392
    goto :goto_0

    .line 395
    :cond_8
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v5, "\"SFR wifi public\""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 396
    const-string v4, "persist.sys.wifi.vf.SFRP.auto"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 397
    const-string v3, "SFR wifi public: auto-join"

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/HtcManualAssociateImpl;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 401
    :cond_9
    const-string v2, "SFR wifi public: NO auto-join"

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/HtcManualAssociateImpl;->log(Ljava/lang/String;)V

    move v2, v3

    .line 402
    goto/16 :goto_0
.end method

.method public ignoreAutoJoinByAtt(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 287
    const-string v0, "\"attwifi\"NONE"

    .line 288
    .local v0, "attssid":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/wifi/HtcManualAssociateImpl;->getAssociationManual()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 289
    const-string v1, "attemptAutoJoin: return - due to ATT Manual Associate"

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/HtcManualAssociateImpl;->log(Ljava/lang/String;)V

    .line 290
    const/4 v1, 0x1

    .line 292
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public ignoreAutoJoinByCmcc()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 297
    invoke-virtual {p0}, Lcom/android/server/wifi/HtcManualAssociateImpl;->getAssociationManual()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 298
    invoke-virtual {p0}, Lcom/android/server/wifi/HtcManualAssociateImpl;->getCmccReminderBlock()Z

    move-result v1

    if-nez v1, :cond_0

    .line 299
    iget-object v1, p0, Lcom/android/server/wifi/HtcManualAssociateImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    const v2, 0x2406e

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 301
    :cond_0
    const-string v1, "[CMCC] attemptAutoJoin: return - due to ALWAYS_REMINDER"

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/HtcManualAssociateImpl;->log(Ljava/lang/String;)V

    .line 313
    :goto_0
    return v0

    .line 307
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wifi/HtcManualAssociateImpl;->getAssociationManual()I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 308
    invoke-direct {p0, v0}, Lcom/android/server/wifi/HtcManualAssociateImpl;->setCmccNotiFlag(Z)V

    .line 309
    const-string v1, "[CMCC] attemptAutoJoin: return - due to Manual Associate"

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/HtcManualAssociateImpl;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 313
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ignoreAutoJoinByVF(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 7
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 411
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ignoreAutoJoinByVF : ssid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", auto join="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "persist.sys.wifi.vf.VFWiFi.auto"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/HtcManualAssociateImpl;->log(Ljava/lang/String;)V

    .line 413
    const-string v0, "\"Free_Swisscom_Auto_Login\"WPA_EAP"

    .line 414
    .local v0, "vodafonessidFSC":Ljava/lang/String;
    const-string v1, "\"Swisscom_Auto_Login\"WPA_EAP"

    .line 415
    .local v1, "vodafonessidSC":Ljava/lang/String;
    const-string v3, "\"VodafoneWiFi\"WPA_EAP"

    .line 416
    .local v3, "vodafonessidVFWiFi":Ljava/lang/String;
    const-string v2, "\"Vodafone NL WiFi\"WPA_EAP"

    .line 418
    .local v2, "vodafonessidVFNLWiFi":Ljava/lang/String;
    const-string v4, "persist.sys.wifi.vf.FSC.auto"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "false"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\"Free_Swisscom_Auto_Login\"WPA_EAP"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_0
    const-string v4, "persist.sys.wifi.vf.SC.auto"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "false"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\"Swisscom_Auto_Login\"WPA_EAP"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_1
    const-string v4, "persist.sys.wifi.vf.VFWiFi.auto"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "false"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\"VodafoneWiFi\"WPA_EAP"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    const-string v4, "persist.sys.wifi.vf.VFNL.auto"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "false"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\"Vodafone NL WiFi\"WPA_EAP"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 422
    :cond_3
    const/4 v4, 0x1

    .line 425
    :goto_0
    return v4

    :cond_4
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 171
    const-string v0, "HtcManualAssociate"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 164
    const-string v0, "HtcManualAssociate"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return-void
.end method

.method protected logi(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 168
    const-string v0, "HtcManualAssociate"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return-void
.end method

.method public setAssociationManual(I)V
    .locals 3
    .param p1, "isManual"    # I

    .prologue
    .line 241
    iget-object v1, p0, Lcom/android/server/wifi/HtcManualAssociateImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 242
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "wifi_associate_manual"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 244
    const-string v1, "wlan.custom.assocmode"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    return-void
.end method

.method public setCmccTimer(Z)Z
    .locals 6
    .param p1, "isTimerOn"    # Z

    .prologue
    const/4 v0, 0x1

    .line 176
    iget-object v1, p0, Lcom/android/server/wifi/HtcManualAssociateImpl;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/android/server/wifi/HtcManualAssociateImpl;->mCmccReminderBlocker:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 177
    iput-boolean v0, p0, Lcom/android/server/wifi/HtcManualAssociateImpl;->mCmccReminderBlock:Z

    .line 178
    if-eqz p1, :cond_1

    .line 179
    iget-object v1, p0, Lcom/android/server/wifi/HtcManualAssociateImpl;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x493e0

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/android/server/wifi/HtcManualAssociateImpl;->mCmccReminderBlocker:Landroid/app/PendingIntent;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 186
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/HtcManualAssociateImpl;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/WifiNative;->setCmccTimer(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to set cmcc timer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/HtcManualAssociateImpl;->loge(Ljava/lang/String;)V

    .line 188
    const/4 v0, 0x0

    .line 190
    :cond_0
    return v0

    .line 182
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/HtcManualAssociateImpl;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x36ee80

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/android/server/wifi/HtcManualAssociateImpl;->mCmccReminderBlocker:Landroid/app/PendingIntent;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public setVFAutoJoin(Ljava/util/List;ZI)Z
    .locals 4
    .param p2, "isAutojoin"    # Z
    .param p3, "netID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;ZI)Z"
        }
    .end annotation

    .prologue
    .line 318
    .local p1, "configNetworks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVFAutoJoin: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " netID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/HtcManualAssociateImpl;->log(Ljava/lang/String;)V

    .line 319
    if-eqz p2, :cond_5

    .line 320
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 321
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v2, p3, :cond_0

    .line 322
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VF SSID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " netID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " auto-join: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/HtcManualAssociateImpl;->log(Ljava/lang/String;)V

    .line 323
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v3, "\"VodafoneWiFi\""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 324
    const-string v2, "persist.sys.wifi.vf.VFWiFi.auto"

    const-string v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    :cond_1
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v3, "\"Free_Swisscom_Auto_Login\""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 326
    const-string v2, "persist.sys.wifi.vf.FSC.auto"

    const-string v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    :cond_2
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v3, "\"Swisscom_Auto_Login\""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 328
    const-string v2, "persist.sys.wifi.vf.SC.auto"

    const-string v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    :cond_3
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v3, "\"SFR WiFi Mobile\""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 330
    const-string v2, "persist.sys.wifi.vf.SFRM.auto"

    const-string v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    :cond_4
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v3, "\"SFR wifi public\""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 332
    const-string v2, "persist.sys.wifi.vf.SFRP.auto"

    const-string v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 336
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_6
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 337
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_6

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v2, p3, :cond_6

    .line 338
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VF SSID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " netID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " auto-join: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/HtcManualAssociateImpl;->log(Ljava/lang/String;)V

    .line 339
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v3, "\"VodafoneWiFi\""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 340
    const-string v2, "persist.sys.wifi.vf.VFWiFi.auto"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    :cond_7
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v3, "\"Free_Swisscom_Auto_Login\""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 342
    const-string v2, "persist.sys.wifi.vf.FSC.auto"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    :cond_8
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v3, "\"Swisscom_Auto_Login\""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 344
    const-string v2, "persist.sys.wifi.vf.SC.auto"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    :cond_9
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v3, "\"SFR WiFi Mobile\""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 346
    const-string v2, "persist.sys.wifi.vf.SFRM.auto"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    :cond_a
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v3, "\"SFR wifi public\""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 348
    const-string v2, "persist.sys.wifi.vf.SFRP.auto"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 352
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_b
    const/4 v2, 0x1

    return v2
.end method

.method public showCmccNoti()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 267
    invoke-static {}, Landroid/net/wifi/HtcWifiCustomizeReader;->getPreconfigType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 268
    invoke-virtual {p0}, Lcom/android/server/wifi/HtcManualAssociateImpl;->getAssociationManual()I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/wifi/HtcManualAssociateImpl;->getCmccNotiFlag()Z

    move-result v1

    if-ne v1, v0, :cond_0

    .line 269
    const-string v1, "Show available icon by CMCC manually notification"

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/HtcManualAssociateImpl;->log(Ljava/lang/String;)V

    .line 273
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
