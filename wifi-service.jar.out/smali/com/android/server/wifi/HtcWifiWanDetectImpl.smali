.class Lcom/android/server/wifi/HtcWifiWanDetectImpl;
.super Lcom/android/server/wifi/HtcWifiWanDetect;
.source "HtcWifiWanDetect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/HtcWifiWanDetectImpl$4;
    }
.end annotation


# static fields
.field public static final ACTION_LAN_DETECTION_RETRY:Ljava/lang/String; = "com.htc.wifi.LAN_DETECTION_RETRY"

.field private static final ACTION_SHOW_WAN_ERROR_DIALOG:Ljava/lang/String; = "com.htc.wifi.SHOW_WAN_ERROR_DIALOG"

.field public static final ACTION_WAN_DETECTION_RETRY:Ljava/lang/String; = "com.htc.wifi.WAN_DETECTION_RETRY"

.field private static final TAG:Ljava/lang/String; = "HtcWifiWanDetect"

.field private static final VZW_AVOID_BAD_CONNECTION_DIALOG_ENABLED:Ljava/lang/String; = "vzw_avoid_bad_connection_dialog_enabled"

.field private static final VZW_AVOID_BAD_CONNECTION_ENABLED:Ljava/lang/String; = "vzw_avoid_bad_connection_enabled"

.field private static final WAN_DETECTION_ENABLED:Ljava/lang/String; = "wan_detection_enabled"

.field private static final WAN_SOCKET_TIMEOUT_MS:I = 0x3a98


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mErrorCode:I

.field private mHandler:Landroid/os/Handler;

.field private mHtcLanDetectionEnabled:Z

.field private mHtcWanDetectionDialogEnabled:Z

.field private mHtcWanDetectionEnabled:Z

.field private mHtcWanDetectionFirstConnection:Z

.field private mIndicateWanError:Z

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mInterfaceName:Ljava/lang/String;

.field private mMaxUrlCheckingCount:I

.field private mNetworkID:I

.field private mVzwAvoidBadConnectionEnabled:Z

.field private mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

.field private mWifiConnected:Z

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

.field private mWifiWanErrorNotification:Landroid/app/Notification;

.field private mWsmChannel:Lcom/android/internal/util/AsyncChannel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Messenger;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wifiStateMachine"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p3, "dstMessenger"    # Landroid/os/Messenger;

    .prologue
    const/4 v0, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 139
    invoke-direct {p0}, Lcom/android/server/wifi/HtcWifiWanDetect;-><init>()V

    .line 105
    iput-object v1, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mContext:Landroid/content/Context;

    .line 106
    iput-object v1, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mInterfaceName:Ljava/lang/String;

    .line 107
    iput-object v1, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 108
    iput-object v1, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 109
    iput-object v1, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mIntentFilter:Landroid/content/IntentFilter;

    .line 110
    iput-object v1, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 111
    iput-object v1, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    .line 118
    iput-boolean v2, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mHtcLanDetectionEnabled:Z

    .line 119
    iput-boolean v2, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mHtcWanDetectionEnabled:Z

    .line 120
    iput-boolean v0, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mHtcWanDetectionDialogEnabled:Z

    .line 121
    iput-boolean v0, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mHtcWanDetectionFirstConnection:Z

    .line 122
    iput-boolean v2, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mWifiConnected:Z

    .line 123
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mMaxUrlCheckingCount:I

    .line 125
    iput-boolean v2, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mIndicateWanError:Z

    .line 127
    iput v3, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mErrorCode:I

    .line 128
    iput v3, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mNetworkID:I

    .line 129
    iput-object v1, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mHandler:Landroid/os/Handler;

    .line 134
    iput-boolean v2, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mVzwAvoidBadConnectionEnabled:Z

    .line 140
    iput-object p1, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mContext:Landroid/content/Context;

    .line 141
    iput-object p2, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 143
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    .line 144
    iget-object v0, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v1, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3}, Lcom/android/internal/util/AsyncChannel;->connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)I

    .line 145
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mHandler:Landroid/os/Handler;

    .line 146
    iget-object v0, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->syncWifiConfigStore()Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    .line 149
    invoke-virtual {p0}, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->getWanDetectionEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mHtcWanDetectionEnabled:Z

    .line 152
    invoke-direct {p0}, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->setupWanDetectReceiver()V

    .line 153
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/wifi/HtcWifiWanDetectImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/HtcWifiWanDetectImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mWifiConnected:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/wifi/HtcWifiWanDetectImpl;)Landroid/net/wifi/WifiInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/HtcWifiWanDetectImpl;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/wifi/HtcWifiWanDetectImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/HtcWifiWanDetectImpl;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->checkStopWanDetection()Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/wifi/HtcWifiWanDetectImpl;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/HtcWifiWanDetectImpl;
    .param p1, "x1"    # Landroid/net/wifi/WifiInfo;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/server/wifi/HtcWifiWanDetectImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/HtcWifiWanDetectImpl;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->checkDNSIP()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/wifi/HtcWifiWanDetectImpl;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/HtcWifiWanDetectImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->sendVzwErrorBroadcast(II)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/wifi/HtcWifiWanDetectImpl;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/HtcWifiWanDetectImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->sendErrorBroadcast(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wifi/HtcWifiWanDetectImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/HtcWifiWanDetectImpl;

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mHtcWanDetectionFirstConnection:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/wifi/HtcWifiWanDetectImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/HtcWifiWanDetectImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mHtcWanDetectionFirstConnection:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/wifi/HtcWifiWanDetectImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/HtcWifiWanDetectImpl;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->doWanDetection()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/wifi/HtcWifiWanDetectImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/HtcWifiWanDetectImpl;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->clearWanErrorNotification()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wifi/HtcWifiWanDetectImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/HtcWifiWanDetectImpl;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->doLanDetection()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/wifi/HtcWifiWanDetectImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/HtcWifiWanDetectImpl;

    .prologue
    .line 103
    iget v0, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mErrorCode:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/wifi/HtcWifiWanDetectImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/HtcWifiWanDetectImpl;

    .prologue
    .line 103
    iget v0, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mNetworkID:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/wifi/HtcWifiWanDetectImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/HtcWifiWanDetectImpl;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/wifi/HtcWifiWanDetectImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/HtcWifiWanDetectImpl;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->waitDNS()V

    return-void
