.class public Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager;
.super Ljava/lang/Object;
.source "HtcLocalBroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager$BroadcastRecord;,
        Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager$ReceiverRecord;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final MSG_EXEC_PENDING_BROADCASTS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LocalBroadcastManager"

.field private static mInstance:Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager;

.field private static final mLock:Ljava/lang/Object;


# instance fields
.field private final mActions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager$ReceiverRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mAppContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mPendingBroadcasts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager$BroadcastRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/BroadcastReceiver;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/IntentFilter;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager;->mActions:Ljava/util/HashMap;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    .line 82
    iput-object p1, p0, Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager;->mAppContext:Landroid/content/Context;

    .line 83
    new-instance v0, Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager$1;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager$1;-><init>(Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager;->mHandler:Landroid/os/Handler;

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager;->executePendingBroadcasts()V

    return-void
.end method

.method private executePendingBroadcasts()V
    .locals 8

    .prologue
    .line 257
    :cond_0
    const/4 v2, 0x0

    .line 258
    .local v2, "brs":[Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager$BroadcastRecord;
    iget-object v6, p0, Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    monitor-enter v6

    .line 259
    :try_start_0
    iget-object v5, p0, Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 260
    .local v0, "N":I
    if-gtz v0, :cond_1

    .line 261
    monitor-exit v6

    return-void

    .line 263
    :cond_1
    new-array v2, v0, [Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager$BroadcastRecord;

    .line 264
    iget-object v5, p0, Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 265
    iget-object v5, p0, Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 266
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, v2

    if-ge v3, v5, :cond_0

    .line 268
    aget-object v1, v2, v3

    .line 269
    .local v1, "br":Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager$BroadcastRecord;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    iget-object v5, v1, Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager$BroadcastRecord;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 270
    iget-object v5, v1, Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager$BroadcastRecord;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager$ReceiverRecord;

    iget-object v5, v5, Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager$ReceiverRecord;->receiver:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager;->mAppContext:Landroid/content/Context;

    iget-object v7, v1, Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager$BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5, v6, v7}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 269
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 266
    .end local v0    # "N":I
    .end local v1    # "br":Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager$BroadcastRecord;
    .end local v3    # "i":I
    .end local v4    # "j":I
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 267
    .restart local v0    # "N":I
    .restart local v1    # "br":Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager$BroadcastRecord;
    .restart local v3    # "i":I
    .restart local v4    # "j":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    sget-object v1, Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 74
    :try_start_0
    sget-object v0, Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager;->mInstance:Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager;->mInstance:Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager;

    .line 77
    :cond_0
    sget-object v0, Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager;->mInstance:Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager;

    monitor-exit v1

    return-object v0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 7
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;

    .prologue
    .line 107
    iget-object v6, p0, Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    monitor-enter v6

    .line 108
    :try_start_0
    new-instance v2, Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager$ReceiverRecord;

    invoke-direct {v2, p2, p1}, Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager$ReceiverRecord;-><init>(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    .line 109
    .local v2, "entry":Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager$ReceiverRecord;
    iget-object v5, p0, Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 110
    .local v3, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter;>;"
    if-nez v3, :cond_0

    .line 111
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter;>;"
    const/4 v5, 0x1

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 112
    .restart local v3    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter;>;"
    iget-object v5, p0, Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v5, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    :cond_0
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countActions()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 116
    invoke-virtual {p2, v4}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "action":Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager;->mActions:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 118
    .local v1, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager$ReceiverRecord;>;"
    if-nez v1, :cond_1

    .line 119
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager$ReceiverRecord;>;"
    const/4 v5, 0x1

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 120
    .restart local v1    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager$ReceiverRecord;>;"
    iget-object v5, p0, Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager;->mActions:Ljava/util/HashMap;

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :cond_1
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 124
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager$ReceiverRecord;>;"
    :cond_2
    monitor-exit v6

    .line 125
    return-void

    .line 124
    .end local v2    # "entry":Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager$ReceiverRecord;
    .end local v3    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter;>;"
    .end local v4    # "i":I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public sendBroadcast(Landroid/content/Intent;)Z
    .locals 17
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 174
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    monitor-enter v15

    .line 175
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 176
    .local v2, "action":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 178
    .local v3, "type":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 179
    .local v5, "data":Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 180
    .local v4, "scheme":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v6

    .line 182
    .local v6, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_4

    const/4 v8, 0x1

    .line 184
    .local v8, "debug":Z
    :goto_0
    if-eqz v8, :cond_0

    const-string v1, "LocalBroadcastManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Resolving type "

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v16, " scheme "

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v16, " of intent "

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager;->mActions:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    .line 189
    .local v9, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager$ReceiverRecord;>;"
    if-eqz v9, :cond_c

    .line 190
    if-eqz v8, :cond_1

    const-string v1, "LocalBroadcastManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Action list: "

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_1
    const/4 v14, 0x0

    .line 193
    .local v14, "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager$ReceiverRecord;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_9

    .line 194
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager$ReceiverRecord;

    .line 195
    .local v13, "receiver":Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager$ReceiverRecord;
    if-eqz v8, :cond_2

    const-string v1, "LocalBroadcastManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Matching against filter "

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v0, v13, Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager$ReceiverRecord;->filter:Landroid/content/IntentFilter;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_2
    iget-boolean v1, v13, Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager$ReceiverRecord;->broadcasting:Z

    if-eqz v1, :cond_5

    .line 198
    if-eqz v8, :cond_3

    .line 199
    const-string v1, "LocalBroadcastManager"

    const-string v7, "  Filter\'s target already added"

    invoke-static {v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_3
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 182
    .end local v8    # "debug":Z
    .end local v9    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager$ReceiverRecord;>;"
    .end local v10    # "i":I
    .end local v13    # "receiver":Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager$ReceiverRecord;
    .end local v14    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager$ReceiverRecord;>;"
    :cond_4
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 204
    .restart local v8    # "debug":Z
    .restart local v9    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager$ReceiverRecord;>;"
    .restart local v10    # "i":I
    .restart local v13    # "receiver":Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager$ReceiverRecord;
    .restart local v14    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager$ReceiverRecord;>;"
    :cond_5
    iget-object v1, v13, Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager$ReceiverRecord;->filter:Landroid/content/IntentFilter;

    const-string v7, "LocalBroadcastManager"

    invoke-virtual/range {v1 .. v7}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result v11

    .line 206
    .local v11, "match":I
    if-ltz v11, :cond_8

    .line 207
    if-eqz v8, :cond_6

    const-string v1, "LocalBroadcastManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  Filter matched!  match=0x"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_6
    if-nez v14, :cond_7

    .line 210
    new-instance v14, Ljava/util/ArrayList;

    .end local v14    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager$ReceiverRecord;>;"
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 212
    .restart local v14    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager$ReceiverRecord;>;"
    :cond_7
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    const/4 v1, 0x1

    iput-boolean v1, v13, Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager$ReceiverRecord;->broadcasting:Z

    goto :goto_2

    .line 240
    .end local v2    # "action":Ljava/lang/String;
    .end local v3    # "type":Ljava/lang/String;
    .end local v4    # "scheme":Ljava/lang/String;
    .end local v5    # "data":Landroid/net/Uri;
    .end local v6    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8    # "debug":Z
    .end local v9    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager$ReceiverRecord;>;"
    .end local v10    # "i":I
    .end local v11    # "match":I
    .end local v13    # "receiver":Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager$ReceiverRecord;
    .end local v14    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager$ReceiverRecord;>;"
    :catchall_0
    move-exception v1

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 215
    .restart local v2    # "action":Ljava/lang/String;
    .restart local v3    # "type":Ljava/lang/String;
    .restart local v4    # "scheme":Ljava/lang/String;
    .restart local v5    # "data":Landroid/net/Uri;
    .restart local v6    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v8    # "debug":Z
    .restart local v9    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager$ReceiverRecord;>;"
    .restart local v10    # "i":I
    .restart local v11    # "match":I
    .restart local v13    # "receiver":Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager$ReceiverRecord;
    .restart local v14    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager$ReceiverRecord;>;"
    :cond_8
    if-eqz v8, :cond_3

    .line 217
    packed-switch v11, :pswitch_data_0

    .line 222
    :try_start_1
    const-string v12, "unknown reason"

    .line 224
    .local v12, "reason":Ljava/lang/String;
    :goto_3
    if-eqz v8, :cond_3

    const-string v1, "LocalBroadcastManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  Filter did not match: "

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 218
    .end local v12    # "reason":Ljava/lang/String;
    :pswitch_0
    const-string v12, "action"

    .restart local v12    # "reason":Ljava/lang/String;
    goto :goto_3

    .line 219
    .end local v12    # "reason":Ljava/lang/String;
    :pswitch_1
    const-string v12, "category"

    .restart local v12    # "reason":Ljava/lang/String;
    goto :goto_3

    .line 220
    .end local v12    # "reason":Ljava/lang/String;
    :pswitch_2
    const-string v12, "data"

    .restart local v12    # "reason":Ljava/lang/String;
    goto :goto_3

    .line 221
    .end local v12    # "reason":Ljava/lang/String;
    :pswitch_3
    const-string v12, "type"

    .restart local v12    # "reason":Ljava/lang/String;
    goto :goto_3

    .line 229
    .end local v11    # "match":I
    .end local v12    # "reason":Ljava/lang/String;
    .end local v13    # "receiver":Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager$ReceiverRecord;
    :cond_9
    if-eqz v14, :cond_c

    .line 230
    const/4 v10, 0x0

    :goto_4
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_a

    .line 231
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager$ReceiverRecord;

    const/4 v7, 0x0

    iput-boolean v7, v1, Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager$ReceiverRecord;->broadcasting:Z

    .line 230
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 233
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    new-instance v7, Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager$BroadcastRecord;

    move-object/from16 v0, p1

    invoke-direct {v7, v0, v14}, Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager$BroadcastRecord;-><init>(Landroid/content/Intent;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_b

    .line 235
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 237
    :cond_b
    const/4 v1, 0x1

    monitor-exit v15

    .line 241
    .end local v10    # "i":I
    .end local v14    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager$ReceiverRecord;>;"
    :goto_5
    return v1

    .line 240
    :cond_c
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 241
    const/4 v1, 0x0

    goto :goto_5

    .line 217
    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public sendBroadcastSync(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 250
    invoke-virtual {p0, p1}, Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    invoke-direct {p0}, Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager;->executePendingBroadcasts()V

    .line 253
    :cond_0
    return-void
.end method

.method public unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 9
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 137
    iget-object v8, p0, Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    monitor-enter v8

    .line 138
    :try_start_0
    iget-object v7, p0, Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 139
    .local v2, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter;>;"
    if-nez v2, :cond_0

    .line 140
    monitor-exit v8

    .line 161
    :goto_0
    return-void

    .line 142
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_5

    .line 143
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/IntentFilter;

    .line 144
    .local v1, "filter":Landroid/content/IntentFilter;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    invoke-virtual {v1}, Landroid/content/IntentFilter;->countActions()I

    move-result v7

    if-ge v4, v7, :cond_4

    .line 145
    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "action":Ljava/lang/String;
    iget-object v7, p0, Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager;->mActions:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 147
    .local v6, "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager$ReceiverRecord;>;"
    if-eqz v6, :cond_3

    .line 148
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_2

    .line 149
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager$ReceiverRecord;

    iget-object v7, v7, Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager$ReceiverRecord;->receiver:Landroid/content/BroadcastReceiver;

    if-ne v7, p1, :cond_1

    .line 150
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 151
    add-int/lit8 v5, v5, -0x1

    .line 148
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 154
    :cond_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gtz v7, :cond_3

    .line 155
    iget-object v7, p0, Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager;->mActions:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .end local v5    # "k":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 142
    .end local v0    # "action":Ljava/lang/String;
    .end local v6    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager$ReceiverRecord;>;"
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 160
    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v4    # "j":I
    :cond_5
    monitor-exit v8

    goto :goto_0

    .end local v2    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter;>;"
    .end local v3    # "i":I
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method
