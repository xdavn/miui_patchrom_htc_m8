.class public Lcom/android/server/wifi/HtcScanAvoidance;
.super Ljava/lang/Object;
.source "HtcScanAvoidance.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HtcScanAvoidance"


# instance fields
.field private mBtScoConnected:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/HtcScanAvoidance;->mBtScoConnected:Z

    .line 22
    iput-object p1, p0, Lcom/android/server/wifi/HtcScanAvoidance;->mContext:Landroid/content/Context;

    .line 25
    invoke-static {}, Landroid/net/wifi/HtcWifiCustomizeReader;->getWlanSolution()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 26
    invoke-direct {p0}, Lcom/android/server/wifi/HtcScanAvoidance;->registerReceiver()V

    .line 27
    :cond_0
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/wifi/HtcScanAvoidance;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/HtcScanAvoidance;
    .param p1, "x1"    # Z

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/android/server/wifi/HtcScanAvoidance;->mBtScoConnected:Z

    return p1
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 30
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 31
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 32
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 33
    iget-object v1, p0, Lcom/android/server/wifi/HtcScanAvoidance;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/wifi/HtcScanAvoidance$1;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/HtcScanAvoidance$1;-><init>(Lcom/android/server/wifi/HtcScanAvoidance;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 62
    return-void
.end method


# virtual methods
.method needScanAvoidance()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 65
    iget-boolean v1, p0, Lcom/android/server/wifi/HtcScanAvoidance;->mBtScoConnected:Z

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
