.class Lcom/android/server/policy/PhoneWindowManager$5;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    .prologue
    .line 1365
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$5;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1369
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_HTC:Z

    if-eqz v0, :cond_0

    .line 1370
    const-string v0, "WindowManager"

    const-string v1, "<POWER DOWN>Long press to show Global Actions Dialog."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$5;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mEndCallKeyHandled:Z

    .line 1373
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$5;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1374
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$5;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->performAuditoryFeedbackForAccessibilityIfNeed()V
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$1600(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 1376
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$5;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->showGlobalActionsInternal()V

    .line 1377
    return-void
.end method
