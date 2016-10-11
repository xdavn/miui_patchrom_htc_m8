.class Lcom/android/server/wifi/HtcLteCoexBcm;
.super Lcom/android/server/wifi/HtcLteCoexImpl;
.source "HtcLteCoex.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/HtcLteCoexBcm$4;
    }
.end annotation


# instance fields
.field private mBcmManualChannel:I

.field private mBitmap:I

.field private mHotspotManager:Lcom/android/server/wifi/HtcHotspotManager;

.field private mLteConnected:Z

.field private mQmiFlag:Z

.field private mWifiNative:Lcom/android/server/wifi/WifiNative;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/HtcHotspotManager;Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wn"    # Lcom/android/server/wifi/WifiNative;
    .param p3, "manager"    # Lcom/android/server/wifi/HtcHotspotManager;
    .param p4, "state"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    const/4 v0, 0x0

    .line 269
    invoke-direct {p0, p1, p4}, Lcom/android/server/wifi/HtcLteCoexImpl;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;)V

    .line 263
    iput v0, p0, Lcom/android/server/wifi/HtcLteCoexBcm;->mBcmManualChannel:I

    .line 264
    iput v0, p0, Lcom/android/server/wifi/HtcLteCoexBcm;->mBitmap:I

    .line 265
    iput-boolean v0, p0, Lcom/android/server/wifi/HtcLteCoexBcm;->mLteConnected:Z

    .line 266
    iput-boolean v0, p0, Lcom/android/server/wifi/HtcLteCoexBcm;->mQmiFlag:Z

    .line 270
    iput-object p2, p0, Lcom/android/server/wifi/HtcLteCoexBcm;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    .line 271
    iput-object p3, p0, Lcom/android/server/wifi/HtcLteCoexBcm;->mHotspotManager:Lcom/android/server/wifi/HtcHotspotManager;

    .line 272
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifi/HtcLteCoexBcm;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/HtcLteCoexBcm;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 260
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/HtcLteCoexBcm;->setApBandwidth(II)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wifi/HtcLteCoexBcm;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/HtcLteCoexBcm;

    .prologue
    .line 260
    iget v0, p0, Lcom/android/server/wifi/HtcLteCoexBcm;->mBcmManualChannel:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/wifi/HtcLteCoexBcm;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/HtcLteCoexBcm;
    .param p1, "x1"    # I

    .prologue
    .line 260
    iput p1, p0, Lcom/android/server/wifi/HtcLteCoexBcm;->mBcmManualChannel:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/wifi/HtcLteCoexBcm;II)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/HtcLteCoexBcm;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 260
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/HtcLteCoexBcm;->manualChannelSelection(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/wifi/HtcLteCoexBcm;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/HtcLteCoexBcm;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 260
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/HtcLteCoexBcm;->setLteCoexQmiBitmap(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/wifi/HtcLteCoexBcm;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/HtcLteCoexBcm;

    .prologue
    .line 260
    iget v0, p0, Lcom/android/server/wifi/HtcLteCoexBcm;->mBitmap:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/wifi/HtcLteCoexBcm;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/HtcLteCoexBcm;

    .prologue
    .line 260
    invoke-direct {p0}, Lcom/android/server/wifi/HtcLteCoexBcm;->enableLteCoexQmi()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/wifi/HtcLteCoexBcm;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/HtcLteCoexBcm;

    .prologue
    .line 260
    invoke-direct {p0}, Lcom/android/server/wifi/HtcLteCoexBcm;->disableLteCoexQmi()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/wifi/HtcLteCoexBcm;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/HtcLteCoexBcm;

    .prologue
    .line 260
    iget-boolean v0, p0, Lcom/android/server/wifi/HtcLteCoexBcm;->mLteConnected:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/wifi/HtcLteCoexBcm;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/HtcLteCoexBcm;
    .param p1, "x1"    # Z

    .prologue
    .line 260
    iput-boolean p1, p0, Lcom/android/server/wifi/HtcLteCoexBcm;->mLteConnected:Z

    return p1
.end method

.method static synthetic access$802(Lcom/android/server/wifi/HtcLteCoexBcm;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/HtcLteCoexBcm;
    .param p1, "x1"    # Z

    .prologue
    .line 260
    iput-boolean p1, p0, Lcom/android/server/wifi/HtcLteCoexBcm;->mQmiFlag:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/wifi/HtcLteCoexBcm;)Lcom/android/server/wifi/WifiNative;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/HtcLteCoexBcm;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/server/wifi/HtcLteCoexBcm;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    return-object v0
.end method

.method private disableLteCoexQmi()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 462
    iget-boolean v0, p0, Lcom/android/server/wifi/HtcLteCoexBcm;->mQmiFlag:Z

    if-eqz v0, :cond_0

    .line 463
    const-string v0, "HtcLteCoex"

    const-string v1, "Wifi disconnected, disable LTE coex"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    iput-boolean v2, p0, Lcom/android/server/wifi/HtcLteCoexBcm;->mQmiFlag:Z

    .line 465
    iget-object v0, p0, Lcom/android/server/wifi/HtcLteCoexBcm;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiNative;->setLteCoex(I)V

    .line 467
    :cond_0
    return-void
.end method

.method private enableLteCoexQmi()V
    .locals 3

    .prologue
    .line 454
    iget-boolean v0, p0, Lcom/android/server/wifi/HtcLteCoexBcm;->mLteConnected:Z

    if-eqz v0, :cond_0

    .line 455
    const-string v0, "HtcLteCoex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wifi Connected, Setup LTE coex channel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wifi/HtcLteCoexBcm;->mBitmap:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/HtcLteCoexBcm;->mQmiFlag:Z

    .line 457
    iget-object v0, p0, Lcom/android/server/wifi/HtcLteCoexBcm;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget v1, p0, Lcom/android/server/wifi/HtcLteCoexBcm;->mBitmap:I

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->setLteCoex(I)V

    .line 459
    :cond_0
    return-void
.end method

.method private manualChannelSelection(II)I
    .locals 5
    .param p1, "startSafeChannel"    # I
    .param p2, "endSafeChannel"    # I

    .prologue
    const/16 v4, 0xe

    const/16 v1, 0xb

    const/4 v3, 0x6

    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 410
    if-gt p1, p2, :cond_6

    .line 411
    if-ne p1, v2, :cond_0

    if-ne p2, v4, :cond_0

    move p1, v0

    .line 432
    .end local p1    # "startSafeChannel":I
    :goto_0
    return p1

    .line 413
    .restart local p1    # "startSafeChannel":I
    :cond_0
    if-gt p1, v1, :cond_1

    if-lt p2, v1, :cond_1

    move p1, v1

    .line 414
    goto :goto_0

    .line 415
    :cond_1
    if-ne p1, v2, :cond_2

    if-lt p2, v2, :cond_2

    move p1, v2

    .line 416
    goto :goto_0

    .line 417
    :cond_2
    if-gt p1, v3, :cond_3

    if-lt p2, v3, :cond_3

    .line 418
    const-string v0, "HtcLteCoex"

    const-string v1, "WARN: Channel 1 and 11 are outside safe channel range. This shouldn\'t happen."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v3

    .line 419
    goto :goto_0

    .line 420
    :cond_3
    if-lt p1, v2, :cond_4

    .line 421
    const-string v0, "HtcLteCoex"

    const-string v1, "WARN: Channel 1 and 11 are outside safe channel range. This shouldn\'t happen."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 423
    :cond_4
    if-gt p2, v4, :cond_5

    .line 424
    const-string v0, "HtcLteCoex"

    const-string v1, "WARN: Channel 1 and 11 are outside safe channel range. This shouldn\'t happen."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p1, p2

    .line 425
    goto :goto_0

    .line 427
    :cond_5
    const-string v1, "HtcLteCoex"

    const-string v2, "ERROR: startSafeChannel < 1 && endSafeChannel > 14."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    .line 428
    goto :goto_0

    .line 431
    :cond_6
    const-string v1, "HtcLteCoex"

    const-string v2, "ERROR: startSafeChannel > endSafeChannel."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    .line 432
    goto :goto_0
.end method

.method private setApBandwidth(I)V
    .locals 5
    .param p1, "bandwidth"    # I

    .prologue
    .line 398
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/HtcLteCoexBcm;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v2, p1}, Landroid/os/INetworkManagementService;->setApBandwidth(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    :goto_0
    return-void

    .line 399
    :catch_0
    move-exception v0

    .line 400
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "HtcLteCoex"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in setting softap bandwidth: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/HtcLteCoexBcm;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v2, p1}, Landroid/os/INetworkManagementService;->setApBandwidth(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 403
    :catch_1
    move-exception v1

    .line 404
    .local v1, "re_ex":Ljava/lang/Exception;
    const-string v2, "HtcLteCoex"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in re-setting softap bandwidth: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setApBandwidth(II)V
    .locals 1
    .param p1, "startSafeChannel"    # I
    .param p2, "endSafeChannel"    # I

    .prologue
    .line 385
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/16 v0, 0xe

    if-ne p2, v0, :cond_0

    .line 387
    const/16 v0, 0x28

    invoke-direct {p0, v0}, Lcom/android/server/wifi/HtcLteCoexBcm;->setApBandwidth(I)V

    .line 392
    :goto_0
    return-void

    .line 390
    :cond_0
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/android/server/wifi/HtcLteCoexBcm;->setApBandwidth(I)V

    goto :goto_0
.end method

.method private setLteCoexQmiBitmap(II)V
    .locals 2
    .param p1, "startSafeChannel"    # I
    .param p2, "endSafeChannel"    # I

    .prologue
    const/16 v1, 0xb

    .line 438
    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    if-lt p2, v1, :cond_0

    .line 440
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/server/wifi/HtcLteCoexBcm;->mBitmap:I

    .line 451
    :goto_0
    return-void

    .line 441
    :cond_0
    const/4 v0, 0x7

    if-ne p1, v0, :cond_1

    if-lt p2, v1, :cond_1

    .line 443
    const/16 v0, 0x3f

    iput v0, p0, Lcom/android/server/wifi/HtcLteCoexBcm;->mBitmap:I

    goto :goto_0

    .line 444
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    const/16 v0, 0x9

    if-ne p2, v0, :cond_2

    .line 446
    const/16 v0, 0x3e00

    iput v0, p0, Lcom/android/server/wifi/HtcLteCoexBcm;->mBitmap:I

    goto :goto_0

    .line 449
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/HtcLteCoexBcm;->mBitmap:I

    goto :goto_0
.end method


# virtual methods
.method protected checkCoex()Z
    .locals 1

    .prologue
    .line 274
    iget v0, p0, Lcom/android/server/wifi/HtcLteCoexBcm;->mBcmManualChannel:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected registerLteCoexReceiver()V
    .locals 6

    .prologue
    .line 286
    iget-object v2, p0, Lcom/android/server/wifi/HtcLteCoexBcm;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/wifi/HtcLteCoexBcm$1;

    invoke-direct {v3, p0}, Lcom/android/server/wifi/HtcLteCoexBcm$1;-><init>(Lcom/android/server/wifi/HtcLteCoexBcm;)V

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "qualcomm.intent.action.SAFE_WIFI_CHANNELS_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 339
    iget-object v2, p0, Lcom/android/server/wifi/HtcLteCoexBcm;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/wifi/HtcLteCoexBcm$2;

    invoke-direct {v3, p0}, Lcom/android/server/wifi/HtcLteCoexBcm$2;-><init>(Lcom/android/server/wifi/HtcLteCoexBcm;)V

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 358
    new-instance v1, Lcom/android/server/wifi/HtcLteCoexBcm$3;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/HtcLteCoexBcm$3;-><init>(Lcom/android/server/wifi/HtcLteCoexBcm;)V

    .line 375
    .local v1, "phoneStateListener":Landroid/telephony/PhoneStateListener;
    iget-object v2, p0, Lcom/android/server/wifi/HtcLteCoexBcm;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 376
    .local v0, "phoneMananger":Landroid/telephony/TelephonyManager;
    const/16 v2, 0x1e1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 382
    return-void
.end method

.method public setApChannel(Landroid/net/wifi/WifiConfiguration;)V
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 277
    const-string v0, "HtcLteCoex"

    const-string v1, "This is Broadcom hotspot(auto channel selection) and LTE coexistence."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const-string v0, "HtcLteCoex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LTE determines safe channel range is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wifi/HtcLteCoexBcm;->mStartChannel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wifi/HtcLteCoexBcm;->mEndChannel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const-string v0, "HtcLteCoex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "We select "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wifi/HtcLteCoexBcm;->mBcmManualChannel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " as our channel."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget v0, p0, Lcom/android/server/wifi/HtcLteCoexBcm;->mBcmManualChannel:I

    iput v0, p1, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    .line 282
    return-void
.end method
