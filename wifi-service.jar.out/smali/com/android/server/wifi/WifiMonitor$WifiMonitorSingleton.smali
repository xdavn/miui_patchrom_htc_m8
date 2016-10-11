.class Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;
.super Ljava/lang/Object;
.source "WifiMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WifiMonitorSingleton"
.end annotation


# static fields
.field private static final sInstance:Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;


# instance fields
.field private mConnected:Z

.field private final mIfaceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/WifiMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiNative:Lcom/android/server/wifi/WifiNative;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 668
    new-instance v0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;

    invoke-direct {v0}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;-><init>()V

    sput-object v0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->sInstance:Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 674
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 670
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mIfaceMap:Ljava/util/HashMap;

    .line 671
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mConnected:Z

    .line 675
    return-void
.end method

.method static synthetic access$000()Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;
    .locals 1

    .prologue
    .line 667
    sget-object v0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->sInstance:Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;

    .prologue
    .line 667
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mConnected:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 667
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->dispatchEvent(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized dispatchEvent(Ljava/lang/String;)Z
    .locals 13
    .param p1, "eventStr"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v12, -0x1

    const/4 v0, 0x0

    .line 772
    monitor-enter p0

    :try_start_0
    const-string v9, "IFNAME="

    invoke-virtual {p1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 773
    const/16 v9, 0x20

    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 774
    .local v7, "space":I
    if-eq v7, v12, :cond_2

    .line 775
    const/4 v9, 0x7

    invoke-virtual {p1, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 776
    .local v2, "iface":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mIfaceMap:Ljava/util/HashMap;

    invoke-virtual {v9, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "p2p-"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 780
    const-string v2, "p2p0"

    .line 782
    :cond_0
    add-int/lit8 v9, v7, 0x1

    invoke-virtual {p1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 797
    .end local v7    # "space":I
    :goto_0
    iget-object v9, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mIfaceMap:Ljava/util/HashMap;

    invoke-virtual {v9, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/WifiMonitor;

    .line 798
    .local v5, "m":Lcom/android/server/wifi/WifiMonitor;
    if-eqz v5, :cond_6

    .line 799
    # getter for: Lcom/android/server/wifi/WifiMonitor;->mMonitoring:Z
    invoke-static {v5}, Lcom/android/server/wifi/WifiMonitor;->access$200(Lcom/android/server/wifi/WifiMonitor;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 800
    # invokes: Lcom/android/server/wifi/WifiMonitor;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v5, p1, v2}, Lcom/android/server/wifi/WifiMonitor;->access$500(Lcom/android/server/wifi/WifiMonitor;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 801
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v8

    .line 849
    .end local v2    # "iface":Ljava/lang/String;
    .end local v5    # "m":Lcom/android/server/wifi/WifiMonitor;
    :cond_1
    :goto_1
    monitor-exit p0

    return v0

    .line 787
    .restart local v7    # "space":I
    :cond_2
    :try_start_1
    const-string v8, "WifiMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Dropping malformed event (unparsable iface): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 772
    .end local v7    # "space":I
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 792
    :cond_3
    :try_start_2
    const-string v2, "p2p0"

    .restart local v2    # "iface":Ljava/lang/String;
    goto :goto_0

    .line 807
    .restart local v5    # "m":Lcom/android/server/wifi/WifiMonitor;
    :cond_4
    # getter for: Lcom/android/server/wifi/WifiMonitor;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor;->access$300()Z

    move-result v9

    if-eqz v9, :cond_5

    const-string v9, "WifiMonitor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Dropping event because ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") is stopped"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    :cond_5
    const-string v9, "TERMINATING"

    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-eq v9, v12, :cond_1

    const-string v9, "connection closed"

    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-eq v9, v12, :cond_1

    move v0, v8

    .line 818
    goto :goto_1

    .line 824
    :cond_6
    # getter for: Lcom/android/server/wifi/WifiMonitor;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor;->access$300()Z

    move-result v8

    if-eqz v8, :cond_7

    const-string v8, "WifiMonitor"

    const-string v9, "Sending to all monitors because there\'s no matching iface"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    :cond_7
    const/4 v0, 0x0

    .line 826
    .local v0, "done":Z
    const/4 v3, 0x0

    .line 827
    .local v3, "isMonitoring":Z
    const/4 v4, 0x0

    .line 828
    .local v4, "isTerminating":Z
    const-string v8, "CTRL-EVENT-"

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    const-string v8, "TERMINATING"

    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 830
    const/4 v4, 0x1

    .line 832
    :cond_8
    iget-object v8, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mIfaceMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_9
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wifi/WifiMonitor;

    .line 833
    .local v6, "monitor":Lcom/android/server/wifi/WifiMonitor;
    # getter for: Lcom/android/server/wifi/WifiMonitor;->mMonitoring:Z
    invoke-static {v6}, Lcom/android/server/wifi/WifiMonitor;->access$200(Lcom/android/server/wifi/WifiMonitor;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 834
    const/4 v3, 0x1

    .line 835
    # invokes: Lcom/android/server/wifi/WifiMonitor;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v6, p1, v2}, Lcom/android/server/wifi/WifiMonitor;->access$500(Lcom/android/server/wifi/WifiMonitor;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 836
    const/4 v0, 0x1

    goto :goto_2

    .line 841
    .end local v6    # "monitor":Lcom/android/server/wifi/WifiMonitor;
    :cond_a
    if-nez v3, :cond_b

    if-eqz v4, :cond_b

    .line 842
    const/4 v0, 0x1

    .line 845
    :cond_b
    if-eqz v0, :cond_1

    .line 846
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mConnected:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method


# virtual methods
.method public declared-synchronized killSupplicant(Z)V
    .locals 7
    .param p1, "p2pSupported"    # Z

    .prologue
    .line 754
    monitor-enter p0

    :try_start_0
    const-string v4, "init.svc.wpa_supplicant"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 755
    .local v3, "suppState":Ljava/lang/String;
    if-nez v3, :cond_0

    const-string v3, "unknown"

    .line 756
    :cond_0
    const-string v4, "init.svc.p2p_supplicant"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 757
    .local v2, "p2pSuppState":Ljava/lang/String;
    if-nez v2, :cond_1

    const-string v2, "unknown"

    .line 759
    :cond_1
    const-string v4, "WifiMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "killSupplicant p2p"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " init.svc.wpa_supplicant="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " init.svc.p2p_supplicant="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    invoke-static {p1}, Lcom/android/server/wifi/WifiNative;->killSupplicant(Z)Z

    .line 763
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mConnected:Z

    .line 764
    iget-object v4, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mIfaceMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/WifiMonitor;

    .line 765
    .local v1, "m":Lcom/android/server/wifi/WifiMonitor;
    const/4 v4, 0x0

    # setter for: Lcom/android/server/wifi/WifiMonitor;->mMonitoring:Z
    invoke-static {v1, v4}, Lcom/android/server/wifi/WifiMonitor;->access$202(Lcom/android/server/wifi/WifiMonitor;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 754
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "m":Lcom/android/server/wifi/WifiMonitor;
    .end local v2    # "p2pSuppState":Ljava/lang/String;
    .end local v3    # "suppState":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 767
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "p2pSuppState":Ljava/lang/String;
    .restart local v3    # "suppState":Ljava/lang/String;
    :cond_2
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized registerInterfaceMonitor(Ljava/lang/String;Lcom/android/server/wifi/WifiMonitor;)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "m"    # Lcom/android/server/wifi/WifiMonitor;

    .prologue
    .line 735
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mIfaceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    iget-object v0, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    if-nez v0, :cond_0

    .line 737
    # getter for: Lcom/android/server/wifi/WifiMonitor;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {p2}, Lcom/android/server/wifi/WifiMonitor;->access$400(Lcom/android/server/wifi/WifiMonitor;)Lcom/android/server/wifi/WifiNative;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 739
    :cond_0
    monitor-exit p0

    return-void

    .line 735
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startMonitoring(Ljava/lang/String;)V
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 678
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mIfaceMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/WifiMonitor;

    .line 679
    .local v2, "m":Lcom/android/server/wifi/WifiMonitor;
    if-nez v2, :cond_0

    .line 680
    const-string v3, "WifiMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startMonitor called with unknown iface="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 718
    :goto_0
    monitor-exit p0

    return-void

    .line 690
    :cond_0
    :try_start_1
    const-string v3, "WifiMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startMonitoring("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") with mConnected = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mConnected:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with StateMachine: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v2}, Lcom/android/server/wifi/WifiMonitor;->access$100(Lcom/android/server/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    iget-boolean v3, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mConnected:Z

    if-eqz v3, :cond_1

    .line 693
    const/4 v3, 0x1

    # setter for: Lcom/android/server/wifi/WifiMonitor;->mMonitoring:Z
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiMonitor;->access$202(Lcom/android/server/wifi/WifiMonitor;Z)Z

    .line 694
    # getter for: Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v2}, Lcom/android/server/wifi/WifiMonitor;->access$100(Lcom/android/server/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v3

    const v4, 0x24001

    invoke-virtual {v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 678
    .end local v2    # "m":Lcom/android/server/wifi/WifiMonitor;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 696
    .restart local v2    # "m":Lcom/android/server/wifi/WifiMonitor;
    :cond_1
    :try_start_2
    # getter for: Lcom/android/server/wifi/WifiMonitor;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor;->access$300()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "WifiMonitor"

    const-string v4, "connecting to supplicant"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    :cond_2
    const/4 v0, 0x0

    .local v0, "connectTries":I
    move v1, v0

    .line 699
    .end local v0    # "connectTries":I
    .local v1, "connectTries":I
    :goto_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiNative;->connectToSupplicant()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 700
    const/4 v3, 0x1

    # setter for: Lcom/android/server/wifi/WifiMonitor;->mMonitoring:Z
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiMonitor;->access$202(Lcom/android/server/wifi/WifiMonitor;Z)Z

    .line 701
    # getter for: Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v2}, Lcom/android/server/wifi/WifiMonitor;->access$100(Lcom/android/server/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v3

    const v4, 0x24001

    invoke-virtual {v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 702
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mConnected:Z

    .line 703
    new-instance v3, Lcom/android/server/wifi/WifiMonitor$MonitorThread;

    iget-object v4, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-direct {v3, v4, p0}, Lcom/android/server/wifi/WifiMonitor$MonitorThread;-><init>(Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;)V

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiMonitor$MonitorThread;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 706
    :cond_3
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "connectTries":I
    .restart local v0    # "connectTries":I
    const/4 v3, 0x5

    if-ge v1, v3, :cond_4

    .line 708
    const-wide/16 v4, 0x3e8

    :try_start_3
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v1, v0

    .line 710
    .end local v0    # "connectTries":I
    .restart local v1    # "connectTries":I
    goto :goto_1

    .line 709
    .end local v1    # "connectTries":I
    .restart local v0    # "connectTries":I
    :catch_0
    move-exception v3

    move v1, v0

    .line 710
    .end local v0    # "connectTries":I
    .restart local v1    # "connectTries":I
    goto :goto_1

    .line 712
    .end local v1    # "connectTries":I
    .restart local v0    # "connectTries":I
    :cond_4
    :try_start_4
    # getter for: Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v2}, Lcom/android/server/wifi/WifiMonitor;->access$100(Lcom/android/server/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v3

    const v4, 0x24002

    invoke-virtual {v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 713
    const-string v3, "WifiMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startMonitoring("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") failed!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized stopMonitoring(Ljava/lang/String;)V
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 721
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mIfaceMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/WifiMonitor;

    .line 722
    .local v0, "m":Lcom/android/server/wifi/WifiMonitor;
    # getter for: Lcom/android/server/wifi/WifiMonitor;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor;->access$300()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "WifiMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopMonitoring("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v0}, Lcom/android/server/wifi/WifiMonitor;->access$100(Lcom/android/server/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    :cond_0
    const/4 v1, 0x0

    # setter for: Lcom/android/server/wifi/WifiMonitor;->mMonitoring:Z
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiMonitor;->access$202(Lcom/android/server/wifi/WifiMonitor;Z)Z

    .line 724
    # getter for: Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v0}, Lcom/android/server/wifi/WifiMonitor;->access$100(Lcom/android/server/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v1

    const v2, 0x24002

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 725
    monitor-exit p0

    return-void

    .line 721
    .end local v0    # "m":Lcom/android/server/wifi/WifiMonitor;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized stopSupplicant()V
    .locals 1

    .prologue
    .line 750
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->stopSupplicant()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 751
    monitor-exit p0

    return-void

    .line 750
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unregisterInterfaceMonitor(Ljava/lang/String;)V
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 745
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mIfaceMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/WifiMonitor;

    .line 746
    .local v0, "m":Lcom/android/server/wifi/WifiMonitor;
    # getter for: Lcom/android/server/wifi/WifiMonitor;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor;->access$300()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "WifiMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterInterface("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v0}, Lcom/android/server/wifi/WifiMonitor;->access$100(Lcom/android/server/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 747
    :cond_0
    monitor-exit p0

    return-void

    .line 745
    .end local v0    # "m":Lcom/android/server/wifi/WifiMonitor;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
