.class public Lcom/android/server/wifi/HtcWifiDataStallTracker;
.super Landroid/os/Handler;
.source "HtcWifiDataStallTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/HtcWifiDataStallTracker$TxRxSum;
    }
.end annotation


# static fields
.field public static final DATA_MONITOR_POLL:I = 0x2

.field private static final DATA_STALL_ALARM_DELAY_IN_MS_DEFAULT:I = 0x1388

.field private static final DATA_STALL_RECOVER_INTERVAL_IN_MS_DEFAULT:I = 0x36ee80

.field public static final DATA_STALL_TIMER_EVENT:I = 0x4

.field private static final DBG:Z

.field public static final DO_RECOVERY_EVENT:I = 0x3

.field public static final ENABLE_DATA_MONITOR_POLL:I = 0x1

.field private static final NUMBER_SENT_PACKETS_OF_HANG:I = 0x5

.field private static final RECOVER_ENABLE_AFTER_RX_TIMES:I = 0x78

.field public static final SET_ROAM_DONE:I = 0x5

.field private static final TAG:Ljava/lang/String; = "HtcWifiDataStallTracker"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataStallAlarmTag:I

.field private volatile mDataStallDetectionEnabled:Z

.field private mDataStallTxRxSum:Lcom/android/server/wifi/HtcWifiDataStallTracker$TxRxSum;

.field private mEnableTrafficStatsPoll:Z

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsDhcpActive:Z

.field private mIsRoutingComplete:Z

.field private mIsScreenOn:Z

.field private mIsWifiConnected:Z

.field private mOldWifiDisplayStatus:I

.field private final mPingIsGo:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mRecoverDuration:I

.field private mRecoverRecently:Z

.field private mRoamProcess:Z

.field private mSentSinceLastRecv:J

.field private final mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wifiStateMachine"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 239
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mPingIsGo:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 63
    new-instance v0, Lcom/android/server/wifi/HtcWifiDataStallTracker$TxRxSum;

    move-object v1, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/HtcWifiDataStallTracker$TxRxSum;-><init>(Lcom/android/server/wifi/HtcWifiDataStallTracker;JJ)V

    iput-object v0, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mDataStallTxRxSum:Lcom/android/server/wifi/HtcWifiDataStallTracker$TxRxSum;

    .line 65
    iput-boolean v7, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mEnableTrafficStatsPoll:Z

    .line 72
    iput v7, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mDataStallAlarmTag:I

    .line 78
    iput-boolean v8, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mDataStallDetectionEnabled:Z

    .line 81
    iput-boolean v7, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mIsWifiConnected:Z

    .line 83
    iput-boolean v7, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mIsDhcpActive:Z

    .line 85
    iput-boolean v8, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mIsScreenOn:Z

    .line 87
    iput-boolean v7, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mRecoverRecently:Z

    .line 89
    iput v7, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mRecoverDuration:I

    .line 91
    iput-boolean v7, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mIsRoutingComplete:Z

    .line 93
    iput-boolean v7, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mRoamProcess:Z

    .line 95
    iput v7, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mOldWifiDisplayStatus:I

    .line 103
    new-instance v0, Lcom/android/server/wifi/HtcWifiDataStallTracker$1;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/HtcWifiDataStallTracker$1;-><init>(Lcom/android/server/wifi/HtcWifiDataStallTracker;)V

    iput-object v0, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 240
    iput-object p1, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mContext:Landroid/content/Context;

    .line 242
    iput-object p2, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 244
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 245
    .local v6, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 246
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 247
    const-string v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 248
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 253
    const-string v0, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 254
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 255
    const-string v0, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 257
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/wifi/HtcWifiDataStallTracker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/HtcWifiDataStallTracker;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mIsScreenOn:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/wifi/HtcWifiDataStallTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/HtcWifiDataStallTracker;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mIsWifiConnected:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/wifi/HtcWifiDataStallTracker;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/HtcWifiDataStallTracker;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mPingIsGo:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/wifi/HtcWifiDataStallTracker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/HtcWifiDataStallTracker;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mIsWifiConnected:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/wifi/HtcWifiDataStallTracker;)Lcom/android/server/wifi/WifiStateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/HtcWifiDataStallTracker;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/wifi/HtcWifiDataStallTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/HtcWifiDataStallTracker;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/server/wifi/HtcWifiDataStallTracker;->pingGateway()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 28
    sget-boolean v0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->DBG:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/wifi/HtcWifiDataStallTracker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/HtcWifiDataStallTracker;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mIsRoutingComplete:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/wifi/HtcWifiDataStallTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/HtcWifiDataStallTracker;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mRoamProcess:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/wifi/HtcWifiDataStallTracker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/HtcWifiDataStallTracker;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mRoamProcess:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/wifi/HtcWifiDataStallTracker;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/HtcWifiDataStallTracker;

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mSentSinceLastRecv:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/android/server/wifi/HtcWifiDataStallTracker;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/HtcWifiDataStallTracker;
    .param p1, "x1"    # J

    .prologue
    .line 28
    iput-wide p1, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mSentSinceLastRecv:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/android/server/wifi/HtcWifiDataStallTracker;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/HtcWifiDataStallTracker;

    .prologue
    .line 28
    iget v0, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mOldWifiDisplayStatus:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/wifi/HtcWifiDataStallTracker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/HtcWifiDataStallTracker;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mOldWifiDisplayStatus:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/wifi/HtcWifiDataStallTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/HtcWifiDataStallTracker;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/server/wifi/HtcWifiDataStallTracker;->updateDataStallInfo()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/wifi/HtcWifiDataStallTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/HtcWifiDataStallTracker;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/server/wifi/HtcWifiDataStallTracker;->isAllowRecover()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/wifi/HtcWifiDataStallTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/HtcWifiDataStallTracker;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mRecoverRecently:Z

    return v0
