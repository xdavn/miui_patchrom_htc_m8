.class Lcom/android/server/wifi/HtcWifiDockImpl;
.super Lcom/android/server/wifi/HtcWifiDock;
.source "HtcWifiDock.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HtcWifiDock"


# instance fields
.field private mAutoEnableWifiApInDockMode:Z

.field private mAutoEnableWifiInDockMode:Z

.field private mContext:Landroid/content/Context;

.field private mInDockMode:Z

.field private mWifiEnabledByDock:Z

.field private mWifiService:Lcom/android/server/wifi/WifiServiceImpl;

.field private mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiServiceImpl;Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wifiService"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p3, "wifiStateMachine"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Lcom/android/server/wifi/HtcWifiDock;-><init>()V

    .line 63
    iput-boolean v1, p0, Lcom/android/server/wifi/HtcWifiDockImpl;->mAutoEnableWifiApInDockMode:Z

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/HtcWifiDockImpl;->mAutoEnableWifiInDockMode:Z

    .line 65
    iput-boolean v1, p0, Lcom/android/server/wifi/HtcWifiDockImpl;->mInDockMode:Z

    .line 66
    iput-boolean v1, p0, Lcom/android/server/wifi/HtcWifiDockImpl;->mWifiEnabledByDock:Z

    .line 73
    iput-object p1, p0, Lcom/android/server/wifi/HtcWifiDockImpl;->mContext:Landroid/content/Context;

    .line 74
    iput-object p3, p0, Lcom/android/server/wifi/HtcWifiDockImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 75
    iput-object p2, p0, Lcom/android/server/wifi/HtcWifiDockImpl;->mWifiService:Lcom/android/server/wifi/WifiServiceImpl;

    .line 76
    invoke-direct {p0}, Lcom/android/server/wifi/HtcWifiDockImpl;->registerDockModeReceiver()V

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifi/HtcWifiDockImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/HtcWifiDockImpl;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/server/wifi/HtcWifiDockImpl;->mAutoEnableWifiInDockMode:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/wifi/HtcWifiDockImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/HtcWifiDockImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/server/wifi/HtcWifiDockImpl;->mInDockMode:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/wifi/HtcWifiDockImpl;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/HtcWifiDockImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/server/wifi/HtcWifiDockImpl;->setWifiEnableInDockMode(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/wifi/HtcWifiDockImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/HtcWifiDockImpl;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/server/wifi/HtcWifiDockImpl;->mAutoEnableWifiApInDockMode:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/wifi/HtcWifiDockImpl;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/HtcWifiDockImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/server/wifi/HtcWifiDockImpl;->setWifiApEnableInDockMode(Z)V

    return-void
.end method

.method private enforceAccessPermission()V
    .locals 3

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/server/wifi/HtcWifiDockImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method private persistDockWifiApEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 168
    if-eqz p1, :cond_0

    const-string v1, "HtcWifiDock"

    const-string v2, "DockWifi- persistDockWifiApEnabled 1"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/HtcWifiDockImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 171
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v2, "dock_hotspot_on"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 172
    return-void

    .line 169
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_0
    const-string v1, "HtcWifiDock"

    const-string v2, "DockWifi- persistDockWifiApEnabled 0"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 171
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private persistDockWifiEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 175
    if-eqz p1, :cond_0

    const-string v1, "HtcWifiDock"

    const-string v2, "DockWifi- persistDockWifiEnabled 1"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/HtcWifiDockImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 178
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v2, "dock_wifi_on"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 179
    return-void

    .line 176
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_0
    const-string v1, "HtcWifiDock"

    const-string v2, "DockWifi- persistDockWifiEnabled 0"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 178
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private registerDockModeReceiver()V
    .locals 4

    .prologue
    .line 80
    const-string v0, "HtcWifiDock"

    const-string v1, "DockWifi - receive doce event"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-static {}, Landroid/net/wifi/HtcWifiCustomizeReader;->isSupportDockWifi()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    const-string v0, "HtcWifiDock"

    const-string v1, "DockWifi - Add ACTION_DOCK_EVENT (wifi) receiver"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lcom/android/server/wifi/HtcWifiDockImpl;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/wifi/HtcWifiDockImpl$1;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/HtcWifiDockImpl$1;-><init>(Lcom/android/server/wifi/HtcWifiDockImpl;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.DOCK_EVENT"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 121
    :goto_0
    return-void

    .line 103
    :cond_0
    const-string v0, "HtcWifiDock"

    const-string v1, "DockWifi - Add ACTION_DOCK_EVENT (hotspot) receiver"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, Lcom/android/server/wifi/HtcWifiDockImpl;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/wifi/HtcWifiDockImpl$2;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/HtcWifiDockImpl$2;-><init>(Lcom/android/server/wifi/HtcWifiDockImpl;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.DOCK_EVENT"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private setWifiApEnableInDockMode(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/android/server/wifi/HtcWifiDockImpl;->enforceAccessPermission()V

    .line 183
    const-string v1, "HtcWifiDock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DockWifi - setWifiApEnableInDockMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v1, p0, Lcom/android/server/wifi/HtcWifiDockImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/HtcWifiDockImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    .line 186
    :cond_0
    const-string v1, "HtcWifiDock"

    const-string v2, "DockWifi - setWifiApEnableInDockMode return due to hotspot already on"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :goto_0
    return-void

    .line 189
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 190
    iget-object v1, p0, Lcom/android/server/wifi/HtcWifiDockImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v0

    .line 191
    .local v0, "WifiState":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 192
    :cond_2
    const-string v1, "HtcWifiDock"

    const-string v2, "DockWifi - setWifiApEnableInDockMode turn off Wifi then enable hotspot"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v1, p0, Lcom/android/server/wifi/HtcWifiDockImpl;->mWifiService:Lcom/android/server/wifi/WifiServiceImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiEnabled(Z)Z

    .line 196
    .end local v0    # "WifiState":I
    :cond_3
    const-string v1, "HtcWifiDock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DockWifi - setWifiApEnableInDockMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v1, p0, Lcom/android/server/wifi/HtcWifiDockImpl;->mWifiService:Lcom/android/server/wifi/WifiServiceImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    goto :goto_0
.end method

.method private setWifiEnableInDockMode(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 201
    invoke-direct {p0}, Lcom/android/server/wifi/HtcWifiDockImpl;->enforceAccessPermission()V

    .line 202
    if-ne p1, v3, :cond_4

    .line 203
    iget-object v1, p0, Lcom/android/server/wifi/HtcWifiDockImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/HtcWifiDockImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 204
    :cond_0
    const-string v1, "HtcWifiDock"

    const-string v2, "DockWifi - setWifiEnableInDockMode return due to wifi is already on"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :goto_0
    return-void

    .line 207
    :cond_1
    iput-boolean v3, p0, Lcom/android/server/wifi/HtcWifiDockImpl;->mWifiEnabledByDock:Z

    .line 208
    iget-object v1, p0, Lcom/android/server/wifi/HtcWifiDockImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/server/wifi/HtcWifiDockImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_3

    .line 209
    :cond_2
    const-string v1, "HtcWifiDock"

    const-string v2, "DockWifi - setWifiEnableInDockMode turn off hotspot then enable wifi"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v1, p0, Lcom/android/server/wifi/HtcWifiDockImpl;->mWifiService:Lcom/android/server/wifi/WifiServiceImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v4}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 212
    :cond_3
    const-string v1, "HtcWifiDock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DockWifi - setWifiEnableInDockMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v1, p0, Lcom/android/server/wifi/HtcWifiDockImpl;->mWifiService:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiEnabled(Z)Z

    goto :goto_0

    .line 215
    :cond_4
    iget-object v1, p0, Lcom/android/server/wifi/HtcWifiDockImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/wifi/HtcWifiDockImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v1

    if-ne v1, v3, :cond_6

    .line 216
    :cond_5
    const-string v1, "HtcWifiDock"

    const-string v2, "DockWifi - setWifiEnableInDockMode return due to wifi is already off"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iput-boolean v4, p0, Lcom/android/server/wifi/HtcWifiDockImpl;->mWifiEnabledByDock:Z

    goto :goto_0

    .line 220
    :cond_6
    iget-boolean v1, p0, Lcom/android/server/wifi/HtcWifiDockImpl;->mWifiEnabledByDock:Z

    if-eqz v1, :cond_9

    .line 221
    iget-object v1, p0, Lcom/android/server/wifi/HtcWifiDockImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v0

    .line 222
    .local v0, "suppState":Landroid/net/wifi/SupplicantState;
    sget-object v1, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    if-eq v0, v1, :cond_7

    sget-object v1, Landroid/net/wifi/SupplicantState;->INACTIVE:Landroid/net/wifi/SupplicantState;

    if-eq v0, v1, :cond_7

    sget-object v1, Landroid/net/wifi/SupplicantState;->SCANNING:Landroid/net/wifi/SupplicantState;

    if-eq v0, v1, :cond_7

    sget-object v1, Landroid/net/wifi/SupplicantState;->DORMANT:Landroid/net/wifi/SupplicantState;

    if-eq v0, v1, :cond_7

    sget-object v1, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    if-eq v0, v1, :cond_7

    sget-object v1, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    if-ne v0, v1, :cond_8

    .line 225
    :cond_7
    const-string v1, "HtcWifiDock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DockWifi - setWifiEnableInDockMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v1, p0, Lcom/android/server/wifi/HtcWifiDockImpl;->mWifiService:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiEnabled(Z)Z

    .line 233
    .end local v0    # "suppState":Landroid/net/wifi/SupplicantState;
    :goto_1
    iput-boolean v4, p0, Lcom/android/server/wifi/HtcWifiDockImpl;->mWifiEnabledByDock:Z

    goto/16 :goto_0

    .line 228
    .restart local v0    # "suppState":Landroid/net/wifi/SupplicantState;
    :cond_8
    const-string v1, "HtcWifiDock"

    const-string v2, "DockWifi - We don\'t turn off wifi due to Wifi is connecting or connected."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 231
    .end local v0    # "suppState":Landroid/net/wifi/SupplicantState;
    :cond_9
    const-string v1, "HtcWifiDock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DockWifi - We don\'t turn off wifi due to mWifiEnabledByDock: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/wifi/HtcWifiDockImpl;->mWifiEnabledByDock:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public getDockWifiApAutoEnabled()Z
    .locals 3

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/android/server/wifi/HtcWifiDockImpl;->enforceAccessPermission()V

    .line 137
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 138
    const-string v0, "HtcWifiDock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DockWifi - getDockWifiApAutoEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/wifi/HtcWifiDockImpl;->mAutoEnableWifiApInDockMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-boolean v0, p0, Lcom/android/server/wifi/HtcWifiDockImpl;->mAutoEnableWifiApInDockMode:Z

    return v0
.end method

.method public getDockWifiAutoEnabled()Z
    .locals 3

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/android/server/wifi/HtcWifiDockImpl;->enforceAccessPermission()V

    .line 155
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 156
    const-string v0, "HtcWifiDock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DockWifi - getDockWifiAutoEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/wifi/HtcWifiDockImpl;->mAutoEnableWifiInDockMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-boolean v0, p0, Lcom/android/server/wifi/HtcWifiDockImpl;->mAutoEnableWifiInDockMode:Z

    return v0
.end method

.method public setDockWifiApAutoEnabled(Z)Z
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    const/4 v3, 0x1

    .line 125
    invoke-direct {p0}, Lcom/android/server/wifi/HtcWifiDockImpl;->enforceAccessPermission()V

    .line 126
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 127
    const-string v0, "HtcWifiDock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DockWifi - setDockWifiApAutoEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iput-boolean p1, p0, Lcom/android/server/wifi/HtcWifiDockImpl;->mAutoEnableWifiApInDockMode:Z

    .line 129
    invoke-direct {p0, p1}, Lcom/android/server/wifi/HtcWifiDockImpl;->persistDockWifiApEnabled(Z)V

    .line 130
    iget-boolean v0, p0, Lcom/android/server/wifi/HtcWifiDockImpl;->mInDockMode:Z

    if-ne v0, v3, :cond_0

    if-ne p1, v3, :cond_0

    .line 131
    invoke-direct {p0, v3}, Lcom/android/server/wifi/HtcWifiDockImpl;->setWifiApEnableInDockMode(Z)V

    .line 132
    :cond_0
    return v3
.end method

.method public setDockWifiAutoEnabled(Z)Z
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    const/4 v3, 0x1

    .line 143
    invoke-direct {p0}, Lcom/android/server/wifi/HtcWifiDockImpl;->enforceAccessPermission()V

    .line 144
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 145
    const-string v0, "HtcWifiDock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DockWifi - setDockWifiAutoEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iput-boolean p1, p0, Lcom/android/server/wifi/HtcWifiDockImpl;->mAutoEnableWifiInDockMode:Z

    .line 147
    invoke-direct {p0, p1}, Lcom/android/server/wifi/HtcWifiDockImpl;->persistDockWifiEnabled(Z)V

    .line 148
    iget-boolean v0, p0, Lcom/android/server/wifi/HtcWifiDockImpl;->mInDockMode:Z

    if-ne v0, v3, :cond_0

    if-ne p1, v3, :cond_0

    .line 149
    invoke-direct {p0, v3}, Lcom/android/server/wifi/HtcWifiDockImpl;->setWifiEnableInDockMode(Z)V

    .line 150
    :cond_0
    return v3
.end method
