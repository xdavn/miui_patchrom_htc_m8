.class public Lcom/android/server/location/GpsXtraDownloader;
.super Ljava/lang/Object;
.source "GpsXtraDownloader.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final DEFAULT_USER_AGENT:Ljava/lang/String; = "Android"

.field private static final TAG:Ljava/lang/String; = "GpsXtraDownloader"


# instance fields
.field private mNextServerIndex:I

.field private final mUserAgent:Ljava/lang/String;

.field private final mXtraServers:[Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/Properties;)V
    .locals 9
    .param p1, "properties"    # Ljava/util/Properties;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v1, 0x0

    .line 52
    .local v1, "count":I
    const-string v7, "XTRA_SERVER_1"

    invoke-virtual {p1, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 53
    .local v4, "server1":Ljava/lang/String;
    const-string v7, "XTRA_SERVER_2"

    invoke-virtual {p1, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 54
    .local v5, "server2":Ljava/lang/String;
    const-string v7, "XTRA_SERVER_3"

    invoke-virtual {p1, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 55
    .local v6, "server3":Ljava/lang/String;
    if-eqz v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 56
    :cond_0
    if-eqz v5, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 57
    :cond_1
    if-eqz v6, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 60
    :cond_2
    const-string v7, "XTRA_USER_AGENT"

    invoke-virtual {p1, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "agent":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 62
    const-string v7, "Android"

    iput-object v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mUserAgent:Ljava/lang/String;

    .line 67
    :goto_0
    if-nez v1, :cond_4

    .line 68
    const-string v7, "GpsXtraDownloader"

    const-string v8, "No XTRA servers were specified in the GPS configuration"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    .line 81
    :goto_1
    return-void

    .line 64
    :cond_3
    iput-object v0, p0, Lcom/android/server/location/GpsXtraDownloader;->mUserAgent:Ljava/lang/String;

    goto :goto_0

    .line 71
    :cond_4
    new-array v7, v1, [Ljava/lang/String;

    iput-object v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    .line 72
    const/4 v1, 0x0

    .line 73
    if-eqz v4, :cond_7

    iget-object v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "count":I
    .local v2, "count":I
    aput-object v4, v7, v1

    .line 74
    :goto_2
    if-eqz v5, :cond_5

    iget-object v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "count":I
    .restart local v1    # "count":I
    aput-object v5, v7, v2

    move v2, v1

    .line 75
    .end local v1    # "count":I
    .restart local v2    # "count":I
    :cond_5
    if-eqz v6, :cond_6

    iget-object v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "count":I
    .restart local v1    # "count":I
    aput-object v6, v7, v2

    .line 78
    :goto_3
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 79
    .local v3, "random":Ljava/util/Random;
    invoke-virtual {v3, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    iput v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    goto :goto_1

    .end local v1    # "count":I
    .end local v3    # "random":Ljava/util/Random;
    .restart local v2    # "count":I
    :cond_6
    move v1, v2

    .end local v2    # "count":I
    .restart local v1    # "count":I
    goto :goto_3

    :cond_7
    move v2, v1

    .end local v1    # "count":I
    .restart local v2    # "count":I
    goto :goto_2
.end method


# virtual methods
.method protected doDownload(Ljava/lang/String;)[B
    .locals 8
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 108
    const-string v4, "GpsXtraDownloader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Downloading XTRA data from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/4 v1, 0x0

    .line 112
    .local v1, "connection":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 113
    const-string v4, "Accept"

    const-string v6, "*/*, application/vnd.wap.mms-message, application/vnd.wap.sic"

    invoke-virtual {v1, v4, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v4, "x-wap-profile"

    const-string v6, "http://www.openmobilealliance.org/tech/profiles/UAPROF/ccppschema-20021212#"

    invoke-virtual {v1, v4, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v4, "User-Agent"

    iget-object v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v1, v4, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v4, "GpsXtraDownloader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " User-Agent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 126
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 127
    .local v3, "statusCode":I
    const/16 v4, 0xc8

    if-eq v3, v4, :cond_2

    .line 128
    const-string v4, "GpsXtraDownloader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTTP error downloading gps XTRA: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    if-eqz v1, :cond_0

    .line 137
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    move-object v4, v5

    .line 140
    .end local v3    # "statusCode":I
    :cond_1
    :goto_0
    return-object v4

    .line 132
    .restart local v3    # "statusCode":I
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;)[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 136
    if-eqz v1, :cond_1

    .line 137
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 133
    .end local v3    # "statusCode":I
    :catch_0
    move-exception v2

    .line 134
    .local v2, "ioe":Ljava/io/IOException;
    :try_start_2
    const-string v4, "GpsXtraDownloader"

    const-string v6, "Error downloading gps XTRA: "

    invoke-static {v4, v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 136
    if-eqz v1, :cond_3

    .line 137
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    move-object v4, v5

    .line 140
    goto :goto_0

    .line 136
    .end local v2    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    if-eqz v1, :cond_4

    .line 137
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    throw v4
.end method

.method downloadXtraData()[B
    .locals 4

    .prologue
    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, "result":[B
    iget v1, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    .line 87
    .local v1, "startIndex":I
    iget-object v2, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    if-nez v2, :cond_0

    .line 88
    const/4 v2, 0x0

    .line 104
    :goto_0
    return-object v2

    .line 92
    :cond_0
    if-nez v0, :cond_2

    .line 93
    iget-object v2, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    aget-object v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/android/server/location/GpsXtraDownloader;->doDownload(Ljava/lang/String;)[B

    move-result-object v0

    .line 96
    iget v2, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    .line 97
    iget v2, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    iget-object v3, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    array-length v3, v3

    if-ne v2, v3, :cond_1

    .line 98
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    .line 101
    :cond_1
    iget v2, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    if-ne v2, v1, :cond_0

    :cond_2
    move-object v2, v0

    .line 104
    goto :goto_0
.end method
