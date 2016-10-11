.class public final Landroid/database/sqlite/SQLiteDirectCursorDriver;
.super Ljava/lang/Object;
.source "SQLiteDirectCursorDriver.java"

# interfaces
.implements Landroid/database/sqlite/SQLiteCursorDriver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/sqlite/SQLiteDirectCursorDriver$StringBuilderPrinter;,
        Landroid/database/sqlite/SQLiteDirectCursorDriver$RemoteTraceInfo;,
        Landroid/database/sqlite/SQLiteDirectCursorDriver$DebugInfo;
    }
.end annotation


# static fields
.field private static final TAG_LEAK:Ljava/lang/String; = "SQLiteLeakDetect"

.field private static final mCursorRecordsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/database/sqlite/SQLiteCursor;",
            "Landroid/database/sqlite/SQLiteDirectCursorDriver$DebugInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final mRemoteTraceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/database/sqlite/SQLiteDirectCursorDriver$RemoteTraceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sCursorWindowOk:Z

.field private static sThreasholdLevel:I

.field private static final sThresholdToWarningLeak:[I


# instance fields
.field private final mCancellationSignal:Landroid/os/CancellationSignal;

.field private final mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private final mEditTable:Ljava/lang/String;

.field private mQuery:Landroid/database/sqlite/SQLiteQuery;

.field private final mSql:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 135
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mCursorRecordsMap:Ljava/util/Map;

    .line 137
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mRemoteTraceMap:Ljava/util/Map;

    .line 445
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->sThresholdToWarningLeak:[I

    .line 446
    const/4 v0, 0x0

    sput v0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->sThreasholdLevel:I

    .line 447
    const/4 v0, 0x1

    sput-boolean v0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->sCursorWindowOk:Z

    return-void

    .line 445
    nop

    :array_0
    .array-data 4
        0x64
        0x12c
    .end array-data
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "sql"    # Ljava/lang/String;
    .param p3, "editTable"    # Ljava/lang/String;
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 62
    iput-object p3, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mEditTable:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mSql:Ljava/lang/String;

    .line 64
    iput-object p4, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 65
    return-void
.end method

.method public static cursorClosed(Landroid/database/sqlite/SQLiteCursor;)V
    .locals 2
    .param p0, "cursor"    # Landroid/database/sqlite/SQLiteCursor;

    .prologue
    .line 220
    sget-object v1, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mCursorRecordsMap:Ljava/util/Map;

    monitor-enter v1

    .line 224
    :try_start_0
    sget-object v0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mCursorRecordsMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    monitor-exit v1

    .line 226
    return-void

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static dumpCursor(Landroid/database/sqlite/SQLiteCursor;Landroid/database/sqlite/SQLiteDirectCursorDriver$DebugInfo;Landroid/database/sqlite/SQLiteDirectCursorDriver$StringBuilderPrinter;)V
    .locals 8
    .param p0, "c"    # Landroid/database/sqlite/SQLiteCursor;
    .param p1, "debug"    # Landroid/database/sqlite/SQLiteDirectCursorDriver$DebugInfo;
    .param p2, "pw"    # Landroid/database/sqlite/SQLiteDirectCursorDriver$StringBuilderPrinter;

    .prologue
    .line 346
    iget-object v4, p1, Landroid/database/sqlite/SQLiteDirectCursorDriver$DebugInfo;->mRemoteTraceInfo:Landroid/database/sqlite/SQLiteDirectCursorDriver$RemoteTraceInfo;

    .line 347
    .local v4, "remoteTrace":Landroid/database/sqlite/SQLiteDirectCursorDriver$RemoteTraceInfo;
    iget-object v6, p1, Landroid/database/sqlite/SQLiteDirectCursorDriver$DebugInfo;->mDriver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/sqlite/SQLiteDirectCursorDriver;

    .line 350
    .local v1, "driver":Landroid/database/sqlite/SQLiteDirectCursorDriver;
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDirectCursorDriver$StringBuilderPrinter;->getStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 359
    const-string v6, "  Local stack:"

    invoke-virtual {p2, v6}, Landroid/database/sqlite/SQLiteDirectCursorDriver$StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p0, p2}, Landroid/database/sqlite/SQLiteCursor;->dumpTrace(Landroid/database/sqlite/SQLiteDirectCursorDriver$StringBuilderPrinter;)V

    .line 362
    if-eqz v4, :cond_0

    .line 363
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Remote stack: (Pid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/database/sqlite/SQLiteDirectCursorDriver$RemoteTraceInfo;->mRemotePid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Tid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/database/sqlite/SQLiteDirectCursorDriver$RemoteTraceInfo;->mRemoteTid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/database/sqlite/SQLiteDirectCursorDriver$StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 366
    iget-object v0, v4, Landroid/database/sqlite/SQLiteDirectCursorDriver$RemoteTraceInfo;->mRemoteTrace:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .line 367
    .local v5, "trace":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "      "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/database/sqlite/SQLiteDirectCursorDriver$StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 366
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 371
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "trace":Ljava/lang/String;
    :cond_0
    const-string v6, "SQLiteLeakDetect"

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDirectCursorDriver$StringBuilderPrinter;->getStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    return-void
.end method

.method private static dumpCursor(Landroid/database/sqlite/SQLiteCursor;Landroid/database/sqlite/SQLiteDirectCursorDriver$DebugInfo;Ljava/io/PrintWriter;)V
    .locals 8
    .param p0, "c"    # Landroid/database/sqlite/SQLiteCursor;
    .param p1, "debug"    # Landroid/database/sqlite/SQLiteDirectCursorDriver$DebugInfo;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 321
    iget-object v4, p1, Landroid/database/sqlite/SQLiteDirectCursorDriver$DebugInfo;->mRemoteTraceInfo:Landroid/database/sqlite/SQLiteDirectCursorDriver$RemoteTraceInfo;

    .line 322
    .local v4, "remoteTrace":Landroid/database/sqlite/SQLiteDirectCursorDriver$RemoteTraceInfo;
    iget-object v6, p1, Landroid/database/sqlite/SQLiteDirectCursorDriver$DebugInfo;->mDriver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/sqlite/SQLiteDirectCursorDriver;

    .line 331
    .local v1, "driver":Landroid/database/sqlite/SQLiteDirectCursorDriver;
    const-string v6, "  Local stack:"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p0, p2}, Landroid/database/sqlite/SQLiteCursor;->dumpTrace(Ljava/io/PrintWriter;)V

    .line 334
    if-eqz v4, :cond_0

    .line 335
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Remote stack: (Pid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/database/sqlite/SQLiteDirectCursorDriver$RemoteTraceInfo;->mRemotePid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Tid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/database/sqlite/SQLiteDirectCursorDriver$RemoteTraceInfo;->mRemoteTid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 338
    iget-object v0, v4, Landroid/database/sqlite/SQLiteDirectCursorDriver$RemoteTraceInfo;->mRemoteTrace:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .line 339
    .local v5, "trace":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "      "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 338
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 342
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "trace":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static dumpForCursorWindow()V
    .locals 3

    .prologue
    .line 436
    sget-object v1, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mCursorRecordsMap:Ljava/util/Map;

    monitor-enter v1

    .line 437
    :try_start_0
    sget-boolean v0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->sCursorWindowOk:Z

    if-eqz v0, :cond_0

    .line 438
    const/4 v0, 0x0

    sput-boolean v0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->sCursorWindowOk:Z

    .line 439
    const-string v0, "SQLiteLeakDetect"

    const-string v2, "Dump all cursors because abnormal on cursor window is detected."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    invoke-static {}, Landroid/database/sqlite/SQLiteDirectCursorDriver;->dumpRecordMapLocked()V

    .line 442
    :cond_0
    monitor-exit v1

    .line 443
    return-void

    .line 442
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private dumpLocked(Landroid/database/sqlite/SQLiteDirectCursorDriver$StringBuilderPrinter;)V
    .locals 2
    .param p1, "pw"    # Landroid/database/sqlite/SQLiteDirectCursorDriver$StringBuilderPrinter;

    .prologue
    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSql: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mSql:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDirectCursorDriver$StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 317
    return-void
.end method

.method private dumpLocked(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSql: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mSql:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 313
    return-void
.end method

.method private static dumpRecordMap(Landroid/database/sqlite/SQLiteDirectCursorDriver$StringBuilderPrinter;)V
    .locals 2
    .param p0, "pw"    # Landroid/database/sqlite/SQLiteDirectCursorDriver$StringBuilderPrinter;

    .prologue
    .line 240
    sget-object v1, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mCursorRecordsMap:Ljava/util/Map;

    monitor-enter v1

    .line 241
    :try_start_0
    invoke-static {p0}, Landroid/database/sqlite/SQLiteDirectCursorDriver;->dumpRecordMapLocked(Landroid/database/sqlite/SQLiteDirectCursorDriver$StringBuilderPrinter;)V

    .line 242
    monitor-exit v1

    .line 243
    return-void

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static dumpRecordMap(Ljava/io/PrintWriter;)V
    .locals 2
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 234
    sget-object v1, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mCursorRecordsMap:Ljava/util/Map;

    monitor-enter v1

    .line 235
    :try_start_0
    invoke-static {p0}, Landroid/database/sqlite/SQLiteDirectCursorDriver;->dumpRecordMapLocked(Ljava/io/PrintWriter;)V

    .line 236
    monitor-exit v1

    .line 237
    return-void

    .line 236
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static dumpRecordMapLocked()V
    .locals 3

    .prologue
    .line 424
    new-instance v0, Landroid/database/sqlite/SQLiteDirectCursorDriver$StringBuilderPrinter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteDirectCursorDriver$StringBuilderPrinter;-><init>(Ljava/lang/StringBuilder;)V

    .line 425
    .local v0, "logPrinter":Landroid/database/sqlite/SQLiteDirectCursorDriver$StringBuilderPrinter;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDirectCursorDriver$StringBuilderPrinter;->getStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v1, :cond_1

    .line 430
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    invoke-static {v0}, Landroid/database/sqlite/SQLiteDirectCursorDriver;->dumpRecordMapLocked(Landroid/database/sqlite/SQLiteDirectCursorDriver$StringBuilderPrinter;)V

    .line 429
    const-string v1, "SQLiteLeakDetect"

    const-string v2, "Dump cursors completed."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static dumpRecordMapLocked(Landroid/database/sqlite/SQLiteDirectCursorDriver$StringBuilderPrinter;)V
    .locals 8
    .param p0, "pw"    # Landroid/database/sqlite/SQLiteDirectCursorDriver$StringBuilderPrinter;

    .prologue
    .line 280
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileOpenCursor()Z

    move-result v5

    if-nez v5, :cond_1

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    const/4 v1, 0x0

    .line 285
    .local v1, "cursorCount":I
    sget-object v5, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mCursorRecordsMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-eqz v5, :cond_0

    .line 287
    sget-object v5, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mCursorRecordsMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 289
    .local v4, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/database/sqlite/SQLiteCursor;Landroid/database/sqlite/SQLiteDirectCursorDriver$DebugInfo;>;>;"
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 290
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 291
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/database/sqlite/SQLiteCursor;Landroid/database/sqlite/SQLiteDirectCursorDriver$DebugInfo;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteCursor;

    .line 293
    .local v0, "c":Landroid/database/sqlite/SQLiteCursor;
    if-eqz v0, :cond_2

    .line 294
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteCursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_2

    .line 297
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/sqlite/SQLiteDirectCursorDriver$DebugInfo;

    .line 298
    .local v2, "debug":Landroid/database/sqlite/SQLiteDirectCursorDriver$DebugInfo;
    invoke-static {v0, v2, p0}, Landroid/database/sqlite/SQLiteDirectCursorDriver;->dumpCursor(Landroid/database/sqlite/SQLiteCursor;Landroid/database/sqlite/SQLiteDirectCursorDriver$DebugInfo;Landroid/database/sqlite/SQLiteDirectCursorDriver$StringBuilderPrinter;)V

    .line 299
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 303
    .end local v0    # "c":Landroid/database/sqlite/SQLiteCursor;
    .end local v2    # "debug":Landroid/database/sqlite/SQLiteDirectCursorDriver$DebugInfo;
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/database/sqlite/SQLiteCursor;Landroid/database/sqlite/SQLiteDirectCursorDriver$DebugInfo;>;"
    :cond_3
    const-string v5, "SQLiteLeakDetect"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " \n  Total cursor count: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static dumpRecordMapLocked(Ljava/io/PrintWriter;)V
    .locals 7
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 251
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileOpenCursor()Z

    move-result v5

    if-nez v5, :cond_1

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    const/4 v1, 0x0

    .line 256
    .local v1, "cursorCount":I
    sget-object v5, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mCursorRecordsMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-eqz v5, :cond_0

    .line 258
    sget-object v5, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mCursorRecordsMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 260
    .local v4, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/database/sqlite/SQLiteCursor;Landroid/database/sqlite/SQLiteDirectCursorDriver$DebugInfo;>;>;"
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 261
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 262
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/database/sqlite/SQLiteCursor;Landroid/database/sqlite/SQLiteDirectCursorDriver$DebugInfo;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteCursor;

    .line 264
    .local v0, "c":Landroid/database/sqlite/SQLiteCursor;
    if-eqz v0, :cond_2

    .line 265
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteCursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_2

    .line 268
    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    .line 269
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/sqlite/SQLiteDirectCursorDriver$DebugInfo;

    .line 270
    .local v2, "debug":Landroid/database/sqlite/SQLiteDirectCursorDriver$DebugInfo;
    invoke-static {v0, v2, p0}, Landroid/database/sqlite/SQLiteDirectCursorDriver;->dumpCursor(Landroid/database/sqlite/SQLiteCursor;Landroid/database/sqlite/SQLiteDirectCursorDriver$DebugInfo;Ljava/io/PrintWriter;)V

    .line 271
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 275
    .end local v0    # "c":Landroid/database/sqlite/SQLiteCursor;
    .end local v2    # "debug":Landroid/database/sqlite/SQLiteDirectCursorDriver$DebugInfo;
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/database/sqlite/SQLiteCursor;Landroid/database/sqlite/SQLiteDirectCursorDriver$DebugInfo;>;"
    :cond_3
    const-string v5, " "

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 276
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  Total cursor count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getLogPrinterWriter()Ljava/io/PrintWriter;
    .locals 16

    .prologue
    .line 375
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    .line 376
    .local v8, "pid":I
    const/4 v10, 0x0

    .line 377
    .local v10, "pw":Ljava/io/PrintWriter;
    const-string v4, "/data/misc/cursors"

    .line 378
    .local v4, "logDirName":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 379
    .local v3, "logDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_1

    .line 380
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v13

    if-nez v13, :cond_0

    const/4 v11, 0x0

    .line 420
    :goto_0
    return-object v11

    .line 381
    :cond_0
    const/16 v13, 0x1ff

    const/4 v14, -0x1

    const/4 v15, -0x1

    invoke-static {v4, v13, v14, v15}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    move-result v12

    .line 382
    .local v12, "ret":I
    if-eqz v12, :cond_1

    const-string v13, "SQLiteLeakDetect"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Fail to set permission for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", err: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    .end local v12    # "ret":I
    :cond_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "pid-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 386
    .local v9, "processName":Ljava/lang/String;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v13, "yyyyMMdd_kkmmss.SSS"

    invoke-direct {v1, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 387
    .local v1, "formatter":Ljava/text/SimpleDateFormat;
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 388
    .local v7, "now":Ljava/util/Date;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/cursors_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v1, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".txt"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 390
    .local v6, "logFileName":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 391
    .local v5, "logFile":Ljava/io/File;
    const/4 v2, 0x0

    .line 392
    .local v2, "i":I
    :goto_1
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 393
    add-int/lit8 v2, v2, 0x1

    .line 394
    new-instance v5, Ljava/io/File;

    .end local v5    # "logFile":Ljava/io/File;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v5, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v5    # "logFile":Ljava/io/File;
    goto :goto_1

    .line 396
    :cond_2
    if-lez v2, :cond_3

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 399
    :cond_3
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    move-result v13

    if-nez v13, :cond_4

    const-string v13, "SQLiteLeakDetect"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Fail to create "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_4
    const/16 v13, 0x1b6

    const/4 v14, -0x1

    const/4 v15, -0x1

    invoke-static {v6, v13, v14, v15}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    move-result v12

    .line 401
    .restart local v12    # "ret":I
    if-eqz v12, :cond_5

    const-string v13, "SQLiteLeakDetect"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Fail to set permission for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", err: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    :cond_5
    :try_start_1
    new-instance v11, Ljava/io/PrintWriter;

    invoke-direct {v11, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 414
    .end local v10    # "pw":Ljava/io/PrintWriter;
    .local v11, "pw":Ljava/io/PrintWriter;
    new-instance v1, Ljava/text/SimpleDateFormat;

    .end local v1    # "formatter":Ljava/text/SimpleDateFormat;
    const-string v13, "MM-dd kk:mm:ss.SSS"

    invoke-direct {v1, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 416
    .restart local v1    # "formatter":Ljava/text/SimpleDateFormat;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\nCmdline: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", pid: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 417
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Dump time: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v1, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 418
    const-string v13, "List of all cursors:\n"

    invoke-virtual {v11, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object v10, v11

    .line 420
    .end local v11    # "pw":Ljava/io/PrintWriter;
    .restart local v10    # "pw":Ljava/io/PrintWriter;
    goto/16 :goto_0

    .line 402
    .end local v12    # "ret":I
    :catch_0
    move-exception v0

    .line 403
    .local v0, "e":Ljava/io/IOException;
    const-string v13, "SQLiteLeakDetect"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Fail to create log file to dump cursor. "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 409
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v12    # "ret":I
    :catch_1
    move-exception v0

    .line 410
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v13, "SQLiteLeakDetect"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Fail to open log file to dump cursor. "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method public static removeIfNotUsed(I)V
    .locals 2
    .param p0, "tid"    # I

    .prologue
    .line 211
    sget-object v0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mRemoteTraceMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    return-void
.end method

.method public static storeRemoteTrace(III[Ljava/lang/String;)V
    .locals 3
    .param p0, "rPid"    # I
    .param p1, "rTid"    # I
    .param p2, "tid"    # I
    .param p3, "trace"    # [Ljava/lang/String;

    .prologue
    .line 201
    new-instance v0, Landroid/database/sqlite/SQLiteDirectCursorDriver$RemoteTraceInfo;

    invoke-direct {v0, p0, p1, p3}, Landroid/database/sqlite/SQLiteDirectCursorDriver$RemoteTraceInfo;-><init>(II[Ljava/lang/String;)V

    .line 202
    .local v0, "remoteInfo":Landroid/database/sqlite/SQLiteDirectCursorDriver$RemoteTraceInfo;
    sget-object v1, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mRemoteTraceMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    return-void
.end method


# virtual methods
.method public cursorClosed()V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method public cursorDeactivated()V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method public cursorRequeried(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 125
    return-void
.end method

.method public query(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 13
    .param p1, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 68
    new-instance v5, Landroid/database/sqlite/SQLiteQuery;

    iget-object v8, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v9, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mSql:Ljava/lang/String;

    iget-object v10, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-direct {v5, v8, v9, v10}, Landroid/database/sqlite/SQLiteQuery;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/os/CancellationSignal;)V

    .line 71
    .local v5, "query":Landroid/database/sqlite/SQLiteQuery;
    :try_start_0
    invoke-virtual {v5, p2}, Landroid/database/sqlite/SQLiteQuery;->bindAllArgsAsStrings([Ljava/lang/String;)V

    .line 73
    if-nez p1, :cond_2

    .line 74
    new-instance v2, Landroid/database/sqlite/SQLiteCursor;

    iget-object v8, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mEditTable:Ljava/lang/String;

    invoke-direct {v2, p0, v8, v5}, Landroid/database/sqlite/SQLiteCursor;-><init>(Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .local v2, "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileOpenCursor()Z

    move-result v8

    if-eqz v8, :cond_1

    instance-of v8, v2, Landroid/database/sqlite/SQLiteCursor;

    if-eqz v8, :cond_1

    .line 86
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v6

    .line 87
    .local v6, "tid":I
    sget-object v8, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mRemoteTraceMap:Ljava/util/Map;

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v8, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/database/sqlite/SQLiteDirectCursorDriver$RemoteTraceInfo;

    .line 89
    .local v7, "trace":Landroid/database/sqlite/SQLiteDirectCursorDriver$RemoteTraceInfo;
    new-instance v3, Landroid/database/sqlite/SQLiteDirectCursorDriver$DebugInfo;

    invoke-direct {v3, p0, v7}, Landroid/database/sqlite/SQLiteDirectCursorDriver$DebugInfo;-><init>(Landroid/database/sqlite/SQLiteDirectCursorDriver;Landroid/database/sqlite/SQLiteDirectCursorDriver$RemoteTraceInfo;)V

    .local v3, "debug":Landroid/database/sqlite/SQLiteDirectCursorDriver$DebugInfo;
    move-object v0, v2

    .line 91
    check-cast v0, Landroid/database/sqlite/SQLiteCursor;

    .line 92
    .local v0, "c":Landroid/database/sqlite/SQLiteCursor;
    const/4 v1, 0x0

    .line 93
    .local v1, "count":I
    sget-object v9, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mCursorRecordsMap:Ljava/util/Map;

    monitor-enter v9

    .line 94
    :try_start_1
    sget-object v8, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mCursorRecordsMap:Ljava/util/Map;

    invoke-interface {v8, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v8, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mCursorRecordsMap:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v1

    .line 96
    sget v8, Landroid/database/sqlite/SQLiteDirectCursorDriver;->sThreasholdLevel:I

    sget-object v10, Landroid/database/sqlite/SQLiteDirectCursorDriver;->sThresholdToWarningLeak:[I

    array-length v10, v10

    if-ge v8, v10, :cond_0

    sget-object v8, Landroid/database/sqlite/SQLiteDirectCursorDriver;->sThresholdToWarningLeak:[I

    sget v10, Landroid/database/sqlite/SQLiteDirectCursorDriver;->sThreasholdLevel:I

    aget v8, v8, v10

    if-lt v1, v8, :cond_0

    .line 98
    const-string v8, "SQLiteLeakDetect"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Dump all cursors because "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Landroid/database/sqlite/SQLiteDirectCursorDriver;->sThresholdToWarningLeak:[I

    sget v12, Landroid/database/sqlite/SQLiteDirectCursorDriver;->sThreasholdLevel:I

    aget v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " cursors are opened."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    sget v8, Landroid/database/sqlite/SQLiteDirectCursorDriver;->sThreasholdLevel:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Landroid/database/sqlite/SQLiteDirectCursorDriver;->sThreasholdLevel:I

    .line 101
    invoke-static {}, Landroid/database/sqlite/SQLiteDirectCursorDriver;->dumpRecordMapLocked()V

    .line 103
    :cond_0
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    .end local v0    # "c":Landroid/database/sqlite/SQLiteCursor;
    .end local v1    # "count":I
    .end local v3    # "debug":Landroid/database/sqlite/SQLiteDirectCursorDriver$DebugInfo;
    .end local v6    # "tid":I
    .end local v7    # "trace":Landroid/database/sqlite/SQLiteDirectCursorDriver$RemoteTraceInfo;
    :cond_1
    iput-object v5, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    .line 108
    return-object v2

    .line 76
    .end local v2    # "cursor":Landroid/database/Cursor;
    :cond_2
    :try_start_2
    iget-object v8, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v9, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mEditTable:Ljava/lang/String;

    invoke-interface {p1, v8, p0, v9, v5}, Landroid/database/sqlite/SQLiteDatabase$CursorFactory;->newCursor(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    .restart local v2    # "cursor":Landroid/database/Cursor;
    goto :goto_0

    .line 78
    .end local v2    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v4

    .line 79
    .local v4, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteQuery;->close()V

    .line 80
    throw v4

    .line 103
    .end local v4    # "ex":Ljava/lang/RuntimeException;
    .restart local v0    # "c":Landroid/database/sqlite/SQLiteCursor;
    .restart local v1    # "count":I
    .restart local v2    # "cursor":Landroid/database/Cursor;
    .restart local v3    # "debug":Landroid/database/sqlite/SQLiteDirectCursorDriver$DebugInfo;
    .restart local v6    # "tid":I
    .restart local v7    # "trace":Landroid/database/sqlite/SQLiteDirectCursorDriver$RemoteTraceInfo;
    :catchall_0
    move-exception v8

    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v8
.end method

.method public setBindArguments([Ljava/lang/String;)V
    .locals 1
    .param p1, "bindArgs"    # [Ljava/lang/String;

    .prologue
    .line 116
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteQuery;->bindAllArgsAsStrings([Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SQLiteDirectCursorDriver: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mSql:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
