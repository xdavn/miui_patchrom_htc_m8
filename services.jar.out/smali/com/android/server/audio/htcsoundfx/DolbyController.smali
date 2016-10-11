.class public Lcom/android/server/audio/htcsoundfx/DolbyController;
.super Ljava/lang/Object;
.source "DolbyController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/htcsoundfx/DolbyController$DsClientListener;,
        Lcom/android/server/audio/htcsoundfx/DolbyController$DsClientHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DolbyController"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDsClient:Lcom/android/server/audio/htcsoundfx/dolby/DsClient;

.field private mDsClientBound:Z

.field private mDsClientConnected:Z

.field private mDsClientHandler:Lcom/android/server/audio/htcsoundfx/DolbyController$DsClientHandler;

.field private mDsClientListener:Lcom/android/server/audio/htcsoundfx/DolbyController$DsClientListener;

.field private mLock:Ljava/lang/Object;

.field private mLooper:Landroid/os/Looper;

.field private mObserver:Lcom/android/server/audio/htcsoundfx/dolby/IDsClientEvents;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v1, p0, Lcom/android/server/audio/htcsoundfx/DolbyController;->mDsClient:Lcom/android/server/audio/htcsoundfx/dolby/DsClient;

    .line 23
    iput-boolean v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyController;->mDsClientConnected:Z

    .line 24
    iput-boolean v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyController;->mDsClientBound:Z

    .line 26
    iput-object v1, p0, Lcom/android/server/audio/htcsoundfx/DolbyController;->mContext:Landroid/content/Context;

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyController;->mLock:Ljava/lang/Object;

    .line 28
    iput-object v1, p0, Lcom/android/server/audio/htcsoundfx/DolbyController;->mObserver:Lcom/android/server/audio/htcsoundfx/dolby/IDsClientEvents;

    .line 29
    iput-object v1, p0, Lcom/android/server/audio/htcsoundfx/DolbyController;->mDsClientListener:Lcom/android/server/audio/htcsoundfx/DolbyController$DsClientListener;

    .line 30
    iput-object v1, p0, Lcom/android/server/audio/htcsoundfx/DolbyController;->mDsClientHandler:Lcom/android/server/audio/htcsoundfx/DolbyController$DsClientHandler;

    .line 31
    iput-object v1, p0, Lcom/android/server/audio/htcsoundfx/DolbyController;->mLooper:Landroid/os/Looper;

    .line 44
    const-string v0, "DolbyController"

    const-string v1, "Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iput-object p1, p0, Lcom/android/server/audio/htcsoundfx/DolbyController;->mContext:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/android/server/audio/htcsoundfx/DolbyController;->mLooper:Landroid/os/Looper;

    .line 47
    new-instance v0, Lcom/android/server/audio/htcsoundfx/DolbyController$DsClientListener;

    invoke-direct {v0, p0, p0}, Lcom/android/server/audio/htcsoundfx/DolbyController$DsClientListener;-><init>(Lcom/android/server/audio/htcsoundfx/DolbyController;Lcom/android/server/audio/htcsoundfx/DolbyController;)V

    iput-object v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyController;->mDsClientListener:Lcom/android/server/audio/htcsoundfx/DolbyController$DsClientListener;

    .line 48
    iget-object v1, p0, Lcom/android/server/audio/htcsoundfx/DolbyController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 49
    :try_start_0
    invoke-static {}, Lcom/android/server/audio/htcsoundfx/dolby/DsEffect;->isEffectExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-direct {p0}, Lcom/android/server/audio/htcsoundfx/DolbyController;->prepare()V

    .line 51
    :cond_0
    monitor-exit v1

    .line 52
    return-void

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic access$000(Lcom/android/server/audio/htcsoundfx/DolbyController;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/htcsoundfx/DolbyController;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyController;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/audio/htcsoundfx/DolbyController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/htcsoundfx/DolbyController;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/server/audio/htcsoundfx/DolbyController;->prepare()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/audio/htcsoundfx/DolbyController;)Lcom/android/server/audio/htcsoundfx/dolby/IDsClientEvents;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/htcsoundfx/DolbyController;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyController;->mObserver:Lcom/android/server/audio/htcsoundfx/dolby/IDsClientEvents;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/audio/htcsoundfx/DolbyController;)Lcom/android/server/audio/htcsoundfx/dolby/DsClient;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/htcsoundfx/DolbyController;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyController;->mDsClient:Lcom/android/server/audio/htcsoundfx/dolby/DsClient;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/audio/htcsoundfx/DolbyController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/htcsoundfx/DolbyController;
    .param p1, "x1"    # Z

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/android/server/audio/htcsoundfx/DolbyController;->mDsClientConnected:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/audio/htcsoundfx/DolbyController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/htcsoundfx/DolbyController;

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyController;->mDsClientBound:Z

    return v0
