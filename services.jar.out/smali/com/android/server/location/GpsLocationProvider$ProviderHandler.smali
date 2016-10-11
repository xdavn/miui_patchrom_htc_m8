.class final Lcom/android/server/location/GpsLocationProvider$ProviderHandler;
.super Landroid/os/Handler;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ProviderHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/location/GpsLocationProvider;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2694
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    .line 2695
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 2696
    return-void
.end method

.method private initialize()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 2763
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->loadHtcConfig()V
    invoke-static {v8}, Lcom/android/server/location/GpsLocationProvider;->access$5300(Lcom/android/server/location/GpsLocationProvider;)V

    .line 2776
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/location/GpsLocationProvider;->access$600(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
    invoke-static {v9}, Lcom/android/server/location/GpsLocationProvider;->access$5400(Lcom/android/server/location/GpsLocationProvider;)Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 2781
    # invokes: Lcom/android/server/location/GpsLocationProvider;->native_is_agps_ril_supported()Z
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$5500()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2782
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 2783
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v8, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2784
    const-string v8, "sms"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2785
    const-string v8, "localhost"

    const-string v9, "7275"

    invoke-virtual {v1, v8, v9}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 2786
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/location/GpsLocationProvider;->access$600(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v9}, Lcom/android/server/location/GpsLocationProvider;->access$5600(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/BroadcastReceiver;

    move-result-object v9

    invoke-virtual {v8, v9, v1, v10, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2788
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 2789
    .restart local v1    # "intentFilter":Landroid/content/IntentFilter;
    const-string v8, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2791
    :try_start_0
    const-string v8, "application/vnd.omaloc-supl-init"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2795
    :goto_0
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/location/GpsLocationProvider;->access$600(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v9}, Lcom/android/server/location/GpsLocationProvider;->access$5600(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/BroadcastReceiver;

    move-result-object v9

    invoke-virtual {v8, v9, v1, v10, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2801
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    :goto_1
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 2802
    .restart local v1    # "intentFilter":Landroid/content/IntentFilter;
    const-string v8, "com.android.internal.location.ALARM_WAKEUP"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2803
    const-string v8, "com.android.internal.location.ALARM_TIMEOUT"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2804
    const-string v8, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2805
    const-string v8, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2806
    const-string v8, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2807
    const-string v8, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2808
    const-string v8, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2809
    const-string v8, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2811
    const-string v8, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2815
    const-string v8, "com.htc.location.XTRA_ALARM_TIMEOUT"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2817
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/location/GpsLocationProvider;->access$600(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v9}, Lcom/android/server/location/GpsLocationProvider;->access$5600(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/BroadcastReceiver;

    move-result-object v9

    invoke-virtual {v8, v9, v1, v10, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2820
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/location/GpsLocationProvider;->access$600(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v8

    const-string v9, "location"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    .line 2822
    .local v2, "locManager":Landroid/location/LocationManager;
    const-wide/16 v4, 0x0

    .line 2823
    .local v4, "minTime":J
    const/4 v3, 0x0

    .line 2824
    .local v3, "minDistance":F
    const/4 v6, 0x0

    .line 2825
    .local v6, "oneShot":Z
    const-string v8, "passive"

    invoke-static {v8, v4, v5, v3, v6}, Landroid/location/LocationRequest;->createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;

    move-result-object v7

    .line 2832
    .local v7, "request":Landroid/location/LocationRequest;
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/location/LocationRequest;->setHideFromAppOps(Z)V

    .line 2833
    new-instance v8, Lcom/android/server/location/GpsLocationProvider$NetworkLocationListener;

    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct {v8, v9, v10}, Lcom/android/server/location/GpsLocationProvider$NetworkLocationListener;-><init>(Lcom/android/server/location/GpsLocationProvider;Lcom/android/server/location/GpsLocationProvider$1;)V

    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->getLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-virtual {v2, v7, v8, v9}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 2837
    return-void

    .line 2792
    .end local v2    # "locManager":Landroid/location/LocationManager;
    .end local v3    # "minDistance":F
    .end local v4    # "minTime":J
    .end local v6    # "oneShot":Z
    .end local v7    # "request":Landroid/location/LocationRequest;
    :catch_0
    move-exception v0

    .line 2793
    .local v0, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string v8, "GpsLocationProvider"

    const-string v9, "Malformed SUPL init mime type"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2797
    .end local v0    # "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    const-string v8, "GpsLocationProvider"

    const-string v9, "Skipped registration for SMS/WAP-PUSH messages because AGPS Ril in GPS HAL is not supported"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x1

    .line 2700
    iget v1, p1, Landroid/os/Message;->what:I

    .line 2701
    .local v1, "message":I
    packed-switch v1, :pswitch_data_0

    .line 2749
    :cond_0
    :goto_0
    :pswitch_0
    iget v2, p1, Landroid/os/Message;->arg2:I

    if-ne v2, v5, :cond_1

    .line 2751
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$2700(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2753
    :cond_1
    return-void

    .line 2703
    :pswitch_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v5, :cond_2

    .line 2704
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->handleEnable()V
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$4300(Lcom/android/server/location/GpsLocationProvider;)V

    goto :goto_0

    .line 2706
    :cond_2
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->handleDisable()V
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$4400(Lcom/android/server/location/GpsLocationProvider;)V

    goto :goto_0

    .line 2710
    :pswitch_2
    const-string v2, "GpsLocationProvider"

    const-string v3, "[handleMessage] SET_REQUEST"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2711
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/location/GpsLocationProvider$GpsRequest;

    .line 2712
    .local v0, "gpsRequest":Lcom/android/server/location/GpsLocationProvider$GpsRequest;
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider$GpsRequest;->request:Lcom/android/internal/location/ProviderRequest;

    iget-object v4, v0, Lcom/android/server/location/GpsLocationProvider$GpsRequest;->source:Landroid/os/WorkSource;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->handleSetRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    invoke-static {v2, v3, v4}, Lcom/android/server/location/GpsLocationProvider;->access$4500(Lcom/android/server/location/GpsLocationProvider;Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    goto :goto_0

    .line 2715
    .end local v0    # "gpsRequest":Lcom/android/server/location/GpsLocationProvider$GpsRequest;
    :pswitch_3
    const-string v2, "GpsLocationProvider"

    const-string v3, "[handleMessage] UPDATE_NETWORK_STATE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2716
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/NetworkInfo;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->handleUpdateNetworkState(ILandroid/net/NetworkInfo;)V
    invoke-static {v3, v4, v2}, Lcom/android/server/location/GpsLocationProvider;->access$4600(Lcom/android/server/location/GpsLocationProvider;ILandroid/net/NetworkInfo;)V

    goto :goto_0

    .line 2719
    :pswitch_4
    const-string v2, "GpsLocationProvider"

    const-string v3, "[handleMessage] INJECT_NTP_TIME"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2720
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->handleInjectNtpTime()V
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$4700(Lcom/android/server/location/GpsLocationProvider;)V

    goto :goto_0

    .line 2723
    :pswitch_5
    const-string v2, "GpsLocationProvider"

    const-string v3, "[handleMessage] DOWNLOAD_XTRA_DATA"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2724
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mSupportsXtra:Z
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$4800(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2725
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->handleDownloadXtraData()V
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$4900(Lcom/android/server/location/GpsLocationProvider;)V

    goto :goto_0

    .line 2729
    :pswitch_6
    const-string v2, "GpsLocationProvider"

    const-string v3, "[handleMessage] INJECT_NTP_TIME_FINISHED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2730
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # setter for: Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimePending:I
    invoke-static {v2, v4}, Lcom/android/server/location/GpsLocationProvider;->access$5002(Lcom/android/server/location/GpsLocationProvider;I)I

    goto :goto_0

    .line 2733
    :pswitch_7
    const-string v2, "GpsLocationProvider"

    const-string v3, "[handleMessage] DOWNLOAD_XTRA_DATA_FINISHED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2734
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # setter for: Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:I
    invoke-static {v2, v4}, Lcom/android/server/location/GpsLocationProvider;->access$5102(Lcom/android/server/location/GpsLocationProvider;I)I

    goto/16 :goto_0

    .line 2737
    :pswitch_8
    const-string v2, "GpsLocationProvider"

    const-string v3, "[handleMessage] UPDATE_LOCATION"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2738
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/location/Location;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->handleUpdateLocation(Landroid/location/Location;)V
    invoke-static {v3, v2}, Lcom/android/server/location/GpsLocationProvider;->access$5200(Lcom/android/server/location/GpsLocationProvider;Landroid/location/Location;)V

    goto/16 :goto_0

    .line 2741
    :pswitch_9
    const-string v2, "GpsLocationProvider"

    const-string v3, "[handleMessage] SUBSCRIPTION_OR_SIM_CHANGED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2742
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/location/GpsLocationProvider;->access$600(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v3

    # invokes: Lcom/android/server/location/GpsLocationProvider;->subscriptionOrSimChanged(Landroid/content/Context;)V
    invoke-static {v2, v3}, Lcom/android/server/location/GpsLocationProvider;->access$800(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 2745
    :pswitch_a
    const-string v2, "GpsLocationProvider"

    const-string v3, "[handleMessage] INITIALIZE_HANDLER"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2746
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->initialize()V

    goto/16 :goto_0

    .line 2701
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
