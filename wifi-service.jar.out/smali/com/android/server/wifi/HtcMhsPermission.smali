.class public Lcom/android/server/wifi/HtcMhsPermission;
.super Ljava/lang/Object;
.source "HtcMhsPermission.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/HtcMhsPermission$TetheringPermissionObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HtcMhsPermission"


# instance fields
.field mCm:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mEnableMHS:Z

.field mObserver:Lcom/android/server/wifi/HtcMhsPermission$TetheringPermissionObserver;

.field private mProcessingMHS:Z

.field private mWifiApMhsPermission:Z

.field private mWifiConfigMHS:Landroid/net/wifi/WifiConfiguration;

.field private mWifiController:Lcom/android/server/wifi/WifiController;

.field private mWifiServiceImpl:Lcom/android/server/wifi/WifiServiceImpl;

.field private final mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

.field private status:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiServiceImpl;Lcom/android/server/wifi/WifiController;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wifistatemachine"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p3, "service"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p4, "wifiController"    # Lcom/android/server/wifi/WifiController;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-boolean v1, p0, Lcom/android/server/wifi/HtcMhsPermission;->mWifiApMhsPermission:Z

    .line 28
    iput-boolean v1, p0, Lcom/android/server/wifi/HtcMhsPermission;->mProcessingMHS:Z

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/HtcMhsPermission;->status:I

    .line 31
    iput-boolean v1, p0, Lcom/android/server/wifi/HtcMhsPermission;->mEnableMHS:Z

    .line 32
    iput-object v2, p0, Lcom/android/server/wifi/HtcMhsPermission;->mWifiConfigMHS:Landroid/net/wifi/WifiConfiguration;

    .line 36
    iput-object v2, p0, Lcom/android/server/wifi/HtcMhsPermission;->mCm:Landroid/net/ConnectivityManager;

    .line 38
    iput-object v2, p0, Lcom/android/server/wifi/HtcMhsPermission;->mObserver:Lcom/android/server/wifi/HtcMhsPermission$TetheringPermissionObserver;

    .line 41
    iput-object p2, p0, Lcom/android/server/wifi/HtcMhsPermission;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 42
    iput-object p1, p0, Lcom/android/server/wifi/HtcMhsPermission;->mContext:Landroid/content/Context;

    .line 43
    iput-object p3, p0, Lcom/android/server/wifi/HtcMhsPermission;->mWifiServiceImpl:Lcom/android/server/wifi/WifiServiceImpl;

    .line 44
    iput-object p4, p0, Lcom/android/server/wifi/HtcMhsPermission;->mWifiController:Lcom/android/server/wifi/WifiController;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifi/HtcMhsPermission;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/HtcMhsPermission;

    .prologue
    .line 25
    iget v0, p0, Lcom/android/server/wifi/HtcMhsPermission;->status:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/wifi/HtcMhsPermission;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/HtcMhsPermission;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/android/server/wifi/HtcMhsPermission;->status:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/wifi/HtcMhsPermission;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/HtcMhsPermission;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/server/wifi/HtcMhsPermission;->mWifiConfigMHS:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wifi/HtcMhsPermission;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/HtcMhsPermission;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/android/server/wifi/HtcMhsPermission;->mEnableMHS:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/wifi/HtcMhsPermission;Landroid/net/wifi/WifiConfiguration;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/HtcMhsPermission;
    .param p1, "x1"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "x2"    # Z

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/HtcMhsPermission;->check_frisbee(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/wifi/HtcMhsPermission;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/HtcMhsPermission;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/android/server/wifi/HtcMhsPermission;->mProcessingMHS:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/wifi/HtcMhsPermission;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/HtcMhsPermission;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/android/server/wifi/HtcMhsPermission;->mProcessingMHS:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/server/wifi/HtcMhsPermission;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/HtcMhsPermission;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/android/server/wifi/HtcMhsPermission;->mWifiApMhsPermission:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/wifi/HtcMhsPermission;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/HtcMhsPermission;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/server/wifi/HtcMhsPermission;->checkWifiApRemindDialog()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/wifi/HtcMhsPermission;)Lcom/android/server/wifi/WifiServiceImpl;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/HtcMhsPermission;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/server/wifi/HtcMhsPermission;->mWifiServiceImpl:Lcom/android/server/wifi/WifiServiceImpl;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/wifi/HtcMhsPermission;)Lcom/android/server/wifi/WifiController;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/HtcMhsPermission;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/server/wifi/HtcMhsPermission;->mWifiController:Lcom/android/server/wifi/WifiController;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/wifi/HtcMhsPermission;)Lcom/android/server/wifi/WifiStateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/HtcMhsPermission;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/server/wifi/HtcMhsPermission;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    return-object v0
.end method

