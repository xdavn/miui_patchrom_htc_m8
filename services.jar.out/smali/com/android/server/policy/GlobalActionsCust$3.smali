.class Lcom/android/server/policy/GlobalActionsCust$3;
.super Lcom/android/server/policy/GlobalActionsCust$HtcSinglePressAction;
.source "GlobalActionsCust.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActionsCust;->getRebootAction(Landroid/content/Context;)Lcom/android/server/policy/GlobalActions$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActionsCust;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActionsCust;IIILandroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # I
    .param p3, "x1"    # I
    .param p4, "x2"    # I

    .prologue
    .line 588
    iput-object p1, p0, Lcom/android/server/policy/GlobalActionsCust$3;->this$0:Lcom/android/server/policy/GlobalActionsCust;

    iput-object p5, p0, Lcom/android/server/policy/GlobalActionsCust$3;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/policy/GlobalActionsCust$HtcSinglePressAction;-><init>(III)V

    return-void
.end method


# virtual methods
.method public onPress()V
    .locals 3

    .prologue
    .line 591
    iget-object v1, p0, Lcom/android/server/policy/GlobalActionsCust$3;->val$context:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 592
    .local v0, "pm":Landroid/os/PowerManager;
    # getter for: Lcom/android/server/policy/GlobalActionsCust;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/policy/GlobalActionsCust;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Trigger the reboot action"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    const-string v1, "oem-11"

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 594
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 601
    const/4 v0, 0x1

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 597
    const/4 v0, 0x1

    return v0
.end method
