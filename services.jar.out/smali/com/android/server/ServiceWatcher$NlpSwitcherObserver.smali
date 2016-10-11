.class final Lcom/android/server/ServiceWatcher$NlpSwitcherObserver;
.super Ljava/lang/Object;
.source "ServiceWatcher.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ServiceWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "NlpSwitcherObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ServiceWatcher;


# direct methods
.method constructor <init>(Lcom/android/server/ServiceWatcher;)V
    .locals 0

    .prologue
    .line 518
    iput-object p1, p0, Lcom/android/server/ServiceWatcher$NlpSwitcherObserver;->this$0:Lcom/android/server/ServiceWatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private bindBestPackage(Z)V
    .locals 3
    .param p1, "bUnbind"    # Z

    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/server/ServiceWatcher$NlpSwitcherObserver;->this$0:Lcom/android/server/ServiceWatcher;

    # getter for: Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/ServiceWatcher;->access$000(Lcom/android/server/ServiceWatcher;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 548
    if-eqz p1, :cond_0

    .line 549
    :try_start_0
    const-string v0, "NlpSwitcher"

    const-string v2, "unbind++"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iget-object v0, p0, Lcom/android/server/ServiceWatcher$NlpSwitcherObserver;->this$0:Lcom/android/server/ServiceWatcher;

    # invokes: Lcom/android/server/ServiceWatcher;->unbindLocked()V
    invoke-static {v0}, Lcom/android/server/ServiceWatcher;->access$200(Lcom/android/server/ServiceWatcher;)V

    .line 551
    const-string v0, "NlpSwitcher"

    const-string v2, "unbind--"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/android/server/ServiceWatcher$NlpSwitcherObserver;->this$0:Lcom/android/server/ServiceWatcher;

    const/4 v2, 0x0

    # invokes: Lcom/android/server/ServiceWatcher;->bindBestPackageLocked(Ljava/lang/String;)Z
    invoke-static {v0, v2}, Lcom/android/server/ServiceWatcher;->access$300(Lcom/android/server/ServiceWatcher;Ljava/lang/String;)Z

    .line 554
    monitor-exit v1

    .line 555
    return-void

    .line 554
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 5
    .param p1, "observable"    # Ljava/util/Observable;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 521
    iget-object v2, p0, Lcom/android/server/ServiceWatcher$NlpSwitcherObserver;->this$0:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v2}, Lcom/android/server/ServiceWatcher;->getBestPackageName()Ljava/lang/String;

    move-result-object v1

    .line 522
    .local v1, "strCurrentPackageName":Ljava/lang/String;
    const-string v2, "NlpSwitcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Observer++, CurrentPackage="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    const/4 v0, -0x1

    .line 525
    .local v0, "nRunningMode":I
    if-eqz v1, :cond_0

    .line 526
    iget-object v2, p0, Lcom/android/server/ServiceWatcher$NlpSwitcherObserver;->this$0:Lcom/android/server/ServiceWatcher;

    # invokes: Lcom/android/server/ServiceWatcher;->isHtcNlp(Ljava/lang/String;)Z
    invoke-static {v2, v1}, Lcom/android/server/ServiceWatcher;->access$400(Lcom/android/server/ServiceWatcher;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 527
    sget v0, Lcom/android/server/ServiceWatcher$NlpSwitcher;->HTC_CHS_MODE:I

    .line 533
    :cond_0
    :goto_0
    const/4 v2, -0x1

    if-ne v2, v0, :cond_3

    .line 534
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/ServiceWatcher$NlpSwitcherObserver;->bindBestPackage(Z)V

    .line 543
    :cond_1
    :goto_1
    const-string v2, "NlpSwitcher"

    const-string v3, "Observer--"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    return-void

    .line 529
    :cond_2
    sget v0, Lcom/android/server/ServiceWatcher$NlpSwitcher;->DEFAULT_MODE:I

    goto :goto_0

    .line 536
    :cond_3
    const-string v2, "NlpSwitcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RunningMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " currentMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ServiceWatcher$NlpSwitcherObserver;->this$0:Lcom/android/server/ServiceWatcher;

    # getter for: Lcom/android/server/ServiceWatcher;->mNlpSwitcher:Lcom/android/server/ServiceWatcher$NlpSwitcher;
    invoke-static {v4}, Lcom/android/server/ServiceWatcher;->access$500(Lcom/android/server/ServiceWatcher;)Lcom/android/server/ServiceWatcher$NlpSwitcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/ServiceWatcher$NlpSwitcher;->getCurrentMode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object v2, p0, Lcom/android/server/ServiceWatcher$NlpSwitcherObserver;->this$0:Lcom/android/server/ServiceWatcher;

    # getter for: Lcom/android/server/ServiceWatcher;->mNlpSwitcher:Lcom/android/server/ServiceWatcher$NlpSwitcher;
    invoke-static {v2}, Lcom/android/server/ServiceWatcher;->access$500(Lcom/android/server/ServiceWatcher;)Lcom/android/server/ServiceWatcher$NlpSwitcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/ServiceWatcher$NlpSwitcher;->getCurrentMode()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 540
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/ServiceWatcher$NlpSwitcherObserver;->bindBestPackage(Z)V

    goto :goto_1
.end method
