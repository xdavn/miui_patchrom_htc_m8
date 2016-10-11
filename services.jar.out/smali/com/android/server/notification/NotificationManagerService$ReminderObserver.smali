.class Lcom/android/server/notification/NotificationManagerService$ReminderObserver;
.super Landroid/database/ContentObserver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReminderObserver"
.end annotation


# static fields
.field static final DEFAULT_ENABLED:Z = false

.field static final DEFAULT_FREQUENCY:J = 0x3a98L

.field static final KEY_ENABLED:Ljava/lang/String; = "htc_accessibility_notification_reminder_enabled"

.field static final KEY_ENABLED_LIST:Ljava/lang/String; = "htc_notification_reminder_list"

.field static final KEY_FREQUENCY:Ljava/lang/String; = "htc_accessibility_notification_reminder_frequency"


# instance fields
.field private mComponentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private registered:Z

.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Handler;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 3983
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$ReminderObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 3984
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 3980
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$ReminderObserver;->mComponentList:Ljava/util/ArrayList;

    .line 3981
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$ReminderObserver;->registered:Z

    .line 3985
    return-void
.end method

.method private updateReminderAppList()V
    .locals 10

    .prologue
    .line 4038
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$ReminderObserver;->mComponentList:Ljava/util/ArrayList;

    if-nez v7, :cond_0

    .line 4069
    :goto_0
    return-void

    .line 4041
    :cond_0
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$ReminderObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v7}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "htc_notification_reminder_list"

    const/4 v9, -0x2

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 4045
    .local v0, "apps":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$ReminderObserver;->mComponentList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 4046
    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 4047
    :cond_1
    const-string v7, "NotificationService"

    const-string v8, "reminderLst:null content to parse format"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4053
    :cond_2
    :try_start_0
    const-string v7, "\\["

    const-string v8, ""

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "\\]"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 4055
    .local v3, "components":[Ljava/lang/String;
    if-eqz v3, :cond_3

    array-length v7, v3

    if-nez v7, :cond_5

    .line 4056
    :cond_3
    const-string v7, "NotificationService"

    const-string v8, "reminderLst:post-process with null content"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4064
    .end local v3    # "components":[Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 4065
    .local v4, "ex":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 4066
    const-string v7, "NotificationService"

    const-string v8, "reminder component parse exception"

    invoke-static {v7, v8, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4068
    .end local v4    # "ex":Ljava/lang/Exception;
    :cond_4
    const-string v7, "NotificationService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "reminderLst:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4060
    .restart local v3    # "components":[Ljava/lang/String;
    :cond_5
    :try_start_1
    new-instance v7, Ljava/util/ArrayList;

    array-length v8, v3

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Lcom/android/server/notification/NotificationManagerService$ReminderObserver;->mComponentList:Ljava/util/ArrayList;

    .line 4061
    move-object v1, v3

    .local v1, "arr$":[Ljava/lang/String;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_4

    aget-object v2, v1, v5

    .line 4062
    .local v2, "cmp":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$ReminderObserver;->mComponentList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 4061
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method


# virtual methods
.method public isPackageEnabled(Ljava/lang/String;)Z
    .locals 7
    .param p1, "component"    # Ljava/lang/String;

    .prologue
    .line 4073
    sget-boolean v4, Lcom/android/server/notification/NotificationManagerService;->is10brand:Z

    if-nez v4, :cond_0

    .line 4074
    const/4 v1, 0x1

    .line 4094
    :goto_0
    return v1

    .line 4076
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4077
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 4081
    :cond_2
    const/4 v1, 0x1

    .line 4082
    .local v1, "enabled":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":false"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4084
    .local v3, "searchCmp":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$ReminderObserver;->mComponentList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4085
    .local v0, "cmp":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_3

    .line 4088
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4089
    const/4 v1, 0x0

    .line 4093
    .end local v0    # "cmp":Ljava/lang/String;
    :cond_4
    const-string v4, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reminder("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onChange(Z)V
    .locals 9
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v4, -0x1

    const/4 v8, 0x0

    .line 3989
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$ReminderObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 3990
    .local v2, "resolver":Landroid/content/ContentResolver;
    iget-boolean v3, p0, Lcom/android/server/notification/NotificationManagerService$ReminderObserver;->registered:Z

    if-nez v3, :cond_0

    .line 3991
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$ReminderObserver;->registered:Z

    .line 3992
    const-string v3, "htc_accessibility_notification_reminder_enabled"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v8, p0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 3995
    const-string v3, "htc_accessibility_notification_reminder_frequency"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v8, p0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 3999
    sget-boolean v3, Lcom/android/server/notification/NotificationManagerService;->is10brand:Z

    if-eqz v3, :cond_0

    .line 4000
    const-string v3, "htc_notification_reminder_list"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v8, p0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 4007
    :cond_0
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$ReminderObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-string v4, "htc_accessibility_notification_reminder_enabled"

    const/4 v5, 0x3

    invoke-static {v2, v4, v8, v5}, Lcom/android/internal/util/SettingsUtil;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    move-result v4

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mReminderEnable:Z
    invoke-static {v3, v4}, Lcom/android/server/notification/NotificationManagerService;->access$302(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 4010
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$ReminderObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-string v4, "htc_accessibility_notification_reminder_frequency"

    const-wide/16 v6, 0x3a98

    invoke-static {v2, v4, v6, v7}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mReminderFrequency:J
    invoke-static {v3, v4, v5}, Lcom/android/server/notification/NotificationManagerService;->access$7602(Lcom/android/server/notification/NotificationManagerService;J)J

    .line 4013
    sget-boolean v3, Lcom/android/server/notification/NotificationManagerService;->is10brand:Z

    if-eqz v3, :cond_1

    .line 4014
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService$ReminderObserver;->updateReminderAppList()V

    .line 4016
    :cond_1
    const-string v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reminder(enable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$ReminderObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mReminderEnable:Z
    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " period="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$ReminderObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mReminderFrequency:J
    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->access$7600(Lcom/android/server/notification/NotificationManagerService;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " post="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$ReminderObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mReminderAlarmPost:Z
    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->access$2200(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4020
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$ReminderObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mReminderEnable:Z
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 4021
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$ReminderObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->updateReminderAlarm(Z)V
    invoke-static {v3, v8}, Lcom/android/server/notification/NotificationManagerService;->access$2500(Lcom/android/server/notification/NotificationManagerService;Z)V

    .line 4035
    :cond_2
    :goto_0
    return-void

    .line 4024
    :cond_3
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$ReminderObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mReminderLedRecord:Lcom/android/server/notification/NotificationRecord;
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$2300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v1

    .line 4025
    .local v1, "record":Lcom/android/server/notification/NotificationRecord;
    if-eqz v1, :cond_4

    sget-boolean v3, Lcom/android/server/notification/NotificationManagerService;->is10brand:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$ReminderObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mReminderObserver:Lcom/android/server/notification/NotificationManagerService$ReminderObserver;
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$2400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$ReminderObserver;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/notification/NotificationManagerService$ReminderObserver;->isPackageEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 4028
    .local v0, "packageEnable":Z
    :cond_4
    sget-boolean v3, Lcom/android/server/notification/NotificationManagerService;->is10brand:Z

    if-eqz v3, :cond_5

    .line 4029
    const-string v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reminder(package="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4031
    :cond_5
    if-nez v0, :cond_2

    .line 4032
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$ReminderObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->updateReminderAlarm(Z)V
    invoke-static {v3, v8}, Lcom/android/server/notification/NotificationManagerService;->access$2500(Lcom/android/server/notification/NotificationManagerService;Z)V

    goto :goto_0
.end method
