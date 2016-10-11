.class Lcom/android/server/notification/NotificationManagerService$NotifDemoObserver;
.super Landroid/database/ContentObserver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotifDemoObserver"
.end annotation


# static fields
.field static final KEY:Ljava/lang/String; = "sysui_demo_allowed"


# instance fields
.field registered:Z

.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Handler;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 3879
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$NotifDemoObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 3880
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 3877
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$NotifDemoObserver;->registered:Z

    .line 3881
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3885
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotifDemoObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3886
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-boolean v3, p0, Lcom/android/server/notification/NotificationManagerService$NotifDemoObserver;->registered:Z

    if-nez v3, :cond_0

    .line 3887
    iput-boolean v1, p0, Lcom/android/server/notification/NotificationManagerService$NotifDemoObserver;->registered:Z

    .line 3888
    const-string v3, "sysui_demo_allowed"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v2, p0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 3891
    :cond_0
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotifDemoObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-string v4, "sysui_demo_allowed"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_2

    :goto_0
    # setter for: Lcom/android/server/notification/NotificationManagerService;->mNotificationDemo:Z
    invoke-static {v3, v1}, Lcom/android/server/notification/NotificationManagerService;->access$7302(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 3893
    const-string v1, "NotificationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setNotificationDemo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotifDemoObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mNotificationDemo:Z
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$7300(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3894
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotifDemoObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mNotificationDemo:Z
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$7300(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3895
    const-string v1, "sysui_demo_light_condition"

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotifDemoObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mLightCondition:I
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$7400(Lcom/android/server/notification/NotificationManagerService;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3897
    :cond_1
    return-void

    :cond_2
    move v1, v2

    .line 3891
    goto :goto_0
.end method
