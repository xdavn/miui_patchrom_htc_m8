.class public Lcom/android/server/wifi/HtcHotspotSleepPolicy;
.super Ljava/lang/Object;
.source "HtcHotspotSleepPolicy.java"


# static fields
.field public static final HOTSPOT_DEFAULT_SLEEP_POLICY:I = 0x1

.field public static final HOTSPOT_NEVER_SLEEP:I = 0x2

.field public static final HOTSPOT_SLEEP_10_MINS:I = 0x1

.field public static final HOTSPOT_SLEEP_20_MINS:I = 0x3

.field public static final HOTSPOT_SLEEP_30_MINS:I = 0x4

.field public static final HOTSPOT_SLEEP_5_MINS:I = 0x0

.field public static final HOTSPOT_SLEEP_60_MINS:I = 0x5

.field private static final TAG:Ljava/lang/String; = "HtcHotspotSleepPolicy"

.field private static final WIIF_AP_IDLE_REQUEST:I = 0x1


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mBiHotspotClientConnectionOn:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentHotspotClient:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiApSleepIntent:Landroid/app/PendingIntent;

.field private final mWifiServiceImpl:Lcom/android/server/wifi/WifiServiceImpl;

.field private final mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiServiceImpl;Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wifiServiceImpl"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p3, "wifistatemachine"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    const/4 v3, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput v3, p0, Lcom/android/server/wifi/HtcHotspotSleepPolicy;->mCurrentHotspotClient:I

    .line 52
    iput-boolean v3, p0, Lcom/android/server/wifi/HtcHotspotSleepPolicy;->mBiHotspotClientConnectionOn:Z

    .line 65
    new-instance v1, Lcom/android/server/wifi/HtcHotspotSleepPolicy$1;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/HtcHotspotSleepPolicy$1;-><init>(Lcom/android/server/wifi/HtcHotspotSleepPolicy;)V

    iput-object v1, p0, Lcom/android/server/wifi/HtcHotspotSleepPolicy;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 56
    iput-object p3, p0, Lcom/android/server/wifi/HtcHotspotSleepPolicy;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 57
    iput-object p2, p0, Lcom/android/server/wifi/HtcHotspotSleepPolicy;->mWifiServiceImpl:Lcom/android/server/wifi/WifiServiceImpl;

    .line 58
    iput-object p1, p0, Lcom/android/server/wifi/HtcHotspotSleepPolicy;->mContext:Landroid/content/Context;

    .line 59
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.wifi.action.WIFI_AP_DEVICE_IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 60
    .local v0, "wifiApStopIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/wifi/HtcHotspotSleepPolicy;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/HtcHotspotSleepPolicy;->mWifiApSleepIntent:Landroid/app/PendingIntent;

    .line 61
    iget-object v1, p0, Lcom/android/server/wifi/HtcHotspotSleepPolicy;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/server/wifi/HtcHotspotSleepPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    .line 62
    invoke-direct {p0}, Lcom/android/server/wifi/HtcHotspotSleepPolicy;->registerForBroadcasts()V

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifi/HtcHotspotSleepPolicy;)Lcom/android/server/wifi/WifiStateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/HtcHotspotSleepPolicy;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/server/wifi/HtcHotspotSleepPolicy;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wifi/HtcHotspotSleepPolicy;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/HtcHotspotSleepPolicy;

    .prologue
    .line 28
    iget v0, p0, Lcom/android/server/wifi/HtcHotspotSleepPolicy;->mCurrentHotspotClient:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/wifi/HtcHotspotSleepPolicy;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/HtcHotspotSleepPolicy;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/android/server/wifi/HtcHotspotSleepPolicy;->mCurrentHotspotClient:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/wifi/HtcHotspotSleepPolicy;)Lcom/android/server/wifi/WifiServiceImpl;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/HtcHotspotSleepPolicy;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/server/wifi/HtcHotspotSleepPolicy;->mWifiServiceImpl:Lcom/android/server/wifi/WifiServiceImpl;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wifi/HtcHotspotSleepPolicy;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/HtcHotspotSleepPolicy;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/server/wifi/HtcHotspotSleepPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wifi/HtcHotspotSleepPolicy;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/HtcHotspotSleepPolicy;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/server/wifi/HtcHotspotSleepPolicy;->mWifiApSleepIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/wifi/HtcHotspotSleepPolicy;)Landroid/app/AlarmManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/HtcHotspotSleepPolicy;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/server/wifi/HtcHotspotSleepPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/wifi/HtcHotspotSleepPolicy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/HtcHotspotSleepPolicy;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/android/server/wifi/HtcHotspotSleepPolicy;->mBiHotspotClientConnectionOn:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/wifi/HtcHotspotSleepPolicy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/HtcHotspotSleepPolicy;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/android/server/wifi/HtcHotspotSleepPolicy;->mBiHotspotClientConnectionOn:Z

    return p1
