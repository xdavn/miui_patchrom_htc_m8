.class Lcom/android/internal/telephony/MobileNetwork$WidgetHelper$1;
.super Landroid/os/Handler;
.source "MobileNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;)V
    .locals 0

    .prologue
    .line 2808
    iput-object p1, p0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper$1;->this$0:Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 21
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2811
    const/4 v13, 0x0

    .line 2812
    .local v13, "exception":Ljava/lang/Throwable;
    const/16 v16, 0x0

    .line 2813
    .local v16, "sb":Ljava/lang/StringBuilder;
    const/4 v15, 0x0

    .line 2814
    .local v15, "params":[Ljava/lang/Object;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 2892
    :cond_0
    :goto_0
    if-eqz v16, :cond_1

    .line 2893
    const-string v2, "LibMobileNetwork"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2895
    :cond_1
    return-void

    .line 2816
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    move-object v15, v2

    check-cast v15, [Ljava/lang/Object;

    .line 2817
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper$1;->this$0:Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    new-instance v4, Landroid/os/HandlerThread;

    const/4 v2, 0x0

    aget-object v2, v15, v2

    check-cast v2, Ljava/lang/String;

    const/16 v5, 0xa

    invoke-direct {v4, v2, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    # setter for: Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->thread:Landroid/os/HandlerThread;
    invoke-static {v3, v4}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->access$1402(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;

    .line 2818
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper$1;->this$0:Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    # getter for: Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->thread:Landroid/os/HandlerThread;
    invoke-static {v2}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->access$1400(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;)Landroid/os/HandlerThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 2820
    const/4 v6, 0x0

    .line 2822
    .local v6, "cbObject":Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper$1;->this$0:Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    invoke-virtual {v2}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->getCallbackClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;

    move-object v6, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2829
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper$1;->this$0:Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    new-instance v3, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;-><init>(Lcom/android/internal/telephony/MobileNetwork$1;)V

    # setter for: Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->threadConfig:Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->access$1702(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;)Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;

    .line 2830
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper$1;->this$0:Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    # getter for: Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->threadConfig:Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;
    invoke-static {v2}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->access$1700(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;)Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;

    move-result-object v3

    const/4 v2, 0x1

    aget-object v2, v15, v2

    check-cast v2, Landroid/content/Context;

    # setter for: Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->context:Landroid/content/Context;
    invoke-static {v3, v2}, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->access$1902(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;Landroid/content/Context;)Landroid/content/Context;

    .line 2831
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper$1;->this$0:Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    # getter for: Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->threadConfig:Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;
    invoke-static {v2}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->access$1700(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;)Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;

    move-result-object v2

    # setter for: Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->callback:Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;
    invoke-static {v2, v6}, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->access$2002(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;)Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;

    .line 2832
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper$1;->this$0:Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    # getter for: Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->threadConfig:Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;
    invoke-static {v2}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->access$1700(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;)Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;

    move-result-object v2

    # getter for: Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->SHARED_PREFERENCE_FILE:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->access$2200()Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->cacheInPreference:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->access$2102(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;Ljava/lang/String;)Ljava/lang/String;

    .line 2833
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper$1;->this$0:Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper$1;->this$0:Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    # getter for: Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->threadConfig:Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;
    invoke-static {v2}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->access$1700(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;)Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v3, v15, v3

    check-cast v3, Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper$1;->this$0:Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    # getter for: Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->thread:Landroid/os/HandlerThread;
    invoke-static {v4}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->access$1400(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;)Landroid/os/HandlerThread;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    # getter for: Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->SHARED_PREFERENCE_FILE:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->access$2200()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper$1;->this$0:Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    # invokes: Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->appendLogTag(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v9, v0, v1}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->access$1500(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->createBackgroundHandler(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;ZLcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;)Landroid/os/Handler;
    invoke-static/range {v2 .. v9}, Lcom/android/internal/telephony/MobileNetwork;->access$2400(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;ZLcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;)Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, v18

    # setter for: Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->threadHandler:Landroid/os/Handler;
    invoke-static {v0, v2}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->access$2302(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;Landroid/os/Handler;)Landroid/os/Handler;

    goto/16 :goto_0

    .line 2823
    :catch_0
    move-exception v11

    .line 2824
    .local v11, "exCallbackClass":Ljava/lang/Throwable;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 2825
    .local v17, "sbErr":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper$1;->this$0:Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    const/4 v3, 0x0

    move-object/from16 v0, v17

    # invokes: Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->appendLogTag(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0, v3}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->access$1500(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 2826
    const/4 v2, 0x0

    const-string v3, " Given class incompatible"

    move-object/from16 v0, v17

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->logAddVersion(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v2, v3}, Lcom/android/internal/telephony/MobileNetwork;->access$1600(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2827
    const-string v2, "LibMobileNetwork"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 2839
    .end local v6    # "cbObject":Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;
    .end local v11    # "exCallbackClass":Ljava/lang/Throwable;
    .end local v17    # "sbErr":Ljava/lang/StringBuilder;
    :pswitch_1
    const/4 v2, 0x4

    new-array v15, v2, [Ljava/lang/Object;

    .line 2840
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    aput-object v3, v15, v2

    .line 2841
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper$1;->this$0:Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    # getter for: Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->mainHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->access$2500(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;)Landroid/os/Handler;

    move-result-object v3

    aput-object v3, v15, v2

    .line 2842
    const/4 v2, 0x2

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v15, v2

    .line 2843
    const/4 v14, 0x0

    .line 2844
    .local v14, "intentLogTag":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_2

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Landroid/content/Intent;

    if-eqz v2, :cond_2

    .line 2845
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;

    const-string v3, "logTag"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2847
    :cond_2
    new-instance v16, Ljava/lang/StringBuilder;

    .end local v16    # "sb":Ljava/lang/StringBuilder;
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 2848
    .restart local v16    # "sb":Ljava/lang/StringBuilder;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2849
    if-eqz v14, :cond_3

    .line 2850
    const/16 v2, 0x2e

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2851
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2853
    :cond_3
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper$1;->this$0:Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    const/4 v4, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->appendLogTag(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4, v5}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->access$1500(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v15, v2

    .line 2854
    const/16 v16, 0x0

    .line 2855
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper$1;->this$0:Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    # getter for: Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->threadHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->access$2300(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;)Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper$1;->this$0:Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    # getter for: Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->threadHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->access$2300(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;)Landroid/os/Handler;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v4, v5, v7, v15}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 2858
    .end local v14    # "intentLogTag":Ljava/lang/String;
    :pswitch_2
    const/4 v10, 0x0

    .line 2860
    .local v10, "endTagPostfix":Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuilder;

    .end local v16    # "sb":Ljava/lang/StringBuilder;
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 2861
    .restart local v16    # "sb":Ljava/lang/StringBuilder;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2862
    const/16 v2, 0x2e

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2863
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2864
    const/16 v16, 0x0

    .line 2866
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper$1;->this$0:Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    # invokes: Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->handleCacheWriteback(Ljava/lang/String;Ljava/lang/Object;)V
    invoke-static {v2, v10, v3}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->access$2600(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2867
    # invokes: Lcom/android/internal/telephony/MobileNetwork;->runtimeDebugOn()Z
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->access$2700()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2868
    new-instance v16, Ljava/lang/StringBuilder;

    .end local v16    # "sb":Ljava/lang/StringBuilder;
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 2869
    .restart local v16    # "sb":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper$1;->this$0:Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    move-object/from16 v0, v16

    # invokes: Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->appendLogTag(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0, v10}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->access$1500(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 2870
    const-string v2, "stopping service "

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2871
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper$1;->this$0:Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    # getter for: Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->receivedIntents:I
    invoke-static {v2}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->access$2800(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2873
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper$1;->this$0:Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    # getter for: Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->receivedIntents:I
    invoke-static {v2}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->access$2800(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;)I

    move-result v2

    if-lez v2, :cond_0

    .line 2874
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper$1;->this$0:Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    # operator-- for: Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->receivedIntents:I
    invoke-static {v2}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->access$2810(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;)I

    .line 2875
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper$1;->this$0:Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    # getter for: Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->receivedIntents:I
    invoke-static {v2}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->access$2800(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;)I

    move-result v2

    if-gtz v2, :cond_0

    .line 2876
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper$1;->this$0:Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    const/4 v3, 0x1

    # setter for: Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->stopReceiveIntents:Z
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->access$2902(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;Z)Z

    .line 2877
    if-eqz v16, :cond_5

    .line 2878
    const-string v2, " done"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2881
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper$1;->this$0:Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    invoke-virtual {v2}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->stopSelf()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 2882
    :catch_1
    move-exception v12

    .line 2883
    .local v12, "exStopSelf":Ljava/lang/Throwable;
    new-instance v16, Ljava/lang/StringBuilder;

    .end local v16    # "sb":Ljava/lang/StringBuilder;
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 2884
    .restart local v16    # "sb":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper$1;->this$0:Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    move-object/from16 v0, v16

    # invokes: Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->appendLogTag(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0, v10}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->access$1500(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 2885
    const-string v2, "stop service"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2886
    move-object v13, v12

    goto/16 :goto_0

    .line 2814
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
