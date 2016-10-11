.class Lcom/android/server/power/PowerManagerService$2;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/PowerManagerService;->updateLowPowerModeLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;

.field final synthetic val$lowPowerModeEnabled:Z


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;Z)V
    .locals 0

    .prologue
    .line 1009
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$2;->this$0:Lcom/android/server/power/PowerManagerService;

    iput-boolean p2, p0, Lcom/android/server/power/PowerManagerService$2;->val$lowPowerModeEnabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    .line 1012
    new-instance v5, Landroid/content/Intent;

    const-string v8, "android.os.action.POWER_SAVE_MODE_CHANGING"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "mode"

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService$2;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLowPowerModeEnabled:Z
    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->access$700(Lcom/android/server/power/PowerManagerService;)Z

    move-result v9

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    .line 1015
    .local v3, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService$2;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/power/PowerManagerService;->access$800(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1017
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService$2;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/power/PowerManagerService;->access$900(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 1018
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService$2;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLowPowerModeListeners:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/power/PowerManagerService;->access$1000(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1020
    .local v4, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/PowerManagerInternal$LowPowerModeListener;>;"
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1022
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 1024
    const-wide/16 v6, 0x0

    .line 1025
    .local v6, "startTimeMillis":J
    const-wide/16 v0, 0x0

    .line 1026
    .local v0, "duration":J
    # getter for: Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->access$1100()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1027
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1030
    :cond_0
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManagerInternal$LowPowerModeListener;

    iget-boolean v8, p0, Lcom/android/server/power/PowerManagerService$2;->val$lowPowerModeEnabled:Z

    invoke-interface {v5, v8}, Landroid/os/PowerManagerInternal$LowPowerModeListener;->onLowPowerModeChanged(Z)V

    .line 1032
    # getter for: Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->access$1100()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1033
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long v0, v8, v6

    .line 1034
    const-wide/16 v8, 0x1f4

    cmp-long v5, v0, v8

    if-lez v5, :cond_1

    .line 1035
    const-string v5, "PMS"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onLowPowerModeChanged duration: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , listeners = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1020
    .end local v0    # "duration":J
    .end local v2    # "i":I
    .end local v4    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/PowerManagerInternal$LowPowerModeListener;>;"
    .end local v6    # "startTimeMillis":J
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 1040
    .restart local v2    # "i":I
    .restart local v4    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/PowerManagerInternal$LowPowerModeListener;>;"
    :cond_2
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "intent":Landroid/content/Intent;
    const-string v5, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1041
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-virtual {v3, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1042
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService$2;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/power/PowerManagerService;->access$800(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1044
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService$2;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mHtcPowerSaver:Lcom/android/server/power/HtcPowerSaver;
    invoke-static {v5}, Lcom/android/server/power/PowerManagerService;->access$000(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/HtcPowerSaver;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 1045
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService$2;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mHtcPowerSaver:Lcom/android/server/power/HtcPowerSaver;
    invoke-static {v5}, Lcom/android/server/power/PowerManagerService;->access$000(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/HtcPowerSaver;

    move-result-object v5

    iget-object v8, p0, Lcom/android/server/power/PowerManagerService$2;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLowPowerModeEnabled:Z
    invoke-static {v8}, Lcom/android/server/power/PowerManagerService;->access$700(Lcom/android/server/power/PowerManagerService;)Z

    move-result v8

    invoke-virtual {v5, v8}, Lcom/android/server/power/HtcPowerSaver;->notifyGoogleLowPowerMode(Z)V

    .line 1048
    :cond_3
    return-void
.end method
