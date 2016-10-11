.class public Lcom/android/server/notification/NotificationComparator;
.super Ljava/lang/Object;
.source "NotificationComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/server/notification/NotificationRecord;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)I
    .locals 12
    .param p1, "left"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "right"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 28
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getPackagePriority()I

    move-result v1

    .line 29
    .local v1, "leftPackagePriority":I
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getPackagePriority()I

    move-result v5

    .line 30
    .local v5, "rightPackagePriority":I
    if-eq v1, v5, :cond_0

    .line 32
    invoke-static {v1, v5}, Ljava/lang/Integer;->compare(II)I

    move-result v8

    mul-int/lit8 v8, v8, -0x1

    .line 57
    :goto_0
    return v8

    .line 35
    :cond_0
    iget-object v8, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getScore()I

    move-result v3

    .line 36
    .local v3, "leftScore":I
    iget-object v8, p2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getScore()I

    move-result v7

    .line 37
    .local v7, "rightScore":I
    if-eq v3, v7, :cond_1

    .line 39
    invoke-static {v3, v7}, Ljava/lang/Integer;->compare(II)I

    move-result v8

    mul-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getContactAffinity()F

    move-result v2

    .line 43
    .local v2, "leftPeople":F
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getContactAffinity()F

    move-result v6

    .line 44
    .local v6, "rightPeople":F
    cmpl-float v8, v2, v6

    if-eqz v8, :cond_2

    .line 46
    invoke-static {v2, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    mul-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getContactException()Z

    move-result v0

    .line 50
    .local v0, "leftException":Z
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getContactException()Z

    move-result v4

    .line 51
    .local v4, "rightException":Z
    if-eq v0, v4, :cond_4

    .line 53
    if-eqz v4, :cond_3

    const/4 v8, 0x1

    goto :goto_0

    :cond_3
    const/4 v8, -0x1

    goto :goto_0

    .line 57
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getRankingTimeMs()J

    move-result-wide v8

    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getRankingTimeMs()J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Long;->compare(JJ)I

    move-result v8

    mul-int/lit8 v8, v8, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 23
    check-cast p1, Lcom/android/server/notification/NotificationRecord;

    check-cast p2, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationComparator;->compare(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)I

    move-result v0

    return v0
.end method