.end method

.method private canDoWanDetection()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 237
    const-string v2, "wifi.wan.detection"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 263
    :cond_0
    :goto_0
    return v0

    .line 239
    :cond_1
    const-string v2, "wifi.wan.detection"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 240
    goto :goto_0

    .line 243
    :cond_2
    const-string v2, "ro.boot.mode"

    const-string v3, "normal"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "factory2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    .line 244
    goto :goto_0

    .line 246
    :cond_3
    iget-object v2, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getWifiSsid()Landroid/net/wifi/WifiSsid;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 247
    iget-object v2, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getWifiSsid()Landroid/net/wifi/WifiSsid;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HTC transfer tool "

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 248
    const-string v0, "HtcWifiWanDetect"

    const-string v2, "Connecte to Frisbee AP"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 249
    goto :goto_0

    .line 251
    :cond_4
    iget-object v2, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getWifiSsid()Landroid/net/wifi/WifiSsid;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Chromecast"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 252
    const-string v0, "HtcWifiWanDetect"

    const-string v2, "Connecte to chromecast"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 253
    goto :goto_0

    .line 258
    :cond_5
    const-string v2, "HtcWifiWanDetect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canDoWanDetection: mHtcWanDetectionDialogEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mHtcWanDetectionDialogEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mHtcWanDetectionEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mHtcWanDetectionEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-boolean v2, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mHtcWanDetectionDialogEnabled:Z

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mHtcWanDetectionEnabled:Z

    if-nez v2, :cond_0

    :cond_6
    move v0, v1

    .line 263
    goto/16 :goto_0
.end method

.method private checkDNSIP()Z
    .locals 4

    .prologue
    .line 288
    iget-object v1, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v2, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 289
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    const-string v1, "HtcWifiWanDetect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "security check "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NONE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 291
    const/4 v1, 0x0

    .line 293
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private checkStopWanDetection()Z
    .locals 2

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mWifiConnected:Z

    if-nez v0, :cond_0

    .line 280
    const-string v0, "HtcWifiWanDetect"

    const-string v1, "Disconnect when WAN detection, stop WAN detection"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const/4 v0, 0x1

    .line 283
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private clearWanErrorNotification()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 540
    iget-boolean v0, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mIndicateWanError:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 541
    invoke-direct {p0, v2}, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->setWanErrorNotificationVisible(Z)V

    .line 542
    iput-boolean v2, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mIndicateWanError:Z

    .line 543
    const-string v0, "HtcWifiWanDetect"

    const-string v1, "clear WAN_ERROR icon"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_0
    return-void
