.class Lcom/android/server/MountService$2;
.super Landroid/content/BroadcastReceiver;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;)V
    .locals 0

    .prologue
    .line 743
    iput-object p1, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 746
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 747
    .local v0, "action":Ljava/lang/String;
    const-string v5, "android.intent.action.USER_PRESENT"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 748
    iget-object v5, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->getSdcardVolId()Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/MountService;->access$1900(Lcom/android/server/MountService;)Ljava/lang/String;

    move-result-object v2

    .line 749
    .local v2, "sdVolId":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 750
    iget-object v5, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;
    invoke-static {v5, v2}, Lcom/android/server/MountService;->access$2000(Lcom/android/server/MountService;Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v4

    .line 751
    .local v4, "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v4, :cond_0

    iget v5, v4, Landroid/os/storage/VolumeInfo;->state:I

    if-nez v5, :cond_0

    .line 752
    iget-object v5, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->mountSdcard()V
    invoke-static {v5}, Lcom/android/server/MountService;->access$2100(Lcom/android/server/MountService;)V

    .line 785
    .end local v2    # "sdVolId":Ljava/lang/String;
    .end local v4    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_0
    :goto_0
    return-void

    .line 754
    :cond_1
    const-string v5, "com.htc.admin.ALLOW_STORAGE_CARD_CHANGE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 760
    const-string v5, "com.htc.admin.extra.ALLOW_STATUS"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 761
    .local v3, "status":I
    const-string v5, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive(): get ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "], status = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    if-ne v3, v8, :cond_2

    iget-object v5, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v5}, Lcom/android/server/MountService;->isSdcardRestricted()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 764
    const-string v5, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive(): get ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "], status = allow"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    iget-object v5, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v5, v9}, Lcom/android/server/MountService;->setSdcardRestricted(Z)V

    .line 767
    iget-object v5, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->mountUsbOTG()V
    invoke-static {v5}, Lcom/android/server/MountService;->access$2200(Lcom/android/server/MountService;)V

    goto :goto_0

    .line 768
    :cond_2
    if-nez v3, :cond_0

    iget-object v5, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v5}, Lcom/android/server/MountService;->isSdcardRestricted()Z

    move-result v5

    if-nez v5, :cond_0

    .line 770
    const-string v5, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive(): get ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "], status = disable"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    iget-object v5, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v5, v8}, Lcom/android/server/MountService;->setSdcardRestricted(Z)V

    .line 773
    iget-object v5, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->unmountUsbOTG()V
    invoke-static {v5}, Lcom/android/server/MountService;->access$2300(Lcom/android/server/MountService;)V

    .line 779
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.settings.MEMORY_CARD_SETTINGS"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 780
    .local v1, "in":Landroid/content/Intent;
    const/high16 v5, 0x10000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 781
    const-string v5, "SD_POLICY"

    invoke-virtual {v1, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 782
    iget-object v5, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/MountService;->access$1600(Lcom/android/server/MountService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
