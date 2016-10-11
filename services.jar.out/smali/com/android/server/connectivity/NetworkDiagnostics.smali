.class public Lcom/android/server/connectivity/NetworkDiagnostics;
.super Ljava/lang/Object;
.source "NetworkDiagnostics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/NetworkDiagnostics$1;,
        Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;,
        Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;,
        Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;,
        Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;,
        Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkDiagnostics"

.field private static final TEST_DNS4:Ljava/net/InetAddress;

.field private static final TEST_DNS6:Ljava/net/InetAddress;


# instance fields
.field private final mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mDeadlineTime:J

.field private final mDescription:Ljava/lang/String;

.field private final mDnsUdpChecks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/net/InetAddress;",
            "Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;",
            ">;"
        }
    .end annotation
.end field

.field private final mIcmpChecks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/net/InetAddress;",
            "Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;",
            ">;"
        }
    .end annotation
.end field

.field private final mInterfaceIndex:Ljava/lang/Integer;

.field private final mLinkProperties:Landroid/net/LinkProperties;

.field private final mNetwork:Landroid/net/Network;

.field private final mStartTime:J

.field private final mTimeoutMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const-string v0, "8.8.8.8"

    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/NetworkDiagnostics;->TEST_DNS4:Ljava/net/InetAddress;

    .line 84
    const-string v0, "2001:4860:4860::8888"

    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/NetworkDiagnostics;->TEST_DNS6:Ljava/net/InetAddress;

    return-void
.end method

