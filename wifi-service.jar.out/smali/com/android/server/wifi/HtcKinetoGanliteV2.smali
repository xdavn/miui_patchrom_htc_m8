.class public Lcom/android/server/wifi/HtcKinetoGanliteV2;
.super Ljava/lang/Object;
.source "HtcKinetoGanliteV2.java"


# static fields
.field public static final KINETO_GANLITE_INTENT_ACTION_V2:Ljava/lang/String; = "com.kineto.smartwifi.WFCState"

.field private static final TAG:Ljava/lang/String; = "HtcKinetoGanliteV2"

.field private static mWakeLock_VoWIFI_CPUFreq:Landroid/os/PowerManager$HtcCpuCtrl;

.field private static mWakeLock_VoWIFI_CPUNum:Landroid/os/PowerManager$HtcCpuCtrl;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mWifiServiceImpl:Lcom/android/server/wifi/WifiServiceImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    sput-object v0, Lcom/android/server/wifi/HtcKinetoGanliteV2;->mWakeLock_VoWIFI_CPUFreq:Landroid/os/PowerManager$HtcCpuCtrl;

    .line 27
    sput-object v0, Lcom/android/server/wifi/HtcKinetoGanliteV2;->mWakeLock_VoWIFI_CPUNum:Landroid/os/PowerManager$HtcCpuCtrl;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiServiceImpl;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/wifi/WifiServiceImpl;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/server/wifi/HtcKinetoGanliteV2;->mContext:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/android/server/wifi/HtcKinetoGanliteV2;->mWifiServiceImpl:Lcom/android/server/wifi/WifiServiceImpl;

    .line 33
    iget-object v1, p0, Lcom/android/server/wifi/HtcKinetoGanliteV2;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 34
    .local v0, "powerManager":Landroid/os/PowerManager;
    const/16 v1, 0x2000

    const/4 v2, 0x3

    const-string v3, "HtcKinetoGanliteV2"

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->newHtcCpuCtrl(IILjava/lang/String;)Landroid/os/PowerManager$HtcCpuCtrl;

    move-result-object v1

    sput-object v1, Lcom/android/server/wifi/HtcKinetoGanliteV2;->mWakeLock_VoWIFI_CPUFreq:Landroid/os/PowerManager$HtcCpuCtrl;

    .line 35
    const v1, 0x8000

    const/4 v2, 0x2

    const-string v3, "HtcKinetoGanliteV2"

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->newHtcCpuCtrl(IILjava/lang/String;)Landroid/os/PowerManager$HtcCpuCtrl;

    move-result-object v1

    sput-object v1, Lcom/android/server/wifi/HtcKinetoGanliteV2;->mWakeLock_VoWIFI_CPUNum:Landroid/os/PowerManager$HtcCpuCtrl;

    .line 37
    invoke-direct {p0}, Lcom/android/server/wifi/HtcKinetoGanliteV2;->registerKinetoGanliteReceiver()V

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifi/HtcKinetoGanliteV2;)Lcom/android/server/wifi/WifiServiceImpl;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/HtcKinetoGanliteV2;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/server/wifi/HtcKinetoGanliteV2;->mWifiServiceImpl:Lcom/android/server/wifi/WifiServiceImpl;

    return-object v0
.end method

.method private registerKinetoGanliteReceiver()V
    .locals 4

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/server/wifi/HtcKinetoGanliteV2;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/wifi/HtcKinetoGanliteV2$1;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/HtcKinetoGanliteV2$1;-><init>(Lcom/android/server/wifi/HtcKinetoGanliteV2;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.kineto.smartwifi.WFCState"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 69
    return-void
.end method


# virtual methods
.method public declared-synchronized VoWIFILockCPU(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 73
    monitor-enter p0

    if-eqz p1, :cond_2

    .line 74
    :try_start_0
    sget-object v1, Lcom/android/server/wifi/HtcKinetoGanliteV2;->mWakeLock_VoWIFI_CPUFreq:Landroid/os/PowerManager$HtcCpuCtrl;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 75
    :try_start_1
    sget-object v0, Lcom/android/server/wifi/HtcKinetoGanliteV2;->mWakeLock_VoWIFI_CPUFreq:Landroid/os/PowerManager$HtcCpuCtrl;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wifi/HtcKinetoGanliteV2;->mWakeLock_VoWIFI_CPUFreq:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    sget-object v0, Lcom/android/server/wifi/HtcKinetoGanliteV2;->mWakeLock_VoWIFI_CPUFreq:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->acquire()V

    .line 77
    const-string v0, "HtcKinetoGanliteV2"

    const-string v2, "VoWIFI: CPU Freq lock acquired"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    :try_start_2
    sget-object v1, Lcom/android/server/wifi/HtcKinetoGanliteV2;->mWakeLock_VoWIFI_CPUNum:Landroid/os/PowerManager$HtcCpuCtrl;

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 81
    :try_start_3
    sget-object v0, Lcom/android/server/wifi/HtcKinetoGanliteV2;->mWakeLock_VoWIFI_CPUNum:Landroid/os/PowerManager$HtcCpuCtrl;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/wifi/HtcKinetoGanliteV2;->mWakeLock_VoWIFI_CPUNum:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    .line 82
    sget-object v0, Lcom/android/server/wifi/HtcKinetoGanliteV2;->mWakeLock_VoWIFI_CPUNum:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->acquire()V

    .line 83
    const-string v0, "HtcKinetoGanliteV2"

    const-string v2, "VoWIFI: CPU NUM lock acquired"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_1
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 100
    :goto_0
    monitor-exit p0

    return-void

    .line 79
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 73
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 85
    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v0

    .line 87
    :cond_2
    sget-object v1, Lcom/android/server/wifi/HtcKinetoGanliteV2;->mWakeLock_VoWIFI_CPUFreq:Landroid/os/PowerManager$HtcCpuCtrl;

    monitor-enter v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 88
    :try_start_8
    sget-object v0, Lcom/android/server/wifi/HtcKinetoGanliteV2;->mWakeLock_VoWIFI_CPUFreq:Landroid/os/PowerManager$HtcCpuCtrl;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/server/wifi/HtcKinetoGanliteV2;->mWakeLock_VoWIFI_CPUFreq:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 89
    sget-object v0, Lcom/android/server/wifi/HtcKinetoGanliteV2;->mWakeLock_VoWIFI_CPUFreq:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->release()V

    .line 90
    const-string v0, "HtcKinetoGanliteV2"

    const-string v2, "VoWIFI: CPU Freq lock released"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_3
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 93
    :try_start_9
    sget-object v1, Lcom/android/server/wifi/HtcKinetoGanliteV2;->mWakeLock_VoWIFI_CPUNum:Landroid/os/PowerManager$HtcCpuCtrl;

    monitor-enter v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 94
    :try_start_a
    sget-object v0, Lcom/android/server/wifi/HtcKinetoGanliteV2;->mWakeLock_VoWIFI_CPUNum:Landroid/os/PowerManager$HtcCpuCtrl;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/server/wifi/HtcKinetoGanliteV2;->mWakeLock_VoWIFI_CPUNum:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 95
    sget-object v0, Lcom/android/server/wifi/HtcKinetoGanliteV2;->mWakeLock_VoWIFI_CPUNum:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->release()V

    .line 96
    const-string v0, "HtcKinetoGanliteV2"

    const-string v2, "VoWIFI: CPU NUM lock released"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_4
    monitor-exit v1

    goto :goto_0

    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 92
    :catchall_4
    move-exception v0

    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :try_start_d
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
.end method
