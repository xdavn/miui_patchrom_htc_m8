.class final Lcom/android/internal/telephony/MobileNetwork$1;
.super Landroid/os/Handler;
.source "MobileNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/MobileNetwork;->createBackgroundHandler(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;ZLcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;)Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field inited:Z

.field logPrefix:Ljava/lang/String;

.field threadConfig:Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Looper;

    .prologue
    .line 5376
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 29
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 5383
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    move-object/from16 v21, v3

    check-cast v21, [Ljava/lang/Object;

    .line 5384
    .local v21, "params":[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/MobileNetwork$1;->inited:Z

    if-nez v3, :cond_6

    .line 5385
    const/4 v3, 0x0

    aget-object v3, v21, v3

    check-cast v3, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/MobileNetwork$1;->threadConfig:Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;

    .line 5386
    const/4 v3, 0x1

    aget-object v3, v21, v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/MobileNetwork$1;->logPrefix:Ljava/lang/String;

    .line 5388
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MobileNetwork$1;->threadConfig:Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;

    # getter for: Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->criticalSection:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->access$4000(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 5389
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MobileNetwork$1;->threadConfig:Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;

    new-instance v27, Ljava/util/LinkedList;

    invoke-direct/range {v27 .. v27}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, v27

    # setter for: Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->cache:Ljava/util/LinkedList;
    invoke-static {v3, v0}, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->access$4102(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;Ljava/util/LinkedList;)Ljava/util/LinkedList;

    .line 5391
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MobileNetwork$1;->logPrefix:Ljava/lang/String;

    move-object/from16 v27, v0

    const-string v28, " Fail to load previous status"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->logAddVersion(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v0, v1}, Lcom/android/internal/telephony/MobileNetwork;->access$1600(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 5392
    .local v23, "prefErrMessage":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MobileNetwork$1;->threadConfig:Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;

    # getter for: Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->context:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->access$1900(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MobileNetwork$1;->threadConfig:Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;

    move-object/from16 v27, v0

    # getter for: Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->cacheInPreference:Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->access$2100(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;)Ljava/lang/String;

    move-result-object v27

    const-string v28, "LibMobileNetwork"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v23

    # invokes: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->getCachedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences;
    invoke-static {v3, v0, v1, v2}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$3100(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v22

    .line 5395
    .local v22, "pref":Landroid/content/SharedPreferences;
    const/4 v10, 0x0

    .line 5397
    .local v10, "cachedData":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/internal/telephony/MobileNetwork$CachedSetting;>;"
    const-string v3, "dataSetting"

    const-class v27, Lcom/android/internal/telephony/MobileNetwork$Setting;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MobileNetwork$1;->logPrefix:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    # invokes: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->loadCachedStatus(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/LinkedList;
    invoke-static {v0, v3, v1, v2}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$3200(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v10

    .line 5399
    if-eqz v10, :cond_0

    .line 5400
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MobileNetwork$1;->threadConfig:Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;

    # getter for: Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->cache:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->access$4100(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 5402
    :cond_0
    const-string v3, "dataSettingMenu"

    const-class v27, Lcom/android/internal/telephony/MobileNetwork$Menu;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MobileNetwork$1;->logPrefix:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    # invokes: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->loadCachedStatus(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/LinkedList;
    invoke-static {v0, v3, v1, v2}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$3200(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v10

    .line 5404
    if-eqz v10, :cond_1

    .line 5405
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MobileNetwork$1;->threadConfig:Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;

    # getter for: Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->cache:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->access$4100(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 5407
    :cond_1
    const-string v3, "roamingSetting"

    const-class v27, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MobileNetwork$1;->logPrefix:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    # invokes: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->loadCachedStatus(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/LinkedList;
    invoke-static {v0, v3, v1, v2}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$3200(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v10

    .line 5409
    if-eqz v10, :cond_2

    .line 5410
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MobileNetwork$1;->threadConfig:Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;

    # getter for: Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->cache:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->access$4100(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 5412
    :cond_2
    const-string v3, "roamSoundSetting"

    const-class v27, Lcom/android/internal/telephony/MobileNetwork$Setting;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MobileNetwork$1;->logPrefix:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    # invokes: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->loadCachedStatus(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/LinkedList;
    invoke-static {v0, v3, v1, v2}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$3200(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v10

    .line 5414
    if-eqz v10, :cond_3

    .line 5415
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MobileNetwork$1;->threadConfig:Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;

    # getter for: Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->cache:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->access$4100(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 5417
    :cond_3
    const-string v3, "dataPath"

    const-class v27, Lcom/android/internal/telephony/MobileNetwork$Selection;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MobileNetwork$1;->logPrefix:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    # invokes: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->loadCachedStatus(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/LinkedList;
    invoke-static {v0, v3, v1, v2}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$3200(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v10

    .line 5419
    if-eqz v10, :cond_4

    .line 5420
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MobileNetwork$1;->threadConfig:Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;

    # getter for: Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->cache:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->access$4100(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 5422
    :cond_4
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5424
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/MobileNetwork$1;->inited:Z

    .line 5536
    .end local v10    # "cachedData":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/internal/telephony/MobileNetwork$CachedSetting;>;"
    .end local v22    # "pref":Landroid/content/SharedPreferences;
    .end local v23    # "prefErrMessage":Ljava/lang/String;
    :cond_5
    :goto_0
    return-void

    .line 5422
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 5428
    :cond_6
    const/4 v3, 0x0

    aget-object v4, v21, v3

    check-cast v4, Landroid/content/Intent;

    .line 5429
    .local v4, "i":Landroid/content/Intent;
    const/4 v3, 0x1

    aget-object v24, v21, v3

    check-cast v24, Landroid/os/Handler;

    .line 5430
    .local v24, "reportHdr":Landroid/os/Handler;
    const/4 v3, 0x2

    aget-object v25, v21, v3

    check-cast v25, Ljava/lang/Integer;

    .line 5431
    .local v25, "reportId":Ljava/lang/Integer;
    const/4 v3, 0x3

    aget-object v3, v21, v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/MobileNetwork$1;->logPrefix:Ljava/lang/String;

    .line 5433
    const/4 v15, 0x0

    .line 5434
    .local v15, "checkList":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 5435
    .local v6, "forceCheck":Z
    if-eqz v4, :cond_c

    const-string v3, "com.htc.intent.action.MOBILEDATA_MODE"

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 5436
    const-string v3, "clearCache"

    invoke-virtual {v4, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    .line 5438
    const/4 v11, 0x0

    .line 5440
    .local v11, "checkCustomization":[Ljava/lang/String;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MobileNetwork$1;->threadConfig:Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;

    # getter for: Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->callback:Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;
    invoke-static {v3}, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->access$2000(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;)Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;->monitorTheseCustomizationUpdate()[Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_6

    move-result-object v11

    .line 5447
    :goto_1
    if-eqz v11, :cond_7

    array-length v3, v11

    if-lez v3, :cond_7

    .line 5448
    move-object v9, v11

    .local v9, "arr$":[Ljava/lang/String;
    array-length v0, v9

    move/from16 v20, v0

    .local v20, "len$":I
    const/16 v18, 0x0

    .local v18, "i$":I
    :goto_2
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_7

    aget-object v19, v9, v18

    .line 5449
    .local v19, "itemCustomization":Ljava/lang/String;
    move-object/from16 v0, v19

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->addIntoCheckList(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    invoke-static {v0, v15}, Lcom/android/internal/telephony/MobileNetwork;->access$5400(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 5448
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 5452
    .end local v9    # "arr$":[Ljava/lang/String;
    .end local v18    # "i$":I
    .end local v19    # "itemCustomization":Ljava/lang/String;
    .end local v20    # "len$":I
    :cond_7
    const/4 v12, 0x0

    .line 5454
    .local v12, "checkDataPath":Z
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MobileNetwork$1;->threadConfig:Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;

    # getter for: Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->callback:Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;
    invoke-static {v3}, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->access$2000(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;)Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;->needDataPathUpdate()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5

    move-result v12

    .line 5461
    :goto_3
    if-eqz v12, :cond_8

    .line 5462
    const-string v3, "dataPath"

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->addIntoCheckList(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    invoke-static {v3, v15}, Lcom/android/internal/telephony/MobileNetwork;->access$5400(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 5464
    :cond_8
    const/4 v14, 0x0

    .line 5466
    .local v14, "checkDataRoamingSound":Z
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MobileNetwork$1;->threadConfig:Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;

    # getter for: Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->callback:Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;
    invoke-static {v3}, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->access$2000(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;)Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;->needDataRoamingSoundUpdate()Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    move-result v14

    .line 5473
    :goto_4
    if-eqz v14, :cond_9

    .line 5474
    const-string v3, "roamSoundSetting"

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->addIntoCheckList(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    invoke-static {v3, v15}, Lcom/android/internal/telephony/MobileNetwork;->access$5400(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 5476
    :cond_9
    const-string v3, "dataDialog"

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->addIntoCheckList(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    invoke-static {v3, v15}, Lcom/android/internal/telephony/MobileNetwork;->access$5400(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 5477
    const/4 v13, 0x0

    .line 5479
    .local v13, "checkDataRoaming":Z
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MobileNetwork$1;->threadConfig:Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;

    # getter for: Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->callback:Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;
    invoke-static {v3}, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->access$2000(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;)Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;->needDataRoamingUpdate()Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    move-result v13

    .line 5486
    :goto_5
    if-eqz v13, :cond_a

    .line 5487
    const-string v3, "roamingSetting"

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->addIntoCheckList(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    invoke-static {v3, v15}, Lcom/android/internal/telephony/MobileNetwork;->access$5400(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 5489
    :cond_a
    const/16 v17, 0x0

    .line 5491
    .local v17, "checkMobileDataMenu":Z
    :try_start_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MobileNetwork$1;->threadConfig:Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;

    # getter for: Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->callback:Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;
    invoke-static {v3}, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->access$2000(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;)Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;->needMobileDataMenuUpdate()Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    move-result v17

    .line 5498
    :goto_6
    if-eqz v17, :cond_b

    .line 5499
    const-string v3, "dataSettingMenu"

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->addIntoCheckList(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    invoke-static {v3, v15}, Lcom/android/internal/telephony/MobileNetwork;->access$5400(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 5501
    :cond_b
    const/16 v16, 0x0

    .line 5503
    .local v16, "checkMobileData":Z
    :try_start_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MobileNetwork$1;->threadConfig:Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;

    # getter for: Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->callback:Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;
    invoke-static {v3}, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->access$2000(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;)Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;->needMobileDataUpdate()Z
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    move-result v16

    .line 5510
    :goto_7
    if-eqz v16, :cond_c

    .line 5511
    const-string v3, "dataSetting"

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->addIntoCheckList(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    invoke-static {v3, v15}, Lcom/android/internal/telephony/MobileNetwork;->access$5400(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 5515
    .end local v11    # "checkCustomization":[Ljava/lang/String;
    .end local v12    # "checkDataPath":Z
    .end local v13    # "checkDataRoaming":Z
    .end local v14    # "checkDataRoamingSound":Z
    .end local v16    # "checkMobileData":Z
    .end local v17    # "checkMobileDataMenu":Z
    :cond_c
    const/4 v8, 0x0

    .line 5516
    .local v8, "updateList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/internal/telephony/MobileNetwork$CachedSetting;>;"
    if-eqz v15, :cond_d

    .line 5517
    new-instance v8, Ljava/util/LinkedList;

    .end local v8    # "updateList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/internal/telephony/MobileNetwork$CachedSetting;>;"
    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 5518
    .restart local v8    # "updateList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/internal/telephony/MobileNetwork$CachedSetting;>;"
    move-object v9, v15

    .restart local v9    # "arr$":[Ljava/lang/String;
    array-length v0, v9

    move/from16 v20, v0

    .restart local v20    # "len$":I
    const/16 v18, 0x0

    .restart local v18    # "i$":I
    :goto_8
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_d

    aget-object v5, v9, v18

    .line 5519
    .local v5, "checkItem":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MobileNetwork$1;->threadConfig:Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/MobileNetwork$1;->logPrefix:Ljava/lang/String;

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->handleIntentInBackgroundHandler(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;Landroid/content/Intent;Ljava/lang/String;ZLjava/lang/String;Ljava/util/LinkedList;)V
    invoke-static/range {v3 .. v8}, Lcom/android/internal/telephony/MobileNetwork;->access$5500(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;Landroid/content/Intent;Ljava/lang/String;ZLjava/lang/String;Ljava/util/LinkedList;)V

    .line 5518
    add-int/lit8 v18, v18, 0x1

    goto :goto_8

    .line 5523
    .end local v5    # "checkItem":Ljava/lang/String;
    .end local v9    # "arr$":[Ljava/lang/String;
    .end local v18    # "i$":I
    .end local v20    # "len$":I
    :cond_d
    if-eqz v8, :cond_e

    .line 5524
    invoke-virtual {v8}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;

    .line 5525
    .local v26, "updateItem":Lcom/android/internal/telephony/MobileNetwork$CachedSetting;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MobileNetwork$1;->threadConfig:Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;

    move-object/from16 v0, v26

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->notifyCallbackInBackgroundHandler(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;Lcom/android/internal/telephony/MobileNetwork$CachedSetting;)V
    invoke-static {v3, v0}, Lcom/android/internal/telephony/MobileNetwork;->access$5600(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;Lcom/android/internal/telephony/MobileNetwork$CachedSetting;)V

    goto :goto_9

    .line 5529
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v26    # "updateItem":Lcom/android/internal/telephony/MobileNetwork$CachedSetting;
    :cond_e
    if-eqz v24, :cond_5

    if-eqz v25, :cond_5

    .line 5531
    :try_start_8
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v27, v0

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v3, v7, v1, v8}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_0

    .line 5533
    :catch_0
    move-exception v3

    goto/16 :goto_0

    .line 5504
    .end local v8    # "updateList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/internal/telephony/MobileNetwork$CachedSetting;>;"
    .restart local v11    # "checkCustomization":[Ljava/lang/String;
    .restart local v12    # "checkDataPath":Z
    .restart local v13    # "checkDataRoaming":Z
    .restart local v14    # "checkDataRoamingSound":Z
    .restart local v16    # "checkMobileData":Z
    .restart local v17    # "checkMobileDataMenu":Z
    :catch_1
    move-exception v3

    goto :goto_7

    .line 5492
    .end local v16    # "checkMobileData":Z
    :catch_2
    move-exception v3

    goto/16 :goto_6

    .line 5480
    .end local v17    # "checkMobileDataMenu":Z
    :catch_3
    move-exception v3

    goto/16 :goto_5

    .line 5467
    .end local v13    # "checkDataRoaming":Z
    :catch_4
    move-exception v3

    goto/16 :goto_4

    .line 5455
    .end local v14    # "checkDataRoamingSound":Z
    :catch_5
    move-exception v3

    goto/16 :goto_3

    .line 5441
    .end local v12    # "checkDataPath":Z
    :catch_6
    move-exception v3

    goto/16 :goto_1
.end method
