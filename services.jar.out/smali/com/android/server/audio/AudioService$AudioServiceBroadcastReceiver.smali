.class Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioServiceBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method private constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 0

    .prologue
    .line 5505
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/audio/AudioService;
    .param p2, "x1"    # Lcom/android/server/audio/AudioService$1;

    .prologue
    .line 5505
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;-><init>(Lcom/android/server/audio/AudioService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 30
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 5508
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v16

    .line 5513
    .local v16, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.DOCK_EVENT"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5514
    const-string v2, "android.intent.extra.DOCK_STATE"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    .line 5517
    .local v21, "dockState":I
    packed-switch v21, :pswitch_data_0

    .line 5532
    const/16 v20, 0x0

    .line 5536
    .local v20, "config":I
    :goto_0
    const/4 v2, 0x3

    move/from16 v0, v21

    if-eq v0, v2, :cond_1

    if-nez v21, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mDockState:I
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$8700(Lcom/android/server/audio/AudioService;)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 5539
    :cond_0
    const/4 v2, 0x3

    move/from16 v0, v20

    invoke-static {v2, v0}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 5541
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    move/from16 v0, v21

    # setter for: Lcom/android/server/audio/AudioService;->mDockState:I
    invoke-static {v2, v0}, Lcom/android/server/audio/AudioService;->access$8702(Lcom/android/server/audio/AudioService;I)I

    .line 5669
    .end local v20    # "config":I
    .end local v21    # "dockState":I
    :cond_2
    :goto_1
    return-void

    .line 5519
    .restart local v21    # "dockState":I
    :pswitch_0
    const/16 v20, 0x7

    .line 5520
    .restart local v20    # "config":I
    goto :goto_0

    .line 5522
    .end local v20    # "config":I
    :pswitch_1
    const/16 v20, 0x6

    .line 5523
    .restart local v20    # "config":I
    goto :goto_0

    .line 5525
    .end local v20    # "config":I
    :pswitch_2
    const/16 v20, 0x8

    .line 5526
    .restart local v20    # "config":I
    goto :goto_0

    .line 5528
    .end local v20    # "config":I
    :pswitch_3
    const/16 v20, 0x9

    .line 5529
    .restart local v20    # "config":I
    goto :goto_0

    .line 5542
    .end local v20    # "config":I
    .end local v21    # "dockState":I
    :cond_3
    const-string v2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 5543
    const-string v2, "android.bluetooth.profile.extra.STATE"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v27

    .line 5545
    .local v27, "state":I
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v18

    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    .line 5547
    .local v18, "btDevice":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v2, v0, v1}, Lcom/android/server/audio/AudioService;->setBtScoDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_1

    .line 5548
    .end local v18    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v27    # "state":I
    :cond_4
    const-string v2, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 5549
    const/16 v17, 0x0

    .line 5550
    .local v17, "broadcast":Z
    const/16 v26, -0x1

    .line 5551
    .local v26, "scoAudioState":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$2500(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v3

    monitor-enter v3

    .line 5552
    :try_start_0
    const-string v2, "android.bluetooth.profile.extra.STATE"

    const/4 v4, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    .line 5554
    .local v19, "btState":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$2500(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;)I

    move-result v2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;)I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;)I

    move-result v2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_6

    .line 5558
    :cond_5
    const/16 v17, 0x1

    .line 5560
    :cond_6
    packed-switch v19, :pswitch_data_1

    .line 5582
    :cond_7
    :goto_2
    const/16 v17, 0x0

    .line 5585
    :cond_8
    :goto_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5586
    if-eqz v17, :cond_2

    .line 5587
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    move/from16 v0, v26

    # invokes: Lcom/android/server/audio/AudioService;->broadcastScoConnectionState(I)V
    invoke-static {v2, v0}, Lcom/android/server/audio/AudioService;->access$2700(Lcom/android/server/audio/AudioService;I)V

    .line 5590
    new-instance v24, Landroid/content/Intent;

    const-string v2, "android.media.SCO_AUDIO_STATE_CHANGED"

    move-object/from16 v0, v24

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5591
    .local v24, "newIntent":Landroid/content/Intent;
    const-string v2, "android.media.extra.SCO_AUDIO_STATE"

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5592
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, v24

    # invokes: Lcom/android/server/audio/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V
    invoke-static {v2, v0}, Lcom/android/server/audio/AudioService;->access$7500(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 5562
    .end local v24    # "newIntent":Landroid/content/Intent;
    :pswitch_4
    const/16 v26, 0x1

    .line 5563
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;)I

    move-result v2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;)I

    move-result v2

    const/4 v4, 0x5

    if-eq v2, v4, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;)I

    move-result v2

    const/4 v4, 0x4

    if-eq v2, v4, :cond_8

    .line 5566
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v4, 0x2

    # setter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v2, v4}, Lcom/android/server/audio/AudioService;->access$2802(Lcom/android/server/audio/AudioService;I)I

    goto :goto_3

    .line 5585
    .end local v19    # "btState":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 5570
    .restart local v19    # "btState":I
    :pswitch_5
    const/16 v26, 0x0

    .line 5571
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v2, v4}, Lcom/android/server/audio/AudioService;->access$2802(Lcom/android/server/audio/AudioService;I)I

    .line 5572
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/android/server/audio/AudioService;->clearAllScoClients(IZ)V

    goto :goto_3

    .line 5575
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;)I

    move-result v2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;)I

    move-result v2

    const/4 v4, 0x5

    if-eq v2, v4, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;)I

    move-result v2

    const/4 v4, 0x4

    if-eq v2, v4, :cond_7

    .line 5578
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v4, 0x2

    # setter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v2, v4}, Lcom/android/server/audio/AudioService;->access$2802(Lcom/android/server/audio/AudioService;I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    .line 5594
    .end local v17    # "broadcast":Z
    .end local v19    # "btState":I
    .end local v26    # "scoAudioState":I
    :cond_9
    const-string v2, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 5595
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mMonitorRotation:Z
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$8800(Lcom/android/server/audio/AudioService;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 5596
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mOrientationListener:Lcom/android/server/audio/AudioService$AudioOrientationEventListener;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$8900(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioOrientationEventListener;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioService$AudioOrientationEventListener;->onOrientationChanged(I)V

    .line 5597
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mOrientationListener:Lcom/android/server/audio/AudioService$AudioOrientationEventListener;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$8900(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioOrientationEventListener;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$AudioOrientationEventListener;->enable()V

    .line 5599
    :cond_a
    const-string v2, "screen_state=on"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_1

    .line 5600
    :cond_b
    const-string v2, "android.intent.action.SCREEN_OFF"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 5601
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mMonitorRotation:Z
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$8800(Lcom/android/server/audio/AudioService;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 5603
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mOrientationListener:Lcom/android/server/audio/AudioService$AudioOrientationEventListener;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$8900(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioOrientationEventListener;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$AudioOrientationEventListener;->disable()V

    .line 5605
    :cond_c
    const-string v2, "screen_state=off"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_1

    .line 5606
    :cond_d
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 5607
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/audio/AudioService;->handleConfigurationChanged(Landroid/content/Context;)V
    invoke-static {v2, v0}, Lcom/android/server/audio/AudioService;->access$9000(Lcom/android/server/audio/AudioService;Landroid/content/Context;)V

    goto/16 :goto_1

    .line 5608
    :cond_e
    const-string v2, "android.intent.action.USER_SWITCHED"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 5610
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v2

    const/16 v3, 0xf

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    # invokes: Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5618
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$9100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/audio/MediaFocusControl;->discardAudioFocusOwner()V

    .line 5621
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x1

    # invokes: Lcom/android/server/audio/AudioService;->readAudioSettings(Z)V
    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->access$9200(Lcom/android/server/audio/AudioService;Z)V

    .line 5623
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v2

    const/16 v3, 0xa

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-static {v7}, Lcom/android/server/audio/AudioService;->access$5700(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v7

    const/4 v9, 0x3

    aget-object v7, v7, v9

    const/4 v8, 0x0

    # invokes: Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto/16 :goto_1

    .line 5629
    :cond_f
    const-string v2, "android.intent.action.USER_BACKGROUND"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 5631
    const-string v2, "android.intent.extra.user_handle"

    const/4 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v28

    .line 5632
    .local v28, "userId":I
    if-ltz v28, :cond_10

    .line 5634
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    move/from16 v0, v28

    invoke-virtual {v2, v0}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v29

    .line 5635
    .local v29, "userInfo":Landroid/content/pm/UserInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, v29

    # invokes: Lcom/android/server/audio/AudioService;->killBackgroundUserProcessesWithRecordAudioPermission(Landroid/content/pm/UserInfo;)V
    invoke-static {v2, v0}, Lcom/android/server/audio/AudioService;->access$9300(Lcom/android/server/audio/AudioService;Landroid/content/pm/UserInfo;)V

    .line 5637
    .end local v29    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_10
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    const-string v3, "no_record_audio"

    const/4 v4, 0x1

    move/from16 v0, v28

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/server/pm/UserManagerService;->setSystemControlledUserRestriction(Ljava/lang/String;ZI)V

    goto/16 :goto_1

    .line 5639
    .end local v28    # "userId":I
    :cond_11
    const-string v2, "android.intent.action.USER_FOREGROUND"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 5641
    const-string v2, "android.intent.extra.user_handle"

    const/4 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v28

    .line 5642
    .restart local v28    # "userId":I
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    const-string v3, "no_record_audio"

    const/4 v4, 0x0

    move/from16 v0, v28

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/server/pm/UserManagerService;->setSystemControlledUserRestriction(Ljava/lang/String;ZI)V

    goto/16 :goto_1

    .line 5646
    .end local v28    # "userId":I
    :cond_12
    const-string v2, "com.htc.intent.action.EFFECT_ICON_NOTIFICATION"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 5650
    const-string v2, "NotificationOn"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v25

    .line 5651
    .local v25, "notificationOn":Z
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Receive Effect NOTIFICATION from Native AudioTrack!!! notificationOn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5653
    if-eqz v25, :cond_13

    const/4 v8, 0x0

    .line 5654
    .local v8, "delay":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mHtcBeatsEffect:Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$9400(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v8}, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;->sendMsg(IIIILjava/lang/Object;I)V

    goto/16 :goto_1

    .line 5653
    .end local v8    # "delay":I
    :cond_13
    const/16 v8, 0x3e8

    goto :goto_4

    .line 5656
    .end local v25    # "notificationOn":Z
    :cond_14
    const-string v2, "com.htc.intent.action.SURROUNDSOUND_SETTINGS"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 5657
    const-string v2, "effect_enable"

    const/4 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    .line 5658
    .local v22, "enable":I
    const-string v2, "effect_name"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v23

    .line 5659
    .local v23, "name":I
    const/4 v2, -0x1

    move/from16 v0, v22

    if-eq v0, v2, :cond_2

    .line 5660
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "intent ACTION_SURROUNDSOUND_SETTINGS, KEY_EFFECT_NAME="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " KEY_EFFECT_ENABLE="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5661
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mHtcBeatsEffect:Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$9400(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;

    move-result-object v2

    move/from16 v0, v23

    move/from16 v1, v22

    invoke-interface {v2, v0, v1}, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;->setSystemProperty(II)V

    goto/16 :goto_1

    .line 5663
    .end local v22    # "enable":I
    .end local v23    # "name":I
    :cond_15
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5664
    const-string v2, "AudioService"

    const-string v3, "intent ACTION_LOCALE_CHANGED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5665
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mHtcBeatsEffect:Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$9400(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface/range {v9 .. v15}, Lcom/android/server/audio/htcsoundfx/HtcEffectManagerInterface;->sendMsg(IIIILjava/lang/Object;I)V

    goto/16 :goto_1

    .line 5517
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 5560
    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_5
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method
