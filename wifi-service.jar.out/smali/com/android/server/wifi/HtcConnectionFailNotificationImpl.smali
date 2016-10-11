.class Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;
.super Lcom/android/server/wifi/HtcConnectionFailNotification;
.source "HtcConnectionFailNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/HtcConnectionFailNotificationImpl$2;,
        Lcom/android/server/wifi/HtcConnectionFailNotificationImpl$HtcConnectionFailHandler;
    }
.end annotation


# static fields
.field private static DBG:Z = false

.field private static final MAX_RETRIES_ON_NETWORK_PROBLEM:I = 0x5

.field private static final TAG:Ljava/lang/String; = "HtcConnectionFailNotification"

.field private static bAuthenticationFailuresFlag:Z


# instance fields
.field private mAuthenticationFailuresNotificationCount:I

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field protected mHtcConnectionFailHandler:Landroid/os/Handler;

.field private mIndicateAuthError:Z

.field private mIndicateWepError:Z

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mInterfaceName:Ljava/lang/String;

.field private mNetworkProblemCount:I

.field private mNetworkProblemInSupplicantBroadcast:Z

.field private mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;

.field private mWifiAuthErrorNotification:Landroid/app/Notification;

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private mWifiNative:Lcom/android/server/wifi/WifiNative;

.field private mWifiWepErrorNotification:Landroid/app/Notification;

