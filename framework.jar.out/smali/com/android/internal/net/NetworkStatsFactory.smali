.class public Lcom/android/internal/net/NetworkStatsFactory;
.super Ljava/lang/Object;
.source "NetworkStatsFactory.java"


# static fields
.field private static final DBG_DETAIL:Z

.field private static final SANITY_CHECK_NATIVE:Z = false

.field private static final TAG:Ljava/lang/String; = "NetworkStatsFactory"

.field private static final USE_NATIVE_PARSING:Z = true

.field private static final sStackedIfaces:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sStackedIfaces"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mStatsXtIfaceAll:Ljava/io/File;

.field private final mStatsXtIfaceFmt:Ljava/io/File;

.field private final mStatsXtUid:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/internal/net/NetworkStatsFactory;->DBG_DETAIL:Z

    .line 69
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/internal/net/NetworkStatsFactory;->sStackedIfaces:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 82
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/internal/net/NetworkStatsFactory;-><init>(Ljava/io/File;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .param p1, "procRoot"    # Ljava/io/File;

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/io/File;

    const-string v1, "net/xt_qtaguid/iface_stat_all"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtIfaceAll:Ljava/io/File;

    .line 88
    new-instance v0, Ljava/io/File;

    const-string v1, "net/xt_qtaguid/iface_stat_fmt"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtIfaceFmt:Ljava/io/File;

    .line 89
    new-instance v0, Ljava/io/File;

    const-string v1, "net/xt_qtaguid/stats"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtUid:Ljava/io/File;

    .line 90
    return-void
.end method

.method public static javaReadNetworkStatsDetail(Ljava/io/File;I[Ljava/lang/String;I)Landroid/net/NetworkStats;
    .locals 12
    .param p0, "detailPath"    # Ljava/io/File;
    .param p1, "limitUid"    # I
    .param p2, "limitIfaces"    # [Ljava/lang/String;
    .param p3, "limitTag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, -0x1

    .line 298
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v6

    .line 300
    .local v6, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    new-instance v7, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const/16 v10, 0x18

    invoke-direct {v7, v8, v9, v10}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 301
    .local v7, "stats":Landroid/net/NetworkStats;
    new-instance v1, Landroid/net/NetworkStats$Entry;

    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 303
    .local v1, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v2, 0x1

    .line 304
    .local v2, "idx":I
    const/4 v3, 0x1

    .line 306
    .local v3, "lastIdx":I
    const/4 v4, 0x0

    .line 309
    .local v4, "reader":Lcom/android/internal/util/ProcFileReader;
    :try_start_0
    new-instance v5, Lcom/android/internal/util/ProcFileReader;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v8}, Lcom/android/internal/util/ProcFileReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    .end local v4    # "reader":Lcom/android/internal/util/ProcFileReader;
    .local v5, "reader":Lcom/android/internal/util/ProcFileReader;
    :try_start_1
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->finishLine()V

    .line 312
    :goto_0
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->hasMoreData()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 313
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextInt()I

    move-result v2

    .line 314
    add-int/lit8 v8, v3, 0x1

    if-eq v2, v8, :cond_0

    .line 315
    new-instance v8, Ljava/net/ProtocolException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "inconsistent idx="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " after lastIdx="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 337
    :catch_0
    move-exception v0

    move-object v4, v5

    .line 338
    .end local v5    # "reader":Lcom/android/internal/util/ProcFileReader;
    .local v0, "e":Ljava/lang/NullPointerException;
    .restart local v4    # "reader":Lcom/android/internal/util/ProcFileReader;
    :goto_1
    :try_start_2
    new-instance v8, Ljava/net/ProtocolException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "problem parsing idx "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 342
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v8

    :goto_2
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 343
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v8

    .line 318
    .end local v4    # "reader":Lcom/android/internal/util/ProcFileReader;
    .restart local v5    # "reader":Lcom/android/internal/util/ProcFileReader;
    :cond_0
    move v3, v2

    .line 320
    :try_start_3
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 321
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/NetworkManagementSocketTagger;->kernelToTag(Ljava/lang/String;)I

    move-result v8

    iput v8, v1, Landroid/net/NetworkStats$Entry;->tag:I

    .line 322
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextInt()I

    move-result v8

    iput v8, v1, Landroid/net/NetworkStats$Entry;->uid:I

    .line 323
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextInt()I

    move-result v8

    iput v8, v1, Landroid/net/NetworkStats$Entry;->set:I

    .line 324
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v8

    iput-wide v8, v1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 325
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v8

    iput-wide v8, v1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 326
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v8

    iput-wide v8, v1, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 327
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v8

    iput-wide v8, v1, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 329
    if-eqz p2, :cond_1

    iget-object v8, v1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    invoke-static {p2, v8}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_1
    if-eq p1, v11, :cond_2

    iget v8, v1, Landroid/net/NetworkStats$Entry;->uid:I

    if-ne p1, v8, :cond_4

    :cond_2
    if-eq p3, v11, :cond_3

    iget v8, v1, Landroid/net/NetworkStats$Entry;->tag:I

    if-ne p3, v8, :cond_4

    .line 332
    :cond_3
    invoke-virtual {v7, v1}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 335
    :cond_4
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->finishLine()V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    .line 339
    :catch_1
    move-exception v0

    move-object v4, v5

    .line 340
    .end local v5    # "reader":Lcom/android/internal/util/ProcFileReader;
    .local v0, "e":Ljava/lang/NumberFormatException;
    .restart local v4    # "reader":Lcom/android/internal/util/ProcFileReader;
    :goto_3
    :try_start_4
    new-instance v8, Ljava/net/ProtocolException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "problem parsing idx "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 342
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v4    # "reader":Lcom/android/internal/util/ProcFileReader;
    .restart local v5    # "reader":Lcom/android/internal/util/ProcFileReader;
    :cond_5
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 343
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 346
    return-object v7

    .line 342
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "reader":Lcom/android/internal/util/ProcFileReader;
    .restart local v4    # "reader":Lcom/android/internal/util/ProcFileReader;
    goto :goto_2

    .line 339
    :catch_2
    move-exception v0

    goto :goto_3

    .line 337
    :catch_3
    move-exception v0

    goto/16 :goto_1
.end method

.method public static native nativeReadNetworkStatsDetail(Landroid/net/NetworkStats;Ljava/lang/String;I[Ljava/lang/String;I)I
.end method

.method public static noteStackedIface(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "stackedIface"    # Ljava/lang/String;
    .param p1, "baseIface"    # Ljava/lang/String;

    .prologue
    .line 72
    sget-object v1, Lcom/android/internal/net/NetworkStatsFactory;->sStackedIfaces:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 73
    if-eqz p1, :cond_0

    .line 74
    :try_start_0
    sget-object v0, Lcom/android/internal/net/NetworkStatsFactory;->sStackedIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :goto_0
    monitor-exit v1

    .line 79
    return-void

    .line 76
    :cond_0
    sget-object v0, Lcom/android/internal/net/NetworkStatsFactory;->sStackedIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private readNetworkStatsDetailInternal(I[Ljava/lang/String;ILandroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .locals 4
    .param p1, "limitUid"    # I
    .param p2, "limitIfaces"    # [Ljava/lang/String;
    .param p3, "limitTag"    # I
    .param p4, "lastStats"    # Landroid/net/NetworkStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 269
    if-eqz p4, :cond_0

    .line 270
    move-object v0, p4

    .line 271
    .local v0, "stats":Landroid/net/NetworkStats;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/net/NetworkStats;->setElapsedRealtime(J)V

    .line 275
    :goto_0
    iget-object v1, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtUid:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/internal/net/NetworkStatsFactory;->nativeReadNetworkStatsDetail(Landroid/net/NetworkStats;Ljava/lang/String;I[Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    .line 277
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to parse network stats"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 273
    .end local v0    # "stats":Landroid/net/NetworkStats;
    :cond_0
    new-instance v0, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v1, -0x1

    invoke-direct {v0, v2, v3, v1}, Landroid/net/NetworkStats;-><init>(JI)V

    .restart local v0    # "stats":Landroid/net/NetworkStats;
    goto :goto_0

    .line 284
    :cond_1
    return-object v0
.end method


# virtual methods
.method public assertEquals(Landroid/net/NetworkStats;Landroid/net/NetworkStats;)V
    .locals 6
    .param p1, "expected"    # Landroid/net/NetworkStats;
    .param p2, "actual"    # Landroid/net/NetworkStats;

    .prologue
    .line 350
    invoke-virtual {p1}, Landroid/net/NetworkStats;->size()I

    move-result v3

    invoke-virtual {p2}, Landroid/net/NetworkStats;->size()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 351
    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/NetworkStats;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", actual size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/net/NetworkStats;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 355
    :cond_0
    const/4 v1, 0x0

    .line 356
    .local v1, "expectedRow":Landroid/net/NetworkStats$Entry;
    const/4 v0, 0x0

    .line 357
    .local v0, "actualRow":Landroid/net/NetworkStats$Entry;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/net/NetworkStats;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 358
    invoke-virtual {p1, v2, v1}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v1

    .line 359
    invoke-virtual {p2, v2, v0}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    .line 360
    invoke-virtual {v1, v0}, Landroid/net/NetworkStats$Entry;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 361
    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected row "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", actual row "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 357
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 365
    :cond_2
    return-void
.end method

.method public readNetworkStatsDetail()Landroid/net/NetworkStats;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 194
    invoke-virtual {p0, v0, v1, v0, v1}, Lcom/android/internal/net/NetworkStatsFactory;->readNetworkStatsDetail(I[Ljava/lang/String;ILandroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public readNetworkStatsDetail(I[Ljava/lang/String;ILandroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .locals 27
    .param p1, "limitUid"    # I
    .param p2, "limitIfaces"    # [Ljava/lang/String;
    .param p3, "limitTag"    # I
    .param p4, "lastStats"    # Landroid/net/NetworkStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    sget-boolean v7, Lcom/android/internal/net/NetworkStatsFactory;->DBG_DETAIL:Z

    if-eqz v7, :cond_0

    .line 203
    :try_start_0
    const-string v7, "NetworkStatsFactory"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "NS: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " last=("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz p4, :cond_2

    invoke-virtual/range {p4 .. p4}, Landroid/net/NetworkStats;->getTotalBytes()J

    move-result-wide v8

    :goto_0
    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz p4, :cond_3

    invoke-virtual/range {p4 .. p4}, Landroid/net/NetworkStats;->getTotalPackets()J

    move-result-wide v8

    :goto_1
    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :cond_0
    :goto_2
    invoke-direct/range {p0 .. p4}, Lcom/android/internal/net/NetworkStatsFactory;->readNetworkStatsDetailInternal(I[Ljava/lang/String;ILandroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v25

    .line 213
    .local v25, "stats":Landroid/net/NetworkStats;
    sget-object v26, Lcom/android/internal/net/NetworkStatsFactory;->sStackedIfaces:Landroid/util/ArrayMap;

    monitor-enter v26

    .line 216
    :try_start_1
    sget-object v7, Lcom/android/internal/net/NetworkStatsFactory;->sStackedIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v23

    .line 217
    .local v23, "size":I
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_3
    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_5

    .line 218
    sget-object v7, Lcom/android/internal/net/NetworkStatsFactory;->sStackedIfaces:Landroid/util/ArrayMap;

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 219
    .local v24, "stackedIface":Ljava/lang/String;
    sget-object v7, Lcom/android/internal/net/NetworkStatsFactory;->sStackedIfaces:Landroid/util/ArrayMap;

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 223
    .local v6, "baseIface":Ljava/lang/String;
    new-instance v5, Landroid/net/NetworkStats$Entry;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    invoke-direct/range {v5 .. v19}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIJJJJJ)V

    .line 225
    .local v5, "adjust":Landroid/net/NetworkStats$Entry;
    const/16 v20, 0x0

    .line 226
    .local v20, "entry":Landroid/net/NetworkStats$Entry;
    const/16 v22, 0x0

    .local v22, "j":I
    :goto_4
    invoke-virtual/range {v25 .. v25}, Landroid/net/NetworkStats;->size()I

    move-result v7

    move/from16 v0, v22

    if-ge v0, v7, :cond_4

    .line 227
    move-object/from16 v0, v25

    move/from16 v1, v22

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v20

    .line 228
    move-object/from16 v0, v20

    iget-object v7, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-static {v7, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 229
    iget-wide v8, v5, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-object/from16 v0, v20

    iget-wide v10, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    sub-long/2addr v8, v10

    iput-wide v8, v5, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 230
    iget-wide v8, v5, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-object/from16 v0, v20

    iget-wide v10, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    sub-long/2addr v8, v10

    iput-wide v8, v5, Landroid/net/NetworkStats$Entry;->txPackets:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    :cond_1
    add-int/lit8 v22, v22, 0x1

    goto :goto_4

    .line 203
    .end local v5    # "adjust":Landroid/net/NetworkStats$Entry;
    .end local v6    # "baseIface":Ljava/lang/String;
    .end local v20    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v21    # "i":I
    .end local v22    # "j":I
    .end local v23    # "size":I
    .end local v24    # "stackedIface":Ljava/lang/String;
    .end local v25    # "stats":Landroid/net/NetworkStats;
    :cond_2
    const-wide/16 v8, -0x1

    goto/16 :goto_0

    :cond_3
    const-wide/16 v8, -0x1

    goto/16 :goto_1

    .line 204
    :catch_0
    move-exception v4

    .line 205
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 233
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v5    # "adjust":Landroid/net/NetworkStats$Entry;
    .restart local v6    # "baseIface":Ljava/lang/String;
    .restart local v20    # "entry":Landroid/net/NetworkStats$Entry;
    .restart local v21    # "i":I
    .restart local v22    # "j":I
    .restart local v23    # "size":I
    .restart local v24    # "stackedIface":Ljava/lang/String;
    .restart local v25    # "stats":Landroid/net/NetworkStats;
    :cond_4
    :try_start_2
    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 217
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    .line 235
    .end local v5    # "adjust":Landroid/net/NetworkStats$Entry;
    .end local v6    # "baseIface":Ljava/lang/String;
    .end local v20    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v22    # "j":I
    .end local v24    # "stackedIface":Ljava/lang/String;
    :cond_5
    monitor-exit v26
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 239
    const/16 v20, 0x0

    .line 240
    .restart local v20    # "entry":Landroid/net/NetworkStats$Entry;
    const/16 v21, 0x0

    :goto_5
    invoke-virtual/range {v25 .. v25}, Landroid/net/NetworkStats;->size()I

    move-result v7

    move/from16 v0, v21

    if-ge v0, v7, :cond_7

    .line 241
    move-object/from16 v0, v25

    move/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v20

    .line 242
    move-object/from16 v0, v20

    iget-object v7, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    if-eqz v7, :cond_6

    move-object/from16 v0, v20

    iget-object v7, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    const-string v8, "clat"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 244
    move-object/from16 v0, v20

    iget-wide v8, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    const-wide/16 v10, 0x14

    mul-long/2addr v8, v10

    move-object/from16 v0, v20

    iput-wide v8, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 245
    const-wide/16 v8, 0x0

    move-object/from16 v0, v20

    iput-wide v8, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 246
    const-wide/16 v8, 0x0

    move-object/from16 v0, v20

    iput-wide v8, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 247
    const-wide/16 v8, 0x0

    move-object/from16 v0, v20

    iput-wide v8, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 248
    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 240
    :cond_6
    add-int/lit8 v21, v21, 0x1

    goto :goto_5

    .line 235
    .end local v20    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v21    # "i":I
    .end local v23    # "size":I
    :catchall_0
    move-exception v7

    :try_start_3
    monitor-exit v26
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v7

    .line 253
    .restart local v20    # "entry":Landroid/net/NetworkStats$Entry;
    .restart local v21    # "i":I
    .restart local v23    # "size":I
    :cond_7
    sget-boolean v7, Lcom/android/internal/net/NetworkStatsFactory;->DBG_DETAIL:Z

    if-eqz v7, :cond_8

    .line 255
    :try_start_4
    const-string v8, "NetworkStatsFactory"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "NS: ("

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v25, :cond_9

    invoke-virtual/range {v25 .. v25}, Landroid/net/NetworkStats;->getTotalBytes()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    :goto_6
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v25, :cond_a

    invoke-virtual/range {v25 .. v25}, Landroid/net/NetworkStats;->getTotalPackets()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    :goto_7
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ")"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_8
    :goto_8
    return-object v25

    .line 255
    :cond_9
    const-string v7, "-1"

    goto :goto_6

    :cond_a
    const-string v7, "-1"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_7

    .line 256
    :catch_1
    move-exception v4

    .line 257
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8
.end method

.method public readNetworkStatsSummaryDev()Landroid/net/NetworkStats;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 101
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v5

    .line 103
    .local v5, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    new-instance v6, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const/4 v10, 0x6

    invoke-direct {v6, v8, v9, v10}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 104
    .local v6, "stats":Landroid/net/NetworkStats;
    new-instance v2, Landroid/net/NetworkStats$Entry;

    invoke-direct {v2}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 106
    .local v2, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v3, 0x0

    .line 108
    .local v3, "reader":Lcom/android/internal/util/ProcFileReader;
    :try_start_0
    new-instance v4, Lcom/android/internal/util/ProcFileReader;

    new-instance v8, Ljava/io/FileInputStream;

    iget-object v9, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtIfaceAll:Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v8}, Lcom/android/internal/util/ProcFileReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    .end local v3    # "reader":Lcom/android/internal/util/ProcFileReader;
    .local v4, "reader":Lcom/android/internal/util/ProcFileReader;
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->hasMoreData()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 111
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 112
    const/4 v8, -0x1

    iput v8, v2, Landroid/net/NetworkStats$Entry;->uid:I

    .line 113
    const/4 v8, -0x1

    iput v8, v2, Landroid/net/NetworkStats$Entry;->set:I

    .line 114
    const/4 v8, 0x0

    iput v8, v2, Landroid/net/NetworkStats$Entry;->tag:I

    .line 116
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextInt()I

    move-result v8

    if-eqz v8, :cond_1

    const/4 v0, 0x1

    .line 119
    .local v0, "active":Z
    :goto_1
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v8

    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 120
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v8

    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 121
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v8

    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 122
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v8

    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 125
    if-eqz v0, :cond_0

    .line 126
    iget-wide v8, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v10

    add-long/2addr v8, v10

    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 127
    iget-wide v8, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v10

    add-long/2addr v8, v10

    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 128
    iget-wide v8, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v10

    add-long/2addr v8, v10

    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 129
    iget-wide v8, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v10

    add-long/2addr v8, v10

    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 132
    :cond_0
    invoke-virtual {v6, v2}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 133
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->finishLine()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 135
    .end local v0    # "active":Z
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 136
    .end local v4    # "reader":Lcom/android/internal/util/ProcFileReader;
    .local v1, "e":Ljava/lang/NullPointerException;
    .restart local v3    # "reader":Lcom/android/internal/util/ProcFileReader;
    :goto_2
    :try_start_2
    new-instance v7, Ljava/net/ProtocolException;

    const-string v8, "problem parsing stats"

    invoke-direct {v7, v8, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 140
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v7

    :goto_3
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 141
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v7

    .end local v3    # "reader":Lcom/android/internal/util/ProcFileReader;
    .restart local v4    # "reader":Lcom/android/internal/util/ProcFileReader;
    :cond_1
    move v0, v7

    .line 116
    goto :goto_1

    .line 140
    :cond_2
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 141
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 143
    return-object v6

    .line 137
    .end local v4    # "reader":Lcom/android/internal/util/ProcFileReader;
    .restart local v3    # "reader":Lcom/android/internal/util/ProcFileReader;
    :catch_1
    move-exception v1

    .line 138
    .local v1, "e":Ljava/lang/NumberFormatException;
    :goto_4
    :try_start_3
    new-instance v7, Ljava/net/ProtocolException;

    const-string v8, "problem parsing stats"

    invoke-direct {v7, v8, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 140
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "reader":Lcom/android/internal/util/ProcFileReader;
    .restart local v4    # "reader":Lcom/android/internal/util/ProcFileReader;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "reader":Lcom/android/internal/util/ProcFileReader;
    .restart local v3    # "reader":Lcom/android/internal/util/ProcFileReader;
    goto :goto_3

    .line 137
    .end local v3    # "reader":Lcom/android/internal/util/ProcFileReader;
    .restart local v4    # "reader":Lcom/android/internal/util/ProcFileReader;
    :catch_2
    move-exception v1

    move-object v3, v4

    .end local v4    # "reader":Lcom/android/internal/util/ProcFileReader;
    .restart local v3    # "reader":Lcom/android/internal/util/ProcFileReader;
    goto :goto_4

    .line 135
    :catch_3
    move-exception v1

    goto :goto_2
.end method

.method public readNetworkStatsSummaryXt()Landroid/net/NetworkStats;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v4

    .line 157
    .local v4, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    iget-object v6, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtIfaceFmt:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v5, 0x0

    .line 190
    :goto_0
    return-object v5

    .line 159
    :cond_0
    new-instance v5, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const/4 v8, 0x6

    invoke-direct {v5, v6, v7, v8}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 160
    .local v5, "stats":Landroid/net/NetworkStats;
    new-instance v1, Landroid/net/NetworkStats$Entry;

    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 162
    .local v1, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v2, 0x0

    .line 165
    .local v2, "reader":Lcom/android/internal/util/ProcFileReader;
    :try_start_0
    new-instance v3, Lcom/android/internal/util/ProcFileReader;

    new-instance v6, Ljava/io/FileInputStream;

    iget-object v7, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtIfaceFmt:Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v6}, Lcom/android/internal/util/ProcFileReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    .end local v2    # "reader":Lcom/android/internal/util/ProcFileReader;
    .local v3, "reader":Lcom/android/internal/util/ProcFileReader;
    :try_start_1
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->finishLine()V

    .line 168
    :goto_1
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->hasMoreData()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 169
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 170
    const/4 v6, -0x1

    iput v6, v1, Landroid/net/NetworkStats$Entry;->uid:I

    .line 171
    const/4 v6, -0x1

    iput v6, v1, Landroid/net/NetworkStats$Entry;->set:I

    .line 172
    const/4 v6, 0x0

    iput v6, v1, Landroid/net/NetworkStats$Entry;->tag:I

    .line 174
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v6

    iput-wide v6, v1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 175
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v6

    iput-wide v6, v1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 176
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v6

    iput-wide v6, v1, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 177
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v6

    iput-wide v6, v1, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 179
    invoke-virtual {v5, v1}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 180
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->finishLine()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 182
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 183
    .end local v3    # "reader":Lcom/android/internal/util/ProcFileReader;
    .local v0, "e":Ljava/lang/NullPointerException;
    .restart local v2    # "reader":Lcom/android/internal/util/ProcFileReader;
    :goto_2
    :try_start_2
    new-instance v6, Ljava/net/ProtocolException;

    const-string v7, "problem parsing stats"

    invoke-direct {v6, v7, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 187
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v6

    :goto_3
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 188
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v6

    .line 187
    .end local v2    # "reader":Lcom/android/internal/util/ProcFileReader;
    .restart local v3    # "reader":Lcom/android/internal/util/ProcFileReader;
    :cond_1
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 188
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_0

    .line 184
    .end local v3    # "reader":Lcom/android/internal/util/ProcFileReader;
    .restart local v2    # "reader":Lcom/android/internal/util/ProcFileReader;
    :catch_1
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/NumberFormatException;
    :goto_4
    :try_start_3
    new-instance v6, Ljava/net/ProtocolException;

    const-string v7, "problem parsing stats"

    invoke-direct {v6, v7, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 187
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "reader":Lcom/android/internal/util/ProcFileReader;
    .restart local v3    # "reader":Lcom/android/internal/util/ProcFileReader;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "reader":Lcom/android/internal/util/ProcFileReader;
    .restart local v2    # "reader":Lcom/android/internal/util/ProcFileReader;
    goto :goto_3

    .line 184
    .end local v2    # "reader":Lcom/android/internal/util/ProcFileReader;
    .restart local v3    # "reader":Lcom/android/internal/util/ProcFileReader;
    :catch_2
    move-exception v0

    move-object v2, v3

    .end local v3    # "reader":Lcom/android/internal/util/ProcFileReader;
    .restart local v2    # "reader":Lcom/android/internal/util/ProcFileReader;
    goto :goto_4

    .line 182
    :catch_3
    move-exception v0

    goto :goto_2
.end method
