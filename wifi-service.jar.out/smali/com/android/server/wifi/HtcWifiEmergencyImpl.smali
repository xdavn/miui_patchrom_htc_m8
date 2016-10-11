.class Lcom/android/server/wifi/HtcWifiEmergencyImpl;
.super Lcom/android/server/wifi/HtcWifiEmergency;
.source "HtcWifiEmergency.java"


# static fields
.field private static DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "HtcWifiEmergency"

.field private static final TEST_KEY:Ljava/lang/String; = "wifi.calling.support"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEmergencyModeChanged:Z

.field private mPreEmergencyModeChanged:Z

.field private mWifiServiceImpl:Lcom/android/server/wifi/WifiServiceImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wifi/HtcWifiEmergencyImpl;->DBG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiServiceImpl;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/wifi/WifiServiceImpl;

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Lcom/android/server/wifi/HtcWifiEmergency;-><init>()V

    .line 61
    iput-boolean v0, p0, Lcom/android/server/wifi/HtcWifiEmergencyImpl;->mPreEmergencyModeChanged:Z

    .line 62
    iput-boolean v0, p0, Lcom/android/server/wifi/HtcWifiEmergencyImpl;->mEmergencyModeChanged:Z

    .line 66
    iput-object p1, p0, Lcom/android/server/wifi/HtcWifiEmergencyImpl;->mContext:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lcom/android/server/wifi/HtcWifiEmergencyImpl;->mWifiServiceImpl:Lcom/android/server/wifi/WifiServiceImpl;

    .line 69
    invoke-direct {p0}, Lcom/android/server/wifi/HtcWifiEmergencyImpl;->registerForIntent()V

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifi/HtcWifiEmergencyImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/HtcWifiEmergencyImpl;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/server/wifi/HtcWifiEmergencyImpl;->mEmergencyModeChanged:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/wifi/HtcWifiEmergencyImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/HtcWifiEmergencyImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/server/wifi/HtcWifiEmergencyImpl;->mEmergencyModeChanged:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/wifi/HtcWifiEmergencyImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/HtcWifiEmergencyImpl;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/server/wifi/HtcWifiEmergencyImpl;->mPreEmergencyModeChanged:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/wifi/HtcWifiEmergencyImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/HtcWifiEmergencyImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/server/wifi/HtcWifiEmergencyImpl;->mPreEmergencyModeChanged:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/wifi/HtcWifiEmergencyImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/HtcWifiEmergencyImpl;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/server/wifi/HtcWifiEmergencyImpl;->updateWifiState()V

    return-void
.end method

.method private getPersistedWifiEnabled()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 165
    iget-object v4, p0, Lcom/android/server/wifi/HtcWifiEmergencyImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 167
    .local v0, "cr":Landroid/content/ContentResolver;
    :try_start_0
    const-string v4, "wifi_on"

    invoke-static {v0, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 168
    .local v2, "gWifiOn":I
    if-eqz v2, :cond_0

    const/4 v4, 0x3

    if-eq v2, v4, :cond_0

    const/4 v3, 0x1

    .line 171
    .end local v2    # "gWifiOn":I
    :cond_0
    :goto_0
    return v3

    .line 169
    :catch_0
    move-exception v1

    .line 170
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v4, "wifi_on"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private registerForIntent()V
    .locals 3

    .prologue
    .line 135
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 136
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.htc.intent.action.HTC_EMERGENCY_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Lcom/android/server/wifi/HtcWifiEmergencyImpl;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/wifi/HtcWifiEmergencyImpl$1;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/HtcWifiEmergencyImpl$1;-><init>(Lcom/android/server/wifi/HtcWifiEmergencyImpl;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 162
    return-void
.end method

.method private updateWifiState()V
    .locals 4

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/android/server/wifi/HtcWifiEmergencyImpl;->getPersistedWifiEnabled()Z

    move-result v0

    .line 179
    .local v0, "wifiEnabled":Z
    const-string v1, "HtcWifiEmergency"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wifiEnabled:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mEmergencyModeChanged:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/wifi/HtcWifiEmergencyImpl;->mEmergencyModeChanged:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    if-eqz v0, :cond_0

    .line 182
    iget-object v2, p0, Lcom/android/server/wifi/HtcWifiEmergencyImpl;->mWifiServiceImpl:Lcom/android/server/wifi/WifiServiceImpl;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wifi/HtcWifiEmergencyImpl;->mEmergencyModeChanged:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiEnabled(Z)Z

    .line 183
    :cond_0
    return-void

    .line 182
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public isEmergencyMode()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/server/wifi/HtcWifiEmergencyImpl;->mEmergencyModeChanged:Z

    return v0
.end method

.method public isSupportWifiCalling()Z
    .locals 14

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 78
    const/4 v12, 0x0

    .line 79
    .local v12, "wifiCallingExist":Z
    const/4 v13, 0x0

    .line 80
    .local v13, "wifiCallingFunctional":Z
    const-string v2, "HtcWifiEmergency"

    const-string v3, "isSupportWifiCalling()"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/4 v10, 0x0

    .line 82
    .local v10, "pm":Landroid/content/pm/PackageManager;
    const/4 v9, 0x0

    .line 83
    .local v9, "pi":Landroid/content/pm/PackageInfo;
    const/4 v6, 0x0

    .line 86
    .local v6, "appInfo":Landroid/content/pm/ApplicationInfo;
    sget-boolean v2, Lcom/android/server/wifi/HtcWifiEmergencyImpl;->DBG:Z

    if-eqz v2, :cond_0

    .line 87
    const-string v2, "wifi.calling.support"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 88
    .local v11, "supported":Z
    if-eqz v11, :cond_0

    .line 130
    .end local v11    # "supported":Z
    :goto_0
    return v0

    .line 94
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/HtcWifiEmergencyImpl;->mContext:Landroid/content/Context;

    if-nez v2, :cond_1

    move v0, v1

    .line 95
    goto :goto_0

    .line 98
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/HtcWifiEmergencyImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 99
    const-string v1, "com.htc.vowifi"

    const/4 v2, 0x0

    invoke-virtual {v10, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 100
    iget-object v6, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 101
    iget v1, v6, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 103
    const/4 v12, 0x1

    .line 106
    :cond_2
    const/4 v7, 0x0

    .line 107
    .local v7, "c":Landroid/database/Cursor;
    if-ne v12, v0, :cond_4

    .line 109
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wifi/HtcWifiEmergencyImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.htc.vowifi/status/WFC_STATE"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 111
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    .line 113
    const/4 v13, 0x1

    .line 119
    :cond_3
    if-eqz v7, :cond_4

    .line 120
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 121
    const/4 v7, 0x0

    .end local v7    # "c":Landroid/database/Cursor;
    :cond_4
    :goto_1
    move v0, v13

    .line 130
    goto :goto_0

    .line 115
    .restart local v7    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v8

    .line 116
    .local v8, "ex":Ljava/lang/Exception;
    :try_start_3
    const-string v0, "HtcWifiEmergency"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 119
    if-eqz v7, :cond_4

    .line 120
    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 121
    const/4 v7, 0x0

    goto :goto_1

    .line 119
    .end local v8    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_5

    .line 120
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 121
    const/4 v7, 0x0

    :cond_5
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 125
    .end local v7    # "c":Landroid/database/Cursor;
    :catch_1
    move-exception v8

    .line 126
    .restart local v8    # "ex":Ljava/lang/Exception;
    const-string v0, "HtcWifiEmergency"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
