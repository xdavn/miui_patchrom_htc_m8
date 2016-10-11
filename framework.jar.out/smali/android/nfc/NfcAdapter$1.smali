.class Landroid/nfc/NfcAdapter$1;
.super Landroid/nfc/NfcAdapter$CallNfcMethod;
.source "NfcAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/nfc/NfcAdapter;->helperCallNfc(Landroid/nfc/NfcAdapter$CallNfcHelper;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/nfc/NfcAdapter$CallNfcMethod",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/nfc/NfcAdapter;

.field final synthetic val$usage:Landroid/nfc/NfcAdapter$CallNfcHelper;


# direct methods
.method constructor <init>(Landroid/nfc/NfcAdapter;Landroid/nfc/NfcAdapter$CallNfcHelper;)V
    .locals 1

    .prologue
    .line 672
    iput-object p1, p0, Landroid/nfc/NfcAdapter$1;->this$0:Landroid/nfc/NfcAdapter;

    iput-object p2, p0, Landroid/nfc/NfcAdapter$1;->val$usage:Landroid/nfc/NfcAdapter$CallNfcHelper;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/nfc/NfcAdapter$CallNfcMethod;-><init>(Landroid/nfc/NfcAdapter;Landroid/nfc/NfcAdapter$1;)V

    return-void
.end method