.field private mWifiWepErrorNotificationShown:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 110
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->DBG:Z

    .line 130
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->bAuthenticationFailuresFlag:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 193
    invoke-direct {p0}, Lcom/android/server/wifi/HtcConnectionFailNotification;-><init>()V

    .line 112
    iput-object v1, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mContext:Landroid/content/Context;

    .line 113
    iput-object v1, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mInterfaceName:Ljava/lang/String;

    .line 114
    iput-object v1, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;

    .line 115
    iput-object v1, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 116
    iput-object v1, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    .line 117
    iput-object v1, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mIntentFilter:Landroid/content/IntentFilter;

    .line 118
    iput-object v1, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 123
    iput-boolean v2, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mIndicateWepError:Z

    .line 124
    iput-boolean v2, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mIndicateAuthError:Z

    .line 134
    iput v2, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mAuthenticationFailuresNotificationCount:I

    .line 137
    iput v2, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mNetworkProblemCount:I

    .line 138
    iput-boolean v2, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mNetworkProblemInSupplicantBroadcast:Z

    .line 141
    iput-object v1, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mHtcConnectionFailHandler:Landroid/os/Handler;

    .line 194
    iput-object p1, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mContext:Landroid/content/Context;

    .line 195
    invoke-direct {p0}, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->setupAuthFailReceiver()V

    .line 197
    iget-object v1, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mHtcConnectionFailHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 198
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "WifiNetworkSelectionThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 199
    .local v0, "mThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 200
    new-instance v1, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl$HtcConnectionFailHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl$HtcConnectionFailHandler;-><init>(Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mHtcConnectionFailHandler:Landroid/os/Handler;

    .line 202
    .end local v0    # "mThread":Landroid/os/HandlerThread;
    :cond_0
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 107
    sget-boolean v0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->bAuthenticationFailuresFlag:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 107
    sput-boolean p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->bAuthenticationFailuresFlag:Z

    return p0
.end method

.method static synthetic access$102(Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;
    .param p1, "x1"    # I

    .prologue
    .line 107
    iput p1, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mAuthenticationFailuresNotificationCount:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;)Lcom/android/server/wifi/SupplicantStateTracker;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mWifiWepErrorNotificationShown:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->setWepErrorNotificationVisible(Z)V

    return-void
.end method

.method private clearAuthErrorNotification()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 329
    iget-boolean v0, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mIndicateAuthError:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 330
    invoke-virtual {p0, v2}, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->setAuthErrorNotificationVisible(Z)V

    .line 331
    iput-boolean v2, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mIndicateAuthError:Z

    .line 332
    const-string v0, "HtcConnectionFailNotification"

    const-string v1, "clear AUTH_ERROR icon"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_0
    return-void
.end method

.method private getWifiStatusType()I
    .locals 1

    .prologue
    .line 384
    invoke-static {}, Landroid/net/wifi/HtcWifiCustomizeReader;->getWifiStatusType()I

    move-result v0

    return v0
.end method

.method private sendErrorBroadcast(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .prologue
    .line 337
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.wifi.ERROR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 338
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 339
    const-string v1, "errorCode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 340
    iget-object v1, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 341
    return-void
.end method

.method private setWepErrorNotificationVisible(Z)V
    .locals 8
    .param p1, "visible"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 243
    const-string v2, "HtcConnectionFailNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setWepErrorReqNotificationVisible visible="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    if-nez p1, :cond_0

    iget-boolean v2, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mWifiWepErrorNotificationShown:Z

    if-nez v2, :cond_0

    .line 270
    :goto_0
    return-void

    .line 248
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 252
    .local v1, "notificationManager":Landroid/app/NotificationManager;
    if-eqz p1, :cond_2

    .line 253
    iget-object v2, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mWifiWepErrorNotification:Landroid/app/Notification;

    if-nez v2, :cond_1

    .line 254
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    iput-object v2, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mWifiWepErrorNotification:Landroid/app/Notification;

    .line 255
    iget-object v2, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mWifiWepErrorNotification:Landroid/app/Notification;

    const-wide/16 v4, 0x0

    iput-wide v4, v2, Landroid/app/Notification;->when:J

    .line 256
    iget-object v2, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mWifiWepErrorNotification:Landroid/app/Notification;

    const v3, 0x1020009

    iput v3, v2, Landroid/app/Notification;->icon:I

    .line 257
    iget-object v2, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mWifiWepErrorNotification:Landroid/app/Notification;

    const/16 v3, 0x10

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 258
    iget-object v2, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mWifiWepErrorNotification:Landroid/app/Notification;

    iget-object v3, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.settings.WIFI_SETTINGS"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v6, v4, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 261
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10700d3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "details":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mWifiWepErrorNotification:Landroid/app/Notification;

    iput-object v7, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 263
    iget-object v2, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mWifiWepErrorNotification:Landroid/app/Notification;

    iget-object v3, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mWifiWepErrorNotification:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v7, v0, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 264
    iget-object v2, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mWifiWepErrorNotification:Landroid/app/Notification;

    iget v2, v2, Landroid/app/Notification;->icon:I

    iget-object v3, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mWifiWepErrorNotification:Landroid/app/Notification;

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 268
    .end local v0    # "details":Ljava/lang/String;
    :goto_1
    iput-boolean p1, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mWifiWepErrorNotificationShown:Z

    goto :goto_0

    .line 266
    :cond_2
    iget-object v2, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mWifiWepErrorNotification:Landroid/app/Notification;

    iget v2, v2, Landroid/app/Notification;->icon:I

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_1
.end method

.method private setupAuthFailReceiver()V
    .locals 3

    .prologue
    .line 215
    new-instance v0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl$1;-><init>(Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;)V

    iput-object v0, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 227
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mIntentFilter:Landroid/content/IntentFilter;

    .line 228
    iget-object v0, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 231
    return-void
.end method


# virtual methods
.method public addAuthenticationFailuresNotificationCount()V
    .locals 1

    .prologue
    .line 420
    iget v0, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mAuthenticationFailuresNotificationCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mAuthenticationFailuresNotificationCount:I

    .line 421
    return-void
.end method

.method public checkNetworkProblem(ILandroid/net/wifi/SupplicantState;I)Z
    .locals 4
    .param p1, "netId"    # I
    .param p2, "state"    # Landroid/net/wifi/SupplicantState;
    .param p3, "reason"    # I

    .prologue
    .line 365
    const/4 v0, 0x0

    .line 366
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mNetworkProblemInSupplicantBroadcast:Z

    if-eqz v1, :cond_0

    .line 367
    const-string v1, "HtcConnectionFailNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to connect due to network problem, count= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mNetworkProblemCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget v1, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mNetworkProblemCount:I

    invoke-virtual {p0}, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->getAuthenticationErrorRetry()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 370
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mNetworkProblemCount:I

    .line 371
    if-ltz p1, :cond_0

    .line 372
    const/4 v0, 0x1

    .line 376
    :cond_0
    return v0
.end method

.method public clearWepErrorNotification()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 273
    iget-boolean v0, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mIndicateWepError:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 274
    invoke-direct {p0, v2}, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->setWepErrorNotificationVisible(Z)V

    .line 275
    iput-boolean v2, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mIndicateWepError:Z

    .line 276
    const-string v0, "HtcConnectionFailNotification"

    const-string v1, "clear WEP_ERROR icon"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_0
    return-void
.end method

.method public getAuthenticationErrorRetry()I
    .locals 1

    .prologue
    .line 380
    invoke-static {}, Landroid/net/wifi/HtcWifiCustomizeReader;->getAuthenticationErrorRetry()I

    move-result v0

    return v0
.end method

.method public getAuthenticationFailuresFlag()Z
    .locals 1

    .prologue
    .line 424
    sget-boolean v0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->bAuthenticationFailuresFlag:Z

    return v0
.end method

.method public handleHtcIdpwMsg(I)V
    .locals 3
    .param p1, "msg"    # I

    .prologue
    .line 185
    const-string v0, "HtcConnectionFailNotification"

    const-string v1, "handleHtcIdpwMsg()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v0, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mHtcConnectionFailHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mHtcConnectionFailHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mHtcConnectionFailHandler:Landroid/os/Handler;

    const v2, 0x2406d

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 190
    :cond_0
    return-void
.end method

.method public handleSupplicantStateChange(Landroid/net/wifi/SupplicantState;)V
    .locals 3
    .param p1, "supState"    # Landroid/net/wifi/SupplicantState;

    .prologue
    const/4 v2, 0x0

    .line 390
    sget-object v0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl$2;->$SwitchMap$android$net$wifi$SupplicantState:[I

    invoke-virtual {p1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 414
    const-string v0, "HtcConnectionFailNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown supplicant state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :goto_0
    :pswitch_0
    return-void

    .line 392
    :pswitch_1
    sput-boolean v2, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->bAuthenticationFailuresFlag:Z

    goto :goto_0

    .line 399
    :pswitch_2
    iput v2, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mAuthenticationFailuresNotificationCount:I

    .line 400
    iput v2, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mNetworkProblemCount:I

    .line 401
    invoke-direct {p0}, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->clearAuthErrorNotification()V

    goto :goto_0

    .line 390
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public initHtcConnectionFailNotification(Landroid/net/wifi/WifiInfo;Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/SupplicantStateTracker;)V
    .locals 0
    .param p1, "wifiInfo"    # Landroid/net/wifi/WifiInfo;
    .param p2, "wifiNative"    # Lcom/android/server/wifi/WifiNative;
    .param p3, "supplicantStateTracker"    # Lcom/android/server/wifi/SupplicantStateTracker;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 207
    iput-object p2, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    .line 208
    iput-object p3, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;

    .line 209
    return-void
.end method

.method public isWEPNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 436
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    const/4 v0, 0x1

    .line 439
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendWepErrorNotification()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 234
    iget-boolean v0, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mIndicateWepError:Z

    if-nez v0, :cond_0

    .line 235
    invoke-direct {p0, v2}, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->setWepErrorNotificationVisible(Z)V

    .line 236
    const-string v0, "HtcConnectionFailNotification"

    const-string v1, "set WEP_ERROR icon"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iput-boolean v2, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mIndicateWepError:Z

    .line 239
    :cond_0
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->sendErrorBroadcast(I)V

    .line 240
    return-void
.end method

.method public setAuthErrorNotificationVisible(Z)V
    .locals 12
    .param p1, "visible"    # Z

    .prologue
    const v11, 0x10700cd

    const v10, 0x10700cc

    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 289
    const-string v4, "HtcConnectionFailNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setAuthErrorNotificationVisible visible="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    if-nez p1, :cond_0

    iget-boolean v4, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mIndicateAuthError:Z

    if-nez v4, :cond_0

    .line 326
    :goto_0
    return-void

    .line 293
    :cond_0
    iget-object v4, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 295
    .local v1, "notificationManager":Landroid/app/NotificationManager;
    if-eqz p1, :cond_4

    .line 296
    iget-object v4, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mWifiAuthErrorNotification:Landroid/app/Notification;

    if-nez v4, :cond_1

    .line 297
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    iput-object v4, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mWifiAuthErrorNotification:Landroid/app/Notification;

    .line 298
    iget-object v4, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mWifiAuthErrorNotification:Landroid/app/Notification;

    const-wide/16 v6, 0x0

    iput-wide v6, v4, Landroid/app/Notification;->when:J

    .line 299
    iget-object v4, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mWifiAuthErrorNotification:Landroid/app/Notification;

    const v5, 0x1020009

    iput v5, v4, Landroid/app/Notification;->icon:I

    .line 300
    iget-object v4, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mWifiAuthErrorNotification:Landroid/app/Notification;

    const/16 v5, 0x10

    iput v5, v4, Landroid/app/Notification;->flags:I

    .line 301
    iget-object v4, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mWifiAuthErrorNotification:Landroid/app/Notification;

    iget-object v5, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.settings.WIFI_SETTINGS"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v8, v6, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 303
    :cond_1
    iget-object v4, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10700ca

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 304
    .local v2, "title":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10700cb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, "details":Ljava/lang/String;
    invoke-static {}, Landroid/net/wifi/HtcWifiCustomizeReader;->getWifiStatusType()I

    move-result v4

    if-ne v4, v9, :cond_3

    .line 306
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 307
    iget-object v4, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 319
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mWifiAuthErrorNotification:Landroid/app/Notification;

    const/4 v5, 0x0

    iput-object v5, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 320
    iget-object v4, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mWifiAuthErrorNotification:Landroid/app/Notification;

    iget-object v5, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mWifiAuthErrorNotification:Landroid/app/Notification;

    iget-object v6, v6, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5, v2, v0, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 321
    iget-object v4, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mWifiAuthErrorNotification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->icon:I

    iget-object v5, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mWifiAuthErrorNotification:Landroid/app/Notification;

    invoke-virtual {v1, v4, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 325
    .end local v0    # "details":Ljava/lang/String;
    .end local v2    # "title":Ljava/lang/String;
    :goto_2
    iput-boolean p1, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mIndicateAuthError:Z

    goto/16 :goto_0

    .line 310
    .restart local v0    # "details":Ljava/lang/String;
    .restart local v2    # "title":Ljava/lang/String;
    :cond_3
    sget-boolean v4, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->DBG:Z

    if-eqz v4, :cond_2

    .line 311
    const-string v4, "htc.test.wifi.status.type"

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 312
    .local v3, "type":I
    if-ne v3, v9, :cond_2

    .line 313
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 314
    iget-object v4, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 323
    .end local v0    # "details":Ljava/lang/String;
    .end local v2    # "title":Ljava/lang/String;
    .end local v3    # "type":I
    :cond_4
    iget-object v4, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mWifiAuthErrorNotification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->icon:I

    invoke-virtual {v1, v4}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_2
.end method

.method public setAuthenticationFailuresFlag(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 428
    sput-boolean p1, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->bAuthenticationFailuresFlag:Z

    .line 429
    return-void
.end method

.method public setNetworkProblemInSupplicantBroadcast(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 432
    iput-boolean p1, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mNetworkProblemInSupplicantBroadcast:Z

    .line 433
    return-void
.end method

.method public showAuthErrorNotification(I)V
    .locals 2
    .param p1, "disableReason"    # I

    .prologue
    .line 282
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 283
    const-string v0, "HtcConnectionFailNotification"

    const-string v1, "Do not show AuthErrorNotification because ASSOCIATION REJECT"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :goto_0
    return-void

    .line 285
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->setAuthErrorNotificationVisible(Z)V

    goto :goto_0
.end method

.method public updateNetworkProblemCount()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 355
    iget v1, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mNetworkProblemCount:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    .line 356
    const-string v1, "HtcConnectionFailNotification"

    const-string v2, "Failed to connect due to network problem, disabling network "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iput v0, p0, Lcom/android/server/wifi/HtcConnectionFailNotificationImpl;->mNetworkProblemCount:I

    .line 358
    const/4 v0, 0x1

    .line 360
    :cond_0
    return v0
.end method