.end method

.method private getAssocCount(Ljava/lang/String;)I
    .locals 4
    .param p1, "assoc"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 144
    if-nez p1, :cond_1

    .line 159
    :cond_0
    :goto_0
    return v1

    .line 147
    :cond_1
    const-string v3, "|"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 148
    .local v2, "index":I
    if-ltz v2, :cond_0

    .line 151
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "clientNumber":Ljava/lang/String;
    const/4 v1, 0x0

    .line 156
    .local v1, "count":I
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 157
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private registerForBroadcasts()V
    .locals 3

    .prologue
    .line 133
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 134
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    const-string v1, "com.htc.hotspot.ASSOCLIST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    const-string v1, "com.htc.wifi.action.WIFI_AP_DEVICE_IDLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Lcom/android/server/wifi/HtcHotspotSleepPolicy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wifi/HtcHotspotSleepPolicy;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 139
    return-void
.end method


# virtual methods
.method public checkSleepPolicy(Ljava/lang/String;)V
    .locals 8
    .param p1, "clientList"    # Ljava/lang/String;

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/android/server/wifi/HtcHotspotSleepPolicy;->getAssocCount(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/wifi/HtcHotspotSleepPolicy;->mCurrentHotspotClient:I

    .line 164
    iget v4, p0, Lcom/android/server/wifi/HtcHotspotSleepPolicy;->mCurrentHotspotClient:I

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/android/server/wifi/HtcHotspotSleepPolicy;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_6

    .line 165
    iget-object v4, p0, Lcom/android/server/wifi/HtcHotspotSleepPolicy;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 166
    .local v1, "mCurrentApConfiguration":Landroid/net/wifi/WifiConfiguration;
    const-string v4, "HtcHotspotSleepPolicy"

    const-string v5, "set sleep policy"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v4, p0, Lcom/android/server/wifi/HtcHotspotSleepPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v5, p0, Lcom/android/server/wifi/HtcHotspotSleepPolicy;->mWifiApSleepIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 168
    const/4 v0, 0x0

    .line 169
    .local v0, "idleTimeMin":I
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->sleepPolicy:I

    if-nez v4, :cond_1

    .line 170
    const/4 v0, 0x5

    .line 183
    :cond_0
    :goto_0
    if-eqz v0, :cond_5

    .line 184
    const-string v4, "HtcHotspotSleepPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set SoftAP sleep policy for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mins"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    mul-int/lit8 v6, v0, 0x3c

    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    add-long v2, v4, v6

    .line 186
    .local v2, "triggerTime":J
    iget-object v4, p0, Lcom/android/server/wifi/HtcHotspotSleepPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/wifi/HtcHotspotSleepPolicy;->mWifiApSleepIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5, v2, v3, v6}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 194
    .end local v0    # "idleTimeMin":I
    .end local v1    # "mCurrentApConfiguration":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "triggerTime":J
    :goto_1
    return-void

    .line 171
    .restart local v0    # "idleTimeMin":I
    .restart local v1    # "mCurrentApConfiguration":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->sleepPolicy:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 172
    const/16 v0, 0xa

    goto :goto_0

    .line 175
    :cond_2
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->sleepPolicy:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    .line 176
    const/16 v0, 0x14

    goto :goto_0

    .line 177
    :cond_3
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->sleepPolicy:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_4

    .line 178
    const/16 v0, 0x1e

    goto :goto_0

    .line 179
    :cond_4
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->sleepPolicy:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_0

    .line 180
    const/16 v0, 0x3c

    goto :goto_0

    .line 188
    :cond_5
    const-string v4, "HtcHotspotSleepPolicy"

    const-string v5, "set SoftAP sleep policy to always on"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 191
    .end local v0    # "idleTimeMin":I
    .end local v1    # "mCurrentApConfiguration":Landroid/net/wifi/WifiConfiguration;
    :cond_6
    iget-object v4, p0, Lcom/android/server/wifi/HtcHotspotSleepPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v5, p0, Lcom/android/server/wifi/HtcHotspotSleepPolicy;->mWifiApSleepIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 192
    const-string v4, "HtcHotspotSleepPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cancel SoftAP sleep policy: mCurrentHotspotClient="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/wifi/HtcHotspotSleepPolicy;->mCurrentHotspotClient:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", syncGetWifiApState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/HtcHotspotSleepPolicy;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
