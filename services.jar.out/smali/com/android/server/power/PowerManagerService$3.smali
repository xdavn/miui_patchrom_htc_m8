.class Lcom/android/server/power/PowerManagerService$3;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mDisplayState:I

.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 1

    .prologue
    .line 2942
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2943
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/PowerManagerService$3;->mDisplayState:I

    return-void
.end method


# virtual methods
.method public acquireSuspendBlocker()V
    .locals 1

    .prologue
    .line 3019
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$2400(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 3020
    return-void
.end method

.method public nativeAcquireCpuMode(I)V
    .locals 3
    .param p1, "modeId"    # I

    .prologue
    .line 3048
    # getter for: Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->access$1100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3049
    const-string v0, "PMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Acquire CM ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3051
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->nativeAcquireCpuMode(I)V
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->access$2600(I)V

    .line 3052
    # getter for: Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->access$1100()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3053
    const-string v0, "PMS"

    const-string v1, "Acquire CM end"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3055
    :cond_1
    return-void
.end method

.method public onDimAnimationEnd()V
    .locals 5

    .prologue
    const/16 v4, 0xd

    .line 3061
    # getter for: Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->access$1100()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3062
    const-string v1, "PMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDimAnimationEnd, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/server/power/PowerManagerService;->mDimAnimationCompleted:Z
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->access$2700()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3065
    :cond_0
    # getter for: Lcom/android/server/power/PowerManagerService;->mDimAnimationCompleted:Z
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->access$2700()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3066
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$2800(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeMessages(I)V

    .line 3067
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$2800(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 3068
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$2800(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3070
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    return-void
.end method

.method public onDisplayStateChange(I)V
    .locals 6
    .param p1, "state"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2981
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$900(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2982
    :try_start_0
    # getter for: Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->access$1100()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2983
    const-string v3, "PMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDisplayStateChange to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2985
    :cond_0
    iget v3, p0, Lcom/android/server/power/PowerManagerService$3;->mDisplayState:I

    if-eq v3, p1, :cond_2

    .line 2986
    iput p1, p0, Lcom/android/server/power/PowerManagerService$3;->mDisplayState:I

    .line 2987
    if-ne p1, v0, :cond_3

    .line 2989
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/power/PowerManagerService;->mIsActualScreenOn:Z
    invoke-static {v3, v4}, Lcom/android/server/power/PowerManagerService;->access$1802(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 2991
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$1900(Lcom/android/server/power/PowerManagerService;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2992
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v4, 0x0

    # invokes: Lcom/android/server/power/PowerManagerService;->setHalInteractiveModeLocked(Z)V
    invoke-static {v3, v4}, Lcom/android/server/power/PowerManagerService;->access$2000(Lcom/android/server/power/PowerManagerService;Z)V

    .line 2994
    :cond_1
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$2100(Lcom/android/server/power/PowerManagerService;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2995
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v4, 0x1

    # invokes: Lcom/android/server/power/PowerManagerService;->setHalAutoSuspendModeLocked(Z)V
    invoke-static {v3, v4}, Lcom/android/server/power/PowerManagerService;->access$2200(Lcom/android/server/power/PowerManagerService;Z)V

    .line 3009
    :cond_2
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3011
    if-eq p1, v0, :cond_5

    .line 3012
    .local v0, "enable":Z
    :goto_1
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->screenStateNotifier(Z)V
    invoke-static {v1, v0}, Lcom/android/server/power/PowerManagerService;->access$2300(Lcom/android/server/power/PowerManagerService;Z)V

    .line 3015
    return-void

    .line 2999
    .end local v0    # "enable":Z
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v4, 0x1

    # setter for: Lcom/android/server/power/PowerManagerService;->mIsActualScreenOn:Z
    invoke-static {v3, v4}, Lcom/android/server/power/PowerManagerService;->access$1802(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 3001
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$2100(Lcom/android/server/power/PowerManagerService;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 3002
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v4, 0x0

    # invokes: Lcom/android/server/power/PowerManagerService;->setHalAutoSuspendModeLocked(Z)V
    invoke-static {v3, v4}, Lcom/android/server/power/PowerManagerService;->access$2200(Lcom/android/server/power/PowerManagerService;Z)V

    .line 3004
    :cond_4
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$1900(Lcom/android/server/power/PowerManagerService;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 3005
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v4, 0x1

    # invokes: Lcom/android/server/power/PowerManagerService;->setHalInteractiveModeLocked(Z)V
    invoke-static {v3, v4}, Lcom/android/server/power/PowerManagerService;->access$2000(Lcom/android/server/power/PowerManagerService;Z)V

    goto :goto_0

    .line 3009
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_5
    move v0, v1

    .line 3011
    goto :goto_1
.end method

.method public onProximityNegative()V
    .locals 8

    .prologue
    .line 2964
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$900(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 2965
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z
    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->access$1502(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 2966
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    const/16 v1, 0x200

    # |= operator for: Lcom/android/server/power/PowerManagerService;->mDirty:I
    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->access$1376(Lcom/android/server/power/PowerManagerService;I)I

    .line 2967
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    # invokes: Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z
    invoke-static/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->access$1600(Lcom/android/server/power/PowerManagerService;JIII)Z

    .line 2970
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/power/PowerManagerService;->setForceScreenOnWhenNear(Z)V
    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->access$1700(Lcom/android/server/power/PowerManagerService;Z)V

    .line 2972
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1400(Lcom/android/server/power/PowerManagerService;)V

    .line 2973
    monitor-exit v7

    .line 2974
    return-void

    .line 2973
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onProximityPositive()V
    .locals 3

    .prologue
    .line 2955
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$900(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2956
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z
    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->access$1502(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 2957
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    const/16 v2, 0x200

    # |= operator for: Lcom/android/server/power/PowerManagerService;->mDirty:I
    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->access$1376(Lcom/android/server/power/PowerManagerService;I)I

    .line 2958
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1400(Lcom/android/server/power/PowerManagerService;)V

    .line 2959
    monitor-exit v1

    .line 2960
    return-void

    .line 2959
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onStateChanged()V
    .locals 3

    .prologue
    .line 2947
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$900(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2948
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    const/16 v2, 0x8

    # |= operator for: Lcom/android/server/power/PowerManagerService;->mDirty:I
    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->access$1376(Lcom/android/server/power/PowerManagerService;I)I

    .line 2949
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1400(Lcom/android/server/power/PowerManagerService;)V

    .line 2950
    monitor-exit v1

    .line 2951
    return-void

    .line 2950
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public releaseSuspendBlocker()V
    .locals 1

    .prologue
    .line 3024
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$2400(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 3025
    return-void
.end method

.method public setScreenBrightnessMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 3037
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$900(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3038
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # setter for: Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I
    invoke-static {v0, p1}, Lcom/android/server/power/PowerManagerService;->access$2502(Lcom/android/server/power/PowerManagerService;I)I

    .line 3039
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    const/16 v2, 0x20

    # |= operator for: Lcom/android/server/power/PowerManagerService;->mDirty:I
    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->access$1376(Lcom/android/server/power/PowerManagerService;I)I

    .line 3040
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1400(Lcom/android/server/power/PowerManagerService;)V

    .line 3041
    monitor-exit v1

    .line 3042
    return-void

    .line 3041
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3029
    monitor-enter p0

    .line 3030
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/PowerManagerService$3;->mDisplayState:I

    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 3031
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
