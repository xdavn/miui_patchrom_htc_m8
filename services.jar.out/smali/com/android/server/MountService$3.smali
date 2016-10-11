.class Lcom/android/server/MountService$3;
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
    .line 788
    iput-object p1, p0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 791
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 792
    .local v0, "action":Ljava/lang/String;
    const-string v4, "com.htc.intent.action.USB_CONNECT2PC"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 793
    const-string v4, "connected"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "mass_storage"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 796
    .local v1, "available":Z
    :goto_0
    if-nez v1, :cond_0

    .line 797
    iget-object v4, p0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->mountISOOnBoot()Z
    invoke-static {v4}, Lcom/android/server/MountService;->access$2400(Lcom/android/server/MountService;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 798
    const-string v4, "MountService"

    const-string v5, " Unmount CDROM.ISO"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    iget-object v4, p0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->setMountISOEnabled(Z)I
    invoke-static {v4, v3}, Lcom/android/server/MountService;->access$2500(Lcom/android/server/MountService;Z)I

    .line 826
    .end local v1    # "available":Z
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v3

    .line 793
    goto :goto_0

    .line 801
    .restart local v1    # "available":Z
    :cond_2
    const-string v4, "MountService"

    const-string v5, "Unmount PCTOOL.ISO"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    iget-object v4, p0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v4, v3}, Lcom/android/server/MountService;->setPCtoolISOEnabled(Z)I

    goto :goto_1

    .line 805
    .end local v1    # "available":Z
    :cond_3
    const-string v4, "com.htc.intent.action.Mount_Notify"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 806
    const-string v4, "Enable"

    const/4 v5, -0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 807
    .local v2, "enable":I
    if-ne v2, v1, :cond_5

    .line 808
    iget-object v3, p0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->mountISOOnBoot()Z
    invoke-static {v3}, Lcom/android/server/MountService;->access$2400(Lcom/android/server/MountService;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 809
    const-string v3, "MountService"

    const-string v4, "mount CDROM.ISO when usb driver ready"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    iget-object v3, p0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->setMountISOEnabled(Z)I
    invoke-static {v3, v1}, Lcom/android/server/MountService;->access$2500(Lcom/android/server/MountService;Z)I

    goto :goto_1

    .line 812
    :cond_4
    const-string v3, "MountService"

    const-string v4, "Mount PCTOOL.ISO"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    iget-object v3, p0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v3, v1}, Lcom/android/server/MountService;->setPCtoolISOEnabled(Z)I

    goto :goto_1

    .line 815
    :cond_5
    if-nez v2, :cond_7

    .line 816
    iget-object v4, p0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->mountISOOnBoot()Z
    invoke-static {v4}, Lcom/android/server/MountService;->access$2400(Lcom/android/server/MountService;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 817
    const-string v4, "MountService"

    const-string v5, "unmount CDROM.ISO by usb intent"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    iget-object v4, p0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->setMountISOEnabled(Z)I
    invoke-static {v4, v3}, Lcom/android/server/MountService;->access$2500(Lcom/android/server/MountService;Z)I

    goto :goto_1

    .line 820
    :cond_6
    const-string v4, "MountService"

    const-string v5, "unmount PCTOOL.ISO by usb intent"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    iget-object v4, p0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v4, v3}, Lcom/android/server/MountService;->setPCtoolISOEnabled(Z)I

    goto :goto_1

    .line 824
    :cond_7
    const-string v3, "MountService"

    const-string v4, "com.htc.intent.action.Mount_Notify cannot get enable value"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
