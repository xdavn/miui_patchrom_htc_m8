.class public Lcom/android/server/wifi/HtcWifiMonitor;
.super Ljava/lang/Object;
.source "HtcWifiMonitor.java"


# static fields
.field private static final BASE:I = 0x24000

.field public static final EVENT_AKA_INVALID_SIM:I = 0x2406b

.field private static final HTC_BASE:I = 0x64

.field public static final HTC_IDPW_EVENT:I = 0x2406d

.field public static final HTC_NETWORK_PROBLEM_EVENT:I = 0x2406c


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/android/internal/util/StateMachine;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/HtcWifiMonitor;
    .locals 3
    .param p0, "stateMachine"    # Lcom/android/internal/util/StateMachine;
    .param p1, "reqPrefix"    # Ljava/lang/String;
    .param p2, "event_prefix_str"    # Ljava/lang/String;

    .prologue
    .line 27
    const/4 v0, 0x0

    .line 28
    .local v0, "monitor":Lcom/android/server/wifi/HtcWifiMonitor;
    sget-object v1, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;->CONNECTION_FAIL_NOTIFICATION:Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

    invoke-static {v1}, Landroid/net/wifi/HtcWifiCustomizeReader;->support(Landroid/net/wifi/HtcWifiCustomizeReader$Feature;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 29
    new-instance v0, Lcom/android/server/wifi/HtcWifiMonitorImpl;

    .end local v0    # "monitor":Lcom/android/server/wifi/HtcWifiMonitor;
    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/wifi/HtcWifiMonitorImpl;-><init>(Lcom/android/internal/util/StateMachine;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .restart local v0    # "monitor":Lcom/android/server/wifi/HtcWifiMonitor;
    const-string v1, "HtcWifiMonitor"

    const-string v2, "create HtcWifiMonitorImpl"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :goto_0
    return-object v0

    .line 33
    :cond_0
    new-instance v0, Lcom/android/server/wifi/HtcWifiMonitor;

    .end local v0    # "monitor":Lcom/android/server/wifi/HtcWifiMonitor;
    invoke-direct {v0}, Lcom/android/server/wifi/HtcWifiMonitor;-><init>()V

    .line 34
    .restart local v0    # "monitor":Lcom/android/server/wifi/HtcWifiMonitor;
    const-string v1, "HtcWifiMonitor"

    const-string v2, "create HtcWifiMonitor"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public htcdispatchEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "eventStr"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    .prologue
    .line 42
    return-void
.end method
