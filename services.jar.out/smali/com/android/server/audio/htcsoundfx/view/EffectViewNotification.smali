.class public Lcom/android/server/audio/htcsoundfx/view/EffectViewNotification;
.super Ljava/lang/Object;
.source "EffectViewNotification.java"

# interfaces
.implements Lcom/android/server/audio/htcsoundfx/view/EffectViewInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "EffectViewNotification"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLargeIconId:I

.field private mLock:Ljava/lang/Object;

.field private mNotification:Landroid/app/Notification;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mSmallIconId:I

.field private mUseLargeIcon:Z

.field private mVisiable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/audio/htcsoundfx/view/EffectViewNotification;->mContext:Landroid/content/Context;

    .line 22
    iput-boolean v1, p0, Lcom/android/server/audio/htcsoundfx/view/EffectViewNotification;->mVisiable:Z

    .line 23
    iput-boolean v1, p0, Lcom/android/server/audio/htcsoundfx/view/EffectViewNotification;->mUseLargeIcon:Z

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/htcsoundfx/view/EffectViewNotification;->mLock:Ljava/lang/Object;

    .line 69
    iput-object p1, p0, Lcom/android/server/audio/htcsoundfx/view/EffectViewNotification;->mContext:Landroid/content/Context;

    .line 70
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/audio/htcsoundfx/view/EffectViewNotification;->mNotificationManager:Landroid/app/NotificationManager;

    .line 71
    return-void
.end method

.method public static createNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;)Landroid/app/Notification;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "iconId"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "actionIcon"    # I
    .param p5, "actionTitle"    # Ljava/lang/String;
    .param p6, "actionIntent"    # Landroid/content/Intent;

    .prologue
    .line 65
    const/4 v7, 0x0

    const-wide/16 v8, -0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    invoke-static/range {v0 .. v9}, Lcom/android/server/audio/htcsoundfx/view/EffectViewNotification;->createNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;ZJ)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public static createNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;ZJ)Landroid/app/Notification;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "iconId"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "actionIcon"    # I
    .param p5, "actionTitle"    # Ljava/lang/String;
    .param p6, "actionIntent"    # Landroid/content/Intent;
    .param p7, "hideStatusBarIcon"    # Z
    .param p8, "when"    # J

    .prologue
    .line 30
    const-string v2, "EffectViewNotification"

    const-string v3, "createNotification"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    new-instance v4, Landroid/content/Intent;

    const-string v2, "android.settings.SETTINGS"

    invoke-direct {v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 32
    .local v4, "intent_setting":Landroid/content/Intent;
    const-string v2, "HTC_EXTRA_SCROLL_TO_BOOMSOUND"

    const/4 v3, 0x1

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 34
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v12

    .line 35
    .local v12, "pIntent_setting":Landroid/app/PendingIntent;
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v10

    .line 42
    .local v10, "notification":Landroid/app/Notification$Builder;
    if-eqz p3, :cond_0

    .line 43
    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 46
    :cond_0
    if-eqz p6, :cond_1

    .line 47
    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    move-object/from16 v0, p6

    invoke-static {p0, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 48
    .local v11, "pIntent":Landroid/app/PendingIntent;
    move/from16 v0, p4

    move-object/from16 v1, p5

    invoke-virtual {v10, v0, v1, v11}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 51
    .end local v11    # "pIntent":Landroid/app/PendingIntent;
    :cond_1
    if-eqz p7, :cond_2

    .line 52
    invoke-virtual {v10}, Landroid/app/Notification$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 53
    .local v8, "bundle":Landroid/os/Bundle;
    const-string v2, "com.htc.features"

    invoke-virtual {v8, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 54
    .local v9, "htcFeature":I
    or-int/lit8 v9, v9, 0x2

    .line 55
    const-string v2, "com.htc.features"

    invoke-virtual {v8, v2, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 56
    invoke-virtual {v10, v8}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 58
    .end local v8    # "bundle":Landroid/os/Bundle;
    .end local v9    # "htcFeature":I
    :cond_2
    const-wide/16 v2, -0x1

    cmp-long v2, p8, v2

    if-eqz v2, :cond_3

    .line 59
    move-wide/from16 v0, p8

    invoke-virtual {v10, v0, v1}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 61
    :cond_3
    invoke-virtual {v10}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public hide()V
    .locals 5

    .prologue
    .line 107
    iget-object v1, p0, Lcom/android/server/audio/htcsoundfx/view/EffectViewNotification;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 108
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/audio/htcsoundfx/view/EffectViewNotification;->mVisiable:Z

    if-nez v0, :cond_0

    monitor-exit v1

    .line 113
    :goto_0
    return-void

    .line 109
    :cond_0
    const-string v0, "EffectViewNotification"

    const-string v2, "hide"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/view/EffectViewNotification;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/htcsoundfx/view/EffectViewNotification;->mVisiable:Z

    .line 112
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/android/server/audio/htcsoundfx/view/EffectViewNotification;->mVisiable:Z

    return v0
.end method

.method public setNotification(Landroid/app/Notification;)V
    .locals 4
    .param p1, "notification"    # Landroid/app/Notification;

    .prologue
    .line 82
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "notification is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    :cond_0
    iget-object v2, p0, Lcom/android/server/audio/htcsoundfx/view/EffectViewNotification;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 84
    :try_start_0
    const-string v1, "EffectViewNotification"

    const-string v3, "setNotification"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v1, p0, Lcom/android/server/audio/htcsoundfx/view/EffectViewNotification;->mNotification:Landroid/app/Notification;

    if-ne v1, p1, :cond_1

    .line 86
    monitor-exit v2

    .line 95
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/audio/htcsoundfx/view/EffectViewNotification;->mVisiable:Z

    .line 89
    .local v0, "visible":Z
    if-eqz v0, :cond_2

    .line 90
    invoke-virtual {p0}, Lcom/android/server/audio/htcsoundfx/view/EffectViewNotification;->hide()V

    .line 91
    :cond_2
    iput-object p1, p0, Lcom/android/server/audio/htcsoundfx/view/EffectViewNotification;->mNotification:Landroid/app/Notification;

    .line 92
    if-eqz v0, :cond_3

    .line 93
    invoke-virtual {p0}, Lcom/android/server/audio/htcsoundfx/view/EffectViewNotification;->show()V

    .line 94
    :cond_3
    monitor-exit v2

    goto :goto_0

    .end local v0    # "visible":Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setView(Ljava/lang/Object;)V
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 74
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "view is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    instance-of v0, p1, Landroid/app/Notification;

    if-eqz v0, :cond_1

    .line 76
    const-string v0, "EffectViewNotification"

    const-string v1, "setView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    check-cast p1, Landroid/app/Notification;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/audio/htcsoundfx/view/EffectViewNotification;->setNotification(Landroid/app/Notification;)V

    .line 79
    :cond_1
    return-void
.end method

.method public show()V
    .locals 6

    .prologue
    .line 98
    iget-object v1, p0, Lcom/android/server/audio/htcsoundfx/view/EffectViewNotification;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 99
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/audio/htcsoundfx/view/EffectViewNotification;->mVisiable:Z

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 104
    :goto_0
    return-void

    .line 100
    :cond_0
    const-string v0, "EffectViewNotification"

    const-string v2, "show"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/view/EffectViewNotification;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/audio/htcsoundfx/view/EffectViewNotification;->mNotification:Landroid/app/Notification;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/audio/htcsoundfx/view/EffectViewNotification;->mVisiable:Z

    .line 103
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
