.class Lcom/android/server/policy/GlobalActionsCust$1;
.super Lcom/android/server/policy/GlobalActionsCust$HtcSinglePressAction;
.source "GlobalActionsCust.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActionsCust;->getFlashlightAction(Landroid/content/Context;)Lcom/android/server/policy/GlobalActions$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isFlashlightAvailable:Z

.field final synthetic this$0:Lcom/android/server/policy/GlobalActionsCust;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActionsCust;IIILandroid/content/Context;)V
    .locals 2
    .param p2, "x0"    # I
    .param p3, "x1"    # I
    .param p4, "x2"    # I

    .prologue
    .line 285
    iput-object p1, p0, Lcom/android/server/policy/GlobalActionsCust$1;->this$0:Lcom/android/server/policy/GlobalActionsCust;

    iput-object p5, p0, Lcom/android/server/policy/GlobalActionsCust$1;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/policy/GlobalActionsCust$HtcSinglePressAction;-><init>(III)V

    .line 286
    iget-object v0, p0, Lcom/android/server/policy/GlobalActionsCust$1;->this$0:Lcom/android/server/policy/GlobalActionsCust;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActionsCust$1;->val$context:Landroid/content/Context;

    # invokes: Lcom/android/server/policy/GlobalActionsCust;->isFlashlightExist(Landroid/content/Context;)Z
    invoke-static {v0, v1}, Lcom/android/server/policy/GlobalActionsCust;->access$000(Lcom/android/server/policy/GlobalActionsCust;Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/GlobalActionsCust$1;->isFlashlightAvailable:Z

    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 309
    iget-object v1, p0, Lcom/android/server/policy/GlobalActionsCust$1;->val$context:Landroid/content/Context;

    invoke-super {p0, v1, p2, p3, p4}, Lcom/android/server/policy/GlobalActionsCust$HtcSinglePressAction;->create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    .line 310
    .local v0, "retView":Landroid/view/View;
    iget-boolean v1, p0, Lcom/android/server/policy/GlobalActionsCust$1;->isFlashlightAvailable:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 311
    iget-boolean v1, p0, Lcom/android/server/policy/GlobalActionsCust$1;->isFlashlightAvailable:Z

    if-nez v1, :cond_0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 312
    :cond_0
    # getter for: Lcom/android/server/policy/GlobalActionsCust;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/policy/GlobalActionsCust;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Flashlight][create] Flashlight item is enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    return-object v0
.end method

.method public isEnabled()Z
    .locals 3

    .prologue
    .line 303
    # getter for: Lcom/android/server/policy/GlobalActionsCust;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/policy/GlobalActionsCust;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Flashlight][isEnabled] Flashlight is available = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/policy/GlobalActionsCust$1;->isFlashlightAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActionsCust$1;->isFlashlightAvailable:Z

    return v0
.end method

.method public onPress()V
    .locals 2

    .prologue
    .line 289
    # getter for: Lcom/android/server/policy/GlobalActionsCust;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/policy/GlobalActionsCust;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[Flashlight][onPress] Send intent for flashlight control"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v0, p0, Lcom/android/server/policy/GlobalActionsCust$1;->this$0:Lcom/android/server/policy/GlobalActionsCust;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActionsCust$1;->val$context:Landroid/content/Context;

    # invokes: Lcom/android/server/policy/GlobalActionsCust;->startFlashlightActivity(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/android/server/policy/GlobalActionsCust;->access$200(Lcom/android/server/policy/GlobalActionsCust;Landroid/content/Context;)V

    .line 291
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 298
    const/4 v0, 0x1

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x1

    return v0
.end method
