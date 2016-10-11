.class public Lcom/android/server/am/LockTaskNotify;
.super Ljava/lang/Object;
.source "LockTaskNotify.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/LockTaskNotify$1;,
        Lcom/android/server/am/LockTaskNotify$H;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LockTaskNotify"


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Lcom/android/server/am/LockTaskNotify$H;

.field private mLastToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/server/am/LockTaskNotify;->mContext:Landroid/content/Context;

    .line 43
    iget-object v0, p0, Lcom/android/server/am/LockTaskNotify;->mContext:Landroid/content/Context;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/server/am/LockTaskNotify;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 45
    new-instance v0, Lcom/android/server/am/LockTaskNotify$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/LockTaskNotify$H;-><init>(Lcom/android/server/am/LockTaskNotify;Lcom/android/server/am/LockTaskNotify$1;)V

    iput-object v0, p0, Lcom/android/server/am/LockTaskNotify;->mHandler:Lcom/android/server/am/LockTaskNotify$H;

    .line 46
    return-void
.end method

.method private makeAllUserToastAndShow(Ljava/lang/String;)Landroid/widget/Toast;
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 85
    iget-object v1, p0, Lcom/android/server/am/LockTaskNotify;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 86
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 88
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 89
    return-object v0
.end method


# virtual methods
.method public handleShowToast(I)V
    .locals 4
    .param p1, "lockTaskModeState"    # I

    .prologue
    .line 53
    const/4 v1, 0x0

    .line 54
    .local v1, "text":Ljava/lang/String;
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 55
    iget-object v2, p0, Lcom/android/server/am/LockTaskNotify;->mContext:Landroid/content/Context;

    const v3, 0x1040568

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 67
    :cond_0
    :goto_0
    if-nez v1, :cond_5

    .line 74
    :goto_1
    return-void

    .line 56
    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 58
    const/4 v0, 0x0

    .line 59
    .local v0, "resourceId":I
    iget-object v2, p0, Lcom/android/server/am/LockTaskNotify;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 60
    sget-boolean v2, Lcom/android/server/am/HtcAmsUtil;->isStockUI:Z

    if-eqz v2, :cond_2

    const v0, 0x1040567

    .line 64
    :goto_2
    iget-object v2, p0, Lcom/android/server/am/LockTaskNotify;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 60
    :cond_2
    const v0, 0x1070032

    goto :goto_2

    .line 62
    :cond_3
    sget-boolean v2, Lcom/android/server/am/HtcAmsUtil;->isStockUI:Z

    if-eqz v2, :cond_4

    const v0, 0x1040566

    :goto_3
    goto :goto_2

    :cond_4
    const v0, 0x1070031

    goto :goto_3

    .line 70
    .end local v0    # "resourceId":I
    :cond_5
    iget-object v2, p0, Lcom/android/server/am/LockTaskNotify;->mLastToast:Landroid/widget/Toast;

    if-eqz v2, :cond_6

    .line 71
    iget-object v2, p0, Lcom/android/server/am/LockTaskNotify;->mLastToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    .line 73
    :cond_6
    invoke-direct {p0, v1}, Lcom/android/server/am/LockTaskNotify;->makeAllUserToastAndShow(Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/LockTaskNotify;->mLastToast:Landroid/widget/Toast;

    goto :goto_1
.end method

.method public show(Z)V
    .locals 2
    .param p1, "starting"    # Z

    .prologue
    .line 77
    const v0, 0x104056a

    .line 78
    .local v0, "showString":I
    if-eqz p1, :cond_0

    .line 79
    const v0, 0x1040569

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/LockTaskNotify;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/am/LockTaskNotify;->makeAllUserToastAndShow(Ljava/lang/String;)Landroid/widget/Toast;

    .line 82
    return-void
.end method

.method public showToast(I)V
    .locals 3
    .param p1, "lockTaskModeState"    # I

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/server/am/LockTaskNotify;->mHandler:Lcom/android/server/am/LockTaskNotify$H;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/am/LockTaskNotify$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 50
    return-void
.end method
