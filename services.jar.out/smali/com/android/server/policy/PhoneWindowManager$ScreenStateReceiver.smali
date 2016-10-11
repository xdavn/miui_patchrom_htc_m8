.class final Lcom/android/server/policy/PhoneWindowManager$ScreenStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScreenStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    .prologue
    .line 7810
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$ScreenStateReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/PhoneWindowManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p2, "x1"    # Lcom/android/server/policy/PhoneWindowManager$1;

    .prologue
    .line 7810
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager$ScreenStateReceiver;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 7813
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$ScreenStateReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, -0x1

    # setter for: Lcom/android/server/policy/PhoneWindowManager;->mFingerprintDownForInteractive:I
    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->access$3202(Lcom/android/server/policy/PhoneWindowManager;I)I

    .line 7814
    return-void
.end method
