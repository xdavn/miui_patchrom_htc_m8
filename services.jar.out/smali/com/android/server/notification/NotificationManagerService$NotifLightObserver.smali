.class Lcom/android/server/notification/NotificationManagerService$NotifLightObserver;
.super Landroid/database/ContentObserver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotifLightObserver"
.end annotation


# static fields
.field static final ALWAYS:I = 0x0

.field static final DEFAULT:I = 0x0

.field static final KEY:Ljava/lang/String; = "htc_notification_light_behavior"


# instance fields
.field registered:Z

.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Handler;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 3933
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$NotifLightObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 3934
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 3931
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$NotifLightObserver;->registered:Z

    .line 3935
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3939
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotifLightObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3940
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-boolean v1, p0, Lcom/android/server/notification/NotificationManagerService$NotifLightObserver;->registered:Z

    if-nez v1, :cond_0

    .line 3941
    iput-boolean v2, p0, Lcom/android/server/notification/NotificationManagerService$NotifLightObserver;->registered:Z

    .line 3942
    const-string v1, "htc_notification_light_behavior"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, p0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 3948
    :cond_0
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$NotifLightObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-string v1, "htc_notification_light_behavior"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    # setter for: Lcom/android/server/notification/NotificationManagerService;->mNotificationPulseAlways:Z
    invoke-static {v4, v1}, Lcom/android/server/notification/NotificationManagerService;->access$7502(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 3950
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotifLightObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mNotificationPulseAlways:Z
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$7500(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_1
    invoke-static {v2}, Lcom/android/server/EventLogTags;->writeNotificationLightOptionChanged(I)V

    .line 3951
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotifLightObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$1200(Lcom/android/server/notification/NotificationManagerService;)V

    .line 3952
    return-void

    :cond_1
    move v1, v3

    .line 3948
    goto :goto_0

    :cond_2
    move v2, v3

    .line 3950
    goto :goto_1
.end method