# virtual methods
.method protected callMethod()Ljava/lang/Boolean;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 675
    sget-object v4, Landroid/nfc/NfcAdapter$7;->$SwitchMap$android$nfc$NfcAdapter$CallNfcHelper:[I

    iget-object v5, p0, Landroid/nfc/NfcAdapter$1;->val$usage:Landroid/nfc/NfcAdapter$CallNfcHelper;

    invoke-virtual {v5}, Landroid/nfc/NfcAdapter$CallNfcHelper;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 789
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    :goto_0
    return-object v4

    .line 679
    :pswitch_0
    iget-object v4, p0, Landroid/nfc/NfcAdapter$1;->this$0:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 680
    iget-object v4, p0, Landroid/nfc/NfcAdapter$1;->this$0:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 683
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v5, 0x3e8

    if-eq v4, v5, :cond_0

    .line 684
    iget-object v4, p0, Landroid/nfc/NfcAdapter$1;->this$0:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 688
    .local v3, "packageName":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Landroid/nfc/NfcAdapter$1;->this$0:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 694
    .local v1, "appName":Ljava/lang/String;
    :goto_1
    const-string v4, "NFC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NfcAdapter: enable(), caller packageName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", appName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    sget-object v4, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "packageName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "appName:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/nfc/INfcAdapter;->setProperties(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "appName":Ljava/lang/String;
    .end local v3    # "packageName":Ljava/lang/String;
    :goto_2
    :try_start_1
    sget-object v4, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v4}, Landroid/nfc/INfcAdapter;->enable()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    goto/16 :goto_0

    .line 689
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v3    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 690
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "NFC"

    const-string v5, "callMethod: Exception caught."

    invoke-static {v4, v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 691
    const-string v1, "Unknown"

    .restart local v1    # "appName":Ljava/lang/String;
    goto :goto_1

    .line 697
    .end local v1    # "appName":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_0
    const-string v5, "NFC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "callMethod: enable() "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v0, :cond_1

    const-string v4, "appInfo is null."

    :goto_3
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    const-string v4, "called with system uid."

    goto :goto_3

    .line 700
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_2
    const-string v4, "NFC"

    const-string v5, "NfcAdapter: getContext() is null"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 705
    :catch_1
    move-exception v2

    .line 706
    .local v2, "e":Landroid/os/RemoteException;
    iget-object v4, p0, Landroid/nfc/NfcAdapter$1;->this$0:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4, v2}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 707
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto/16 :goto_0

    .line 711
    .end local v2    # "e":Landroid/os/RemoteException;
    :pswitch_1
    :try_start_2
    sget-object v4, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/nfc/INfcAdapter;->disable(Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v4

    goto/16 :goto_0

    .line 712
    :catch_2
    move-exception v2

    .line 713
    .restart local v2    # "e":Landroid/os/RemoteException;
    iget-object v4, p0, Landroid/nfc/NfcAdapter$1;->this$0:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4, v2}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 714
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto/16 :goto_0

    .line 719
    .end local v2    # "e":Landroid/os/RemoteException;
    :pswitch_2
    :try_start_3
    sget-object v4, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v4}, Landroid/nfc/INfcAdapter;->isReaderWriterEnabled()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v4

    goto/16 :goto_0

    .line 720
    :catch_3
    move-exception v2

    .line 721
    .restart local v2    # "e":Landroid/os/RemoteException;
    iget-object v4, p0, Landroid/nfc/NfcAdapter$1;->this$0:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4, v2}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 722
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto/16 :goto_0

    .line 726
    .end local v2    # "e":Landroid/os/RemoteException;
    :pswitch_3
    :try_start_4
    sget-object v4, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v4}, Landroid/nfc/INfcAdapter;->isP2PEnabled()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v4

    goto/16 :goto_0

    .line 727
    :catch_4
    move-exception v2

    .line 728
    .restart local v2    # "e":Landroid/os/RemoteException;
    iget-object v4, p0, Landroid/nfc/NfcAdapter$1;->this$0:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4, v2}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 729
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto/16 :goto_0

    .line 733
    .end local v2    # "e":Landroid/os/RemoteException;
    :pswitch_4
    :try_start_5
    sget-object v4, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v4}, Landroid/nfc/INfcAdapter;->isCardEmuEnabled()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v4

    goto/16 :goto_0

    .line 734
    :catch_5
    move-exception v2

    .line 735
    .restart local v2    # "e":Landroid/os/RemoteException;
    iget-object v4, p0, Landroid/nfc/NfcAdapter$1;->this$0:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4, v2}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 736
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto/16 :goto_0

    .line 740
    .end local v2    # "e":Landroid/os/RemoteException;
    :pswitch_5
    :try_start_6
    sget-object v4, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v4}, Landroid/nfc/INfcAdapter;->enableReaderWriter()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    move-result-object v4

    goto/16 :goto_0

    .line 741
    :catch_6
    move-exception v2

    .line 742
    .restart local v2    # "e":Landroid/os/RemoteException;
    iget-object v4, p0, Landroid/nfc/NfcAdapter$1;->this$0:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4, v2}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 743
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto/16 :goto_0

    .line 747
    .end local v2    # "e":Landroid/os/RemoteException;
    :pswitch_6
    :try_start_7
    sget-object v4, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v4}, Landroid/nfc/INfcAdapter;->disableReaderWriter()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_7

    move-result-object v4

    goto/16 :goto_0

    .line 748
    :catch_7
    move-exception v2

    .line 749
    .restart local v2    # "e":Landroid/os/RemoteException;
    iget-object v4, p0, Landroid/nfc/NfcAdapter$1;->this$0:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4, v2}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 750
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto/16 :goto_0

    .line 754
    .end local v2    # "e":Landroid/os/RemoteException;
    :pswitch_7
    :try_start_8
    sget-object v4, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v4}, Landroid/nfc/INfcAdapter;->enableP2P()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_8

    move-result-object v4

    goto/16 :goto_0

    .line 755
    :catch_8
    move-exception v2

    .line 756
    .restart local v2    # "e":Landroid/os/RemoteException;
    iget-object v4, p0, Landroid/nfc/NfcAdapter$1;->this$0:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4, v2}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 757
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto/16 :goto_0

    .line 761
    .end local v2    # "e":Landroid/os/RemoteException;
    :pswitch_8
    :try_start_9
    sget-object v4, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v4}, Landroid/nfc/INfcAdapter;->disableP2P()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_9

    move-result-object v4

    goto/16 :goto_0

    .line 762
    :catch_9
    move-exception v2

    .line 763
    .restart local v2    # "e":Landroid/os/RemoteException;
    iget-object v4, p0, Landroid/nfc/NfcAdapter$1;->this$0:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4, v2}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 764
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto/16 :goto_0

    .line 769
    .end local v2    # "e":Landroid/os/RemoteException;
    :pswitch_9
    :try_start_a
    sget-object v4, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v4}, Landroid/nfc/INfcAdapter;->enableNdefPush()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_a

    move-result-object v4

    goto/16 :goto_0

    .line 770
    :catch_a
    move-exception v2

    .line 771
    .restart local v2    # "e":Landroid/os/RemoteException;
    iget-object v4, p0, Landroid/nfc/NfcAdapter$1;->this$0:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4, v2}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 772
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto/16 :goto_0

    .line 776
    .end local v2    # "e":Landroid/os/RemoteException;
    :pswitch_a
    :try_start_b
    sget-object v4, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v4}, Landroid/nfc/INfcAdapter;->disableNdefPush()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_b

    move-result-object v4

    goto/16 :goto_0

    .line 777
    :catch_b
    move-exception v2

    .line 778
    .restart local v2    # "e":Landroid/os/RemoteException;
    iget-object v4, p0, Landroid/nfc/NfcAdapter$1;->this$0:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4, v2}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 779
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto/16 :goto_0

    .line 783
    .end local v2    # "e":Landroid/os/RemoteException;
    :pswitch_b
    :try_start_c
    sget-object v4, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v4}, Landroid/nfc/INfcAdapter;->isNdefPushEnabled()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_c

    move-result-object v4

    goto/16 :goto_0

    .line 784
    :catch_c
    move-exception v2

    .line 785
    .restart local v2    # "e":Landroid/os/RemoteException;
    iget-object v4, p0, Landroid/nfc/NfcAdapter$1;->this$0:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4, v2}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 786
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto/16 :goto_0

    .line 675
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method protected bridge synthetic callMethod()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 672
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter$1;->callMethod()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
