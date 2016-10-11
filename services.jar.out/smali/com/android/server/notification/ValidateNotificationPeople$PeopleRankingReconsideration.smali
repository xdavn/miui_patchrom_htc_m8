.class Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;
.super Lcom/android/server/notification/RankingReconsideration;
.source "ValidateNotificationPeople.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ValidateNotificationPeople;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PeopleRankingReconsideration"
.end annotation


# instance fields
.field private mContactAffinity:F

.field private mContactException:Z

.field private final mContext:Landroid/content/Context;

.field private final mPendingLookups:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRecord:Lcom/android/server/notification/NotificationRecord;

.field final synthetic this$0:Lcom/android/server/notification/ValidateNotificationPeople;


# direct methods
.method private constructor <init>(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/content/Context;Ljava/lang/String;Ljava/util/LinkedList;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 470
    .local p4, "pendingLookups":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    .line 471
    invoke-direct {p0, p3}, Lcom/android/server/notification/RankingReconsideration;-><init>(Ljava/lang/String;)V

    .line 466
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContactAffinity:F

    .line 467
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContactException:Z

    .line 472
    iput-object p2, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContext:Landroid/content/Context;

    .line 473
    iput-object p4, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mPendingLookups:Ljava/util/LinkedList;

    .line 474
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/content/Context;Ljava/lang/String;Ljava/util/LinkedList;Lcom/android/server/notification/ValidateNotificationPeople$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/notification/ValidateNotificationPeople;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/util/LinkedList;
    .param p5, "x4"    # Lcom/android/server/notification/ValidateNotificationPeople$1;

    .prologue
    .line 462
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;-><init>(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/content/Context;Ljava/lang/String;Ljava/util/LinkedList;)V

    return-void
.end method


# virtual methods
.method public applyChangesLocked(Lcom/android/server/notification/NotificationRecord;)V
    .locals 5
    .param p1, "operand"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 521
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getContactAffinity()F

    move-result v0

    .line 522
    .local v0, "affinityBound":F
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getContactException()Z

    move-result v1

    .line 523
    .local v1, "exceptionBound":Z
    iget v2, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContactAffinity:F

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/server/notification/NotificationRecord;->setContactAffinity(F)V

    .line 524
    if-nez v1, :cond_0

    iget-boolean v2, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContactException:Z

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p1, v2}, Lcom/android/server/notification/NotificationRecord;->setContactException(Z)V

    .line 525
    const-string v3, "ValidateNoPeople"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setContactFinal("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getContactAffinity()F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getContactException()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    return-void

    .line 524
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 525
    :cond_2
    const-string v2, ""

    goto :goto_1
.end method

.method public getContactAffinity()F
    .locals 1

    .prologue
    .line 530
    iget v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContactAffinity:F

    return v0
.end method

.method public getContactException()Z
    .locals 1

    .prologue
    .line 534
    iget-boolean v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContactException:Z

    return v0
.end method

.method public setRecord(Lcom/android/server/notification/NotificationRecord;)V
    .locals 0
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 538
    iput-object p1, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mRecord:Lcom/android/server/notification/NotificationRecord;

    .line 539
    return-void
.end method

.method public work()V
    .locals 14

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 478
    # getter for: Lcom/android/server/notification/ValidateNotificationPeople;->VERBOSE:Z
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->access$200()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "ValidateNoPeople"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Executing: validation for: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mKey:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 480
    .local v4, "timeStartMs":J
    iget-object v7, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mPendingLookups:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 481
    .local v1, "handle":Ljava/lang/String;
    const/4 v3, 0x0

    .line 482
    .local v3, "lookupResult":Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 483
    .local v6, "uri":Landroid/net/Uri;
    const-string v7, "tel"

    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 484
    # getter for: Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->access$000()Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "ValidateNoPeople"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checking telephone URI: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :cond_2
    iget-object v7, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    iget-object v10, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v11

    # invokes: Lcom/android/server/notification/ValidateNotificationPeople;->resolvePhoneContact(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    invoke-static {v7, v10, v11}, Lcom/android/server/notification/ValidateNotificationPeople;->access$600(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    move-result-object v3

    .line 496
    :goto_1
    if-eqz v3, :cond_b

    .line 497
    iget-object v7, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    # getter for: Lcom/android/server/notification/ValidateNotificationPeople;->mPeopleCache:Landroid/util/LruCache;
    invoke-static {v7}, Lcom/android/server/notification/ValidateNotificationPeople;->access$300(Lcom/android/server/notification/ValidateNotificationPeople;)Landroid/util/LruCache;

    move-result-object v10

    monitor-enter v10

    .line 498
    :try_start_0
    iget-object v7, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    iget-object v11, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getUserId()I

    move-result v11

    # invokes: Lcom/android/server/notification/ValidateNotificationPeople;->getCacheKey(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v7, v11, v1}, Lcom/android/server/notification/ValidateNotificationPeople;->access$900(Lcom/android/server/notification/ValidateNotificationPeople;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 499
    .local v0, "cacheKey":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    # getter for: Lcom/android/server/notification/ValidateNotificationPeople;->mPeopleCache:Landroid/util/LruCache;
    invoke-static {v7}, Lcom/android/server/notification/ValidateNotificationPeople;->access$300(Lcom/android/server/notification/ValidateNotificationPeople;)Landroid/util/LruCache;

    move-result-object v7

    invoke-virtual {v7, v0, v3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 501
    # getter for: Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->access$000()Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "ValidateNoPeople"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "lookup contactAffinity is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->getAffinity()F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :cond_3
    iget v7, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContactAffinity:F

    invoke-virtual {v3}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->getAffinity()F

    move-result v10

    invoke-static {v7, v10}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iput v7, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContactAffinity:F

    .line 503
    iget-boolean v7, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContactException:Z

    if-nez v7, :cond_4

    invoke-virtual {v3}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->getException()Z

    move-result v7

    if-eqz v7, :cond_a

    :cond_4
    move v7, v9

    :goto_2
    iput-boolean v7, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContactException:Z

    goto/16 :goto_0

    .line 486
    .end local v0    # "cacheKey":Ljava/lang/String;
    :cond_5
    const-string v7, "mailto"

    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 487
    # getter for: Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->access$000()Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "ValidateNoPeople"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checking mailto URI: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :cond_6
    iget-object v7, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    iget-object v10, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v11

    # invokes: Lcom/android/server/notification/ValidateNotificationPeople;->resolveEmailContact(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    invoke-static {v7, v10, v11}, Lcom/android/server/notification/ValidateNotificationPeople;->access$700(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    move-result-object v3

    goto/16 :goto_1

    .line 489
    :cond_7
    sget-object v7, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 490
    # getter for: Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->access$000()Z

    move-result v7

    if-eqz v7, :cond_8

    const-string v7, "ValidateNoPeople"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checking lookup URI: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_8
    iget-object v7, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    iget-object v10, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContext:Landroid/content/Context;

    # invokes: Lcom/android/server/notification/ValidateNotificationPeople;->searchContacts(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    invoke-static {v7, v10, v6}, Lcom/android/server/notification/ValidateNotificationPeople;->access$800(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/content/Context;Landroid/net/Uri;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    move-result-object v3

    goto/16 :goto_1

    .line 493
    :cond_9
    new-instance v3, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    .end local v3    # "lookupResult":Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    invoke-direct {v3}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;-><init>()V

    .line 494
    .restart local v3    # "lookupResult":Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    const-string v7, "ValidateNoPeople"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unsupported URI "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 500
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .restart local v0    # "cacheKey":Ljava/lang/String;
    :cond_a
    move v7, v8

    .line 503
    goto/16 :goto_2

    .line 505
    .end local v0    # "cacheKey":Ljava/lang/String;
    :cond_b
    # getter for: Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->access$000()Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "ValidateNoPeople"

    const-string v10, "lookupResult is null"

    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 508
    .end local v1    # "handle":Ljava/lang/String;
    .end local v3    # "lookupResult":Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_c
    # getter for: Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->access$000()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 509
    const-string v7, "ValidateNoPeople"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Validation finished in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v4

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "ms"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_d
    iget-object v7, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mRecord:Lcom/android/server/notification/NotificationRecord;

    if-eqz v7, :cond_e

    .line 514
    iget-object v7, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    # getter for: Lcom/android/server/notification/ValidateNotificationPeople;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;
    invoke-static {v7}, Lcom/android/server/notification/ValidateNotificationPeople;->access$1000(Lcom/android/server/notification/ValidateNotificationPeople;)Lcom/android/server/notification/NotificationUsageStats;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mRecord:Lcom/android/server/notification/NotificationRecord;

    iget v7, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContactAffinity:F

    const/4 v12, 0x0

    cmpl-float v7, v7, v12

    if-lez v7, :cond_f

    move v7, v9

    :goto_3
    iget v12, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContactAffinity:F

    const/high16 v13, 0x3f800000    # 1.0f

    cmpl-float v12, v12, v13

    if-nez v12, :cond_10

    :goto_4
    invoke-virtual {v10, v11, v7, v9, v8}, Lcom/android/server/notification/NotificationUsageStats;->registerPeopleAffinity(Lcom/android/server/notification/NotificationRecord;ZZZ)V

    .line 517
    :cond_e
    return-void

    :cond_f
    move v7, v8

    .line 514
    goto :goto_3

    :cond_10
    move v9, v8

    goto :goto_4
.end method
