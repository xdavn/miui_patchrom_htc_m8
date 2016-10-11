.class final Lcom/android/internal/os/BatteryStatsImpl$MyHandler;
.super Landroid/os/Handler;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/os/BatteryStatsImpl;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    .line 159
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 160
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 164
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    # getter for: Lcom/android/internal/os/BatteryStatsImpl;->mCallback:Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;
    invoke-static {v4}, Lcom/android/internal/os/BatteryStatsImpl;->access$000(Lcom/android/internal/os/BatteryStatsImpl;)Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;

    move-result-object v1

    .line 166
    .local v1, "cb":Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;
    # getter for: Lcom/android/internal/os/BatteryStatsImpl;->DEBUG_ON:Z
    invoke-static {}, Lcom/android/internal/os/BatteryStatsImpl;->access$100()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 167
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    # operator++ for: Lcom/android/internal/os/BatteryStatsImpl;->mCallbackCount:I
    invoke-static {v4}, Lcom/android/internal/os/BatteryStatsImpl;->access$208(Lcom/android/internal/os/BatteryStatsImpl;)I

    .line 169
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    # getter for: Lcom/android/internal/os/BatteryStatsImpl;->mCallbackCount:I
    invoke-static {v4}, Lcom/android/internal/os/BatteryStatsImpl;->access$200(Lcom/android/internal/os/BatteryStatsImpl;)I

    move-result v4

    const/16 v5, 0x32

    if-le v4, v5, :cond_0

    .line 170
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    # setter for: Lcom/android/internal/os/BatteryStatsImpl;->mCallbackCount:I
    invoke-static {v4, v3}, Lcom/android/internal/os/BatteryStatsImpl;->access$202(Lcom/android/internal/os/BatteryStatsImpl;I)I

    .line 171
    const-string v4, "BatteryStatsImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cb id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    if-nez v1, :cond_0

    .line 173
    const-string v4, "BatteryStatsImpl"

    const-string v5, "callback is null"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_0
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 205
    :cond_1
    :goto_0
    return-void

    .line 180
    :pswitch_0
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v4

    .line 181
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl;->updateCpuTimeLocked()V

    .line 182
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    if-eqz v1, :cond_1

    .line 184
    invoke-interface {v1}, Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;->batteryNeedsCpuUpdate()V

    goto :goto_0

    .line 182
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 188
    :pswitch_1
    if-eqz v1, :cond_1

    .line 189
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_2

    const/4 v3, 0x1

    :cond_2
    invoke-interface {v1, v3}, Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;->batteryPowerChanged(Z)V

    goto :goto_0

    .line 193
    :pswitch_2
    if-eqz v1, :cond_1

    .line 195
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v4

    .line 196
    :try_start_2
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-boolean v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mCharging:Z

    if-eqz v3, :cond_3

    const-string v0, "android.os.action.CHARGING"

    .line 198
    .local v0, "action":Ljava/lang/String;
    :goto_1
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 199
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 200
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x4000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 201
    invoke-interface {v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;->batterySendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 196
    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    :try_start_3
    const-string v0, "android.os.action.DISCHARGING"

    goto :goto_1

    .line 198
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 178
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
