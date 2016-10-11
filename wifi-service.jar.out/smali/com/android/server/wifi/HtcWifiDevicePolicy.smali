.class public Lcom/android/server/wifi/HtcWifiDevicePolicy;
.super Ljava/lang/Object;
.source "HtcWifiDevicePolicy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiDevicePolicy"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mForbiddenByExchangePolicy:Z

.field private mWifiServiceImpl:Lcom/android/server/wifi/WifiServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiServiceImpl;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/wifi/WifiServiceImpl;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wifi/HtcWifiDevicePolicy;->mForbiddenByExchangePolicy:Z

    .line 21
    iput-object p1, p0, Lcom/android/server/wifi/HtcWifiDevicePolicy;->mContext:Landroid/content/Context;

    .line 22
    iget-object v1, p0, Lcom/android/server/wifi/HtcWifiDevicePolicy;->mContext:Landroid/content/Context;

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/server/wifi/HtcWifiDevicePolicy;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 23
    iput-object p2, p0, Lcom/android/server/wifi/HtcWifiDevicePolicy;->mWifiServiceImpl:Lcom/android/server/wifi/WifiServiceImpl;

    .line 25
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 26
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 27
    const-string v1, "com.htc.admin.ALLOW_WIFI_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 29
    iget-object v1, p0, Lcom/android/server/wifi/HtcWifiDevicePolicy;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/wifi/HtcWifiDevicePolicy$1;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/HtcWifiDevicePolicy$1;-><init>(Lcom/android/server/wifi/HtcWifiDevicePolicy;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifi/HtcWifiDevicePolicy;)Landroid/app/admin/DevicePolicyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/HtcWifiDevicePolicy;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/android/server/wifi/HtcWifiDevicePolicy;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wifi/HtcWifiDevicePolicy;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/HtcWifiDevicePolicy;
    .param p1, "x1"    # I

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/android/server/wifi/HtcWifiDevicePolicy;->updateDevicePolicy(I)V

    return-void
.end method

.method private updateDevicePolicy(I)V
    .locals 3
    .param p1, "allowStatus"    # I

    .prologue
    const/4 v2, 0x0

    .line 48
    if-nez p1, :cond_0

    .line 49
    iget-object v0, p0, Lcom/android/server/wifi/HtcWifiDevicePolicy;->mWifiServiceImpl:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiEnabled(Z)Z

    .line 50
    iget-object v0, p0, Lcom/android/server/wifi/HtcWifiDevicePolicy;->mWifiServiceImpl:Lcom/android/server/wifi/WifiServiceImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/HtcWifiDevicePolicy;->mForbiddenByExchangePolicy:Z

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_0
    iput-boolean v2, p0, Lcom/android/server/wifi/HtcWifiDevicePolicy;->mForbiddenByExchangePolicy:Z

    goto :goto_0
.end method


# virtual methods
.method public isWifiForbidden()Z
    .locals 3

    .prologue
    .line 59
    const-string v0, "WifiDevicePolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " forbidden by exchange policy ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/wifi/HtcWifiDevicePolicy;->mForbiddenByExchangePolicy:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-boolean v0, p0, Lcom/android/server/wifi/HtcWifiDevicePolicy;->mForbiddenByExchangePolicy:Z

    return v0
.end method
