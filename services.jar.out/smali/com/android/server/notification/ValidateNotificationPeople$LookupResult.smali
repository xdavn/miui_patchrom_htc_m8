.class Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
.super Ljava/lang/Object;
.source "ValidateNotificationPeople.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ValidateNotificationPeople;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LookupResult"
.end annotation


# static fields
.field private static final CONTACT_REFRESH_MILLIS:J = 0x36ee80L


# instance fields
.field private mAffinity:F

.field private mException:Z

.field private final mExpireMillis:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 391
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mAffinity:F

    .line 392
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mException:Z

    .line 395
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mExpireMillis:J

    .line 396
    return-void
.end method

.method static synthetic access$400(Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    .prologue
    .line 387
    invoke-direct {p0}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->isExpired()Z

    move-result v0

    return v0
.end method

.method private isExpired()Z
    .locals 4

    .prologue
    .line 440
    iget-wide v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mExpireMillis:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInvalid()Z
    .locals 2

    .prologue
    .line 444
    iget v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mAffinity:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getAffinity()F
    .locals 1

    .prologue
    .line 448
    invoke-direct {p0}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    const/4 v0, 0x0

    .line 451
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mAffinity:F

    goto :goto_0
.end method

.method public getException()Z
    .locals 1

    .prologue
    .line 455
    invoke-direct {p0}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    const/4 v0, 0x0

    .line 458
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mException:Z

    goto :goto_0
.end method

.method public mergeContact(Landroid/database/Cursor;)V
    .locals 11
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 399
    iget v8, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mAffinity:F

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iput v8, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mAffinity:F

    .line 403
    const-string v8, "_id"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 404
    .local v2, "idIdx":I
    if-ltz v2, :cond_7

    .line 405
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 406
    .local v1, "id":I
    # getter for: Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->access$000()Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "ValidateNoPeople"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "contact _ID is: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_0
    :goto_0
    const-string v8, "starred"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 414
    .local v5, "starIdx":I
    if-ltz v5, :cond_9

    .line 415
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_8

    move v4, v7

    .line 416
    .local v4, "isStarred":Z
    :goto_1
    if-eqz v4, :cond_1

    .line 417
    iget v8, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mAffinity:F

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iput v8, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mAffinity:F

    .line 419
    :cond_1
    # getter for: Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->access$000()Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "ValidateNoPeople"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "contact STARRED is: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    .end local v4    # "isStarred":Z
    :cond_2
    :goto_2
    sget-boolean v8, Lcom/android/server/notification/NotificationManagerService;->SENSE_STOCK:Z

    if-nez v8, :cond_6

    .line 426
    const-string v8, "vip"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 427
    .local v0, "exceptionIdx":I
    if-ltz v0, :cond_b

    .line 428
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_a

    move v3, v7

    .line 429
    .local v3, "isException":Z
    :goto_3
    if-eqz v3, :cond_5

    .line 430
    if-nez v3, :cond_3

    iget-boolean v8, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mException:Z

    if-eqz v8, :cond_4

    :cond_3
    move v6, v7

    :cond_4
    iput-boolean v6, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mException:Z

    .line 432
    :cond_5
    # getter for: Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->access$000()Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "ValidateNoPeople"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "contact VIP is: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    .end local v0    # "exceptionIdx":I
    .end local v3    # "isException":Z
    :cond_6
    :goto_4
    return-void

    .line 408
    .end local v1    # "id":I
    .end local v5    # "starIdx":I
    :cond_7
    const/4 v1, -0x1

    .line 409
    .restart local v1    # "id":I
    const-string v8, "ValidateNoPeople"

    const-string v9, "invalid cursor: no _ID"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .restart local v5    # "starIdx":I
    :cond_8
    move v4, v6

    .line 415
    goto :goto_1

    .line 421
    :cond_9
    # getter for: Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->access$000()Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "ValidateNoPeople"

    const-string v9, "invalid cursor: no STARRED"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .restart local v0    # "exceptionIdx":I
    :cond_a
    move v3, v6

    .line 428
    goto :goto_3

    .line 434
    :cond_b
    # getter for: Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->access$000()Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "ValidateNoPeople"

    const-string v7, "invalid cursor: no VIP"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method