.method public constructor <init>(Landroid/net/Network;Landroid/net/LinkProperties;J)V
    .locals 9
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "lp"    # Landroid/net/LinkProperties;
    .param p3, "timeoutMs"    # J

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mIcmpChecks:Ljava/util/Map;

    .line 152
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mDnsUdpChecks:Ljava/util/Map;

    .line 157
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mNetwork:Landroid/net/Network;

    .line 158
    iput-object p2, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mLinkProperties:Landroid/net/LinkProperties;

    .line 159
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/connectivity/NetworkDiagnostics;->getInterfaceIndex(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mInterfaceIndex:Ljava/lang/Integer;

    .line 160
    iput-wide p3, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mTimeoutMs:J

    .line 161
    invoke-static {}, Lcom/android/server/connectivity/NetworkDiagnostics;->now()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mStartTime:J

    .line 162
    iget-wide v4, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mStartTime:J

    iget-wide v6, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mTimeoutMs:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mDeadlineTime:J

    .line 169
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mLinkProperties:Landroid/net/LinkProperties;

    sget-object v4, Lcom/android/server/connectivity/NetworkDiagnostics;->TEST_DNS4:Ljava/net/InetAddress;

    invoke-virtual {v3, v4}, Landroid/net/LinkProperties;->isReachable(Ljava/net/InetAddress;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 170
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mLinkProperties:Landroid/net/LinkProperties;

    sget-object v4, Lcom/android/server/connectivity/NetworkDiagnostics;->TEST_DNS4:Ljava/net/InetAddress;

    invoke-virtual {v3, v4}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    .line 175
    :cond_0
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3}, Landroid/net/LinkProperties;->hasGlobalIPv6Address()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3}, Landroid/net/LinkProperties;->hasIPv6DefaultRoute()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 176
    :cond_1
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mLinkProperties:Landroid/net/LinkProperties;

    sget-object v4, Lcom/android/server/connectivity/NetworkDiagnostics;->TEST_DNS6:Ljava/net/InetAddress;

    invoke-virtual {v3, v4}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    .line 179
    :cond_2
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfo;

    .line 180
    .local v2, "route":Landroid/net/RouteInfo;
    invoke-virtual {v2}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 181
    invoke-virtual {v2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/connectivity/NetworkDiagnostics;->prepareIcmpMeasurement(Ljava/net/InetAddress;)V

    goto :goto_0

    .line 184
    .end local v2    # "route":Landroid/net/RouteInfo;
    :cond_4
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 185
    .local v1, "nameserver":Ljava/net/InetAddress;
    invoke-direct {p0, v1}, Lcom/android/server/connectivity/NetworkDiagnostics;->prepareIcmpMeasurement(Ljava/net/InetAddress;)V

    .line 186
    invoke-direct {p0, v1}, Lcom/android/server/connectivity/NetworkDiagnostics;->prepareDnsMeasurement(Ljava/net/InetAddress;)V

    goto :goto_1

    .line 189
    .end local v1    # "nameserver":Ljava/net/InetAddress;
    :cond_5
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkDiagnostics;->totalMeasurementCount()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v3, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 191
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkDiagnostics;->startMeasurements()V

    .line 193
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ifaces{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    iget-object v5, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v5}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/List;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " index{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mInterfaceIndex:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " network{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mNetwork:Landroid/net/Network;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " nethandle{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mNetwork:Landroid/net/Network;

    invoke-virtual {v4}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mDescription:Ljava/lang/String;

    .line 197
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/connectivity/NetworkDiagnostics;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkDiagnostics;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$100()J
    .locals 2

    .prologue
    .line 80
    invoke-static {}, Lcom/android/server/connectivity/NetworkDiagnostics;->now()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/server/connectivity/NetworkDiagnostics;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkDiagnostics;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mInterfaceIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/connectivity/NetworkDiagnostics;)Landroid/net/Network;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkDiagnostics;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mNetwork:Landroid/net/Network;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/connectivity/NetworkDiagnostics;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkDiagnostics;

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mDeadlineTime:J

    return-wide v0
.end method

.method private static getInterfaceIndex(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3
    .param p0, "ifname"    # Ljava/lang/String;

    .prologue
    .line 201
    :try_start_0
    invoke-static {p0}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v1

    .line 202
    .local v1, "ni":Ljava/net/NetworkInterface;
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 204
    .end local v1    # "ni":Ljava/net/NetworkInterface;
    :goto_0
    return-object v2

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 203
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private static final now()J
    .locals 2

    .prologue
    .line 89
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method private prepareDnsMeasurement(Ljava/net/InetAddress;)V
    .locals 3
    .param p1, "target"    # Ljava/net/InetAddress;

    .prologue
    .line 217
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mDnsUdpChecks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 218
    new-instance v0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;-><init>(Lcom/android/server/connectivity/NetworkDiagnostics;Lcom/android/server/connectivity/NetworkDiagnostics$1;)V

    .line 219
    .local v0, "measurement":Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;-><init>(Lcom/android/server/connectivity/NetworkDiagnostics;Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, v0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->thread:Ljava/lang/Thread;

    .line 220
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mDnsUdpChecks:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    .end local v0    # "measurement":Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;
    :cond_0
    return-void
.end method

.method private prepareIcmpMeasurement(Ljava/net/InetAddress;)V
    .locals 3
    .param p1, "target"    # Ljava/net/InetAddress;

    .prologue
    .line 209
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mIcmpChecks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 210
    new-instance v0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;-><init>(Lcom/android/server/connectivity/NetworkDiagnostics;Lcom/android/server/connectivity/NetworkDiagnostics$1;)V

    .line 211
    .local v0, "measurement":Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;-><init>(Lcom/android/server/connectivity/NetworkDiagnostics;Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, v0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->thread:Ljava/lang/Thread;

    .line 212
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mIcmpChecks:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .end local v0    # "measurement":Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;
    :cond_0
    return-void
.end method

.method private startMeasurements()V
    .locals 3

    .prologue
    .line 229
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mIcmpChecks:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    .line 230
    .local v1, "measurement":Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;
    iget-object v2, v1, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->thread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 232
    .end local v1    # "measurement":Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;
    :cond_0
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mDnsUdpChecks:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    .line 233
    .restart local v1    # "measurement":Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;
    iget-object v2, v1, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->thread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_1

    .line 235
    .end local v1    # "measurement":Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;
    :cond_1
    return-void
.end method

.method private totalMeasurementCount()I
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mIcmpChecks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mDnsUdpChecks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 6
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 244
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NetworkDiagnostics:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mDescription:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 245
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v2

    .line 246
    .local v2, "unfinished":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 249
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WARNING: countdown wait incomplete: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " unfinished measurements"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 253
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 254
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mIcmpChecks:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 255
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/net/Inet4Address;

    if-eqz v4, :cond_1

    .line 256
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    invoke-virtual {v4}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 259
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;>;"
    :cond_2
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mIcmpChecks:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 260
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/net/Inet6Address;

    if-eqz v4, :cond_3

    .line 261
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    invoke-virtual {v4}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 264
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;>;"
    :cond_4
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mDnsUdpChecks:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 265
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/net/Inet4Address;

    if-eqz v4, :cond_5

    .line 266
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    invoke-virtual {v4}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 269
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;>;"
    :cond_6
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mDnsUdpChecks:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 270
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/net/Inet6Address;

    if-eqz v4, :cond_7

    .line 271
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    invoke-virtual {v4}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 274
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;>;"
    :cond_8
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 275
    return-void
.end method

.method public waitForMeasurements()V
    .locals 6

    .prologue
    .line 239
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    iget-wide v2, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mDeadlineTime:J

    invoke-static {}, Lcom/android/server/connectivity/NetworkDiagnostics;->now()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :goto_0
    return-void

    .line 240
    :catch_0
    move-exception v0

    goto :goto_0
.end method