.end method

.method private checkIpv4AddressFormat(Ljava/lang/String;)Z
    .locals 3
    .param p1, "ipString"    # Ljava/lang/String;

    .prologue
    .line 554
    const-string v2, "(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 558
    .local v0, "ipv4FormatPattern":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 559
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    return v2
.end method

.method private doRecovery()V
    .locals 7

    .prologue
    const v6, 0x2400c

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 328
    const-string v1, "HtcWifiDataStallTracker"

    const-string v2, "detect data stall, recover right now"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/wifi/HtcWifiDataStallTracker;->isAllowRecover()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_on"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 334
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mRecoverRecently:Z

    .line 335
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mRecoverDuration:I

    .line 336
    iget-object v1, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    const v2, 0x2400c

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 337
    invoke-virtual {p0}, Lcom/android/server/wifi/HtcWifiDataStallTracker;->startIntervalTimer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 340
    :catch_0
    move-exception v0

    .line 341
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HtcWifiDataStallTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get Settings.Global.WIFI_ON Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iput-boolean v4, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mRecoverRecently:Z

    .line 343
    iput v5, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mRecoverDuration:I

    .line 344
    iget-object v1, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1, v6}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 345
    invoke-virtual {p0}, Lcom/android/server/wifi/HtcWifiDataStallTracker;->startIntervalTimer()V

    goto :goto_0
.end method

