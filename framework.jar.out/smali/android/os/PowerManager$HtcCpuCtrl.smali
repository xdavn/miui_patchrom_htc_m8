.class public final Landroid/os/PowerManager$HtcCpuCtrl;
.super Ljava/lang/Object;
.source "PowerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "HtcCpuCtrl"
.end annotation


# instance fields
.field mAcquirerPost:Ljava/lang/Runnable;

.field private mCount:I

.field private final mFlags:I

.field private mHeld:Z

.field private mLevel:I

.field private final mPackageName:Ljava/lang/String;

.field private mRefCounted:Z

.field private mReleaseFlag:I

.field private final mReleaser:Ljava/lang/Runnable;

.field mReleaserPost:Ljava/lang/Runnable;

.field private final mTag:Ljava/lang/String;

.field private final mToken:Landroid/os/IBinder;

.field private mWorkSource:Landroid/os/WorkSource;

.field final synthetic this$0:Landroid/os/PowerManager;


# direct methods
.method constructor <init>(Landroid/os/PowerManager;IILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "flags"    # I
    .param p3, "level"    # I
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1490
    iput-object p1, p0, Landroid/os/PowerManager$HtcCpuCtrl;->this$0:Landroid/os/PowerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1453
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mRefCounted:Z

    .line 1459
    new-instance v0, Landroid/os/PowerManager$HtcCpuCtrl$1;

    invoke-direct {v0, p0}, Landroid/os/PowerManager$HtcCpuCtrl$1;-><init>(Landroid/os/PowerManager$HtcCpuCtrl;)V

    iput-object v0, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mReleaser:Ljava/lang/Runnable;

    .line 1475
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mReleaseFlag:I

    .line 1477
    new-instance v0, Landroid/os/PowerManager$HtcCpuCtrl$2;

    invoke-direct {v0, p0}, Landroid/os/PowerManager$HtcCpuCtrl$2;-><init>(Landroid/os/PowerManager$HtcCpuCtrl;)V

    iput-object v0, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mAcquirerPost:Ljava/lang/Runnable;

    .line 1483
    new-instance v0, Landroid/os/PowerManager$HtcCpuCtrl$3;

    invoke-direct {v0, p0}, Landroid/os/PowerManager$HtcCpuCtrl$3;-><init>(Landroid/os/PowerManager$HtcCpuCtrl;)V

    iput-object v0, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mReleaserPost:Ljava/lang/Runnable;

    .line 1491
    iput p2, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mFlags:I

    .line 1492
    iput-object p4, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mTag:Ljava/lang/String;

    .line 1493
    iput-object p5, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mPackageName:Ljava/lang/String;

    .line 1494
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mToken:Landroid/os/IBinder;

    .line 1495
    iput p3, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mLevel:I

    .line 1496
    return-void
.end method

.method static synthetic access$100(Landroid/os/PowerManager$HtcCpuCtrl;)Landroid/os/IBinder;
    .locals 1
    .param p0, "x0"    # Landroid/os/PowerManager$HtcCpuCtrl;

    .prologue
    .line 1447
    iget-object v0, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$200(Landroid/os/PowerManager$HtcCpuCtrl;)V
    .locals 0
    .param p0, "x0"    # Landroid/os/PowerManager$HtcCpuCtrl;

    .prologue
    .line 1447
    invoke-direct {p0}, Landroid/os/PowerManager$HtcCpuCtrl;->acquirerPost()V

    return-void
.end method

.method static synthetic access$300(Landroid/os/PowerManager$HtcCpuCtrl;)V
    .locals 0
    .param p0, "x0"    # Landroid/os/PowerManager$HtcCpuCtrl;

    .prologue
    .line 1447
    invoke-direct {p0}, Landroid/os/PowerManager$HtcCpuCtrl;->releaserPost()V

    return-void
.end method

.method private acquireLevelLocked(I)V
    .locals 2
    .param p1, "level"    # I

    .prologue
    .line 1526
    iget-boolean v0, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mRefCounted:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mCount:I

    if-nez v0, :cond_2

    .line 1527
    :cond_0
    iget-object v0, p0, Landroid/os/PowerManager$HtcCpuCtrl;->this$0:Landroid/os/PowerManager;

    iget-object v0, v0, Landroid/os/PowerManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mReleaser:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1530
    # getter for: Landroid/os/PowerManager;->DEBUG_ON:Z
    invoke-static {}, Landroid/os/PowerManager;->access$400()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1531
    const-string v0, "PowerManager"

    const-string/jumbo v1, "post acquire"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    :cond_1
    const-string v0, "acquire"

    # invokes: Landroid/os/PowerManager;->checkHandlerThread(Ljava/lang/String;)V
    invoke-static {v0}, Landroid/os/PowerManager;->access$500(Ljava/lang/String;)V

    .line 1535
    # getter for: Landroid/os/PowerManager;->mPostHandler:Landroid/os/Handler;
    invoke-static {}, Landroid/os/PowerManager;->access$600()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mAcquirerPost:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1538
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mHeld:Z

    .line 1540
    :cond_2
    return-void
.end method

.method private acquirerPost()V
    .locals 9

    .prologue
    .line 1618
    # getter for: Landroid/os/PowerManager;->DEBUG_ON:Z
    invoke-static {}, Landroid/os/PowerManager;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1619
    const-string v0, "PowerManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A run ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mToken:Landroid/os/IBinder;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mFlags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    :cond_0
    iget-object v8, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mToken:Landroid/os/IBinder;

    monitor-enter v8

    .line 1623
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager$HtcCpuCtrl;->this$0:Landroid/os/PowerManager;

    iget-object v0, v0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    iget v1, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mFlags:I

    iget-object v2, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mTag:Ljava/lang/String;

    iget-object v4, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mWorkSource:Landroid/os/WorkSource;

    iget v5, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mLevel:I

    iget-object v6, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mPackageName:Ljava/lang/String;

    invoke-interface/range {v0 .. v6}, Landroid/os/IPowerManager;->acquireHtcCpuCtrl(ILandroid/os/IBinder;Ljava/lang/String;Landroid/os/WorkSource;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1627
    :goto_0
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1628
    # getter for: Landroid/os/PowerManager;->DEBUG_ON:Z
    invoke-static {}, Landroid/os/PowerManager;->access$400()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1629
    const-string v0, "PowerManager"

    const-string v1, "A run E"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    :cond_1
    return-void

    .line 1624
    :catch_0
    move-exception v7

    .line 1625
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v0, "PowerManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acquirerPost [RemoteException]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1627
    .end local v7    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private releaserPost()V
    .locals 5

    .prologue
    .line 1634
    # getter for: Landroid/os/PowerManager;->DEBUG_ON:Z
    invoke-static {}, Landroid/os/PowerManager;->access$400()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1635
    const-string v1, "PowerManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "R run ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mToken:Landroid/os/IBinder;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mReleaseFlag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    :cond_0
    iget-object v2, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mToken:Landroid/os/IBinder;

    monitor-enter v2

    .line 1640
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager$HtcCpuCtrl;->this$0:Landroid/os/PowerManager;

    iget-object v1, v1, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    iget-object v3, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mToken:Landroid/os/IBinder;

    iget v4, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mReleaseFlag:I

    invoke-interface {v1, v3, v4}, Landroid/os/IPowerManager;->releaseHtcCpuCtrl(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1644
    :goto_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1645
    # getter for: Landroid/os/PowerManager;->DEBUG_ON:Z
    invoke-static {}, Landroid/os/PowerManager;->access$400()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1646
    const-string v1, "PowerManager"

    const-string v2, "R run E"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    :cond_1
    return-void

    .line 1641
    :catch_0
    move-exception v0

    .line 1642
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v1, "PowerManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "releaserPost [RemoteException]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1644
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public acquire()V
    .locals 3

    .prologue
    .line 1501
    # getter for: Landroid/os/PowerManager;->DEBUG_ON:Z
    invoke-static {}, Landroid/os/PowerManager;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1502
    const-string v0, "PowerManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acquire("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mToken:Landroid/os/IBinder;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    :cond_0
    iget-object v1, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mToken:Landroid/os/IBinder;

    monitor-enter v1

    .line 1507
    :try_start_0
    iget v0, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mLevel:I

    invoke-direct {p0, v0}, Landroid/os/PowerManager$HtcCpuCtrl;->acquireLevelLocked(I)V

    .line 1508
    monitor-exit v1

    .line 1509
    return-void

    .line 1508
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public acquire(J)V
    .locals 3
    .param p1, "timeout"    # J

    .prologue
    .line 1514
    # getter for: Landroid/os/PowerManager;->DEBUG_ON:Z
    invoke-static {}, Landroid/os/PowerManager;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1515
    const-string v0, "PowerManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acquire("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mToken:Landroid/os/IBinder;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    :cond_0
    iget-object v1, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mToken:Landroid/os/IBinder;

    monitor-enter v1

    .line 1520
    :try_start_0
    iget v0, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mLevel:I

    invoke-direct {p0, v0}, Landroid/os/PowerManager$HtcCpuCtrl;->acquireLevelLocked(I)V

    .line 1521
    iget-object v0, p0, Landroid/os/PowerManager$HtcCpuCtrl;->this$0:Landroid/os/PowerManager;

    iget-object v0, v0, Landroid/os/PowerManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mReleaser:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1522
    monitor-exit v1

    .line 1523
    return-void

    .line 1522
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1598
    # getter for: Landroid/os/PowerManager;->DEBUG_ON:Z
    invoke-static {}, Landroid/os/PowerManager;->access$400()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1599
    const-string v1, "PowerManager"

    const-string v2, "CpuCtrl finalize"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    :cond_0
    iget-object v2, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mToken:Landroid/os/IBinder;

    monitor-enter v2

    .line 1603
    :try_start_0
    iget-boolean v1, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mHeld:Z

    if-eqz v1, :cond_1

    .line 1604
    const-string v1, "PowerManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HtcCpuCtrl finalized while still held: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1607
    :try_start_1
    iget-object v1, p0, Landroid/os/PowerManager$HtcCpuCtrl;->this$0:Landroid/os/PowerManager;

    iget-object v1, v1, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    iget-object v3, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mToken:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/os/IPowerManager;->releaseHtcCpuCtrl(Landroid/os/IBinder;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1613
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 1615
    return-void

    .line 1608
    :catch_0
    move-exception v0

    .line 1609
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PowerManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finalize [RemoteException]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1613
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public isHeld()Z
    .locals 4

    .prologue
    .line 1587
    iget-object v1, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mToken:Landroid/os/IBinder;

    monitor-enter v1

    .line 1588
    :try_start_0
    # getter for: Landroid/os/PowerManager;->DEBUG_ON:Z
    invoke-static {}, Landroid/os/PowerManager;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1589
    const-string v0, "PowerManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isHeld="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mHeld:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    :cond_0
    iget-boolean v0, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mHeld:Z

    monitor-exit v1

    return v0

    .line 1593
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 1554
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/PowerManager$HtcCpuCtrl;->release(I)V

    .line 1555
    return-void
.end method

.method public release(I)V
    .locals 4
    .param p1, "flags"    # I

    .prologue
    .line 1558
    # getter for: Landroid/os/PowerManager;->DEBUG_ON:Z
    invoke-static {}, Landroid/os/PowerManager;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1559
    const-string v0, "PowerManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "release ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mToken:Landroid/os/IBinder;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

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

    .line 1562
    :cond_0
    iget-object v1, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mToken:Landroid/os/IBinder;

    monitor-enter v1

    .line 1563
    :try_start_0
    iget-boolean v0, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mRefCounted:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mCount:I

    if-nez v0, :cond_3

    .line 1564
    :cond_1
    iget-object v0, p0, Landroid/os/PowerManager$HtcCpuCtrl;->this$0:Landroid/os/PowerManager;

    iget-object v0, v0, Landroid/os/PowerManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mReleaser:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1565
    iget-boolean v0, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mHeld:Z

    if-eqz v0, :cond_3

    .line 1568
    # getter for: Landroid/os/PowerManager;->DEBUG_ON:Z
    invoke-static {}, Landroid/os/PowerManager;->access$400()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1569
    const-string v0, "PowerManager"

    const-string/jumbo v2, "post release"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1572
    :cond_2
    iput p1, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mReleaseFlag:I

    .line 1573
    const-string/jumbo v0, "release"

    # invokes: Landroid/os/PowerManager;->checkHandlerThread(Ljava/lang/String;)V
    invoke-static {v0}, Landroid/os/PowerManager;->access$500(Ljava/lang/String;)V

    .line 1574
    # getter for: Landroid/os/PowerManager;->mPostHandler:Landroid/os/Handler;
    invoke-static {}, Landroid/os/PowerManager;->access$600()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mReleaserPost:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1577
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mHeld:Z

    .line 1580
    :cond_3
    iget v0, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mCount:I

    if-gez v0, :cond_4

    .line 1581
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WakeLock under-locked "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1583
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1584
    return-void
.end method

.method public setReferenceCounted(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    .line 1544
    # getter for: Landroid/os/PowerManager;->DEBUG_ON:Z
    invoke-static {}, Landroid/os/PowerManager;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1545
    const-string v0, "PowerManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    :cond_0
    iget-object v1, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mToken:Landroid/os/IBinder;

    monitor-enter v1

    .line 1549
    :try_start_0
    iput-boolean p1, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mRefCounted:Z

    .line 1550
    monitor-exit v1

    .line 1551
    return-void

    .line 1550
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