.end method

.method private doLanDetection()V
    .locals 2

    .prologue
    .line 229
    const-string v0, "HtcWifiWanDetect"

    const-string v1, "LAN detection"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    return-void
.end method

.method private doWanDetection()V
    .locals 2

    .prologue
    .line 299
    const-string v0, "HtcWifiWanDetect"

    const-string v1, "WAN detection"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v0, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-nez v0, :cond_0

    .line 301
    const-string v0, "HtcWifiWanDetect"

    const-string v1, "Ignoring WAN detection, mWifiInfo is NULL"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :goto_0
    return-void

    .line 302
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->canDoWanDetection()Z

    move-result v0

    if-nez v0, :cond_1

    .line 303
    const-string v0, "HtcWifiWanDetect"

    const-string v1, "Don\'t enable WAN detection"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 305
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/wifi/HtcWifiWanDetectImpl$3;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/HtcWifiWanDetectImpl$3;-><init>(Lcom/android/server/wifi/HtcWifiWanDetectImpl;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private doubleCheckWanDetection(Ljava/lang/String;I)Z
    .locals 13
    .param p1, "queryAddress"    # Ljava/lang/String;
    .param p2, "networkId"    # I

    .prologue
    const/16 v12, 0x16

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 376
    const/4 v6, 0x0

    .line 377
    .local v6, "urlConnection":Ljava/net/HttpURLConnection;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "http://"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 378
    .local v2, "httpAddress":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v7, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mMaxUrlCheckingCount:I

    if-ge v3, v7, :cond_6

    .line 379
    const-string v7, "HtcWifiWanDetect"

    const-string v10, "do doubleCheckWanDetection"

    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 382
    .local v5, "url":Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v6, v0

    .line 383
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 384
    const/16 v7, 0x3a98

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 385
    const/16 v7, 0x3a98

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 386
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 387
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    .line 389
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 390
    .local v4, "response":I
    const-string v7, "HtcWifiWanDetect"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "doubleCheckWanDetection urlConnection.getResponseCode: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const/16 v7, 0x190

    if-lt v4, v7, :cond_1

    .line 392
    const-string v7, "HtcWifiWanDetect"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "WAN problem detected C. response code="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const/16 v7, 0x16

    invoke-direct {p0, v7, p2}, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->sendErrorBroadcast(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    if-eqz v6, :cond_0

    .line 403
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    move v7, v8

    .line 411
    .end local v4    # "response":I
    .end local v5    # "url":Ljava/net/URL;
    :goto_1
    return v7

    .line 397
    .restart local v4    # "response":I
    .restart local v5    # "url":Ljava/net/URL;
    :cond_1
    :try_start_1
    const-string v7, "HtcWifiWanDetect"

    const-string v10, "WAN link is good"

    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 402
    if-eqz v6, :cond_2

    .line 403
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    move v7, v9

    goto :goto_1

    .line 399
    .end local v4    # "response":I
    .end local v5    # "url":Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 400
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    const-string v7, "HtcWifiWanDetect"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "WAN problem detected D. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 402
    if-eqz v6, :cond_3

    .line 403
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 407
    :cond_3
    invoke-direct {p0}, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->checkStopWanDetection()Z

    move-result v7

    if-eqz v7, :cond_5

    move v7, v9

    goto :goto_1

    .line 402
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    if-eqz v6, :cond_4

    .line 403
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    throw v7

    .line 378
    .restart local v1    # "e":Ljava/io/IOException;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 410
    .end local v1    # "e":Ljava/io/IOException;
    :cond_6
    invoke-direct {p0, v12, p2}, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->sendErrorBroadcast(II)V

    move v7, v8

    .line 411
    goto :goto_1
.end method

.method private getVzwAvoidBadConnectionDialogEnabled()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    .line 634
    const/4 v3, 0x1

    .line 635
    .local v3, "enable":Z
    const/4 v1, 0x1

    .line 637
    .local v1, "defaultEnabledValue":I
    iget-object v5, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 639
    .local v0, "content":Landroid/content/ContentResolver;
    :try_start_0
    const-string v5, "vzw_avoid_bad_connection_dialog_enabled"

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v4, :cond_0

    move v3, v4

    .line 640
    :goto_0
    const-string v5, "HtcWifiWanDetect"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getVzwAvoidBadConnectionDialogEnabled(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v3

    .line 646
    :goto_1
    return v4

    .line 639
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 641
    :catch_0
    move-exception v2

    .line 642
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "HtcWifiWanDetect"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getVzwAvoidBadConnectionDialogEnabled() Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (Set Default value to WAN detection:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    const-string v5, "vzw_avoid_bad_connection_dialog_enabled"

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method private sendErrorBroadcast(II)V
    .locals 4
    .param p1, "errorCode"    # I
    .param p2, "networkID"    # I

    .prologue
    .line 549
    invoke-static {}, Landroid/net/wifi/HtcWifiCustomizeReader;->getWlanDetectionType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 550
    const-string v0, "HtcWifiWanDetect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendErrorBroadcast disable networkID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    iget-object v0, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v1, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mHandler:Landroid/os/Handler;

    const v2, 0x25011

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 558
    :goto_0
    return-void

    .line 553
    :cond_0
    const-string v0, "HtcWifiWanDetect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendErrorBroadcast errorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " networkID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    iput p1, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mErrorCode:I

    .line 555
    iput p2, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mNetworkID:I

    .line 556
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->setWanErrorNotificationVisible(Z)V

    goto :goto_0
.end method

.method private sendVzwErrorBroadcast(II)V
    .locals 5
    .param p1, "errorCode"    # I
    .param p2, "networkID"    # I

    .prologue
    .line 562
    iget-boolean v1, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mVzwAvoidBadConnectionEnabled:Z

    if-eqz v1, :cond_1

    .line 563
    const-string v1, "HtcWifiWanDetect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendVzwErrorBroadcast disable networkID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    iget-object v1, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v2, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mHandler:Landroid/os/Handler;

    const v3, 0x25011

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p2, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 573
    :cond_0
    :goto_0
    return-void

    .line 565
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->getVzwAvoidBadConnectionDialogEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 566
    const-string v1, "HtcWifiWanDetect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendVzwErrorBroadcast errorCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " networkID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.wifi.ERROR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 568
    .local v0, "uiIntent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 569
    const-string v1, "errorCode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 570
    const-string v1, "networkID"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 571
    iget-object v1, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private setWanErrorNotificationVisible(Z)V
    .locals 9
    .param p1, "visible"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 506
    const-string v4, "HtcWifiWanDetect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setWanErrorNotificationVisible visible="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    if-nez p1, :cond_0

    iget-boolean v4, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mIndicateWanError:Z

    if-nez v4, :cond_0

    .line 533
    :goto_0
    return-void

    .line 511
    :cond_0
    iget-object v4, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 514
    .local v1, "notificationManager":Landroid/app/NotificationManager;
    if-eqz p1, :cond_3

    .line 515
    iget-object v4, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mWifiWanErrorNotification:Landroid/app/Notification;

    if-nez v4, :cond_1

    .line 516
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    iput-object v4, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mWifiWanErrorNotification:Landroid/app/Notification;

    .line 517
    iget-object v4, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mWifiWanErrorNotification:Landroid/app/Notification;

    const-wide/16 v6, 0x0

    iput-wide v6, v4, Landroid/app/Notification;->when:J

    .line 518
    iget-object v4, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mWifiWanErrorNotification:Landroid/app/Notification;

    const v5, 0x1020009

    iput v5, v4, Landroid/app/Notification;->icon:I

    .line 519
    iget-object v4, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mWifiWanErrorNotification:Landroid/app/Notification;

    const/16 v5, 0x10

    iput v5, v4, Landroid/app/Notification;->flags:I

    .line 520
    iget-object v4, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mWifiWanErrorNotification:Landroid/app/Notification;

    iget-object v5, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.htc.wifi.SHOW_WAN_ERROR_DIALOG"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v8, v6, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 523
    :cond_1
    iget-object v4, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070055

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 524
    .local v2, "title":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 525
    .local v0, "details":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mWifiWanErrorNotification:Landroid/app/Notification;

    iput-object v3, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 526
    iget-object v3, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mWifiWanErrorNotification:Landroid/app/Notification;

    iget-object v4, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mWifiWanErrorNotification:Landroid/app/Notification;

    iget-object v5, v5, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4, v2, v0, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 527
    iget-object v3, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mWifiWanErrorNotification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->icon:I

    iget-object v4, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mWifiWanErrorNotification:Landroid/app/Notification;

    invoke-virtual {v1, v3, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 532
    .end local v0    # "details":Ljava/lang/String;
    .end local v2    # "title":Ljava/lang/String;
    :goto_2
    iput-boolean p1, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mIndicateWanError:Z

    goto :goto_0

    .restart local v2    # "title":Ljava/lang/String;
    :cond_2
    move-object v0, v3

    .line 524
    goto :goto_1

    .line 530
    .end local v2    # "title":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mWifiWanErrorNotification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->icon:I

    invoke-virtual {v1, v3}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_2
.end method

.method private setWifiWanErrorDialogReceiver()V
    .locals 4

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/wifi/HtcWifiWanDetectImpl$2;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/HtcWifiWanDetectImpl$2;-><init>(Lcom/android/server/wifi/HtcWifiWanDetectImpl;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.htc.wifi.SHOW_WAN_ERROR_DIALOG"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 225
    return-void
.end method

.method private setupWanDetectReceiver()V
    .locals 3

    .prologue
    .line 159
    new-instance v0, Lcom/android/server/wifi/HtcWifiWanDetectImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/HtcWifiWanDetectImpl$1;-><init>(Lcom/android/server/wifi/HtcWifiWanDetectImpl;)V

    iput-object v0, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 198
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mIntentFilter:Landroid/content/IntentFilter;

    .line 199
    iget-object v0, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.htc.wifi.LAN_DETECTION_RETRY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.htc.wifi.WAN_DETECTION_RETRY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 205
    invoke-direct {p0}, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->setWifiWanErrorDialogReceiver()V

    .line 206
    return-void
.end method

.method private waitDNS()V
    .locals 4

    .prologue
    .line 270
    const-wide/16 v2, 0xbb8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    :goto_0
    return-void

    .line 272
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "HtcWifiWanDetect"

    const-string v2, "LOG , InterruptedException was received "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getVzwAvoidBadConnectionEnabled()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 604
    iget-object v6, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 605
    .local v0, "content":Landroid/content/ContentResolver;
    const/4 v3, 0x0

    .line 606
    .local v3, "enable":Z
    const/4 v1, 0x0

    .line 609
    .local v1, "defaultEnabledValue":I
    :try_start_0
    const-string v6, "vzw_avoid_bad_connection_enabled"

    invoke-static {v0, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v5, :cond_0

    move v3, v5

    .line 610
    :goto_0
    const-string v5, "HtcWifiWanDetect"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getVzwAvoidBadConnectionEnabled(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v3

    .line 616
    :goto_1
    return v4

    :cond_0
    move v3, v4

    .line 609
    goto :goto_0

    .line 611
    :catch_0
    move-exception v2

    .line 612
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "HtcWifiWanDetect"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getVzwAvoidBadConnectionEnabled() Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (Set Default value to WAN detection:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    const-string v5, "vzw_avoid_bad_connection_enabled"

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method public getWanDetectionEnabled()Z
    .locals 10

    .prologue
    const/4 v4, 0x1

    .line 466
    const/4 v3, 0x0

    .line 469
    .local v3, "enable":Z
    const/4 v1, 0x0

    .line 470
    .local v1, "defaultEnabledValue":I
    invoke-static {}, Landroid/net/wifi/HtcWifiCustomizeReader;->getWlanDetectionType()I

    move-result v5

    if-ne v5, v4, :cond_0

    invoke-static {}, Landroid/net/wifi/HtcWifiCustomizeReader;->getSenseVersion()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    float-to-double v6, v5

    const-wide/high16 v8, 0x4016000000000000L    # 5.5

    cmpl-double v5, v6, v8

    if-ltz v5, :cond_0

    .line 471
    const/4 v1, 0x1

    .line 474
    :cond_0
    iget-object v5, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 476
    .local v0, "content":Landroid/content/ContentResolver;
    :try_start_0
    const-string v5, "wan_detection_enabled"

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v4, :cond_1

    move v3, v4

    .line 477
    :goto_0
    const-string v5, "HtcWifiWanDetect"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getWanDetectionEnabled(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v3

    .line 482
    :goto_1
    return v4

    .line 476
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 479
    :catch_0
    move-exception v2

    .line 480
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "HtcWifiWanDetect"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getWanDetectionEnabled() Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (Set Default value to WAN detection:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    const-string v5, "wan_detection_enabled"

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method public isVzwAvoidBadConnection()Z
    .locals 2

    .prologue
    .line 576
    invoke-static {}, Landroid/net/wifi/HtcWifiCustomizeReader;->getWifiStatusType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 577
    const/4 v0, 0x1

    .line 579
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public retryLanDetection()Z
    .locals 3

    .prologue
    .line 422
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.wifi.LAN_DETECTION_RETRY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 423
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 424
    iget-object v1, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 425
    const/4 v1, 0x1

    return v1
.end method

.method public retryWanDetection()Z
    .locals 3

    .prologue
    .line 436
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.wifi.WAN_DETECTION_RETRY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 437
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 438
    iget-object v1, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 439
    const/4 v1, 0x1

    return v1
.end method

.method public setVzwAvoidBadConnectionDialogEnabled(Z)Z
    .locals 7
    .param p1, "enable"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 622
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 623
    .local v0, "content":Landroid/content/ContentResolver;
    const-string v4, "HtcWifiWanDetect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setVzwAvoidBadConnectionDialogEnabled(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    const-string v5, "vzw_avoid_bad_connection_dialog_enabled"

    if-eqz p1, :cond_0

    move v4, v2

    :goto_0
    invoke-static {v0, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 630
    .end local v0    # "content":Landroid/content/ContentResolver;
    :goto_1
    return v2

    .restart local v0    # "content":Landroid/content/ContentResolver;
    :cond_0
    move v4, v3

    .line 624
    goto :goto_0

    .line 625
    .end local v0    # "content":Landroid/content/ContentResolver;
    :catch_0
    move-exception v1

    .line 626
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "HtcWifiWanDetect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setVzwAvoidBadConnectionDialogEnabled() Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 627
    goto :goto_1
.end method

.method public setVzwAvoidBadConnectionEnabled(Z)Z
    .locals 7
    .param p1, "enable"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 588
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 589
    .local v0, "content":Landroid/content/ContentResolver;
    const-string v4, "HtcWifiWanDetect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setVzwAvoidBadConnectionEnabled(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    const-string v5, "vzw_avoid_bad_connection_enabled"

    if-eqz p1, :cond_0

    move v4, v2

    :goto_0
    invoke-static {v0, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 591
    iput-boolean p1, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mVzwAvoidBadConnectionEnabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    .end local v0    # "content":Landroid/content/ContentResolver;
    :goto_1
    return v2

    .restart local v0    # "content":Landroid/content/ContentResolver;
    :cond_0
    move v4, v3

    .line 590
    goto :goto_0

    .line 592
    .end local v0    # "content":Landroid/content/ContentResolver;
    :catch_0
    move-exception v1

    .line 593
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "HtcWifiWanDetect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setVzwAvoidBadConnectionEnabled() Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 594
    goto :goto_1
.end method

.method public setWanDetectionDialogEnabled(Z)Z
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 489
    iput-boolean p1, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mHtcWanDetectionDialogEnabled:Z

    .line 490
    const/4 v0, 0x1

    return v0
.end method

.method public setWanDetectionEnabled(Z)Z
    .locals 7
    .param p1, "enable"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 447
    const-string v4, "HtcWifiWanDetect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setWanDetectionEnabled(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 450
    .local v0, "content":Landroid/content/ContentResolver;
    const-string v4, "HtcWifiWanDetect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setWanDetectionEnabled(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    const-string v5, "wan_detection_enabled"

    if-eqz p1, :cond_0

    move v4, v2

    :goto_0
    invoke-static {v0, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 452
    iput-boolean p1, p0, Lcom/android/server/wifi/HtcWifiWanDetectImpl;->mHtcWanDetectionEnabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    .end local v0    # "content":Landroid/content/ContentResolver;
    :goto_1
    return v2

    .restart local v0    # "content":Landroid/content/ContentResolver;
    :cond_0
    move v4, v3

    .line 451
    goto :goto_0

    .line 453
    .end local v0    # "content":Landroid/content/ContentResolver;
    :catch_0
    move-exception v1

    .line 454
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "HtcWifiWanDetect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setWanDetectionEnabled() Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 455
    goto :goto_1
.end method