.method private checkWifiApRemindDialog()Z
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x0

    .line 158
    const/4 v2, -0x1

    .line 159
    .local v2, "showDialog":I
    invoke-static {}, Landroid/net/wifi/HtcWifiCustomizeReader;->getHotspotRemindType()I

    move-result v4

    if-ne v4, v7, :cond_0

    .line 161
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wifi/HtcMhsPermission;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "hotspot_power_mode_remind"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    .line 162
    const-string v4, "HtcMhsPermission"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkWifiApRemindDialog flag = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    invoke-static {}, Landroid/net/wifi/HtcWifiCustomizeReader;->getHotspotRemindType()I

    move-result v4

    if-ne v4, v7, :cond_1

    .line 170
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.htc.hotspot.SETUP_POWER_MODE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 171
    .local v1, "newIntent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 172
    iget-object v4, p0, Lcom/android/server/wifi/HtcMhsPermission;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 182
    .end local v1    # "newIntent":Landroid/content/Intent;
    :goto_1
    return v3

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    const/4 v2, 0x0

    .line 165
    const-string v4, "HtcMhsPermission"

    const-string v5, "checkWifiApRemindDialog exception"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 173
    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :catch_1
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "HtcMhsPermission"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkWifiApRemindDialog startActivity exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 178
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-static {}, Landroid/net/wifi/HtcWifiCustomizeReader;->isMHSEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/android/server/wifi/HtcMhsPermission;->mWifiApMhsPermission:Z

    if-nez v4, :cond_2

    .line 179
    const-string v4, "HtcMhsPermission"

    const-string v5, "MHS permission is not allowed, should not enter here"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 182
    :cond_2
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private check_frisbee(Landroid/net/wifi/WifiConfiguration;Z)Z
    .locals 5
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 100
    const-string v0, "net.frisbee.enabled"

    const-string v3, "0"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 101
    const-string v0, "HtcMhsPermission"

    const-string v3, "ignore MHS for Frisbee"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iput-boolean v1, p0, Lcom/android/server/wifi/HtcMhsPermission;->mWifiApMhsPermission:Z

    .line 103
    iput-boolean v2, p0, Lcom/android/server/wifi/HtcMhsPermission;->mProcessingMHS:Z

    .line 104
    invoke-direct {p0}, Lcom/android/server/wifi/HtcMhsPermission;->checkWifiApRemindDialog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/HtcMhsPermission;->mWifiServiceImpl:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {p1}, Lcom/android/server/wifi/WifiServiceImpl;->isValid(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 107
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/HtcMhsPermission;->mWifiController:Lcom/android/server/wifi/WifiController;

    const v4, 0x2600a

    if-eqz p2, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v4, v0, v2, p1}, Lcom/android/server/wifi/WifiController;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 114
    :cond_1
    :goto_1
    return v1

    :cond_2
    move v0, v2

    .line 107
    goto :goto_0

    .line 109
    :cond_3
    const-string v0, "HtcMhsPermission"

    const-string v2, "Invalid WifiConfiguration"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    move v1, v2

    .line 114
    goto :goto_1
.end method

