.class public Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;
.super Landroid/os/Handler;
.source "MobileNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/MobileNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NonWidgetHelper"
.end annotation


# static fields
.field private static final EVENT_END_INTENT:I = 0x3

.field private static final EVENT_FORCE_UPDATE:I = 0x5

.field private static final EVENT_INIT:I = 0x1

.field private static final EVENT_NEW_INTENT:I = 0x2

.field private static final EVENT_ON_DESTROY:I = 0x8

.field private static final EVENT_ON_PAUSE:I = 0x7

.field private static final EVENT_ON_RESUME:I = 0x6

.field private static final EVENT_RX_BROADCAST_INTENT:I = 0x4


# instance fields
.field private beenDestroyed:Z

.field private context:Landroid/content/Context;

.field private intentReceiver:Landroid/content/BroadcastReceiver;

.field private privilege:Ljava/lang/String;

.field private receivedIntents:I

.field private slotNphone:Lcom/android/internal/telephony/MobileNetwork$Selection;

.field private stopReceiveIntents:Z

.field private thread:Landroid/os/HandlerThread;

.field private threadCallback:Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;

.field private threadConfig:Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;

.field private threadHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$Selection;Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "privilege"    # Ljava/lang/String;
    .param p3, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p4, "threadCallback"    # Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;

    .prologue
    .line 3053
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 3054
    iput-object p1, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->context:Landroid/content/Context;

    .line 3055
    iput-object p2, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->privilege:Ljava/lang/String;

    .line 3056
    iput-object p3, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->slotNphone:Lcom/android/internal/telephony/MobileNetwork$Selection;

    .line 3057
    iput-object p4, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->threadCallback:Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;

    .line 3058
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->sendEmptyMessage(I)Z

    .line 3059
    return-void
.end method

