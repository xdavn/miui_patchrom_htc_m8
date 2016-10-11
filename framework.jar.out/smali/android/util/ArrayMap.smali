.class public final Landroid/util/ArrayMap;
.super Ljava/lang/Object;
.source "ArrayMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final BASE_SIZE:I = 0x4

.field private static final CACHE_SIZE:I = 0xa

.field private static final DEBUG:Z = false

.field public static final EMPTY:Landroid/util/ArrayMap;

.field static final EMPTY_IMMUTABLE_INTS:[I

.field private static final TAG:Ljava/lang/String; = "ArrayMap"

.field static mBaseCache:[Ljava/lang/Object;

.field static mBaseCacheSize:I

.field static mTwiceBaseCache:[Ljava/lang/Object;

.field static mTwiceBaseCacheSize:I

.field private static static_id:J


# instance fields
.field private id:J

.field mArray:[Ljava/lang/Object;

.field mCollections:Landroid/util/MapCollections;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/MapCollections",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field mHashes:[I

.field mSize:I

.field private threadSeqCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 65
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(Z)V

    sput-object v0, Landroid/util/ArrayMap;->EMPTY:Landroid/util/ArrayMap;

    .line 81
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Landroid/util/ArrayMap;->EMPTY_IMMUTABLE_INTS:[I

    .line 904
    const-wide/16 v0, 0x2710

    sput-wide v0, Landroid/util/ArrayMap;->static_id:J

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    const/4 v4, 0x0

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 905
    sget-wide v0, Landroid/util/ArrayMap;->static_id:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sput-wide v2, Landroid/util/ArrayMap;->static_id:J

    iput-wide v0, p0, Landroid/util/ArrayMap;->id:J

    .line 907
    iput v4, p0, Landroid/util/ArrayMap;->threadSeqCode:I

    .line 239
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/util/ArrayMap;->mHashes:[I

    .line 240
    sget-object v0, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 241
    iput v4, p0, Landroid/util/ArrayMap;->mSize:I

    .line 242
    return-void
.end method

.method public constructor <init>(I)V
    .locals 5
    .param p1, "capacity"    # I

    .prologue
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    const/4 v4, 0x0

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 905
    sget-wide v0, Landroid/util/ArrayMap;->static_id:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sput-wide v2, Landroid/util/ArrayMap;->static_id:J

    iput-wide v0, p0, Landroid/util/ArrayMap;->id:J

    .line 907
    iput v4, p0, Landroid/util/ArrayMap;->threadSeqCode:I

    .line 248
    if-nez p1, :cond_0

    .line 249
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/util/ArrayMap;->mHashes:[I

    .line 250
    sget-object v0, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 254
    :goto_0
    iput v4, p0, Landroid/util/ArrayMap;->mSize:I

    .line 255
    return-void

    .line 252
    :cond_0
    invoke-direct {p0, p1}, Landroid/util/ArrayMap;->allocArrays(I)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/util/ArrayMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 270
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    .local p1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    invoke-direct {p0}, Landroid/util/ArrayMap;-><init>()V

    .line 271
    if-eqz p1, :cond_0

    .line 272
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 274
    :cond_0
    return-void
.end method

.method private constructor <init>(Z)V
    .locals 5
    .param p1, "immutable"    # Z

    .prologue
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    const/4 v4, 0x0

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 905
    sget-wide v0, Landroid/util/ArrayMap;->static_id:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sput-wide v2, Landroid/util/ArrayMap;->static_id:J

    iput-wide v0, p0, Landroid/util/ArrayMap;->id:J

    .line 907
    iput v4, p0, Landroid/util/ArrayMap;->threadSeqCode:I

    .line 261
    if-eqz p1, :cond_0

    sget-object v0, Landroid/util/ArrayMap;->EMPTY_IMMUTABLE_INTS:[I

    :goto_0
    iput-object v0, p0, Landroid/util/ArrayMap;->mHashes:[I

    .line 262
    sget-object v0, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 263
    iput v4, p0, Landroid/util/ArrayMap;->mSize:I

    .line 264
    return-void

    .line 261
    :cond_0
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    goto :goto_0
.end method

.method private allocArrays(I)V
    .locals 5
    .param p1, "size"    # I

    .prologue
    .line 165
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    iget-object v1, p0, Landroid/util/ArrayMap;->mHashes:[I

    sget-object v2, Landroid/util/ArrayMap;->EMPTY_IMMUTABLE_INTS:[I

    if-ne v1, v2, :cond_0

    .line 166
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "ArrayMap is immutable"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 168
    :cond_0
    const/16 v1, 0x8

    if-ne p1, v1, :cond_3

    .line 169
    const-class v2, Landroid/util/ArrayMap;

    monitor-enter v2

    .line 170
    :try_start_0
    sget-object v1, Landroid/util/ArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 171
    sget-object v0, Landroid/util/ArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    .line 172
    .local v0, "array":[Ljava/lang/Object;
    iput-object v0, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 173
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    sput-object v1, Landroid/util/ArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    .line 174
    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, [I

    check-cast v1, [I

    iput-object v1, p0, Landroid/util/ArrayMap;->mHashes:[I

    .line 175
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v0, v3

    aput-object v4, v0, v1

    .line 176
    sget v1, Landroid/util/ArrayMap;->mTwiceBaseCacheSize:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Landroid/util/ArrayMap;->mTwiceBaseCacheSize:I

    .line 179
    monitor-exit v2

    .line 200
    .end local v0    # "array":[Ljava/lang/Object;
    :goto_0
    return-void

    .line 181
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    :cond_2
    :goto_1
    new-array v1, p1, [I

    iput-object v1, p0, Landroid/util/ArrayMap;->mHashes:[I

    .line 199
    shl-int/lit8 v1, p1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    goto :goto_0

    .line 181
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 182
    :cond_3
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 183
    const-class v2, Landroid/util/ArrayMap;

    monitor-enter v2

    .line 184
    :try_start_2
    sget-object v1, Landroid/util/ArrayMap;->mBaseCache:[Ljava/lang/Object;

    if-eqz v1, :cond_4

    .line 185
    sget-object v0, Landroid/util/ArrayMap;->mBaseCache:[Ljava/lang/Object;

    .line 186
    .restart local v0    # "array":[Ljava/lang/Object;
    iput-object v0, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 187
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    sput-object v1, Landroid/util/ArrayMap;->mBaseCache:[Ljava/lang/Object;

    .line 188
    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, [I

    check-cast v1, [I

    iput-object v1, p0, Landroid/util/ArrayMap;->mHashes:[I

    .line 189
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v0, v3

    aput-object v4, v0, v1

    .line 190
    sget v1, Landroid/util/ArrayMap;->mBaseCacheSize:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Landroid/util/ArrayMap;->mBaseCacheSize:I

    .line 193
    monitor-exit v2

    goto :goto_0

    .line 195
    .end local v0    # "array":[Ljava/lang/Object;
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :cond_4
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1
.end method

.method private static freeArrays([I[Ljava/lang/Object;I)V
    .locals 5
    .param p0, "hashes"    # [I
    .param p1, "array"    # [Ljava/lang/Object;
    .param p2, "size"    # I

    .prologue
    const/16 v3, 0xa

    const/4 v4, 0x2

    .line 203
    array-length v1, p0

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 204
    const-class v2, Landroid/util/ArrayMap;

    monitor-enter v2

    .line 205
    :try_start_0
    sget v1, Landroid/util/ArrayMap;->mTwiceBaseCacheSize:I

    if-ge v1, v3, :cond_1

    .line 206
    const/4 v1, 0x0

    sget-object v3, Landroid/util/ArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    aput-object v3, p1, v1

    .line 207
    const/4 v1, 0x1

    aput-object p0, p1, v1

    .line 208
    shl-int/lit8 v1, p2, 0x1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-lt v0, v4, :cond_0

    .line 209
    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 208
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 211
    :cond_0
    sput-object p1, Landroid/util/ArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    .line 212
    sget v1, Landroid/util/ArrayMap;->mTwiceBaseCacheSize:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/util/ArrayMap;->mTwiceBaseCacheSize:I

    .line 216
    .end local v0    # "i":I
    :cond_1
    monitor-exit v2

    .line 232
    :cond_2
    :goto_1
    return-void

    .line 216
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 217
    :cond_3
    array-length v1, p0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 218
    const-class v2, Landroid/util/ArrayMap;

    monitor-enter v2

    .line 219
    :try_start_1
    sget v1, Landroid/util/ArrayMap;->mBaseCacheSize:I

    if-ge v1, v3, :cond_5

    .line 220
    const/4 v1, 0x0

    sget-object v3, Landroid/util/ArrayMap;->mBaseCache:[Ljava/lang/Object;

    aput-object v3, p1, v1

    .line 221
    const/4 v1, 0x1

    aput-object p0, p1, v1

    .line 222
    shl-int/lit8 v1, p2, 0x1

    add-int/lit8 v0, v1, -0x1

    .restart local v0    # "i":I
    :goto_2
    if-lt v0, v4, :cond_4

    .line 223
    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 222
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 225
    :cond_4
    sput-object p1, Landroid/util/ArrayMap;->mBaseCache:[Ljava/lang/Object;

    .line 226
    sget v1, Landroid/util/ArrayMap;->mBaseCacheSize:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/util/ArrayMap;->mBaseCacheSize:I

    .line 230
    .end local v0    # "i":I
    :cond_5
    monitor-exit v2

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method private getCollection()Landroid/util/MapCollections;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/MapCollections",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 766
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    iget-object v0, p0, Landroid/util/ArrayMap;->mCollections:Landroid/util/MapCollections;

    if-nez v0, :cond_0

    .line 767
    new-instance v0, Landroid/util/ArrayMap$1;

    invoke-direct {v0, p0}, Landroid/util/ArrayMap$1;-><init>(Landroid/util/ArrayMap;)V

    iput-object v0, p0, Landroid/util/ArrayMap;->mCollections:Landroid/util/MapCollections;

    .line 814
    :cond_0
    iget-object v0, p0, Landroid/util/ArrayMap;->mCollections:Landroid/util/MapCollections;

    return-object v0
.end method

.method private traceEnd()V
    .locals 4

    .prologue
    .line 916
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    iget v0, p0, Landroid/util/ArrayMap;->threadSeqCode:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/util/ArrayMap;->threadSeqCode:I

    .line 917
    iget v0, p0, Landroid/util/ArrayMap;->threadSeqCode:I

    if-eqz v0, :cond_0

    .line 918
    const-string v0, "ArrayMap"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Landroid/util/ArrayMap;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mult Thread operation on this ArrayMap! seqCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/util/ArrayMap;->threadSeqCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 920
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/ArrayMap;->threadSeqCode:I

    .line 921
    return-void
.end method

.method private traceStart()V
    .locals 4

    .prologue
    .line 910
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    iget v0, p0, Landroid/util/ArrayMap;->threadSeqCode:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/util/ArrayMap;->threadSeqCode:I

    .line 911
    iget v0, p0, Landroid/util/ArrayMap;->threadSeqCode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 912
    const-string v0, "ArrayMap"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Landroid/util/ArrayMap;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mult Thread operation on this ArrayMap! seqCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/util/ArrayMap;->threadSeqCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 914
    :cond_0
    return-void
.end method


# virtual methods
.method public append(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 501
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget v2, p0, Landroid/util/ArrayMap;->mSize:I

    .line 502
    .local v2, "index":I
    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 503
    .local v1, "hash":I
    :goto_0
    iget-object v3, p0, Landroid/util/ArrayMap;->mHashes:[I

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 504
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Array is full"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 502
    .end local v1    # "hash":I
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    .line 506
    .restart local v1    # "hash":I
    :cond_1
    if-lez v2, :cond_2

    iget-object v3, p0, Landroid/util/ArrayMap;->mHashes:[I

    add-int/lit8 v4, v2, -0x1

    aget v3, v3, v4

    if-le v3, v1, :cond_2

    .line 507
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v3, "here"

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 508
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 509
    const-string v3, "ArrayMap"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "New hash "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is before end of array hash "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/util/ArrayMap;->mHashes:[I

    add-int/lit8 v6, v2, -0x1

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 512
    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_1
    return-void

    .line 515
    :cond_2
    invoke-direct {p0}, Landroid/util/ArrayMap;->traceStart()V

    .line 516
    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/util/ArrayMap;->mSize:I

    .line 517
    iget-object v3, p0, Landroid/util/ArrayMap;->mHashes:[I

    aput v1, v3, v2

    .line 518
    shl-int/lit8 v2, v2, 0x1

    .line 519
    iget-object v3, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    aput-object p1, v3, v2

    .line 520
    iget-object v3, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    add-int/lit8 v4, v2, 0x1

    aput-object p2, v3, v4

    .line 521
    invoke-direct {p0}, Landroid/util/ArrayMap;->traceEnd()V

    goto :goto_1
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 281
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    invoke-direct {p0}, Landroid/util/ArrayMap;->traceStart()V

    .line 282
    iget v0, p0, Landroid/util/ArrayMap;->mSize:I

    if-lez v0, :cond_0

    .line 283
    iget-object v0, p0, Landroid/util/ArrayMap;->mHashes:[I

    iget-object v1, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    iget v2, p0, Landroid/util/ArrayMap;->mSize:I

    invoke-static {v0, v1, v2}, Landroid/util/ArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    .line 284
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/util/ArrayMap;->mHashes:[I

    .line 285
    sget-object v0, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 286
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/ArrayMap;->mSize:I

    .line 288
    :cond_0
    invoke-direct {p0}, Landroid/util/ArrayMap;->traceEnd()V

    .line 289
    return-void
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 824
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p0, p1}, Landroid/util/MapCollections;->containsAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 335
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 376
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ensureCapacity(I)V
    .locals 5
    .param p1, "minimumCapacity"    # I

    .prologue
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    const/4 v4, 0x0

    .line 313
    invoke-direct {p0}, Landroid/util/ArrayMap;->traceStart()V

    .line 314
    iget-object v2, p0, Landroid/util/ArrayMap;->mHashes:[I

    array-length v2, v2

    if-ge v2, p1, :cond_1

    .line 315
    iget-object v1, p0, Landroid/util/ArrayMap;->mHashes:[I

    .line 316
    .local v1, "ohashes":[I
    iget-object v0, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 317
    .local v0, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, p1}, Landroid/util/ArrayMap;->allocArrays(I)V

    .line 318
    iget v2, p0, Landroid/util/ArrayMap;->mSize:I

    if-lez v2, :cond_0

    .line 319
    iget-object v2, p0, Landroid/util/ArrayMap;->mHashes:[I

    iget v3, p0, Landroid/util/ArrayMap;->mSize:I

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy([II[III)V

    .line 320
    iget-object v2, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    iget v3, p0, Landroid/util/ArrayMap;->mSize:I

    shl-int/lit8 v3, v3, 0x1

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 322
    :cond_0
    iget v2, p0, Landroid/util/ArrayMap;->mSize:I

    invoke-static {v1, v0, v2}, Landroid/util/ArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    .line 324
    .end local v0    # "oarray":[Ljava/lang/Object;
    .end local v1    # "ohashes":[I
    :cond_1
    invoke-direct {p0}, Landroid/util/ArrayMap;->traceEnd()V

    .line 325
    return-void
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 874
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    invoke-direct {p0}, Landroid/util/ArrayMap;->getCollection()Landroid/util/MapCollections;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/MapCollections;->getEntrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 676
    if-ne p0, p1, :cond_1

    .line 705
    :cond_0
    :goto_0
    return v6

    .line 679
    :cond_1
    instance-of v8, p1, Ljava/util/Map;

    if-eqz v8, :cond_6

    move-object v3, p1

    .line 680
    check-cast v3, Ljava/util/Map;

    .line 681
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v8

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v9

    if-eq v8, v9, :cond_2

    move v6, v7

    .line 682
    goto :goto_0

    .line 686
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_0
    iget v8, p0, Landroid/util/ArrayMap;->mSize:I

    if-ge v0, v8, :cond_0

    .line 687
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 688
    .local v2, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 689
    .local v4, "mine":Ljava/lang/Object;, "TV;"
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 690
    .local v5, "theirs":Ljava/lang/Object;
    if-nez v4, :cond_4

    .line 691
    if-nez v5, :cond_3

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    :cond_3
    move v6, v7

    .line 692
    goto :goto_0

    .line 694
    :cond_4
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    if-nez v8, :cond_5

    move v6, v7

    .line 695
    goto :goto_0

    .line 686
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 698
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    .end local v4    # "mine":Ljava/lang/Object;, "TV;"
    .end local v5    # "theirs":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .local v1, "ignored":Ljava/lang/NullPointerException;
    move v6, v7

    .line 699
    goto :goto_0

    .line 700
    .end local v1    # "ignored":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .local v1, "ignored":Ljava/lang/ClassCastException;
    move v6, v7

    .line 701
    goto :goto_0

    .end local v0    # "i":I
    .end local v1    # "ignored":Ljava/lang/ClassCastException;
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :cond_6
    move v6, v7

    .line 705
    goto :goto_0
.end method

.method public erase()V
    .locals 4

    .prologue
    .line 296
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    invoke-direct {p0}, Landroid/util/ArrayMap;->traceStart()V

    .line 297
    iget v3, p0, Landroid/util/ArrayMap;->mSize:I

    if-lez v3, :cond_1

    .line 298
    iget v3, p0, Landroid/util/ArrayMap;->mSize:I

    shl-int/lit8 v0, v3, 0x1

    .line 299
    .local v0, "N":I
    iget-object v1, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 300
    .local v1, "array":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 301
    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 300
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 303
    :cond_0
    const/4 v3, 0x0

    iput v3, p0, Landroid/util/ArrayMap;->mSize:I

    .line 305
    .end local v0    # "N":I
    .end local v1    # "array":[Ljava/lang/Object;
    .end local v2    # "i":I
    :cond_1
    invoke-direct {p0}, Landroid/util/ArrayMap;->traceEnd()V

    .line 306
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 387
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    .line 388
    .local v0, "index":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v2, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    .line 713
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    iget-object v1, p0, Landroid/util/ArrayMap;->mHashes:[I

    .line 714
    .local v1, "hashes":[I
    iget-object v0, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 715
    .local v0, "array":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 716
    .local v3, "result":I
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v5, 0x1

    .local v5, "v":I
    iget v4, p0, Landroid/util/ArrayMap;->mSize:I

    .local v4, "s":I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 717
    aget-object v6, v0, v5

    .line 718
    .local v6, "value":Ljava/lang/Object;
    aget v8, v1, v2

    if-nez v6, :cond_0

    const/4 v7, 0x0

    :goto_1
    xor-int/2addr v7, v8

    add-int/2addr v3, v7

    .line 716
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    .line 718
    :cond_0
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v7

    goto :goto_1

    .line 720
    .end local v6    # "value":Ljava/lang/Object;
    :cond_1
    return v3
.end method

.method indexOf(Ljava/lang/Object;I)I
    .locals 6
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I

    .prologue
    .line 89
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    iget v0, p0, Landroid/util/ArrayMap;->mSize:I

    .line 92
    .local v0, "N":I
    if-nez v0, :cond_1

    .line 93
    const/4 v3, -0x1

    .line 123
    :cond_0
    :goto_0
    return v3

    .line 96
    :cond_1
    iget-object v4, p0, Landroid/util/ArrayMap;->mHashes:[I

    invoke-static {v4, v0, p2}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v3

    .line 99
    .local v3, "index":I
    if-ltz v3, :cond_0

    .line 104
    iget-object v4, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v3, 0x1

    aget-object v4, v4, v5

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 110
    add-int/lit8 v1, v3, 0x1

    .local v1, "end":I
    :goto_1
    if-ge v1, v0, :cond_3

    iget-object v4, p0, Landroid/util/ArrayMap;->mHashes:[I

    aget v4, v4, v1

    if-ne v4, p2, :cond_3

    .line 111
    iget-object v4, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v1, 0x1

    aget-object v4, v4, v5

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v3, v1

    goto :goto_0

    .line 110
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 115
    :cond_3
    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_2
    if-ltz v2, :cond_5

    iget-object v4, p0, Landroid/util/ArrayMap;->mHashes:[I

    aget v4, v4, v2

    if-ne v4, p2, :cond_5

    .line 116
    iget-object v4, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v2, 0x1

    aget-object v4, v4, v5

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v3, v2

    goto :goto_0

    .line 115
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 123
    :cond_5
    xor-int/lit8 v3, v1, -0x1

    goto :goto_0
.end method

.method public indexOfKey(Ljava/lang/Object;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 345
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/util/ArrayMap;->indexOfNull()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->indexOf(Ljava/lang/Object;I)I

    move-result v0

    goto :goto_0
.end method

.method indexOfNull()I
    .locals 6

    .prologue
    .line 127
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    iget v0, p0, Landroid/util/ArrayMap;->mSize:I

    .line 130
    .local v0, "N":I
    if-nez v0, :cond_1

    .line 131
    const/4 v3, -0x1

    .line 161
    :cond_0
    :goto_0
    return v3

    .line 134
    :cond_1
    iget-object v4, p0, Landroid/util/ArrayMap;->mHashes:[I

    const/4 v5, 0x0

    invoke-static {v4, v0, v5}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v3

    .line 137
    .local v3, "index":I
    if-ltz v3, :cond_0

    .line 142
    iget-object v4, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v3, 0x1

    aget-object v4, v4, v5

    if-eqz v4, :cond_0

    .line 148
    add-int/lit8 v1, v3, 0x1

    .local v1, "end":I
    :goto_1
    if-ge v1, v0, :cond_3

    iget-object v4, p0, Landroid/util/ArrayMap;->mHashes:[I

    aget v4, v4, v1

    if-nez v4, :cond_3

    .line 149
    iget-object v4, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v1, 0x1

    aget-object v4, v4, v5

    if-nez v4, :cond_2

    move v3, v1

    goto :goto_0

    .line 148
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 153
    :cond_3
    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_2
    if-ltz v2, :cond_5

    iget-object v4, p0, Landroid/util/ArrayMap;->mHashes:[I

    aget v4, v4, v2

    if-nez v4, :cond_5

    .line 154
    iget-object v4, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v2, 0x1

    aget-object v4, v4, v5

    if-nez v4, :cond_4

    move v3, v2

    goto :goto_0

    .line 153
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 161
    :cond_5
    xor-int/lit8 v3, v1, -0x1

    goto :goto_0
.end method

.method indexOfValue(Ljava/lang/Object;)I
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 349
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    iget v3, p0, Landroid/util/ArrayMap;->mSize:I

    mul-int/lit8 v0, v3, 0x2

    .line 350
    .local v0, "N":I
    iget-object v1, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 351
    .local v1, "array":[Ljava/lang/Object;
    if-nez p1, :cond_1

    .line 352
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 353
    aget-object v3, v1, v2

    if-nez v3, :cond_0

    .line 354
    shr-int/lit8 v3, v2, 0x1

    .line 364
    :goto_1
    return v3

    .line 352
    :cond_0
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 358
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x1

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 359
    aget-object v3, v1, v2

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 360
    shr-int/lit8 v3, v2, 0x1

    goto :goto_1

    .line 358
    :cond_2
    add-int/lit8 v2, v2, 0x2

    goto :goto_2

    .line 364
    :cond_3
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 429
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    iget v0, p0, Landroid/util/ArrayMap;->mSize:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keyAt(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .prologue
    .line 397
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    iget-object v0, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 887
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    invoke-direct {p0}, Landroid/util/ArrayMap;->getCollection()Landroid/util/MapCollections;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/MapCollections;->getKeySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/16 v2, 0x8

    const/4 v6, 0x4

    const/4 v9, 0x0

    .line 442
    invoke-direct {p0}, Landroid/util/ArrayMap;->traceStart()V

    .line 445
    if-nez p1, :cond_0

    .line 446
    const/4 v0, 0x0

    .line 447
    .local v0, "hash":I
    invoke-virtual {p0}, Landroid/util/ArrayMap;->indexOfNull()I

    move-result v1

    .line 452
    .local v1, "index":I
    :goto_0
    if-ltz v1, :cond_1

    .line 453
    shl-int/lit8 v6, v1, 0x1

    add-int/lit8 v1, v6, 0x1

    .line 454
    iget-object v6, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    aget-object v5, v6, v1

    .line 455
    .local v5, "old":Ljava/lang/Object;, "TV;"
    iget-object v6, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    aput-object p2, v6, v1

    .line 456
    invoke-direct {p0}, Landroid/util/ArrayMap;->traceEnd()V

    .line 492
    .end local v5    # "old":Ljava/lang/Object;, "TV;"
    :goto_1
    return-object v5

    .line 449
    .end local v0    # "hash":I
    .end local v1    # "index":I
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 450
    .restart local v0    # "hash":I
    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->indexOf(Ljava/lang/Object;I)I

    move-result v1

    .restart local v1    # "index":I
    goto :goto_0

    .line 460
    :cond_1
    xor-int/lit8 v1, v1, -0x1

    .line 461
    iget v7, p0, Landroid/util/ArrayMap;->mSize:I

    iget-object v8, p0, Landroid/util/ArrayMap;->mHashes:[I

    array-length v8, v8

    if-lt v7, v8, :cond_4

    .line 462
    iget v7, p0, Landroid/util/ArrayMap;->mSize:I

    if-lt v7, v2, :cond_6

    iget v6, p0, Landroid/util/ArrayMap;->mSize:I

    iget v7, p0, Landroid/util/ArrayMap;->mSize:I

    shr-int/lit8 v7, v7, 0x1

    add-int v2, v6, v7

    .line 467
    .local v2, "n":I
    :cond_2
    :goto_2
    iget-object v4, p0, Landroid/util/ArrayMap;->mHashes:[I

    .line 468
    .local v4, "ohashes":[I
    iget-object v3, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 469
    .local v3, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, v2}, Landroid/util/ArrayMap;->allocArrays(I)V

    .line 471
    iget-object v6, p0, Landroid/util/ArrayMap;->mHashes:[I

    array-length v6, v6

    if-lez v6, :cond_3

    .line 473
    iget-object v6, p0, Landroid/util/ArrayMap;->mHashes:[I

    array-length v7, v4

    invoke-static {v4, v9, v6, v9, v7}, Ljava/lang/System;->arraycopy([II[III)V

    .line 474
    iget-object v6, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    array-length v7, v3

    invoke-static {v3, v9, v6, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 477
    :cond_3
    iget v6, p0, Landroid/util/ArrayMap;->mSize:I

    invoke-static {v4, v3, v6}, Landroid/util/ArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    .line 480
    .end local v2    # "n":I
    .end local v3    # "oarray":[Ljava/lang/Object;
    .end local v4    # "ohashes":[I
    :cond_4
    iget v6, p0, Landroid/util/ArrayMap;->mSize:I

    if-ge v1, v6, :cond_5

    .line 483
    iget-object v6, p0, Landroid/util/ArrayMap;->mHashes:[I

    iget-object v7, p0, Landroid/util/ArrayMap;->mHashes:[I

    add-int/lit8 v8, v1, 0x1

    iget v9, p0, Landroid/util/ArrayMap;->mSize:I

    sub-int/2addr v9, v1

    invoke-static {v6, v1, v7, v8, v9}, Ljava/lang/System;->arraycopy([II[III)V

    .line 484
    iget-object v6, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v7, v1, 0x1

    iget-object v8, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    add-int/lit8 v9, v1, 0x1

    shl-int/lit8 v9, v9, 0x1

    iget v10, p0, Landroid/util/ArrayMap;->mSize:I

    sub-int/2addr v10, v1

    shl-int/lit8 v10, v10, 0x1

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 487
    :cond_5
    iget-object v6, p0, Landroid/util/ArrayMap;->mHashes:[I

    aput v0, v6, v1

    .line 488
    iget-object v6, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v7, v1, 0x1

    aput-object p1, v6, v7

    .line 489
    iget-object v6, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v7, v1, 0x1

    add-int/lit8 v7, v7, 0x1

    aput-object p2, v6, v7

    .line 490
    iget v6, p0, Landroid/util/ArrayMap;->mSize:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Landroid/util/ArrayMap;->mSize:I

    .line 491
    invoke-direct {p0}, Landroid/util/ArrayMap;->traceEnd()V

    .line 492
    const/4 v5, 0x0

    goto :goto_1

    .line 462
    :cond_6
    iget v7, p0, Landroid/util/ArrayMap;->mSize:I

    if-ge v7, v6, :cond_2

    move v2, v6

    goto :goto_2
.end method

.method public putAll(Landroid/util/ArrayMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    .local p1, "array":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<+TK;+TV;>;"
    const/4 v5, 0x0

    .line 567
    iget v0, p1, Landroid/util/ArrayMap;->mSize:I

    .line 568
    .local v0, "N":I
    iget v2, p0, Landroid/util/ArrayMap;->mSize:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->ensureCapacity(I)V

    .line 569
    iget v2, p0, Landroid/util/ArrayMap;->mSize:I

    if-nez v2, :cond_2

    .line 570
    invoke-direct {p0}, Landroid/util/ArrayMap;->traceStart()V

    .line 571
    if-lez v0, :cond_0

    .line 572
    iget-object v2, p1, Landroid/util/ArrayMap;->mHashes:[I

    iget-object v3, p0, Landroid/util/ArrayMap;->mHashes:[I

    invoke-static {v2, v5, v3, v5, v0}, Ljava/lang/System;->arraycopy([II[III)V

    .line 573
    iget-object v2, p1, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    iget-object v3, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v4, v0, 0x1

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 574
    iput v0, p0, Landroid/util/ArrayMap;->mSize:I

    .line 576
    :cond_0
    invoke-direct {p0}, Landroid/util/ArrayMap;->traceEnd()V

    .line 582
    :cond_1
    return-void

    .line 578
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 579
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 833
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    iget v2, p0, Landroid/util/ArrayMap;->mSize:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->ensureCapacity(I)V

    .line 834
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 835
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 837
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 592
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    .line 593
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 594
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v1

    .line 597
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 845
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p0, p1}, Landroid/util/MapCollections;->removeAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public removeAt(I)Ljava/lang/Object;
    .locals 10
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    const/4 v9, 0x0

    const/16 v0, 0x8

    const/4 v7, 0x0

    .line 606
    iget-object v4, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, p1, 0x1

    add-int/lit8 v5, v5, 0x1

    aget-object v3, v4, v5

    .line 607
    .local v3, "old":Ljava/lang/Object;
    invoke-direct {p0}, Landroid/util/ArrayMap;->traceStart()V

    .line 608
    iget v4, p0, Landroid/util/ArrayMap;->mSize:I

    const/4 v5, 0x1

    if-gt v4, v5, :cond_1

    .line 611
    iget-object v4, p0, Landroid/util/ArrayMap;->mHashes:[I

    iget-object v5, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    iget v6, p0, Landroid/util/ArrayMap;->mSize:I

    invoke-static {v4, v5, v6}, Landroid/util/ArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    .line 612
    sget-object v4, Llibcore/util/EmptyArray;->INT:[I

    iput-object v4, p0, Landroid/util/ArrayMap;->mHashes:[I

    .line 613
    sget-object v4, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object v4, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 614
    iput v7, p0, Landroid/util/ArrayMap;->mSize:I

    .line 654
    :cond_0
    :goto_0
    invoke-direct {p0}, Landroid/util/ArrayMap;->traceEnd()V

    .line 655
    return-object v3

    .line 616
    :cond_1
    iget-object v4, p0, Landroid/util/ArrayMap;->mHashes:[I

    array-length v4, v4

    if-le v4, v0, :cond_4

    iget v4, p0, Landroid/util/ArrayMap;->mSize:I

    iget-object v5, p0, Landroid/util/ArrayMap;->mHashes:[I

    array-length v5, v5

    div-int/lit8 v5, v5, 0x3

    if-ge v4, v5, :cond_4

    .line 620
    iget v4, p0, Landroid/util/ArrayMap;->mSize:I

    if-le v4, v0, :cond_2

    iget v4, p0, Landroid/util/ArrayMap;->mSize:I

    iget v5, p0, Landroid/util/ArrayMap;->mSize:I

    shr-int/lit8 v5, v5, 0x1

    add-int v0, v4, v5

    .line 624
    .local v0, "n":I
    :cond_2
    iget-object v2, p0, Landroid/util/ArrayMap;->mHashes:[I

    .line 625
    .local v2, "ohashes":[I
    iget-object v1, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 626
    .local v1, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, v0}, Landroid/util/ArrayMap;->allocArrays(I)V

    .line 628
    iget v4, p0, Landroid/util/ArrayMap;->mSize:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroid/util/ArrayMap;->mSize:I

    .line 629
    if-lez p1, :cond_3

    .line 631
    iget-object v4, p0, Landroid/util/ArrayMap;->mHashes:[I

    invoke-static {v2, v7, v4, v7, p1}, Ljava/lang/System;->arraycopy([II[III)V

    .line 632
    iget-object v4, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, p1, 0x1

    invoke-static {v1, v7, v4, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 634
    :cond_3
    iget v4, p0, Landroid/util/ArrayMap;->mSize:I

    if-ge p1, v4, :cond_0

    .line 637
    add-int/lit8 v4, p1, 0x1

    iget-object v5, p0, Landroid/util/ArrayMap;->mHashes:[I

    iget v6, p0, Landroid/util/ArrayMap;->mSize:I

    sub-int/2addr v6, p1

    invoke-static {v2, v4, v5, p1, v6}, Ljava/lang/System;->arraycopy([II[III)V

    .line 638
    add-int/lit8 v4, p1, 0x1

    shl-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v6, p1, 0x1

    iget v7, p0, Landroid/util/ArrayMap;->mSize:I

    sub-int/2addr v7, p1

    shl-int/lit8 v7, v7, 0x1

    invoke-static {v1, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 642
    .end local v0    # "n":I
    .end local v1    # "oarray":[Ljava/lang/Object;
    .end local v2    # "ohashes":[I
    :cond_4
    iget v4, p0, Landroid/util/ArrayMap;->mSize:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroid/util/ArrayMap;->mSize:I

    .line 643
    iget v4, p0, Landroid/util/ArrayMap;->mSize:I

    if-ge p1, v4, :cond_5

    .line 646
    iget-object v4, p0, Landroid/util/ArrayMap;->mHashes:[I

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Landroid/util/ArrayMap;->mHashes:[I

    iget v7, p0, Landroid/util/ArrayMap;->mSize:I

    sub-int/2addr v7, p1

    invoke-static {v4, v5, v6, p1, v7}, Ljava/lang/System;->arraycopy([II[III)V

    .line 647
    iget-object v4, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    add-int/lit8 v5, p1, 0x1

    shl-int/lit8 v5, v5, 0x1

    iget-object v6, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v7, p1, 0x1

    iget v8, p0, Landroid/util/ArrayMap;->mSize:I

    sub-int/2addr v8, p1

    shl-int/lit8 v8, v8, 0x1

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 650
    :cond_5
    iget-object v4, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    iget v5, p0, Landroid/util/ArrayMap;->mSize:I

    shl-int/lit8 v5, v5, 0x1

    aput-object v9, v4, v5

    .line 651
    iget-object v4, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    iget v5, p0, Landroid/util/ArrayMap;->mSize:I

    shl-int/lit8 v5, v5, 0x1

    add-int/lit8 v5, v5, 0x1

    aput-object v9, v4, v5

    goto/16 :goto_0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 855
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p0, p1}, Landroid/util/MapCollections;->retainAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public setValueAt(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .prologue
    .line 416
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Landroid/util/ArrayMap;->traceStart()V

    .line 417
    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 p1, v1, 0x1

    .line 418
    iget-object v1, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    aget-object v0, v1, p1

    .line 419
    .local v0, "old":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    aput-object p2, v1, p1

    .line 420
    invoke-direct {p0}, Landroid/util/ArrayMap;->traceEnd()V

    .line 421
    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 663
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    iget v0, p0, Landroid/util/ArrayMap;->mSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 732
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    invoke-virtual {p0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 733
    const-string/jumbo v4, "{}"

    .line 757
    :goto_0
    return-object v4

    .line 736
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/util/ArrayMap;->mSize:I

    mul-int/lit8 v4, v4, 0x1c

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 737
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v4, 0x7b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 738
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v4, p0, Landroid/util/ArrayMap;->mSize:I

    if-ge v1, v4, :cond_4

    .line 739
    if-lez v1, :cond_1

    .line 740
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    :cond_1
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 743
    .local v2, "key":Ljava/lang/Object;
    if-eq v2, p0, :cond_2

    .line 744
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 748
    :goto_2
    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 749
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 750
    .local v3, "value":Ljava/lang/Object;
    if-eq v3, p0, :cond_3

    .line 751
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 738
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 746
    .end local v3    # "value":Ljava/lang/Object;
    :cond_2
    const-string v4, "(this Map)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 753
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_3
    const-string v4, "(this Map)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 756
    .end local v2    # "key":Ljava/lang/Object;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_4
    const/16 v4, 0x7d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 757
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public validate()V
    .locals 11

    .prologue
    .line 533
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    iget v0, p0, Landroid/util/ArrayMap;->mSize:I

    .line 534
    .local v0, "N":I
    const/4 v8, 0x1

    if-gt v0, v8, :cond_1

    .line 560
    :cond_0
    return-void

    .line 538
    :cond_1
    iget-object v8, p0, Landroid/util/ArrayMap;->mHashes:[I

    const/4 v9, 0x0

    aget v1, v8, v9

    .line 539
    .local v1, "basehash":I
    const/4 v2, 0x0

    .line 540
    .local v2, "basei":I
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_0

    .line 541
    iget-object v8, p0, Landroid/util/ArrayMap;->mHashes:[I

    aget v4, v8, v5

    .line 542
    .local v4, "hash":I
    if-eq v4, v1, :cond_3

    .line 543
    move v1, v4

    .line 544
    move v2, v5

    .line 540
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 549
    :cond_3
    iget-object v8, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v9, v5, 0x1

    aget-object v3, v8, v9

    .line 550
    .local v3, "cur":Ljava/lang/Object;
    add-int/lit8 v6, v5, -0x1

    .local v6, "j":I
    :goto_1
    if-lt v6, v2, :cond_2

    .line 551
    iget-object v8, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v9, v6, 0x1

    aget-object v7, v8, v9

    .line 552
    .local v7, "prev":Ljava/lang/Object;
    if-ne v3, v7, :cond_4

    .line 553
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Duplicate key in ArrayMap: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 555
    :cond_4
    if-eqz v3, :cond_5

    if-eqz v7, :cond_5

    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 556
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Duplicate key in ArrayMap: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 550
    :cond_5
    add-int/lit8 v6, v6, -0x1

    goto :goto_1
.end method

.method public valueAt(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 406
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    iget-object v0, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 900
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    invoke-direct {p0}, Landroid/util/ArrayMap;->getCollection()Landroid/util/MapCollections;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/MapCollections;->getValues()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
