.class final Lcom/android/server/am/ActivityManagerService$MainHandler;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1683
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 1684
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1685
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 63
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1689
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 2120
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1691
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v54

    .line 1692
    .local v54, "resolver":Landroid/content/ContentResolver;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/content/res/Configuration;

    move-object/from16 v0, v54

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->putConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)Z

    goto :goto_0

    .line 1695
    .end local v54    # "resolver":Landroid/content/ContentResolver;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    .line 1696
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->performAppGcsIfAppropriateLocked()V

    .line 1697
    monitor-exit v8

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1700
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v4, :cond_1

    .line 1701
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x0

    iput-boolean v8, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 1702
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v8, 0xc

    invoke-virtual {v4, v8}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v45

    .line 1703
    .local v45, "nmsg":Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, v45

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1704
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const-wide/16 v8, 0x4e20

    move-object/from16 v0, v45

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1707
    .end local v45    # "nmsg":Landroid/os/Message;
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v4, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v8, v4}, Lcom/android/server/am/ActiveServices;->serviceTimeout(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_0

    .line 1710
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    .line 1711
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v37, v4, -0x1

    .local v37, "i":I
    :goto_1
    if-ltz v37, :cond_3

    .line 1712
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Lcom/android/server/am/ProcessRecord;

    .line 1713
    .local v52, "r":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v52

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_2

    .line 1715
    :try_start_2
    move-object/from16 v0, v52

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v4}, Landroid/app/IApplicationThread;->updateTimeZone()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1711
    :cond_2
    :goto_2
    add-int/lit8 v37, v37, -0x1

    goto :goto_1

    .line 1716
    :catch_0
    move-exception v33

    .line 1717
    .local v33, "ex":Landroid/os/RemoteException;
    :try_start_3
    const-string v4, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to update time zone for: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v52

    iget-object v10, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1721
    .end local v33    # "ex":Landroid/os/RemoteException;
    .end local v37    # "i":I
    .end local v52    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_1
    move-exception v4

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .restart local v37    # "i":I
    :cond_3
    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_0

    .line 1724
    .end local v37    # "i":I
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    .line 1725
    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v37, v4, -0x1

    .restart local v37    # "i":I
    :goto_3
    if-ltz v37, :cond_5

    .line 1726
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Lcom/android/server/am/ProcessRecord;

    .line 1727
    .restart local v52    # "r":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v52

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v4, :cond_4

    .line 1729
    :try_start_6
    move-object/from16 v0, v52

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v4}, Landroid/app/IApplicationThread;->clearDnsCache()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1725
    :cond_4
    :goto_4
    add-int/lit8 v37, v37, -0x1

    goto :goto_3

    .line 1730
    :catch_1
    move-exception v33

    .line 1731
    .restart local v33    # "ex":Landroid/os/RemoteException;
    :try_start_7
    const-string v4, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to clear dns cache for: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v52

    iget-object v10, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1735
    .end local v33    # "ex":Landroid/os/RemoteException;
    .end local v37    # "i":I
    .end local v52    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_2
    move-exception v4

    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v4

    .restart local v37    # "i":I
    :cond_5
    :try_start_8
    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto/16 :goto_0

    .line 1738
    .end local v37    # "i":I
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v51, v0

    check-cast v51, Landroid/net/ProxyInfo;

    .line 1739
    .local v51, "proxy":Landroid/net/ProxyInfo;
    const-string v36, ""

    .line 1740
    .local v36, "host":Ljava/lang/String;
    const-string v48, ""

    .line 1741
    .local v48, "port":Ljava/lang/String;
    const-string v34, ""

    .line 1742
    .local v34, "exclList":Ljava/lang/String;
    sget-object v47, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 1743
    .local v47, "pacFileUrl":Landroid/net/Uri;
    if-eqz v51, :cond_6

    .line 1744
    invoke-virtual/range {v51 .. v51}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v36

    .line 1745
    invoke-virtual/range {v51 .. v51}, Landroid/net/ProxyInfo;->getPort()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v48

    .line 1746
    invoke-virtual/range {v51 .. v51}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v34

    .line 1747
    invoke-virtual/range {v51 .. v51}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v47

    .line 1749
    :cond_6
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    .line 1750
    :try_start_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v37, v4, -0x1

    .restart local v37    # "i":I
    :goto_5
    if-ltz v37, :cond_8

    .line 1751
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Lcom/android/server/am/ProcessRecord;

    .line 1752
    .restart local v52    # "r":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v52

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-eqz v4, :cond_7

    .line 1754
    :try_start_a
    move-object/from16 v0, v52

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v36

    move-object/from16 v1, v48

    move-object/from16 v2, v34

    move-object/from16 v3, v47

    invoke-interface {v4, v0, v1, v2, v3}, Landroid/app/IApplicationThread;->setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 1750
    :cond_7
    :goto_6
    add-int/lit8 v37, v37, -0x1

    goto :goto_5

    .line 1755
    :catch_2
    move-exception v33

    .line 1756
    .restart local v33    # "ex":Landroid/os/RemoteException;
    :try_start_b
    const-string v4, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to update http proxy for: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v52

    iget-object v10, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1761
    .end local v33    # "ex":Landroid/os/RemoteException;
    .end local v37    # "i":I
    .end local v52    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_3
    move-exception v4

    monitor-exit v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v4

    .restart local v37    # "i":I
    :cond_8
    :try_start_c
    monitor-exit v8
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto/16 :goto_0

    .line 1764
    .end local v34    # "exclList":Ljava/lang/String;
    .end local v36    # "host":Ljava/lang/String;
    .end local v37    # "i":I
    .end local v47    # "pacFileUrl":Landroid/net/Uri;
    .end local v48    # "port":Ljava/lang/String;
    .end local v51    # "proxy":Landroid/net/ProxyInfo;
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v4, :cond_9

    .line 1765
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x0

    iput-boolean v8, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 1766
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v8, 0x14

    invoke-virtual {v4, v8}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v45

    .line 1767
    .restart local v45    # "nmsg":Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, v45

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1768
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const-wide/16 v8, 0x2710

    move-object/from16 v0, v45

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1771
    .end local v45    # "nmsg":Landroid/os/Message;
    :cond_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/server/am/ProcessRecord;

    .line 1772
    .local v27, "app":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    .line 1773
    :try_start_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v27

    # invokes: Lcom/android/server/am/ActivityManagerService;->processStartTimedOutLocked(Lcom/android/server/am/ProcessRecord;)V
    invoke-static {v4, v0}, Lcom/android/server/am/ActivityManagerService;->access$700(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;)V

    .line 1774
    monitor-exit v8

    goto/16 :goto_0

    :catchall_4
    move-exception v4

    monitor-exit v8
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    throw v4

    .line 1777
    .end local v27    # "app":Lcom/android/server/am/ProcessRecord;
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    .line 1778
    :try_start_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Lcom/android/server/am/ActivityStackSupervisor;->doPendingActivityLaunchesLocked(Z)V

    .line 1779
    monitor-exit v8

    goto/16 :goto_0

    :catchall_5
    move-exception v4

    monitor-exit v8
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    throw v4

    .line 1782
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v15

    .line 1783
    :try_start_f
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    .line 1784
    .local v6, "appid":I
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    const/4 v8, 0x1

    if-ne v4, v8, :cond_a

    const/4 v7, 0x1

    .line 1785
    .local v7, "restart":Z
    :goto_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Landroid/os/Bundle;

    .line 1786
    .local v28, "bundle":Landroid/os/Bundle;
    const-string v4, "pkg"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1787
    .local v5, "pkg":Ljava/lang/String;
    const-string v4, "reason"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1788
    .local v13, "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPackageStopReasons:Landroid/util/ArrayMap;

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v5, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1789
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    # invokes: Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z
    invoke-static/range {v4 .. v13}, Lcom/android/server/am/ActivityManagerService;->access$800(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;IZZZZZILjava/lang/String;)Z

    .line 1791
    monitor-exit v15

    goto/16 :goto_0

    .end local v5    # "pkg":Ljava/lang/String;
    .end local v6    # "appid":I
    .end local v7    # "restart":Z
    .end local v13    # "reason":Ljava/lang/String;
    .end local v28    # "bundle":Landroid/os/Bundle;
    :catchall_6
    move-exception v4

    monitor-exit v15
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    throw v4

    .line 1784
    .restart local v6    # "appid":I
    :cond_a
    const/4 v7, 0x0

    goto :goto_7

    .line 1794
    .end local v6    # "appid":I
    :pswitch_a
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/PendingIntentRecord;

    invoke-virtual {v4}, Lcom/android/server/am/PendingIntentRecord;->completeFinalize()V

    goto/16 :goto_0

    .line 1797
    :pswitch_b
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v38

    .line 1798
    .local v38, "inm":Landroid/app/INotificationManager;
    if-eqz v38, :cond_0

    .line 1802
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v55, v0

    check-cast v55, Lcom/android/server/am/ActivityRecord;

    .line 1803
    .local v55, "root":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v50, v0

    .line 1804
    .local v50, "process":Lcom/android/server/am/ProcessRecord;
    if-eqz v50, :cond_0

    .line 1809
    :try_start_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v50

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v30

    .line 1810
    .local v30, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v8, 0x1040373

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v4, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v57

    .line 1812
    .local v57, "text":Ljava/lang/String;
    new-instance v4, Landroid/app/Notification$Builder;

    move-object/from16 v0, v30

    invoke-direct {v4, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x1080642

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    const-wide/16 v8, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, v57

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v9, 0x1060059

    invoke-virtual {v8, v9}, Landroid/content/Context;->getColor(I)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, v57

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v9, 0x1040374

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v8, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/4 v15, 0x0

    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v16, v0

    const/high16 v17, 0x10000000

    const/16 v18, 0x0

    new-instance v19, Landroid/os/UserHandle;

    move-object/from16 v0, v55

    iget v8, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, v19

    invoke-direct {v0, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static/range {v14 .. v19}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10 .. :try_end_10} :catch_4

    move-result-object v19

    .line 1827
    .local v19, "notification":Landroid/app/Notification;
    const/4 v4, 0x1

    :try_start_11
    new-array v0, v4, [I

    move-object/from16 v20, v0

    .line 1828
    .local v20, "outId":[I
    const-string v15, "android"

    const-string v16, "android"

    const/16 v17, 0x0

    const v18, 0x1040373

    move-object/from16 v0, v55

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move/from16 v21, v0

    move-object/from16 v14, v38

    invoke-interface/range {v14 .. v21}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11 .. :try_end_11} :catch_4

    goto/16 :goto_0

    .line 1831
    .end local v20    # "outId":[I
    :catch_3
    move-exception v32

    .line 1832
    .local v32, "e":Ljava/lang/RuntimeException;
    :try_start_12
    const-string v4, "ActivityManager"

    const-string v8, "Error showing notification for heavy-weight app"

    move-object/from16 v0, v32

    invoke-static {v4, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_12} :catch_4

    goto/16 :goto_0

    .line 1836
    .end local v19    # "notification":Landroid/app/Notification;
    .end local v30    # "context":Landroid/content/Context;
    .end local v32    # "e":Ljava/lang/RuntimeException;
    .end local v57    # "text":Ljava/lang/String;
    :catch_4
    move-exception v32

    .line 1837
    .local v32, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "ActivityManager"

    const-string v8, "Unable to create context for heavy notification"

    move-object/from16 v0, v32

    invoke-static {v4, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1841
    .end local v32    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v38    # "inm":Landroid/app/INotificationManager;
    .end local v50    # "process":Lcom/android/server/am/ProcessRecord;
    .end local v55    # "root":Lcom/android/server/am/ActivityRecord;
    :pswitch_c
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v14

    .line 1842
    .local v14, "inm":Landroid/app/INotificationManager;
    if-eqz v14, :cond_0

    .line 1846
    :try_start_13
    const-string v4, "android"

    const/4 v8, 0x0

    const v9, 0x1040373

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v14, v4, v8, v9, v10}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_e

    goto/16 :goto_0

    .line 1848
    :catch_5
    move-exception v32

    .line 1849
    .local v32, "e":Ljava/lang/RuntimeException;
    const-string v4, "ActivityManager"

    const-string v8, "Error canceling notification for service"

    move-object/from16 v0, v32

    invoke-static {v4, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1855
    .end local v14    # "inm":Landroid/app/INotificationManager;
    .end local v32    # "e":Ljava/lang/RuntimeException;
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    .line 1856
    :try_start_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Lcom/android/server/am/ActivityManagerService;->checkExcessivePowerUsageLocked(Z)V

    .line 1857
    const/16 v4, 0x1b

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(I)V

    .line 1858
    const/16 v4, 0x1b

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v45

    .line 1859
    .restart local v45    # "nmsg":Landroid/os/Message;
    const-wide/32 v10, 0xdbba0

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1, v10, v11}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1860
    monitor-exit v8

    goto/16 :goto_0

    .end local v45    # "nmsg":Landroid/os/Message;
    :catchall_7
    move-exception v4

    monitor-exit v8
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    throw v4

    .line 1863
    :pswitch_e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Ljava/util/ArrayList;

    .line 1864
    .local v40, "memInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessMemInfo;>;"
    new-instance v58, Lcom/android/server/am/ActivityManagerService$MainHandler$1;

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler$1;-><init>(Lcom/android/server/am/ActivityManagerService$MainHandler;Ljava/util/ArrayList;)V

    .line 1869
    .local v58, "thread":Ljava/lang/Thread;
    invoke-virtual/range {v58 .. v58}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 1873
    .end local v40    # "memInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessMemInfo;>;"
    .end local v58    # "thread":Ljava/lang/Thread;
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/UserState;

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v8, v4, v9, v10}, Lcom/android/server/am/ActivityManagerService;->dispatchUserSwitch(Lcom/android/server/am/UserState;II)V

    goto/16 :goto_0

    .line 1877
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/UserState;

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v8, v4, v9, v10}, Lcom/android/server/am/ActivityManagerService;->continueUserSwitch(Lcom/android/server/am/UserState;II)V

    goto/16 :goto_0

    .line 1881
    :pswitch_11
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/UserState;

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v8, v4, v9, v10}, Lcom/android/server/am/ActivityManagerService;->timeoutUserSwitch(Lcom/android/server/am/UserState;II)V

    goto/16 :goto_0

    .line 1885
    :pswitch_12
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_b

    const/16 v44, 0x1

    .line 1886
    .local v44, "nextState":Z
    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v4}, Landroid/os/UpdateLock;->isHeld()Z

    move-result v4

    move/from16 v0, v44

    if-eq v4, v0, :cond_0

    .line 1890
    if-eqz v44, :cond_c

    .line 1891
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v4}, Landroid/os/UpdateLock;->acquire()V

    goto/16 :goto_0

    .line 1885
    .end local v44    # "nextState":Z
    :cond_b
    const/16 v44, 0x0

    goto :goto_8

    .line 1893
    .restart local v44    # "nextState":Z
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v4}, Landroid/os/UpdateLock;->release()V

    goto/16 :goto_0

    .line 1899
    .end local v44    # "nextState":Z
    :pswitch_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # invokes: Lcom/android/server/am/ActivityManagerService;->writeGrantedUriPermissions()V
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$900(Lcom/android/server/am/ActivityManagerService;)V

    goto/16 :goto_0

    .line 1903
    :pswitch_14
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    .line 1904
    :try_start_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const/4 v9, 0x1

    const/4 v12, 0x0

    invoke-virtual {v4, v10, v11, v9, v12}, Lcom/android/server/am/ActivityManagerService;->requestPssAllProcsLocked(JZZ)V

    .line 1905
    monitor-exit v8

    goto/16 :goto_0

    :catchall_8
    move-exception v4

    monitor-exit v8
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    throw v4

    .line 1909
    :pswitch_15
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    .line 1910
    :try_start_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->startProfilesLocked()V

    .line 1911
    monitor-exit v8

    goto/16 :goto_0

    :catchall_9
    move-exception v4

    monitor-exit v8
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    throw v4

    .line 1915
    :pswitch_16
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    .line 1916
    :try_start_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v37, v4, -0x1

    .restart local v37    # "i":I
    :goto_9
    if-ltz v37, :cond_f

    .line 1917
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Lcom/android/server/am/ProcessRecord;

    .line 1918
    .restart local v52    # "r":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v52

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_a

    if-eqz v4, :cond_d

    .line 1920
    :try_start_18
    move-object/from16 v0, v52

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    if-nez v4, :cond_e

    const/4 v4, 0x0

    :goto_a
    invoke-interface {v9, v4}, Landroid/app/IApplicationThread;->updateTimePrefs(Z)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_6
    .catchall {:try_start_18 .. :try_end_18} :catchall_a

    .line 1916
    :cond_d
    :goto_b
    add-int/lit8 v37, v37, -0x1

    goto :goto_9

    .line 1920
    :cond_e
    const/4 v4, 0x1

    goto :goto_a

    .line 1921
    :catch_6
    move-exception v33

    .line 1922
    .restart local v33    # "ex":Landroid/os/RemoteException;
    :try_start_19
    const-string v4, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to update preferences for: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v52

    iget-object v10, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 1926
    .end local v33    # "ex":Landroid/os/RemoteException;
    .end local v37    # "i":I
    .end local v52    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_a
    move-exception v4

    monitor-exit v8
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_a

    throw v4

    .restart local v37    # "i":I
    :cond_f
    :try_start_1a
    monitor-exit v8
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_a

    goto/16 :goto_0

    .line 1930
    .end local v37    # "i":I
    :pswitch_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    const v8, 0x8007

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v8, v9, v10}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    .line 1932
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v8}, Lcom/android/server/SystemServiceManager;->startUser(I)V

    goto/16 :goto_0

    .line 1936
    :pswitch_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    const/16 v8, 0x4008

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg2:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v4, v8, v9, v10}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    .line 1939
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    const v8, 0x8008

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v8, v9, v10}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    .line 1942
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v8}, Lcom/android/server/SystemServiceManager;->switchUser(I)V

    goto/16 :goto_0

    .line 1946
    :pswitch_19
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    .line 1947
    :try_start_1b
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    invoke-static {v4}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v52

    .line 1948
    .local v52, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v52, :cond_10

    move-object/from16 v0, v52

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_10

    move-object/from16 v0, v52

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_b

    if-eqz v4, :cond_10

    .line 1950
    :try_start_1c
    move-object/from16 v0, v52

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v52

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v4, v9}, Landroid/app/IApplicationThread;->scheduleEnterAnimationComplete(Landroid/os/IBinder;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1c} :catch_d
    .catchall {:try_start_1c .. :try_end_1c} :catchall_b

    .line 1954
    :cond_10
    :goto_c
    :try_start_1d
    monitor-exit v8

    goto/16 :goto_0

    .end local v52    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_b
    move-exception v4

    monitor-exit v8
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_b

    throw v4

    .line 1958
    :pswitch_1a
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_11

    .line 1959
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->finishBooting()V

    .line 1961
    :cond_11
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    if-eqz v4, :cond_0

    .line 1962
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->enableScreenAfterBoot()V

    goto/16 :goto_0

    .line 1968
    :pswitch_1b
    :try_start_1e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Ljava/util/Locale;

    .line 1969
    .local v39, "l":Ljava/util/Locale;
    const-string v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v56

    .line 1970
    .local v56, "service":Landroid/os/IBinder;
    invoke-static/range {v56 .. v56}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v41

    .line 1971
    .local v41, "mountService":Landroid/os/storage/IMountService;
    const-string v4, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Storing locale "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v39 .. v39}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " for decryption UI"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1972
    const-string v4, "SystemLocale"

    invoke-virtual/range {v39 .. v39}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v41

    invoke-interface {v0, v4, v8}, Landroid/os/storage/IMountService;->setField(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_1e} :catch_7

    goto/16 :goto_0

    .line 1973
    .end local v39    # "l":Ljava/util/Locale;
    .end local v41    # "mountService":Landroid/os/storage/IMountService;
    .end local v56    # "service":Landroid/os/IBinder;
    :catch_7
    move-exception v32

    .line 1974
    .local v32, "e":Landroid/os/RemoteException;
    const-string v4, "ActivityManager"

    const-string v8, "Error storing locale for decryption UI"

    move-object/from16 v0, v32

    invoke-static {v4, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1979
    .end local v32    # "e":Landroid/os/RemoteException;
    :pswitch_1c
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    .line 1980
    :try_start_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mTaskStackListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$1000(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_c

    move-result v37

    .line 1981
    .restart local v37    # "i":I
    :goto_d
    if-lez v37, :cond_12

    .line 1982
    add-int/lit8 v37, v37, -0x1

    .line 1985
    :try_start_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mTaskStackListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$1000(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    move/from16 v0, v37

    invoke-virtual {v4, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/app/ITaskStackListener;

    invoke-interface {v4}, Landroid/app/ITaskStackListener;->onTaskStackChanged()V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_20} :catch_8
    .catchall {:try_start_20 .. :try_end_20} :catchall_c

    goto :goto_d

    .line 1986
    :catch_8
    move-exception v4

    goto :goto_d

    .line 1990
    :cond_12
    :try_start_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mTaskStackListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$1000(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1991
    monitor-exit v8

    goto/16 :goto_0

    .end local v37    # "i":I
    :catchall_c
    move-exception v4

    monitor-exit v8
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_c

    throw v4

    .line 1995
    :pswitch_1d
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v60, v0

    .line 1996
    .local v60, "uid":I
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [B

    move-object/from16 v35, v4

    check-cast v35, [B

    .line 1998
    .local v35, "firstPacket":[B
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v8

    .line 1999
    const/16 v37, 0x0

    .restart local v37    # "i":I
    :goto_e
    :try_start_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    move/from16 v0, v37

    if-ge v0, v4, :cond_14

    .line 2000
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    move/from16 v0, v37

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/android/server/am/ProcessRecord;

    .line 2001
    .local v46, "p":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v46

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->uid:I
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_d

    move/from16 v0, v60

    if-ne v4, v0, :cond_13

    .line 2003
    :try_start_23
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v35

    invoke-interface {v4, v0}, Landroid/app/IApplicationThread;->notifyCleartextNetwork([B)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_23} :catch_c
    .catchall {:try_start_23 .. :try_end_23} :catchall_d

    .line 1999
    :cond_13
    :goto_f
    add-int/lit8 v37, v37, 0x1

    goto :goto_e

    .line 2008
    .end local v46    # "p":Lcom/android/server/am/ProcessRecord;
    :cond_14
    :try_start_24
    monitor-exit v8

    goto/16 :goto_0

    :catchall_d
    move-exception v4

    monitor-exit v8
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_d

    throw v4

    .line 2016
    .end local v35    # "firstPacket":[B
    .end local v37    # "i":I
    .end local v60    # "uid":I
    :pswitch_1e
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    .line 2017
    :try_start_25
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpProcName:Ljava/lang/String;

    move-object/from16 v49, v0

    .line 2018
    .local v49, "procName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget v0, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpUid:I

    move/from16 v60, v0

    .line 2019
    .restart local v60    # "uid":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v0, v49

    move/from16 v1, v60

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Landroid/util/Pair;

    .line 2020
    .local v62, "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    if-nez v62, :cond_15

    .line 2021
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    const/4 v9, 0x0

    move-object/from16 v0, v49

    invoke-virtual {v4, v0, v9}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v62

    .end local v62    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    check-cast v62, Landroid/util/Pair;

    .line 2023
    .restart local v62    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    :cond_15
    if-eqz v62, :cond_17

    .line 2024
    move-object/from16 v0, v62

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v42

    .line 2025
    .local v42, "memLimit":J
    move-object/from16 v0, v62

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v53, v0

    check-cast v53, Ljava/lang/String;

    .line 2030
    .local v53, "reportPackage":Ljava/lang/String;
    :goto_10
    monitor-exit v8
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_e

    .line 2031
    if-eqz v49, :cond_0

    .line 2038
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v14

    .line 2039
    .restart local v14    # "inm":Landroid/app/INotificationManager;
    if-eqz v14, :cond_0

    .line 2043
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v8, 0x104037b

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v49, v9, v10

    invoke-virtual {v4, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v57

    .line 2046
    .restart local v57    # "text":Ljava/lang/String;
    new-instance v31, Landroid/content/Intent;

    invoke-direct/range {v31 .. v31}, Landroid/content/Intent;-><init>()V

    .line 2047
    .local v31, "deleteIntent":Landroid/content/Intent;
    const-string v4, "com.android.server.am.DELETE_DUMPHEAP"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2048
    new-instance v23, Landroid/content/Intent;

    invoke-direct/range {v23 .. v23}, Landroid/content/Intent;-><init>()V

    .line 2049
    .local v23, "intent":Landroid/content/Intent;
    const-string v4, "android"

    const-class v8, Lcom/android/internal/app/DumpHeapActivity;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2050
    const-string v4, "process"

    move-object/from16 v0, v23

    move-object/from16 v1, v49

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2051
    const-string v4, "size"

    move-object/from16 v0, v23

    move-wide/from16 v1, v42

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2052
    if-eqz v53, :cond_16

    .line 2053
    const-string v4, "direct_launch"

    move-object/from16 v0, v23

    move-object/from16 v1, v53

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2055
    :cond_16
    invoke-static/range {v60 .. v60}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v61

    .line 2056
    .local v61, "userId":I
    new-instance v4, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x1080642

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    const-wide/16 v8, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, v57

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v9, 0x1060059

    invoke-virtual {v8, v9}, Landroid/content/Context;->getColor(I)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, v57

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v9, 0x104037c

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v8, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/high16 v24, 0x10000000

    const/16 v25, 0x0

    new-instance v26, Landroid/os/UserHandle;

    move-object/from16 v0, v26

    move/from16 v1, v61

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static/range {v21 .. v26}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    const/4 v10, 0x0

    sget-object v11, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object/from16 v0, v31

    invoke-static {v8, v9, v0, v10, v11}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v19

    .line 2075
    .restart local v19    # "notification":Landroid/app/Notification;
    const/4 v4, 0x1

    :try_start_26
    new-array v0, v4, [I

    move-object/from16 v20, v0

    .line 2076
    .restart local v20    # "outId":[I
    const-string v15, "android"

    const-string v16, "android"

    const/16 v17, 0x0

    const v18, 0x104037b

    move/from16 v21, v61

    invoke-interface/range {v14 .. v21}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V
    :try_end_26
    .catch Ljava/lang/RuntimeException; {:try_start_26 .. :try_end_26} :catch_9
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_26} :catch_b

    goto/16 :goto_0

    .line 2079
    .end local v20    # "outId":[I
    :catch_9
    move-exception v32

    .line 2080
    .local v32, "e":Ljava/lang/RuntimeException;
    const-string v4, "ActivityManager"

    const-string v8, "Error showing notification for dump heap"

    move-object/from16 v0, v32

    invoke-static {v4, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 2027
    .end local v14    # "inm":Landroid/app/INotificationManager;
    .end local v19    # "notification":Landroid/app/Notification;
    .end local v23    # "intent":Landroid/content/Intent;
    .end local v31    # "deleteIntent":Landroid/content/Intent;
    .end local v32    # "e":Ljava/lang/RuntimeException;
    .end local v42    # "memLimit":J
    .end local v53    # "reportPackage":Ljava/lang/String;
    .end local v57    # "text":Ljava/lang/String;
    .end local v61    # "userId":I
    :cond_17
    const-wide/16 v42, 0x0

    .line 2028
    .restart local v42    # "memLimit":J
    const/16 v53, 0x0

    .restart local v53    # "reportPackage":Ljava/lang/String;
    goto/16 :goto_10

    .line 2030
    .end local v42    # "memLimit":J
    .end local v49    # "procName":Ljava/lang/String;
    .end local v53    # "reportPackage":Ljava/lang/String;
    .end local v60    # "uid":I
    .end local v62    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    :catchall_e
    move-exception v4

    :try_start_27
    monitor-exit v8
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_e

    throw v4

    .line 2086
    :pswitch_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v8

    sget-object v9, Lcom/android/internal/app/DumpHeapActivity;->JAVA_URI:Landroid/net/Uri;

    const/4 v10, 0x3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    invoke-virtual {v4, v8, v9, v10, v11}, Lcom/android/server/am/ActivityManagerService;->revokeUriPermission(Landroid/app/IApplicationThread;Landroid/net/Uri;II)V

    .line 2091
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    .line 2092
    :try_start_28
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v9, 0x0

    iput-object v9, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpFile:Ljava/lang/String;

    .line 2093
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v9, 0x0

    iput-object v9, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpProcName:Ljava/lang/String;

    .line 2094
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v9, -0x1

    iput v9, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpPid:I

    .line 2095
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v9, -0x1

    iput v9, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpUid:I

    .line 2096
    monitor-exit v8

    goto/16 :goto_0

    :catchall_f
    move-exception v4

    monitor-exit v8
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_f

    throw v4

    .line 2099
    :pswitch_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v8}, Lcom/android/server/am/ActivityManagerService;->dispatchForegroundProfileChanged(I)V

    goto/16 :goto_0

    .line 2102
    :pswitch_21
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v59, v0

    check-cast v59, Lcom/android/server/am/AppTimeTracker;

    .line 2103
    .local v59, "tracker":Lcom/android/server/am/AppTimeTracker;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v59

    invoke-virtual {v0, v4}, Lcom/android/server/am/AppTimeTracker;->deliverResult(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 2106
    .end local v59    # "tracker":Lcom/android/server/am/AppTimeTracker;
    :pswitch_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v8}, Lcom/android/server/am/ActivityManagerService;->dispatchUserSwitchComplete(I)V

    goto/16 :goto_0

    .line 2109
    :pswitch_23
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Landroid/app/IUiAutomationConnection;

    .line 2111
    .local v29, "connection":Landroid/app/IUiAutomationConnection;
    :try_start_29
    invoke-interface/range {v29 .. v29}, Landroid/app/IUiAutomationConnection;->shutdown()V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_29} :catch_a

    .line 2117
    :goto_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x0

    # setter for: Lcom/android/server/am/ActivityManagerService;->mUserIsMonkey:Z
    invoke-static {v4, v8}, Lcom/android/server/am/ActivityManagerService;->access$1102(Lcom/android/server/am/ActivityManagerService;Z)Z

    goto/16 :goto_0

    .line 2112
    :catch_a
    move-exception v32

    .line 2113
    .local v32, "e":Landroid/os/RemoteException;
    const-string v4, "ActivityManager"

    const-string v8, "Error shutting down UiAutomationConnection"

    invoke-static {v4, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 2082
    .end local v29    # "connection":Landroid/app/IUiAutomationConnection;
    .end local v32    # "e":Landroid/os/RemoteException;
    .restart local v14    # "inm":Landroid/app/INotificationManager;
    .restart local v19    # "notification":Landroid/app/Notification;
    .restart local v23    # "intent":Landroid/content/Intent;
    .restart local v31    # "deleteIntent":Landroid/content/Intent;
    .restart local v42    # "memLimit":J
    .restart local v49    # "procName":Ljava/lang/String;
    .restart local v53    # "reportPackage":Ljava/lang/String;
    .restart local v57    # "text":Ljava/lang/String;
    .restart local v60    # "uid":I
    .restart local v61    # "userId":I
    .restart local v62    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    :catch_b
    move-exception v4

    goto/16 :goto_0

    .line 2004
    .end local v14    # "inm":Landroid/app/INotificationManager;
    .end local v19    # "notification":Landroid/app/Notification;
    .end local v23    # "intent":Landroid/content/Intent;
    .end local v31    # "deleteIntent":Landroid/content/Intent;
    .end local v42    # "memLimit":J
    .end local v49    # "procName":Ljava/lang/String;
    .end local v53    # "reportPackage":Ljava/lang/String;
    .end local v57    # "text":Ljava/lang/String;
    .end local v61    # "userId":I
    .end local v62    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    .restart local v35    # "firstPacket":[B
    .restart local v37    # "i":I
    .restart local v46    # "p":Lcom/android/server/am/ProcessRecord;
    :catch_c
    move-exception v4

    goto/16 :goto_f

    .line 1951
    .end local v35    # "firstPacket":[B
    .end local v37    # "i":I
    .end local v46    # "p":Lcom/android/server/am/ProcessRecord;
    .end local v60    # "uid":I
    .restart local v52    # "r":Lcom/android/server/am/ActivityRecord;
    :catch_d
    move-exception v4

    goto/16 :goto_c

    .line 1851
    .end local v52    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v14    # "inm":Landroid/app/INotificationManager;
    :catch_e
    move-exception v4

    goto/16 :goto_0

    .line 1834
    .end local v14    # "inm":Landroid/app/INotificationManager;
    .restart local v19    # "notification":Landroid/app/Notification;
    .restart local v30    # "context":Landroid/content/Context;
    .restart local v38    # "inm":Landroid/app/INotificationManager;
    .restart local v50    # "process":Lcom/android/server/am/ProcessRecord;
    .restart local v55    # "root":Lcom/android/server/am/ActivityRecord;
    .restart local v57    # "text":Ljava/lang/String;
    :catch_f
    move-exception v4

    goto/16 :goto_0

    .line 1689
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_d
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_0
        :pswitch_1b
        :pswitch_0
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_0
        :pswitch_21
        :pswitch_22
        :pswitch_23
    .end packed-switch
.end method