.method private appendLogTag(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "givenPostfix"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x2e

    .line 3309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3310
    .local v0, "sbTag":Ljava/lang/StringBuilder;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3311
    const-string v1, "2015072201"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3312
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3313
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    and-int/lit16 v1, v1, 0xfff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3314
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3315
    if-eqz p2, :cond_0

    .line 3316
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3318
    :cond_0
    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3319
    if-eqz p1, :cond_1

    .line 3320
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3322
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private createThread(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;)Z
    .locals 9
    .param p1, "config"    # Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;

    .prologue
    const/4 v3, 0x0

    .line 3326
    const/4 v8, 0x0

    .line 3327
    .local v8, "newCreate":Z
    iget-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->thread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 3328
    new-instance v0, Landroid/os/HandlerThread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->thread:Landroid/os/HandlerThread;

    .line 3329
    iget-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 3330
    iget-object v1, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->threadCallback:Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->slotNphone:Lcom/android/internal/telephony/MobileNetwork$Selection;

    move-object v0, p1

    move-object v7, v3

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->createBackgroundHandler(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;ZLcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;)Landroid/os/Handler;
    invoke-static/range {v0 .. v7}, Lcom/android/internal/telephony/MobileNetwork;->access$2400(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;ZLcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->threadHandler:Landroid/os/Handler;

    .line 3333
    new-instance v0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper$1;-><init>(Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->intentReceiver:Landroid/content/BroadcastReceiver;

    .line 3340
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->intentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.htc.intent.action.MOBILEDATA_MODE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v3, "com.htc.permission.APP_PLATFORM"

    iget-object v4, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->threadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3343
    :goto_0
    const/4 v8, 0x1

    .line 3345
    :cond_0
    return v8

    .line 3342
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private finishThread()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3364
    iget-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->thread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 3366
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->intentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3368
    :goto_0
    iput-object v2, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->intentReceiver:Landroid/content/BroadcastReceiver;

    .line 3369
    iput-object v2, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->threadHandler:Landroid/os/Handler;

    .line 3370
    iget-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->thread:Landroid/os/HandlerThread;

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->destroyThread(Landroid/os/HandlerThread;)Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/android/internal/telephony/MobileNetwork;->access$1300(Landroid/os/HandlerThread;)Ljava/lang/Throwable;

    .line 3371
    iput-object v2, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->thread:Landroid/os/HandlerThread;

    .line 3373
    :cond_0
    return-void

    .line 3367
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private notifyThread(IIILjava/lang/Object;Ljava/lang/String;)I
    .locals 5
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;
    .param p5, "logPrefix"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x3

    .line 3349
    iget v1, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->receivedIntents:I

    .line 3351
    .local v1, "processingIntents":I
    const/4 v2, 0x4

    new-array v0, v2, [Ljava/lang/Object;

    .line 3352
    .local v0, "params":[Ljava/lang/Object;
    const/4 v2, 0x0

    aput-object p4, v0, v2

    .line 3353
    const/4 v2, 0x1

    aput-object p0, v0, v2

    .line 3354
    const/4 v2, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    .line 3355
    aput-object p5, v0, v4

    .line 3357
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->threadHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->threadHandler:Landroid/os/Handler;

    invoke-virtual {v3, p1, p2, p3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3358
    add-int/lit8 v1, v1, 0x1

    .line 3360
    :goto_0
    return v1

    .line 3359
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 3211
    iget-boolean v0, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->beenDestroyed:Z

    if-nez v0, :cond_0

    .line 3212
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->sendEmptyMessage(I)Z

    .line 3213
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->beenDestroyed:Z

    .line 3215
    :cond_0
    return-void
.end method

.method public forceCallbackUpdate()V
    .locals 1

    .prologue
    .line 3178
    iget-boolean v0, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->beenDestroyed:Z

    if-nez v0, :cond_0

    .line 3179
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->sendEmptyMessage(I)Z

    .line 3181
    :cond_0
    return-void
.end method

.method public getCachedCustomization(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p1, "customize"    # Ljava/lang/String;

    .prologue
    .line 3147
    const/4 v2, 0x0

    .line 3148
    .local v2, "result":[Ljava/lang/String;
    iget-boolean v4, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->beenDestroyed:Z

    if-nez v4, :cond_1

    if-eqz p1, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->threadConfig:Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;

    if-eqz v4, :cond_1

    .line 3149
    new-instance v1, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;-><init>(Lcom/android/internal/telephony/MobileNetwork$1;)V

    .line 3150
    .local v1, "filter":Lcom/android/internal/telephony/MobileNetwork$CachedSetting;
    # setter for: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->field:Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$3002(Lcom/android/internal/telephony/MobileNetwork$CachedSetting;Ljava/lang/String;)Ljava/lang/String;

    .line 3151
    iget-object v4, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->slotNphone:Lcom/android/internal/telephony/MobileNetwork$Selection;

    # setter for: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->slotNphone:Lcom/android/internal/telephony/MobileNetwork$Selection;
    invoke-static {v1, v4}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$3402(Lcom/android/internal/telephony/MobileNetwork$CachedSetting;Lcom/android/internal/telephony/MobileNetwork$Selection;)Lcom/android/internal/telephony/MobileNetwork$Selection;

    .line 3152
    const-class v4, [Ljava/lang/String;

    # setter for: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->clsOfSetting:Ljava/lang/Class;
    invoke-static {v1, v4}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$3502(Lcom/android/internal/telephony/MobileNetwork$CachedSetting;Ljava/lang/Class;)Ljava/lang/Class;

    .line 3153
    iget-object v4, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->threadConfig:Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;

    # getter for: Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->criticalSection:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->access$4000(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 3154
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->threadConfig:Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;

    # getter for: Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->cache:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->access$4100(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;)Ljava/util/LinkedList;

    move-result-object v4

    # invokes: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->readCachedStatus(Ljava/util/LinkedList;Lcom/android/internal/telephony/MobileNetwork$CachedSetting;)Ljava/lang/Object;
    invoke-static {v4, v1}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$3600(Ljava/util/LinkedList;Lcom/android/internal/telephony/MobileNetwork$CachedSetting;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    move-object v0, v4

    check-cast v0, [Ljava/lang/String;

    move-object v2, v0

    .line 3155
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3156
    # invokes: Lcom/android/internal/telephony/MobileNetwork;->runtimeDebugOn()Z
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->access$2700()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->stopReceiveIntents:Z

    if-eqz v4, :cond_1

    .line 3157
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 3158
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string v4, "["

    const-string v5, "] cached "

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->logAddVersion(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4, v5}, Lcom/android/internal/telephony/MobileNetwork;->access$1600(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3159
    if-eqz v2, :cond_0

    .line 3160
    array-length v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3161
    const/16 v4, 0x2a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3163
    :cond_0
    const-string v4, "results for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3164
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3165
    const-string v4, " not up-to-date"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3166
    const-string v4, "LibMobileNetwork"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3169
    .end local v1    # "filter":Lcom/android/internal/telephony/MobileNetwork$CachedSetting;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    return-object v2

    .line 3155
    .restart local v1    # "filter":Lcom/android/internal/telephony/MobileNetwork$CachedSetting;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 22
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3222
    const/16 v19, 0x0

    .line 3223
    .local v19, "exception":Ljava/lang/Throwable;
    const/16 v21, 0x0

    .line 3224
    .local v21, "sb":Ljava/lang/StringBuilder;
    const/16 v20, 0x0

    .line 3225
    .local v20, "params":[Ljava/lang/Object;
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 3281
    :cond_0
    :goto_0
    if-eqz v21, :cond_1

    .line 3282
    const-string v1, "LibMobileNetwork"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3284
    :cond_1
    return-void

    .line 3227
    :pswitch_0
    new-instance v1, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;-><init>(Lcom/android/internal/telephony/MobileNetwork$1;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->threadConfig:Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;

    .line 3228
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->threadConfig:Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->slotNphone:Lcom/android/internal/telephony/MobileNetwork$Selection;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    # setter for: Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->matchSelection:Z
    invoke-static {v2, v1}, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->access$4202(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;Z)Z

    .line 3229
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->threadConfig:Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->slotNphone:Lcom/android/internal/telephony/MobileNetwork$Selection;

    # setter for: Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->slotNphone:Lcom/android/internal/telephony/MobileNetwork$Selection;
    invoke-static {v1, v2}, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->access$4302(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;Lcom/android/internal/telephony/MobileNetwork$Selection;)Lcom/android/internal/telephony/MobileNetwork$Selection;

    .line 3230
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->threadConfig:Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->context:Landroid/content/Context;

    # setter for: Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->context:Landroid/content/Context;
    invoke-static {v1, v2}, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->access$1902(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;Landroid/content/Context;)Landroid/content/Context;

    .line 3231
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->threadConfig:Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->threadCallback:Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;

    # setter for: Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->callback:Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;
    invoke-static {v1, v2}, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->access$2002(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;)Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;

    .line 3233
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->threadConfig:Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->createThread(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;)Z

    .line 3234
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->threadCallback:Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->slotNphone:Lcom/android/internal/telephony/MobileNetwork$Selection;

    const/4 v8, 0x0

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->createForceQueryIntentForBackgroundHandler(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;)Landroid/content/Intent;
    invoke-static {v1, v5, v7, v8}, Lcom/android/internal/telephony/MobileNetwork;->access$1200(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const/4 v1, 0x0

    const-string v7, "f."

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->appendLogTag(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->notifyThread(IIILjava/lang/Object;Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->receivedIntents:I

    goto :goto_0

    .line 3228
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 3239
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->threadConfig:Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->createThread(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;)Z

    .line 3240
    const/4 v6, 0x0

    .line 3241
    .local v6, "intentLogTag":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_3

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Landroid/content/Intent;

    if-eqz v1, :cond_3

    .line 3242
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    const-string v2, "logTag"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3244
    :cond_3
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->notifyThread(IIILjava/lang/Object;Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->receivedIntents:I

    goto/16 :goto_0

    .line 3247
    .end local v6    # "intentLogTag":Ljava/lang/String;
    :pswitch_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->receivedIntents:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->receivedIntents:I

    .line 3248
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->stopReceiveIntents:Z

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->receivedIntents:I

    if-gtz v1, :cond_0

    .line 3249
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->finishThread()V

    goto/16 :goto_0

    .line 3253
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->stopReceiveIntents:Z

    if-nez v1, :cond_0

    .line 3254
    const/4 v1, 0x0

    const-string v2, "g."

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->appendLogTag(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3255
    .local v12, "logTag":Ljava/lang/String;
    const/4 v11, 0x0

    .line 3256
    .local v11, "intent":Landroid/content/Intent;
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_4

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Landroid/content/Intent;

    if-eqz v1, :cond_4

    .line 3257
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v11    # "intent":Landroid/content/Intent;
    check-cast v11, Landroid/content/Intent;

    .line 3260
    .restart local v11    # "intent":Landroid/content/Intent;
    :cond_4
    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->notifyThread(IIILjava/lang/Object;Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->receivedIntents:I

    goto/16 :goto_0

    .line 3265
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v12    # "logTag":Ljava/lang/String;
    :pswitch_4
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->stopReceiveIntents:Z

    .line 3266
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->threadConfig:Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->createThread(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3267
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    const/4 v3, 0x5

    if-ne v1, v3, :cond_5

    const-string v1, "h."

    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->appendLogTag(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3268
    .restart local v12    # "logTag":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->threadCallback:Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->slotNphone:Lcom/android/internal/telephony/MobileNetwork$Selection;

    const/4 v4, 0x0

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->createForceQueryIntentForBackgroundHandler(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;)Landroid/content/Intent;
    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/telephony/MobileNetwork;->access$1200(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v17

    move-object/from16 v13, p0

    move-object/from16 v18, v12

    invoke-direct/range {v13 .. v18}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->notifyThread(IIILjava/lang/Object;Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->receivedIntents:I

    goto/16 :goto_0

    .line 3267
    .end local v12    # "logTag":Ljava/lang/String;
    :cond_5
    const-string v1, "i."

    goto :goto_2

    .line 3275
    :pswitch_5
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->stopReceiveIntents:Z

    .line 3276
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->receivedIntents:I

    if-gtz v1, :cond_0

    .line 3277
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->finishThread()V

    goto/16 :goto_0

    .line 3225
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 3202
    iget-boolean v0, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->beenDestroyed:Z

    if-nez v0, :cond_0

    .line 3203
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->sendEmptyMessage(I)Z

    .line 3205
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 3190
    iget-boolean v0, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->beenDestroyed:Z

    if-nez v0, :cond_0

    .line 3191
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->sendEmptyMessage(I)Z

    .line 3193
    :cond_0
    return-void
.end method

.method public setCustomization(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .param p1, "customize"    # Ljava/lang/String;
    .param p2, "value"    # [Ljava/lang/String;

    .prologue
    .line 3133
    iget-boolean v0, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->beenDestroyed:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 3134
    const/4 v6, 0x2

    iget-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->slotNphone:Lcom/android/internal/telephony/MobileNetwork$Selection;

    iget-object v4, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->privilege:Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "e."

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->appendLogTag(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v2, p1

    move-object v3, p2

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->createSetupIntentForBackgroundHandler(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/MobileNetwork;->access$3900(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v6, v0}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->sendMessage(Landroid/os/Message;)Z

    .line 3138
    :cond_0
    return-void
.end method

.method public setDataPath(Lcom/android/internal/telephony/MobileNetwork$Selection;)V
    .locals 5
    .param p1, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;

    .prologue
    const/4 v4, 0x0

    .line 3117
    iget-boolean v0, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->beenDestroyed:Z

    if-nez v0, :cond_0

    .line 3118
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->context:Landroid/content/Context;

    const-string v2, "dataPath"

    const-string v3, "d."

    invoke-direct {p0, v4, v3}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->appendLogTag(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->createSetupIntentForBackgroundHandler(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    invoke-static {v1, v2, p1, v4, v3}, Lcom/android/internal/telephony/MobileNetwork;->access$1100(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->sendMessage(Landroid/os/Message;)Z

    .line 3122
    :cond_0
    return-void
.end method

.method public setDataRoaming(Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;)V
    .locals 7
    .param p1, "prefer"    # Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    .prologue
    .line 3084
    iget-boolean v0, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->beenDestroyed:Z

    if-nez v0, :cond_0

    .line 3085
    const/4 v6, 0x2

    iget-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->slotNphone:Lcom/android/internal/telephony/MobileNetwork$Selection;

    const-string v2, "roamingSetting"

    iget-object v4, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->privilege:Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "b."

    invoke-direct {p0, v3, v5}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->appendLogTag(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v3, p1

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->createSetupIntentForBackgroundHandler(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Landroid/os/Parcelable;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/MobileNetwork;->access$900(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Landroid/os/Parcelable;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v6, v0}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->sendMessage(Landroid/os/Message;)Z

    .line 3089
    :cond_0
    return-void
.end method

.method public setDataRoamingSound(Lcom/android/internal/telephony/MobileNetwork$Setting;)V
    .locals 7
    .param p1, "prefer"    # Lcom/android/internal/telephony/MobileNetwork$Setting;

    .prologue
    .line 3099
    iget-boolean v0, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->beenDestroyed:Z

    if-nez v0, :cond_0

    .line 3100
    const/4 v6, 0x2

    iget-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->slotNphone:Lcom/android/internal/telephony/MobileNetwork$Selection;

    const-string v2, "roamSoundSetting"

    iget-object v4, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->privilege:Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "c."

    invoke-direct {p0, v3, v5}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->appendLogTag(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v3, p1

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->createSetupIntentForBackgroundHandler(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Landroid/os/Parcelable;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/MobileNetwork;->access$900(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Landroid/os/Parcelable;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v6, v0}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->sendMessage(Landroid/os/Message;)Z

    .line 3104
    :cond_0
    return-void
.end method

.method public setMobileData(Lcom/android/internal/telephony/MobileNetwork$Setting;)V
    .locals 7
    .param p1, "prefer"    # Lcom/android/internal/telephony/MobileNetwork$Setting;

    .prologue
    .line 3069
    iget-boolean v0, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->beenDestroyed:Z

    if-nez v0, :cond_0

    .line 3070
    const/4 v6, 0x2

    iget-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->slotNphone:Lcom/android/internal/telephony/MobileNetwork$Selection;

    const-string v2, "dataSetting"

    iget-object v4, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->privilege:Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "a."

    invoke-direct {p0, v3, v5}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->appendLogTag(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v3, p1

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->createSetupIntentForBackgroundHandler(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Landroid/os/Parcelable;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/MobileNetwork;->access$900(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Landroid/os/Parcelable;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v6, v0}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->sendMessage(Landroid/os/Message;)Z

    .line 3074
    :cond_0
    return-void
.end method
