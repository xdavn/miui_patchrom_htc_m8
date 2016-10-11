.class public Lcom/htc/lockscreen/framework/HtcLocalObjectPool;
.super Ljava/lang/Object;
.source "HtcLocalObjectPool.java"


# static fields
.field private static sInstance:Lcom/htc/lockscreen/framework/HtcLocalObjectPool;


# instance fields
.field private mPool:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/lockscreen/framework/HtcLocalObjectPool;->sInstance:Lcom/htc/lockscreen/framework/HtcLocalObjectPool;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/framework/HtcLocalObjectPool;->mPool:Ljava/util/HashMap;

    .line 11
    return-void
.end method

.method public static final declared-synchronized getInstance()Lcom/htc/lockscreen/framework/HtcLocalObjectPool;
    .locals 2

    .prologue
    .line 14
    const-class v1, Lcom/htc/lockscreen/framework/HtcLocalObjectPool;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/htc/lockscreen/framework/HtcLocalObjectPool;->sInstance:Lcom/htc/lockscreen/framework/HtcLocalObjectPool;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lcom/htc/lockscreen/framework/HtcLocalObjectPool;

    invoke-direct {v0}, Lcom/htc/lockscreen/framework/HtcLocalObjectPool;-><init>()V

    sput-object v0, Lcom/htc/lockscreen/framework/HtcLocalObjectPool;->sInstance:Lcom/htc/lockscreen/framework/HtcLocalObjectPool;

    .line 17
    :cond_0
    sget-object v0, Lcom/htc/lockscreen/framework/HtcLocalObjectPool;->sInstance:Lcom/htc/lockscreen/framework/HtcLocalObjectPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 14
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 29
    iget-object v2, p0, Lcom/htc/lockscreen/framework/HtcLocalObjectPool;->mPool:Ljava/util/HashMap;

    monitor-enter v2

    .line 30
    :try_start_0
    iget-object v1, p0, Lcom/htc/lockscreen/framework/HtcLocalObjectPool;->mPool:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 31
    .local v0, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v2

    .line 35
    :goto_0
    return-object v1

    .line 34
    :cond_0
    monitor-exit v2

    .line 35
    const/4 v1, 0x0

    goto :goto_0

    .line 34
    .end local v0    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/lang/Object;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 21
    if-eqz p2, :cond_0

    .line 22
    iget-object v1, p0, Lcom/htc/lockscreen/framework/HtcLocalObjectPool;->mPool:Ljava/util/HashMap;

    monitor-enter v1

    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/htc/lockscreen/framework/HtcLocalObjectPool;->mPool:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    monitor-exit v1

    .line 26
    :cond_0
    return-void

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public remove(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 39
    iget-object v2, p0, Lcom/htc/lockscreen/framework/HtcLocalObjectPool;->mPool:Ljava/util/HashMap;

    monitor-enter v2

    .line 40
    :try_start_0
    iget-object v1, p0, Lcom/htc/lockscreen/framework/HtcLocalObjectPool;->mPool:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 41
    .local v0, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v2

    .line 45
    :goto_0
    return-object v1

    .line 44
    :cond_0
    monitor-exit v2

    .line 45
    const/4 v1, 0x0

    goto :goto_0

    .line 44
    .end local v0    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/lang/Object;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
