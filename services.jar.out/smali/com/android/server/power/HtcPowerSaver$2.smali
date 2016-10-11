.class Lcom/android/server/power/HtcPowerSaver$2;
.super Ljava/lang/Object;
.source "HtcPowerSaver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/HtcPowerSaver;->sendBroadcastHelperWithPermission(Landroid/content/Intent;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/HtcPowerSaver;

.field final synthetic val$forCurrent:Z

.field final synthetic val$i:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/server/power/HtcPowerSaver;ZLandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 402
    iput-object p1, p0, Lcom/android/server/power/HtcPowerSaver$2;->this$0:Lcom/android/server/power/HtcPowerSaver;

    iput-boolean p2, p0, Lcom/android/server/power/HtcPowerSaver$2;->val$forCurrent:Z

    iput-object p3, p0, Lcom/android/server/power/HtcPowerSaver$2;->val$i:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 406
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/HtcPowerSaver$2;->val$forCurrent:Z

    if-eqz v1, :cond_0

    .line 407
    iget-object v1, p0, Lcom/android/server/power/HtcPowerSaver$2;->this$0:Lcom/android/server/power/HtcPowerSaver;

    # getter for: Lcom/android/server/power/HtcPowerSaver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/power/HtcPowerSaver;->access$200(Lcom/android/server/power/HtcPowerSaver;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/HtcPowerSaver$2;->val$i:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v4, "com.htc.permission.APP_PLATFORM"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 414
    :goto_0
    return-void

    .line 409
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/HtcPowerSaver$2;->this$0:Lcom/android/server/power/HtcPowerSaver;

    # getter for: Lcom/android/server/power/HtcPowerSaver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/power/HtcPowerSaver;->access$200(Lcom/android/server/power/HtcPowerSaver;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/HtcPowerSaver$2;->val$i:Landroid/content/Intent;

    const-string v3, "com.htc.permission.APP_PLATFORM"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 411
    :catch_0
    move-exception v0

    .line 412
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HtcPowerSaver"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
