.class Lcom/android/server/notification/NotificationManagerService$12;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationManagerService;->userSwitched(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    .prologue
    .line 4281
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 4284
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mNotifLightObserver:Lcom/android/server/notification/NotificationManagerService$NotifLightObserver;
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$7800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotifLightObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4285
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mNotifLightObserver:Lcom/android/server/notification/NotificationManagerService$NotifLightObserver;
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$7800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotifLightObserver;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService$NotifLightObserver;->onChange(Z)V

    .line 4287
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mReminderObserver:Lcom/android/server/notification/NotificationManagerService$ReminderObserver;
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$2400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$ReminderObserver;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4288
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mReminderObserver:Lcom/android/server/notification/NotificationManagerService$ReminderObserver;
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$2400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$ReminderObserver;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService$ReminderObserver;->onChange(Z)V

    .line 4290
    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mNotifDemoObserver:Lcom/android/server/notification/NotificationManagerService$NotifDemoObserver;
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$7900(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotifDemoObserver;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4291
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mNotifDemoObserver:Lcom/android/server/notification/NotificationManagerService$NotifDemoObserver;
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$7900(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotifDemoObserver;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService$NotifDemoObserver;->onChange(Z)V

    .line 4293
    :cond_2
    return-void
.end method