.end method

.method private findProfileById(I)Ljava/lang/String;
    .locals 2
    .param p1, "profile"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 182
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/android/server/audio/htcsoundfx/DolbyController;->mDsClient:Lcom/android/server/audio/htcsoundfx/dolby/DsClient;

    invoke-virtual {v1}, Lcom/android/server/audio/htcsoundfx/dolby/DsClient;->getProfileCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 183
    iget-object v1, p0, Lcom/android/server/audio/htcsoundfx/DolbyController;->mDsClient:Lcom/android/server/audio/htcsoundfx/dolby/DsClient;

    invoke-virtual {v1}, Lcom/android/server/audio/htcsoundfx/dolby/DsClient;->getProfileNames()[Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "profiles":[Ljava/lang/String;
    aget-object v1, v0, p1

    .line 186
    .end local v0    # "profiles":[Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private findProfileByName(Ljava/lang/String;)I
    .locals 3
    .param p1, "profile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 190
    iget-object v2, p0, Lcom/android/server/audio/htcsoundfx/DolbyController;->mDsClient:Lcom/android/server/audio/htcsoundfx/dolby/DsClient;

    invoke-virtual {v2}, Lcom/android/server/audio/htcsoundfx/dolby/DsClient;->getProfileNames()[Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, "profiles":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/audio/htcsoundfx/DolbyController;->mDsClient:Lcom/android/server/audio/htcsoundfx/dolby/DsClient;

    invoke-virtual {v2}, Lcom/android/server/audio/htcsoundfx/dolby/DsClient;->getProfileCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 192
    aget-object v2, v1, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 194
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 191
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 194
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static isDoblyInstanceExist()Z
    .locals 2

    .prologue
    .line 35
    :try_start_0
    const-string v1, "android.dolby.DsClient"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    const/4 v1, 0x1

    .line 40
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return v1

    .line 37
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 38
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 40
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private prepare()V
    .locals 3

    .prologue
    .line 87
    const-string v1, "DolbyController"

    const-string v2, "prepare"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/audio/htcsoundfx/DolbyController;->isInitialized(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    :goto_0
    return-void

    .line 91
    :cond_0
    invoke-direct {p0}, Lcom/android/server/audio/htcsoundfx/DolbyController;->release()V

    .line 93
    new-instance v1, Lcom/android/server/audio/htcsoundfx/dolby/DsClient;

    invoke-direct {v1}, Lcom/android/server/audio/htcsoundfx/dolby/DsClient;-><init>()V

    iput-object v1, p0, Lcom/android/server/audio/htcsoundfx/DolbyController;->mDsClient:Lcom/android/server/audio/htcsoundfx/dolby/DsClient;

    .line 94
    iget-object v1, p0, Lcom/android/server/audio/htcsoundfx/DolbyController;->mDsClient:Lcom/android/server/audio/htcsoundfx/dolby/DsClient;

    if-eqz v1, :cond_1

    .line 95
    iget-object v1, p0, Lcom/android/server/audio/htcsoundfx/DolbyController;->mDsClient:Lcom/android/server/audio/htcsoundfx/dolby/DsClient;

    iget-object v2, p0, Lcom/android/server/audio/htcsoundfx/DolbyController;->mDsClientListener:Lcom/android/server/audio/htcsoundfx/DolbyController$DsClientListener;

    invoke-virtual {v2}, Lcom/android/server/audio/htcsoundfx/DolbyController$DsClientListener;->getProxeyInstance()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/audio/htcsoundfx/dolby/DsClient;->setEventListener(Ljava/lang/Object;)V

    .line 96
    iget-object v1, p0, Lcom/android/server/audio/htcsoundfx/DolbyController;->mDsClient:Lcom/android/server/audio/htcsoundfx/dolby/DsClient;

    iget-object v2, p0, Lcom/android/server/audio/htcsoundfx/DolbyController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/audio/htcsoundfx/dolby/DsClient;->bindDsService(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/audio/htcsoundfx/DolbyController;->mDsClientBound:Z

    .line 99
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/audio/htcsoundfx/DolbyController;->mDsClientBound:Z

    if-eqz v1, :cond_2

    .line 100
    const-string v1, "DolbyController"

    const-string v2, "Bound DsService successful"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 102
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    const-string v1, "DolbyController"

    const-string v2, "Bound DsService failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private prepareAsync()V
    .locals 5

    .prologue
    .line 70
    const-string v2, "DolbyController"

    const-string v3, "prepareAsync"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :try_start_0
    invoke-static {}, Lcom/android/server/audio/htcsoundfx/dolby/DsEffect;->isEffectExist()Z

    move-result v2

    if-nez v2, :cond_0

    .line 84
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v3, p0, Lcom/android/server/audio/htcsoundfx/DolbyController;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :try_start_1
    iget-object v2, p0, Lcom/android/server/audio/htcsoundfx/DolbyController;->mDsClientHandler:Lcom/android/server/audio/htcsoundfx/DolbyController$DsClientHandler;

    if-nez v2, :cond_1

    .line 76
    new-instance v2, Lcom/android/server/audio/htcsoundfx/DolbyController$DsClientHandler;

    iget-object v4, p0, Lcom/android/server/audio/htcsoundfx/DolbyController;->mLooper:Landroid/os/Looper;

    invoke-direct {v2, p0, p0, v4}, Lcom/android/server/audio/htcsoundfx/DolbyController$DsClientHandler;-><init>(Lcom/android/server/audio/htcsoundfx/DolbyController;Lcom/android/server/audio/htcsoundfx/DolbyController;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/audio/htcsoundfx/DolbyController;->mDsClientHandler:Lcom/android/server/audio/htcsoundfx/DolbyController$DsClientHandler;

    .line 77
    :cond_1
    iget-object v2, p0, Lcom/android/server/audio/htcsoundfx/DolbyController;->mDsClientHandler:Lcom/android/server/audio/htcsoundfx/DolbyController$DsClientHandler;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/server/audio/htcsoundfx/DolbyController$DsClientHandler;->removeMessages(I)V

    .line 78
    iget-object v2, p0, Lcom/android/server/audio/htcsoundfx/DolbyController;->mDsClientHandler:Lcom/android/server/audio/htcsoundfx/DolbyController$DsClientHandler;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/server/audio/htcsoundfx/DolbyController$DsClientHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 79
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/audio/htcsoundfx/DolbyController;->mDsClientHandler:Lcom/android/server/audio/htcsoundfx/DolbyController$DsClientHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/audio/htcsoundfx/DolbyController$DsClientHandler;->sendMessage(Landroid/os/Message;)Z

    .line 80
    monitor-exit v3

    goto :goto_0

    .end local v1    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private declared-synchronized release()V
    .locals 3

    .prologue
    .line 109
    monitor-enter p0

    :try_start_0
    const-string v1, "DolbyController"

    const-string v2, "release"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    :try_start_1
    iget-object v1, p0, Lcom/android/server/audio/htcsoundfx/DolbyController;->mDsClient:Lcom/android/server/audio/htcsoundfx/dolby/DsClient;

    if-eqz v1, :cond_1

    .line 112
    iget-boolean v1, p0, Lcom/android/server/audio/htcsoundfx/DolbyController;->mDsClientBound:Z

    if-eqz v1, :cond_0

    .line 113
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/audio/htcsoundfx/DolbyController;->mDsClientBound:Z

    .line 114
    iget-object v1, p0, Lcom/android/server/audio/htcsoundfx/DolbyController;->mDsClient:Lcom/android/server/audio/htcsoundfx/dolby/DsClient;

    iget-object v2, p0, Lcom/android/server/audio/htcsoundfx/DolbyController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/audio/htcsoundfx/dolby/DsClient;->unBindDsService(Landroid/content/Context;)V

    .line 116
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/htcsoundfx/DolbyController;->mDsClient:Lcom/android/server/audio/htcsoundfx/dolby/DsClient;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/audio/htcsoundfx/dolby/DsClient;->setEventListener(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    :cond_1
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/android/server/audio/htcsoundfx/DolbyController;->mDsClient:Lcom/android/server/audio/htcsoundfx/dolby/DsClient;

    .line 122
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/audio/htcsoundfx/DolbyController;->mDsClientConnected:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 123
    monitor-exit p0

    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 109
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private restart()V
    .locals 2

    .prologue
    .line 126
    const-string v0, "DolbyController"

    const-string v1, "restart DsClient"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-direct {p0}, Lcom/android/server/audio/htcsoundfx/DolbyController;->release()V

    .line 128
    invoke-direct {p0}, Lcom/android/server/audio/htcsoundfx/DolbyController;->prepareAsync()V

    .line 129
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 56
    const-string v1, "DolbyController"

    const-string v2, "finalize"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v2, p0, Lcom/android/server/audio/htcsoundfx/DolbyController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 59
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/audio/htcsoundfx/DolbyController;->release()V

    .line 60
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/audio/htcsoundfx/DolbyController;->mDsClientListener:Lcom/android/server/audio/htcsoundfx/DolbyController$DsClientListener;

    .line 61
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/audio/htcsoundfx/DolbyController;->mDsClientHandler:Lcom/android/server/audio/htcsoundfx/DolbyController$DsClientHandler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :goto_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 67
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v1, "DolbyController"

    const-string v3, "exception occure at finalize"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 65
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getOn()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 227
    iget-object v2, p0, Lcom/android/server/audio/htcsoundfx/DolbyController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 228
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/audio/htcsoundfx/DolbyController;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    :goto_0
    return v1

    .line 231
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/audio/htcsoundfx/DolbyController;->mDsClient:Lcom/android/server/audio/htcsoundfx/dolby/DsClient;

    invoke-virtual {v3}, Lcom/android/server/audio/htcsoundfx/dolby/DsClient;->getDsOn()Z
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    :try_start_2
    monitor-exit v2

    goto :goto_0

    .line 238
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_3
    invoke-virtual {v0}, Landroid/os/DeadObjectException;->printStackTrace()V

    .line 234
    invoke-direct {p0}, Lcom/android/server/audio/htcsoundfx/DolbyController;->release()V

    .line 238
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :goto_1
    monitor-exit v2

    goto :goto_0

    .line 235
    :catch_1
    move-exception v0

    .line 236
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public getProfile()Ljava/lang/String;
    .locals 6

    .prologue
    .line 163
    const-string v2, "DolbyController"

    const-string v3, "getProfile"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const/4 v1, 0x0

    .line 166
    .local v1, "profile":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/audio/htcsoundfx/DolbyController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 167
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/audio/htcsoundfx/DolbyController;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    :goto_0
    return-object v2

    .line 169
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/audio/htcsoundfx/DolbyController;->mDsClient:Lcom/android/server/audio/htcsoundfx/dolby/DsClient;

    invoke-virtual {v2}, Lcom/android/server/audio/htcsoundfx/dolby/DsClient;->getSelectedProfile()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/audio/htcsoundfx/DolbyController;->findProfileById(I)Ljava/lang/String;

    move-result-object v1

    .line 170
    const-string v2, "DolbyController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getProfile "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    :goto_1
    :try_start_2
    monitor-exit v3

    move-object v2, v1

    .line 178
    goto :goto_0

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Landroid/os/DeadObjectException;
    invoke-virtual {v0}, Landroid/os/DeadObjectException;->printStackTrace()V

    .line 173
    invoke-direct {p0}, Lcom/android/server/audio/htcsoundfx/DolbyController;->release()V

    goto :goto_1

    .line 177
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 174
    :catch_1
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/audio/htcsoundfx/DolbyController;->isInitialized(Z)Z

    move-result v0

    return v0
.end method

.method public isInitialized(Z)Z
    .locals 4
    .param p1, "restartIfNecessary"    # Z

    .prologue
    .line 247
    const/4 v0, 0x0

    .line 248
    .local v0, "res":Z
    iget-object v2, p0, Lcom/android/server/audio/htcsoundfx/DolbyController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 249
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/htcsoundfx/DolbyController;->mDsClient:Lcom/android/server/audio/htcsoundfx/dolby/DsClient;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/audio/htcsoundfx/DolbyController;->mDsClientConnected:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/audio/htcsoundfx/DolbyController;->mDsClientBound:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 250
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/audio/htcsoundfx/DolbyController;->mDsClientBound:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 251
    const-string v1, "DolbyController"

    const-string v3, "Havn\'t bound to DsClient, try to restart"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-direct {p0}, Lcom/android/server/audio/htcsoundfx/DolbyController;->restart()V

    .line 254
    :cond_0
    monitor-exit v2

    .line 255
    return v0

    .line 249
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 254
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setObserver(Lcom/android/server/audio/htcsoundfx/dolby/IDsClientEvents;)V
    .locals 0
    .param p1, "observer"    # Lcom/android/server/audio/htcsoundfx/dolby/IDsClientEvents;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/android/server/audio/htcsoundfx/DolbyController;->mObserver:Lcom/android/server/audio/htcsoundfx/dolby/IDsClientEvents;

    .line 260
    return-void
.end method

.method public setOn(Z)Z
    .locals 8
    .param p1, "on"    # Z

    .prologue
    const/4 v4, 0x0

    .line 198
    sget v3, Lcom/android/server/audio/htcsoundfx/dolby/DsConstants;->DS_NO_ERROR:I

    .line 200
    .local v3, "res":I
    iget-object v5, p0, Lcom/android/server/audio/htcsoundfx/DolbyController;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 201
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/audio/htcsoundfx/DolbyController;->isInitialized()Z

    move-result v6

    if-nez v6, :cond_0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    :goto_0
    return v4

    .line 204
    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/android/server/audio/htcsoundfx/DolbyController;->mDsClient:Lcom/android/server/audio/htcsoundfx/dolby/DsClient;

    invoke-virtual {v6}, Lcom/android/server/audio/htcsoundfx/dolby/DsClient;->getDsOn()Z

    move-result v0

    .line 205
    .local v0, "bDsOn":Z
    if-eq p1, v0, :cond_1

    .line 206
    iget-object v6, p0, Lcom/android/server/audio/htcsoundfx/DolbyController;->mDsClient:Lcom/android/server/audio/htcsoundfx/dolby/DsClient;

    invoke-virtual {v6, p1}, Lcom/android/server/audio/htcsoundfx/dolby/DsClient;->setDsOnChecked(Z)I
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    .line 214
    .end local v0    # "bDsOn":Z
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 216
    if-eqz p1, :cond_2

    const-string v1, "on"

    .line 217
    .local v1, "command":Ljava/lang/String;
    :goto_2
    sget v5, Lcom/android/server/audio/htcsoundfx/dolby/DsConstants;->DS_NO_ERROR:I

    if-ne v3, v5, :cond_3

    .line 218
    const-string v4, "DolbyController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setDs "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " successful"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const/4 v4, 0x1

    goto :goto_0

    .line 208
    .end local v1    # "command":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 209
    .local v2, "e":Landroid/os/DeadObjectException;
    :try_start_3
    invoke-virtual {v2}, Landroid/os/DeadObjectException;->printStackTrace()V

    .line 210
    invoke-direct {p0}, Lcom/android/server/audio/htcsoundfx/DolbyController;->release()V

    goto :goto_1

    .line 214
    .end local v2    # "e":Landroid/os/DeadObjectException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 211
    :catch_1
    move-exception v2

    .line 212
    .local v2, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 216
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    const-string v1, "off"

    goto :goto_2

    .line 222
    .restart local v1    # "command":Ljava/lang/String;
    :cond_3
    const-string v5, "DolbyController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setDs "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setProfile(Ljava/lang/String;)Z
    .locals 9
    .param p1, "profile"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 132
    const-string v5, "DolbyController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setProfile "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v5, p0, Lcom/android/server/audio/htcsoundfx/DolbyController;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 134
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/audio/htcsoundfx/DolbyController;->isInitialized()Z

    move-result v6

    if-nez v6, :cond_0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    :goto_0
    return v4

    .line 137
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/audio/htcsoundfx/DolbyController;->findProfileByName(Ljava/lang/String;)I

    move-result v1

    .line 138
    .local v1, "profileId":I
    if-ltz v1, :cond_3

    .line 139
    const-string v6, "DolbyController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setProfile "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/4 v2, 0x0

    .line 141
    .local v2, "res":Z
    iget-object v6, p0, Lcom/android/server/audio/htcsoundfx/DolbyController;->mDsClient:Lcom/android/server/audio/htcsoundfx/dolby/DsClient;

    invoke-virtual {v6}, Lcom/android/server/audio/htcsoundfx/dolby/DsClient;->getSelectedProfile()I

    move-result v6

    if-ne v1, v6, :cond_1

    .line 142
    const/4 v2, 0x1

    .line 147
    :goto_1
    if-eqz v2, :cond_3

    .line 148
    const-string v6, "DolbyController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setProfile "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " successed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v4, v3

    goto :goto_0

    .line 144
    :cond_1
    :try_start_3
    iget-object v6, p0, Lcom/android/server/audio/htcsoundfx/DolbyController;->mDsClient:Lcom/android/server/audio/htcsoundfx/dolby/DsClient;

    invoke-virtual {v6, v1}, Lcom/android/server/audio/htcsoundfx/dolby/DsClient;->setSelectedProfile(I)V

    .line 145
    iget-object v6, p0, Lcom/android/server/audio/htcsoundfx/DolbyController;->mDsClient:Lcom/android/server/audio/htcsoundfx/dolby/DsClient;

    invoke-virtual {v6}, Lcom/android/server/audio/htcsoundfx/dolby/DsClient;->getSelectedProfile()I
    :try_end_3
    .catch Landroid/os/DeadObjectException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v6

    if-ne v1, v6, :cond_2

    move v2, v3

    :goto_2
    goto :goto_1

    :cond_2
    move v2, v4

    goto :goto_2

    .line 152
    .end local v1    # "profileId":I
    .end local v2    # "res":Z
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_4
    invoke-virtual {v0}, Landroid/os/DeadObjectException;->printStackTrace()V

    .line 154
    invoke-direct {p0}, Lcom/android/server/audio/htcsoundfx/DolbyController;->release()V

    .line 158
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :cond_3
    :goto_3
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 155
    :catch_1
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3
.end method
