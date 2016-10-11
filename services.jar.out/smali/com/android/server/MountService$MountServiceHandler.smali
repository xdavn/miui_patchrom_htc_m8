.class Lcom/android/server/MountService$MountServiceHandler;
.super Landroid/os/Handler;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MountServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method public constructor <init>(Lcom/android/server/MountService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 588
    iput-object p1, p0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    .line 589
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 590
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 22
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 594
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    .line 719
    :cond_0
    :goto_0
    return-void

    .line 596
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/MountService;->handleSystemReady()V
    invoke-static/range {v17 .. v17}, Lcom/android/server/MountService;->access$500(Lcom/android/server/MountService;)V

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;
    invoke-static/range {v17 .. v17}, Lcom/android/server/MountService;->access$600(Lcom/android/server/MountService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/pm/PackageManagerService;->handlePackageCleaning()V

    goto :goto_0

    .line 603
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/MountService;->handleDaemonConnected()V
    invoke-static/range {v17 .. v17}, Lcom/android/server/MountService;->access$700(Lcom/android/server/MountService;)V

    goto :goto_0

    .line 607
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/MountService;->isReady()Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/MountService;->access$800(Lcom/android/server/MountService;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 608
    const-string v17, "MountService"

    const-string v18, "fstrim requested, but no daemon connection yet; trying again"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    const/16 v17, 0x4

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/server/MountService$MountServiceHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v17

    const-wide/16 v18, 0x3e8

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/MountService$MountServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 614
    :cond_1
    const-string v17, "MountService"

    const-string v18, "Running fstrim idle maintenance"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v17, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    # setter for: Lcom/android/server/MountService;->mLastMaintenance:J
    invoke-static/range {v17 .. v19}, Lcom/android/server/MountService;->access$902(Lcom/android/server/MountService;J)J

    .line 619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/MountService;->mLastMaintenanceFile:Ljava/io/File;
    invoke-static/range {v17 .. v17}, Lcom/android/server/MountService;->access$1000(Lcom/android/server/MountService;)Ljava/io/File;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/MountService;->mLastMaintenance:J
    invoke-static/range {v18 .. v18}, Lcom/android/server/MountService;->access$900(Lcom/android/server/MountService;)J

    move-result-wide v18

    invoke-virtual/range {v17 .. v19}, Ljava/io/File;->setLastModified(J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 624
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/MountService;->shouldBenchmark()Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/MountService;->access$1100(Lcom/android/server/MountService;)Z

    move-result v13

    .line 628
    .local v13, "shouldBenchmark":Z
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static/range {v17 .. v17}, Lcom/android/server/MountService;->access$1200(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v18

    const-string v19, "fstrim"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    if-eqz v13, :cond_2

    const-string v17, "dotrimbench"

    :goto_2
    aput-object v17, v20, v21

    invoke-virtual/range {v18 .. v20}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_1

    .line 635
    :goto_3
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Runnable;

    .line 636
    .local v5, "callback":Ljava/lang/Runnable;
    if-eqz v5, :cond_0

    .line 637
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    .line 620
    .end local v5    # "callback":Ljava/lang/Runnable;
    .end local v13    # "shouldBenchmark":Z
    :catch_0
    move-exception v6

    .line 621
    .local v6, "e":Ljava/lang/Exception;
    const-string v17, "MountService"

    const-string v18, "Unable to record last fstrim!"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 628
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v13    # "shouldBenchmark":Z
    :cond_2
    :try_start_2
    const-string v17, "dotrim"
    :try_end_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 629
    :catch_1
    move-exception v10

    .line 630
    .local v10, "ndce":Lcom/android/server/NativeDaemonConnectorException;
    const-string v17, "MountService"

    const-string v18, "Failed to run fstrim!"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 642
    .end local v10    # "ndce":Lcom/android/server/NativeDaemonConnectorException;
    .end local v13    # "shouldBenchmark":Z
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/storage/IMountShutdownObserver;

    .line 643
    .local v11, "obs":Landroid/os/storage/IMountShutdownObserver;
    const/4 v14, 0x0

    .line 645
    .local v14, "success":Z
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static/range {v17 .. v17}, Lcom/android/server/MountService;->access$1200(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v17

    const-string v18, "volume"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "shutdown"

    aput-object v21, v19, v20

    invoke-virtual/range {v17 .. v19}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/NativeDaemonEvent;->isClassOk()Z
    :try_end_3
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_3 .. :try_end_3} :catch_4

    move-result v14

    .line 648
    :goto_4
    if-eqz v11, :cond_0

    .line 650
    if-eqz v14, :cond_3

    const/16 v17, 0x0

    :goto_5
    :try_start_4
    move/from16 v0, v17

    invoke-interface {v11, v0}, Landroid/os/storage/IMountShutdownObserver;->onShutDownComplete(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 651
    :catch_2
    move-exception v17

    goto/16 :goto_0

    .line 650
    :cond_3
    const/16 v17, -0x1

    goto :goto_5

    .line 657
    .end local v11    # "obs":Landroid/os/storage/IMountShutdownObserver;
    .end local v14    # "success":Z
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/storage/VolumeInfo;

    .line 658
    .local v16, "vol":Landroid/os/storage/VolumeInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    # invokes: Lcom/android/server/MountService;->isMountDisallowed(Landroid/os/storage/VolumeInfo;)Z
    invoke-static {v0, v1}, Lcom/android/server/MountService;->access$1300(Lcom/android/server/MountService;Landroid/os/storage/VolumeInfo;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 659
    const-string v17, "MountService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Ignoring mount "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " due to policy"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 662
    :cond_4
    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v17

    if-eqz v17, :cond_6

    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 663
    move-object/from16 v0, v16

    iget v0, v0, Landroid/os/storage/VolumeInfo;->state:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 665
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/MountService;->sdEncryptionEnabled()Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/MountService;->access$1400(Lcom/android/server/MountService;)Z

    move-result v17

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/MountService;->keystoreAvailable()Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/MountService;->access$1500(Lcom/android/server/MountService;)Z

    move-result v17

    if-nez v17, :cond_5

    .line 666
    const-string v17, "MountService"

    const-string v18, "SD encrypted, but keystore is not ready"

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 669
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/MountService;->isSdcardRestricted()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 674
    new-instance v8, Landroid/content/Intent;

    const-string v17, "android.settings.MEMORY_CARD_SETTINGS"

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 675
    .local v8, "in":Landroid/content/Intent;
    const/high16 v17, 0x10000000

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 676
    const-string v17, "SD_POLICY"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/MountService;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Lcom/android/server/MountService;->access$1600(Lcom/android/server/MountService;)Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 682
    .end local v8    # "in":Landroid/content/Intent;
    :cond_6
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/MountService;->sdEncryptionEnabled()Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/MountService;->access$1400(Lcom/android/server/MountService;)Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v17

    if-eqz v17, :cond_7

    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/MountService;->mKeyStore:Landroid/security/KeyStore;
    invoke-static/range {v17 .. v17}, Lcom/android/server/MountService;->access$1700(Lcom/android/server/MountService;)Landroid/security/KeyStore;

    move-result-object v17

    const-string v18, "sd_encryption_256"

    invoke-virtual/range {v17 .. v18}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/MountService;->keystoreAvailable()Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/MountService;->access$1500(Lcom/android/server/MountService;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 684
    new-instance v12, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/MountService;->mKeyStore:Landroid/security/KeyStore;
    invoke-static/range {v17 .. v17}, Lcom/android/server/MountService;->access$1700(Lcom/android/server/MountService;)Landroid/security/KeyStore;

    move-result-object v17

    const-string v18, "sd_encryption_256"

    invoke-virtual/range {v17 .. v18}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Ljava/lang/String;-><init>([B)V

    .line 685
    .local v12, "passphrase":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static/range {v17 .. v17}, Lcom/android/server/MountService;->access$1800(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v17

    const-string v18, "cryptfs"

    const/16 v19, 0x5

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "mount_encrypt"

    aput-object v21, v19, v20

    const/16 v20, 0x1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    move-object/from16 v21, v0

    aput-object v21, v19, v20

    const/16 v20, 0x2

    move-object/from16 v0, v16

    iget v0, v0, Landroid/os/storage/VolumeInfo;->mountFlags:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x3

    move-object/from16 v0, v16

    iget v0, v0, Landroid/os/storage/VolumeInfo;->mountUserId:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x4

    new-instance v21, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    move-object/from16 v0, v21

    invoke-direct {v0, v12}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v21, v19, v20

    invoke-virtual/range {v17 .. v19}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    goto/16 :goto_0

    .line 691
    .end local v12    # "passphrase":Ljava/lang/String;
    :catch_3
    move-exception v17

    goto/16 :goto_0

    .line 688
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static/range {v17 .. v17}, Lcom/android/server/MountService;->access$1200(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v17

    const-string v18, "volume"

    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "mount"

    aput-object v21, v19, v20

    const/16 v20, 0x1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    move-object/from16 v21, v0

    aput-object v21, v19, v20

    const/16 v20, 0x2

    move-object/from16 v0, v16

    iget v0, v0, Landroid/os/storage/VolumeInfo;->mountFlags:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x3

    move-object/from16 v0, v16

    iget v0, v0, Landroid/os/storage/VolumeInfo;->mountUserId:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-virtual/range {v17 .. v19}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_5
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_0

    .line 696
    .end local v16    # "vol":Landroid/os/storage/VolumeInfo;
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Landroid/os/storage/StorageVolume;

    .line 697
    .local v15, "userVol":Landroid/os/storage/StorageVolume;
    invoke-virtual {v15}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v7

    .line 698
    .local v7, "envState":Ljava/lang/String;
    const-string v17, "MountService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Volume "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v15}, Landroid/os/storage/StorageVolume;->getId()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " broadcasting "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " to "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v15}, Landroid/os/storage/StorageVolume;->getOwner()Landroid/os/UserHandle;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    invoke-static {v7}, Landroid/os/storage/VolumeInfo;->getBroadcastForEnvironment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 702
    .local v4, "action":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 703
    new-instance v9, Landroid/content/Intent;

    invoke-virtual {v15}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v9, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 705
    .local v9, "intent":Landroid/content/Intent;
    const-string v17, "storage_volume"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 706
    const/high16 v17, 0x4000000

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/MountService;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Lcom/android/server/MountService;->access$1600(Lcom/android/server/MountService;)Landroid/content/Context;

    move-result-object v17

    invoke-virtual {v15}, Landroid/os/storage/StorageVolume;->getOwner()Landroid/os/UserHandle;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v9, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 714
    .end local v4    # "action":Ljava/lang/String;
    .end local v7    # "envState":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v15    # "userVol":Landroid/os/storage/StorageVolume;
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/content/Intent;

    .line 715
    .restart local v9    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/MountService;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Lcom/android/server/MountService;->access$1600(Lcom/android/server/MountService;)Landroid/content/Context;

    move-result-object v17

    sget-object v18, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v19, "android.permission.WRITE_MEDIA_STORAGE"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v9, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 646
    .end local v9    # "intent":Landroid/content/Intent;
    .restart local v11    # "obs":Landroid/os/storage/IMountShutdownObserver;
    .restart local v14    # "success":Z
    :catch_4
    move-exception v17

    goto/16 :goto_4

    .line 594
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