.method private setParameterMHS(ZLandroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/android/server/wifi/HtcMhsPermission;->mEnableMHS:Z

    .line 78
    iput-object p2, p0, Lcom/android/server/wifi/HtcMhsPermission;->mWifiConfigMHS:Landroid/net/wifi/WifiConfiguration;

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/HtcMhsPermission;->mProcessingMHS:Z

    .line 80
    return-void
.end method


# virtual methods
.method public checkWifiApMhs(Z)Z
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 194
    invoke-static {}, Landroid/net/wifi/HtcWifiCustomizeReader;->isMHSEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 206
    :cond_0
    :goto_0
    return v0

    .line 196
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/wifi/HtcMhsPermission;->mWifiApMhsPermission:Z

    if-nez v2, :cond_2

    if-ne p1, v1, :cond_2

    move v0, v1

    .line 198
    goto :goto_0

    .line 199
    :cond_2
    if-nez p1, :cond_0

    .line 200
    iput-boolean v0, p0, Lcom/android/server/wifi/HtcMhsPermission;->mWifiApMhsPermission:Z

    .line 201
    iput-boolean v0, p0, Lcom/android/server/wifi/HtcMhsPermission;->mProcessingMHS:Z

    .line 202
    iput-boolean v0, p0, Lcom/android/server/wifi/HtcMhsPermission;->mEnableMHS:Z

    .line 203
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/HtcMhsPermission;->mWifiConfigMHS:Landroid/net/wifi/WifiConfiguration;

    goto :goto_0
.end method

.method public getProcessingMHS()Z
    .locals 1

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/android/server/wifi/HtcMhsPermission;->mProcessingMHS:Z

    return v0
.end method

.method public internal_htcSetupPermittedTether()I
    .locals 8

    .prologue
    .line 83
    const/4 v6, 0x0

    .line 85
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/HtcMhsPermission;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/net/ConnectivityManager;->CONTENT_URI_WIFI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 86
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 87
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/HtcMhsPermission;->status:I

    .line 88
    const-string v0, "HtcMhsPermission"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MHS Permitted Tether update - WIFI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wifi/HtcMhsPermission;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    if-eqz v6, :cond_0

    .line 93
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 96
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/server/wifi/HtcMhsPermission;->status:I

    return v0

    .line 89
    :catch_0
    move-exception v7

    .line 90
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    if-eqz v6, :cond_0

    .line 93
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 92
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    .line 93
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0
.end method

.method public registerMhsReceiver()V
    .locals 4

    .prologue
    .line 187
    const-string v0, "HtcMhsPermission"

    const-string v1, "registerMhsReceiver"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/wifi/HtcMhsPermission;->status:I

    .line 189
    new-instance v0, Lcom/android/server/wifi/HtcMhsPermission$TetheringPermissionObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/HtcMhsPermission$TetheringPermissionObserver;-><init>(Lcom/android/server/wifi/HtcMhsPermission;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/wifi/HtcMhsPermission;->mObserver:Lcom/android/server/wifi/HtcMhsPermission$TetheringPermissionObserver;

    .line 190
    iget-object v0, p0, Lcom/android/server/wifi/HtcMhsPermission;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/net/ConnectivityManager;->CONTENT_URI_WIFI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/wifi/HtcMhsPermission;->mObserver:Lcom/android/server/wifi/HtcMhsPermission$TetheringPermissionObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 191
    return-void
.end method

.method public setWifiApEnabledMhsRequest(Landroid/net/wifi/WifiConfiguration;Z)Z
    .locals 5
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 49
    invoke-static {}, Landroid/net/wifi/HtcWifiCustomizeReader;->isMHSEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 72
    :cond_0
    :goto_0
    return v0

    .line 51
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/HtcMhsPermission;->check_frisbee(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 55
    iget-boolean v2, p0, Lcom/android/server/wifi/HtcMhsPermission;->mProcessingMHS:Z

    if-ne v2, v0, :cond_2

    if-ne p2, v0, :cond_2

    .line 56
    const-string v0, "HtcMhsPermission"

    const-string v2, "MHS is processing"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 57
    goto :goto_0

    .line 59
    :cond_2
    const-string v2, "HtcMhsPermission"

    const-string v3, "setWifiApEnabledMhsRequest "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    if-ne p2, v0, :cond_3

    .line 62
    invoke-direct {p0, p2, p1}, Lcom/android/server/wifi/HtcMhsPermission;->setParameterMHS(ZLandroid/net/wifi/WifiConfiguration;)V

    .line 63
    const-string v0, "HtcMhsPermission"

    const-string v2, "Requesting for premission"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v0, p0, Lcom/android/server/wifi/HtcMhsPermission;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/wifi/HtcMhsPermission;->mCm:Landroid/net/ConnectivityManager;

    .line 65
    iget-object v0, p0, Lcom/android/server/wifi/HtcMhsPermission;->mCm:Landroid/net/ConnectivityManager;

    const-string v2, "hotspot"

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->htcRequestPermittedTether(Ljava/lang/String;)Z

    move v0, v1

    .line 66
    goto :goto_0

    .line 68
    :cond_3
    invoke-direct {p0, p2, v4}, Lcom/android/server/wifi/HtcMhsPermission;->setParameterMHS(ZLandroid/net/wifi/WifiConfiguration;)V

    .line 69
    iput-boolean v1, p0, Lcom/android/server/wifi/HtcMhsPermission;->mProcessingMHS:Z

    .line 70
    iput-boolean v1, p0, Lcom/android/server/wifi/HtcMhsPermission;->mWifiApMhsPermission:Z

    .line 71
    iget-object v1, p0, Lcom/android/server/wifi/HtcMhsPermission;->mWifiServiceImpl:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v1, v4, p2}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    goto :goto_0
.end method
