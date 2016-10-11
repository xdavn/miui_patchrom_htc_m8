.class public Landroid/util/NtpTrustedTime;
.super Ljava/lang/Object;
.source "NtpTrustedTime.java"

# interfaces
.implements Landroid/util/TrustedTime;


# static fields
.field private static final LOGD:Z = false

.field private static final TAG:Ljava/lang/String; = "NtpTrustedTime"

.field private static sContext:Landroid/content/Context;

.field private static sSingleton:Landroid/util/NtpTrustedTime;


# instance fields
.field private final NTP_SERVER_A:Ljava/lang/String;

.field private final NTP_SERVER_ANDROID:Ljava/lang/String;

.field private final NTP_SERVER_HTC:Ljava/lang/String;

.field private mCM:Landroid/net/ConnectivityManager;

.field private mCachedNtpCertainty:J

.field private mCachedNtpElapsedRealtime:J

.field private mCachedNtpTime:J

.field private mHasCache:Z

.field private final mServer:Ljava/lang/String;

.field private final mTimeout:J


# direct methods
.method private constructor <init>(Ljava/lang/String;J)V
    .locals 2
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "timeout"    # J

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string/jumbo v0, "timeasia.htc.com"

    iput-object v0, p0, Landroid/util/NtpTrustedTime;->NTP_SERVER_HTC:Ljava/lang/String;

    .line 46
    const-string v0, "asia.pool.ntp.org"

    iput-object v0, p0, Landroid/util/NtpTrustedTime;->NTP_SERVER_ANDROID:Ljava/lang/String;

    .line 47
    const-string/jumbo v0, "time.asia.apple.com"

    iput-object v0, p0, Landroid/util/NtpTrustedTime;->NTP_SERVER_A:Ljava/lang/String;

    .line 59
    iput-object p1, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    .line 60
    iput-wide p2, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    .line 61
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    const-class v10, Landroid/util/NtpTrustedTime;

    monitor-enter v10

    :try_start_0
    sget-object v7, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    if-nez v7, :cond_0

    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 72
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 74
    .local v4, "resolver":Landroid/content/ContentResolver;
    const v7, 0x1040039

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "defaultServer":Ljava/lang/String;
    const v7, 0x10e007c

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    int-to-long v2, v7

    .line 79
    .local v2, "defaultTimeout":J
    const-string/jumbo v7, "ntp_server"

    invoke-static {v4, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 81
    .local v5, "secureServer":Ljava/lang/String;
    const-string/jumbo v7, "ntp_timeout"

    invoke-static {v4, v7, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v8

    .line 84
    .local v8, "timeout":J
    if-eqz v5, :cond_1

    move-object v6, v5

    .line 85
    .local v6, "server":Ljava/lang/String;
    :goto_0
    new-instance v7, Landroid/util/NtpTrustedTime;

    invoke-direct {v7, v6, v8, v9}, Landroid/util/NtpTrustedTime;-><init>(Ljava/lang/String;J)V

    sput-object v7, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    .line 86
    sput-object p0, Landroid/util/NtpTrustedTime;->sContext:Landroid/content/Context;

    .line 89
    .end local v0    # "defaultServer":Ljava/lang/String;
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v2    # "defaultTimeout":J
    .end local v4    # "resolver":Landroid/content/ContentResolver;
    .end local v5    # "secureServer":Ljava/lang/String;
    .end local v6    # "server":Ljava/lang/String;
    .end local v8    # "timeout":J
    :cond_0
    sget-object v7, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v10

    return-object v7

    .restart local v0    # "defaultServer":Ljava/lang/String;
    .restart local v1    # "res":Landroid/content/res/Resources;
    .restart local v2    # "defaultTimeout":J
    .restart local v4    # "resolver":Landroid/content/ContentResolver;
    .restart local v5    # "secureServer":Ljava/lang/String;
    .restart local v8    # "timeout":J
    :cond_1
    move-object v6, v0

    .line 84
    goto :goto_0

    .line 70
    .end local v0    # "defaultServer":Ljava/lang/String;
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v2    # "defaultTimeout":J
    .end local v4    # "resolver":Landroid/content/ContentResolver;
    .end local v5    # "secureServer":Ljava/lang/String;
    .end local v8    # "timeout":J
    :catchall_0
    move-exception v7

    monitor-exit v10

    throw v7
.end method

.method private static isChinaSKU()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 65
    const-string/jumbo v1, "region"

    invoke-static {v1, v0}, Lcom/htc/customization/HtcCustomizationSystemReaderImpl;->readInteger(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public currentTimeMillis()J
    .locals 4

    .prologue
    .line 180
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    if-nez v0, :cond_0

    .line 181
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing authoritative time source"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_0
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    invoke-virtual {p0}, Landroid/util/NtpTrustedTime;->getCacheAge()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public forceRefresh()Z
    .locals 10

    .prologue
    const-wide/16 v8, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 94
    iget-object v2, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 150
    :goto_0
    return v2

    .line 100
    :cond_0
    monitor-enter p0

    .line 101
    :try_start_0
    iget-object v2, p0, Landroid/util/NtpTrustedTime;->mCM:Landroid/net/ConnectivityManager;

    if-nez v2, :cond_1

    .line 102
    sget-object v2, Landroid/util/NtpTrustedTime;->sContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iput-object v2, p0, Landroid/util/NtpTrustedTime;->mCM:Landroid/net/ConnectivityManager;

    .line 104
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    iget-object v2, p0, Landroid/util/NtpTrustedTime;->mCM:Landroid/net/ConnectivityManager;

    if-nez v2, :cond_3

    const/4 v1, 0x0

    .line 107
    .local v1, "ni":Landroid/net/NetworkInfo;
    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_4

    :cond_2
    move v2, v3

    .line 109
    goto :goto_0

    .line 104
    .end local v1    # "ni":Landroid/net/NetworkInfo;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 106
    :cond_3
    iget-object v2, p0, Landroid/util/NtpTrustedTime;->mCM:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    goto :goto_1

    .line 114
    .restart local v1    # "ni":Landroid/net/NetworkInfo;
    :cond_4
    new-instance v0, Landroid/net/SntpClient;

    invoke-direct {v0}, Landroid/net/SntpClient;-><init>()V

    .line 116
    .local v0, "client":Landroid/net/SntpClient;
    invoke-static {}, Landroid/util/NtpTrustedTime;->isChinaSKU()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 117
    const-string/jumbo v2, "timeasia.htc.com"

    iget-wide v6, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    long-to-int v5, v6

    invoke-virtual {v0, v2, v5}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 119
    iput-boolean v4, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    .line 120
    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTime()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    .line 121
    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTimeReference()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    .line 122
    invoke-virtual {v0}, Landroid/net/SntpClient;->getRoundTripTime()J

    move-result-wide v2

    div-long/2addr v2, v8

    iput-wide v2, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    move v2, v4

    .line 123
    goto :goto_0

    .line 124
    :cond_5
    const-string v2, "asia.pool.ntp.org"

    iget-wide v6, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    long-to-int v5, v6

    invoke-virtual {v0, v2, v5}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 126
    iput-boolean v4, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    .line 127
    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTime()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    .line 128
    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTimeReference()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    .line 129
    invoke-virtual {v0}, Landroid/net/SntpClient;->getRoundTripTime()J

    move-result-wide v2

    div-long/2addr v2, v8

    iput-wide v2, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    move v2, v4

    .line 130
    goto :goto_0

    .line 131
    :cond_6
    const-string/jumbo v2, "time.asia.apple.com"

    iget-wide v6, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    long-to-int v5, v6

    invoke-virtual {v0, v2, v5}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 133
    iput-boolean v4, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    .line 134
    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTime()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    .line 135
    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTimeReference()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    .line 136
    invoke-virtual {v0}, Landroid/net/SntpClient;->getRoundTripTime()J

    move-result-wide v2

    div-long/2addr v2, v8

    iput-wide v2, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    move v2, v4

    .line 137
    goto/16 :goto_0

    :cond_7
    move v2, v3

    .line 139
    goto/16 :goto_0

    .line 143
    :cond_8
    iget-object v2, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    iget-wide v6, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    long-to-int v5, v6

    invoke-virtual {v0, v2, v5}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 144
    iput-boolean v4, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    .line 145
    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTime()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    .line 146
    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTimeReference()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    .line 147
    invoke-virtual {v0}, Landroid/net/SntpClient;->getRoundTripTime()J

    move-result-wide v2

    div-long/2addr v2, v8

    iput-wide v2, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    move v2, v4

    .line 148
    goto/16 :goto_0

    :cond_9
    move v2, v3

    .line 150
    goto/16 :goto_0
.end method

.method public getCacheAge()J
    .locals 4

    .prologue
    .line 162
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    if-eqz v0, :cond_0

    .line 163
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    sub-long/2addr v0, v2

    .line 165
    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method public getCacheCertainty()J
    .locals 2

    .prologue
    .line 171
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    if-eqz v0, :cond_0

    .line 172
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    .line 174
    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method public getCachedNtpTime()J
    .locals 2

    .prologue
    .line 192
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    return-wide v0
.end method

.method public getCachedNtpTimeReference()J
    .locals 2

    .prologue
    .line 196
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    return-wide v0
.end method

.method public hasCache()Z
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    return v0
.end method
