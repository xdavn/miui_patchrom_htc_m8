.class Lcom/android/server/am/ActivityStackSupervisor$1;
.super Ljava/lang/Object;
.source "ActivityStackSupervisor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStackSupervisor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityStackSupervisor;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;)V
    .locals 0

    .prologue
    .line 4733
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor$1;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4735
    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->DEBUG_AM:Z

    if-eqz v0, :cond_0

    .line 4736
    const-string v0, "CpuWake"

    const-string v1, ">> cpu perf release"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4737
    :cond_0
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->nativeReleaseCpuPerfWakeLock()V

    .line 4738
    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->DEBUG_AM:Z

    if-eqz v0, :cond_1

    .line 4739
    const-string v0, "CpuWake"

    const-string v1, "<< cpu perf release"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4741
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$1;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mAdjustCpuRef:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_6

    .line 4742
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$1;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mCpuPerfNum:Landroid/os/PowerManager$HtcCpuCtrl;

    if-eqz v0, :cond_3

    .line 4743
    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->DEBUG_AM:Z

    if-eqz v0, :cond_2

    .line 4744
    const-string v0, "CpuWake"

    const-string v1, ">> cpu count release"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4745
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$1;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mCpuPerfNum:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->release()V

    .line 4746
    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->DEBUG_AM:Z

    if-eqz v0, :cond_3

    .line 4747
    const-string v0, "CpuWake"

    const-string v1, "<< cpu count release"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4749
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$1;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mCpuPerfFreq:Landroid/os/PowerManager$HtcCpuCtrl;

    if-eqz v0, :cond_5

    .line 4750
    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->DEBUG_AM:Z

    if-eqz v0, :cond_4

    .line 4751
    const-string v0, "CpuWake"

    const-string v1, ">> cpu freq release"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4752
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$1;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mCpuPerfFreq:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->release()V

    .line 4753
    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->DEBUG_AM:Z

    if-eqz v0, :cond_5

    .line 4754
    const-string v0, "CpuWake"

    const-string v1, "<< cpu freq release"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4756
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$1;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mAdjustCpuRef:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 4758
    :cond_6
    return-void
.end method
