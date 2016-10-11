.class final Lcom/android/server/policy/PhoneWindowManager$BootCompletedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BootCompletedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    .prologue
    .line 956
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$BootCompletedReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/PhoneWindowManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p2, "x1"    # Lcom/android/server/policy/PhoneWindowManager$1;

    .prologue
    .line 956
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager$BootCompletedReceiver;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 959
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 969
    :cond_0
    :goto_0
    return-void

    .line 963
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 964
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.htc.intent.action.HTC_BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 965
    sget-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_HTC:Z

    if-eqz v1, :cond_2

    .line 966
    const-string v1, "WindowManager"

    const-string v2, "BootCompletedReceiver - ACTION_HTC_BOOT_COMPLETED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    :cond_2
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$BootCompletedReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->attempBroadcastCoverIntents()V
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManager;->access$1500(Lcom/android/server/policy/PhoneWindowManager;)V

    goto :goto_0
.end method