.method private isAllowRecover()Z
    .locals 4

    .prologue
    .line 538
    iget-boolean v1, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mIsWifiConnected:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mIsDhcpActive:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mOldWifiDisplayStatus:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mIsRoutingComplete:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mRoamProcess:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 545
    .local v0, "ret":Z
    :goto_0
    const-string v1, "HtcWifiDataStallTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsWifiConnected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mIsWifiConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mIsDhcpActive "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mIsDhcpActive:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " supplicantState"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiStateMachine;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mOldWifiDisplayStatus "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mOldWifiDisplayStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mIsRoutingComplete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mIsRoutingComplete:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    return v0

    .line 538
    .end local v0    # "ret":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isConnectedAndNotRoaming()Z
    .locals 2

    .prologue
    .line 533
    iget-boolean v0, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mIsWifiConnected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v0

    sget-object v1, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onDataStallAlarm()V
    .locals 2

    .prologue
    .line 382
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/wifi/HtcWifiDataStallTracker$2;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/HtcWifiDataStallTracker$2;-><init>(Lcom/android/server/wifi/HtcWifiDataStallTracker;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 424
    return-void
.end method

.method private pingGateway()Z
    .locals 8

    .prologue
    .line 471
    const/4 v3, 0x0

    .line 473
    .local v3, "pingresult":Z
    invoke-direct {p0}, Lcom/android/server/wifi/HtcWifiDataStallTracker;->isAllowRecover()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 475
    iget-object v5, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mPingIsGo:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 477
    :try_start_0
    const-string v5, "dhcp.wlan0.gateway"

    const-string v6, "192.168.1.1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 478
    .local v1, "gatewayIP":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/wifi/HtcWifiDataStallTracker;->checkIpv4AddressFormat(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 479
    sget-boolean v5, Lcom/android/server/wifi/HtcWifiDataStallTracker;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "HtcWifiDataStallTracker"

    const-string v6, "Incorrect IPv4 formation, use default IP 192.168.1.1"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_0
    const-string v1, "192.168.1.1"

    .line 483
    :cond_1
    const-string v5, "HtcWifiDataStallTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "gateway IP: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ping -c 2 -W 5 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 485
    .local v2, "p":Ljava/lang/Process;
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    move-result v4

    .line 486
    .local v4, "status":I
    if-nez v4, :cond_4

    .line 487
    sget-boolean v5, Lcom/android/server/wifi/HtcWifiDataStallTracker;->DBG:Z

    if-eqz v5, :cond_2

    const-string v5, "HtcWifiDataStallTracker"

    const-string v6, "ping gateway pass, don\'t do recover"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :cond_2
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mSentSinceLastRecv:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 489
    const/4 v3, 0x1

    .line 499
    .end local v1    # "gatewayIP":Ljava/lang/String;
    .end local v2    # "p":Ljava/lang/Process;
    .end local v4    # "status":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mPingIsGo:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 505
    :cond_3
    :goto_1
    return v3

    .line 491
    .restart local v1    # "gatewayIP":Ljava/lang/String;
    .restart local v2    # "p":Ljava/lang/Process;
    .restart local v4    # "status":I
    :cond_4
    :try_start_1
    const-string v5, "HtcWifiDataStallTracker"

    const-string v6, "ping gateway failed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 492
    const/4 v3, 0x0

    goto :goto_0

    .line 494
    .end local v1    # "gatewayIP":Ljava/lang/String;
    .end local v2    # "p":Ljava/lang/Process;
    .end local v4    # "status":I
    :catch_0
    move-exception v0

    .line 495
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "HtcWifiDataStallTracker"

    const-string v6, "Fail: IOException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 496
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 497
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v5, "HtcWifiDataStallTracker"

    const-string v6, "Fail: InterruptedException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 502
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_5
    sget-boolean v5, Lcom/android/server/wifi/HtcWifiDataStallTracker;->DBG:Z

    if-eqz v5, :cond_3

    const-string v5, "HtcWifiDataStallTracker"

    const-string v6, "pingGateway: not allow to run recover"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateDataStallInfo()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    .line 354
    new-instance v0, Lcom/android/server/wifi/HtcWifiDataStallTracker$TxRxSum;

    iget-object v1, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mDataStallTxRxSum:Lcom/android/server/wifi/HtcWifiDataStallTracker$TxRxSum;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/HtcWifiDataStallTracker$TxRxSum;-><init>(Lcom/android/server/wifi/HtcWifiDataStallTracker;Lcom/android/server/wifi/HtcWifiDataStallTracker$TxRxSum;)V

    .line 355
    .local v0, "preTxRxSum":Lcom/android/server/wifi/HtcWifiDataStallTracker$TxRxSum;
    iget-object v1, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mDataStallTxRxSum:Lcom/android/server/wifi/HtcWifiDataStallTracker$TxRxSum;

    invoke-virtual {v1}, Lcom/android/server/wifi/HtcWifiDataStallTracker$TxRxSum;->updateTxRxSum()V

    .line 357
    sget-boolean v1, Lcom/android/server/wifi/HtcWifiDataStallTracker;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "HtcWifiDataStallTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateDataStallInfo: mDataStallTxRxSum="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mDataStallTxRxSum:Lcom/android/server/wifi/HtcWifiDataStallTracker$TxRxSum;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " preTxRxSum="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mDataStallTxRxSum:Lcom/android/server/wifi/HtcWifiDataStallTracker$TxRxSum;

    iget-wide v6, v1, Lcom/android/server/wifi/HtcWifiDataStallTracker$TxRxSum;->txPkts:J

    iget-wide v8, v0, Lcom/android/server/wifi/HtcWifiDataStallTracker$TxRxSum;->txPkts:J

    sub-long v4, v6, v8

    .line 361
    .local v4, "sent":J
    iget-object v1, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mDataStallTxRxSum:Lcom/android/server/wifi/HtcWifiDataStallTracker$TxRxSum;

    iget-wide v6, v1, Lcom/android/server/wifi/HtcWifiDataStallTracker$TxRxSum;->rxPkts:J

    iget-wide v8, v0, Lcom/android/server/wifi/HtcWifiDataStallTracker$TxRxSum;->rxPkts:J

    sub-long v2, v6, v8

    .line 363
    .local v2, "received":J
    cmp-long v1, v4, v10

    if-lez v1, :cond_3

    cmp-long v1, v2, v10

    if-lez v1, :cond_3

    .line 364
    sget-boolean v1, Lcom/android/server/wifi/HtcWifiDataStallTracker;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "HtcWifiDataStallTracker"

    const-string v6, "updateDataStallInfo: IN/OUT"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_1
    iput-wide v10, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mSentSinceLastRecv:J

    .line 378
    :cond_2
    :goto_0
    return-void

    .line 366
    :cond_3
    cmp-long v1, v4, v10

    if-lez v1, :cond_4

    cmp-long v1, v2, v10

    if-nez v1, :cond_4

    .line 367
    iget-wide v6, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mSentSinceLastRecv:J

    add-long/2addr v6, v4

    iput-wide v6, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mSentSinceLastRecv:J

    .line 368
    sget-boolean v1, Lcom/android/server/wifi/HtcWifiDataStallTracker;->DBG:Z

    if-eqz v1, :cond_2

    .line 369
    const-string v1, "HtcWifiDataStallTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateDataStallInfo: OUT sent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mSentSinceLastRecv="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mSentSinceLastRecv:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 372
    :cond_4
    cmp-long v1, v4, v10

    if-nez v1, :cond_6

    cmp-long v1, v2, v10

    if-lez v1, :cond_6

    .line 373
    sget-boolean v1, Lcom/android/server/wifi/HtcWifiDataStallTracker;->DBG:Z

    if-eqz v1, :cond_5

    const-string v1, "HtcWifiDataStallTracker"

    const-string v6, "updateDataStallInfo: IN"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_5
    iput-wide v10, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mSentSinceLastRecv:J

    goto :goto_0

    .line 376
    :cond_6
    sget-boolean v1, Lcom/android/server/wifi/HtcWifiDataStallTracker;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "HtcWifiDataStallTracker"

    const-string v6, "updateDataStallInfo: NONE"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v6, 0x1388

    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 261
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 314
    const-string v0, "HtcWifiDataStallTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unidentified event msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 269
    :pswitch_0
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v0, :cond_3

    :goto_1
    iput-boolean v0, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mEnableTrafficStatsPoll:Z

    .line 270
    sget-boolean v0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "HtcWifiDataStallTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ENABLE_DATA_MONITOR_POLL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mEnableTrafficStatsPoll:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mDataStallAlarmTag:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_1
    iget v0, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mDataStallAlarmTag:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mDataStallAlarmTag:I

    .line 275
    iget-boolean v0, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mEnableTrafficStatsPoll:Z

    if-eqz v0, :cond_0

    .line 276
    iget-boolean v0, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mIsScreenOn:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mIsWifiConnected:Z

    if-nez v0, :cond_4

    .line 277
    :cond_2
    sget-boolean v0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcWifiDataStallTracker"

    const-string v1, "ENABLE_DATA_MONITOR_POLL: Do NOT run data monitor "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move v0, v1

    .line 269
    goto :goto_1

    .line 280
    :cond_4
    invoke-direct {p0}, Lcom/android/server/wifi/HtcWifiDataStallTracker;->onDataStallAlarm()V

    .line 281
    iget v0, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mDataStallAlarmTag:I

    invoke-static {p0, v4, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v6, v7}, Lcom/android/server/wifi/HtcWifiDataStallTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 286
    :pswitch_1
    sget-boolean v0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->DBG:Z

    if-eqz v0, :cond_5

    const-string v0, "HtcWifiDataStallTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DATA_MONITOR_POLL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mEnableTrafficStatsPoll:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mDataStallAlarmTag:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v2, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mDataStallAlarmTag:I

    if-ne v0, v2, :cond_0

    .line 291
    iget-boolean v0, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mIsScreenOn:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mIsWifiConnected:Z

    if-nez v0, :cond_7

    .line 292
    :cond_6
    sget-boolean v0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcWifiDataStallTracker"

    const-string v1, "DATA_MONITOR_POLL: Do NOT run data monitor "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 295
    :cond_7
    invoke-direct {p0}, Lcom/android/server/wifi/HtcWifiDataStallTracker;->onDataStallAlarm()V

    .line 296
    iget v0, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mDataStallAlarmTag:I

    invoke-static {p0, v4, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v6, v7}, Lcom/android/server/wifi/HtcWifiDataStallTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 301
    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/wifi/HtcWifiDataStallTracker;->doRecovery()V

    goto/16 :goto_0

    .line 305
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/server/wifi/HtcWifiDataStallTracker;->stopDataStallTimer()V

    goto/16 :goto_0

    .line 309
    :pswitch_4
    iput-boolean v1, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mRoamProcess:Z

    .line 310
    sget-boolean v0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcWifiDataStallTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive message SET_ROAM_DONE, set mRoamProcess = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mRoamProcess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 261
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setDhcpActive(Z)V
    .locals 3
    .param p1, "isActive"    # Z

    .prologue
    .line 466
    sget-boolean v0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcWifiDataStallTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDhcpActive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mIsDhcpActive:Z

    .line 468
    return-void
.end method

.method public startDataStallAlarm()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 443
    iget v0, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mOldWifiDisplayStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 444
    sget-boolean v0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcWifiDataStallTracker"

    const-string v1, "WifiDisplay connected, not startDataStallAlarm"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_0
    :goto_0
    return-void

    .line 448
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mDataStallDetectionEnabled:Z

    if-eqz v0, :cond_2

    .line 451
    iget-object v0, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mDataStallTxRxSum:Lcom/android/server/wifi/HtcWifiDataStallTracker$TxRxSum;

    invoke-virtual {v0}, Lcom/android/server/wifi/HtcWifiDataStallTracker$TxRxSum;->updateTxRxSum()V

    .line 453
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v2, v0}, Lcom/android/server/wifi/HtcWifiDataStallTracker;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/HtcWifiDataStallTracker;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 456
    :cond_2
    sget-boolean v0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcWifiDataStallTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDataStallAlarm: NOT started, no connection tag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mDataStallAlarmTag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startIntervalTimer()V
    .locals 4

    .prologue
    .line 428
    sget-boolean v0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcWifiDataStallTracker"

    const-string v1, "startDataStallTimer "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_0
    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wifi/HtcWifiDataStallTracker;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/32 v2, 0x36ee80

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/wifi/HtcWifiDataStallTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 432
    return-void
.end method

.method public stopDataStallAlarm()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 461
    sget-boolean v0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcWifiDataStallTracker"

    const-string v1, "stopDataStallAlarm "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v2, v2}, Lcom/android/server/wifi/HtcWifiDataStallTracker;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/HtcWifiDataStallTracker;->sendMessage(Landroid/os/Message;)Z

    .line 463
    return-void
.end method

.method public stopDataStallTimer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 435
    const-string v0, "HtcWifiDataStallTracker"

    const-string v1, "stopDataStallTimer "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iput-boolean v2, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mRecoverRecently:Z

    .line 438
    iput v2, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker;->mRecoverDuration:I

    .line 439
    return-void
.end method
