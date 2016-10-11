.class public Lcom/htc/lockscreen/framework/wrapper/LockPatternCheckerWrapper;
.super Ljava/lang/Object;
.source "LockPatternCheckerWrapper.java"


# instance fields
.field private TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-class v0, Lcom/htc/lockscreen/framework/wrapper/LockPatternCheckerWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/LockPatternCheckerWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static checkPassword(Ljava/lang/Object;Ljava/lang/String;ILcom/htc/lockscreen/framework/wrapper/OnCheckCallbackWrapper;)Landroid/os/AsyncTask;
    .locals 1
    .param p0, "utils"    # Ljava/lang/Object;
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "checkCallback"    # Lcom/htc/lockscreen/framework/wrapper/OnCheckCallbackWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "I",
            "Lcom/htc/lockscreen/framework/wrapper/OnCheckCallbackWrapper;",
            ")",
            "Landroid/os/AsyncTask",
            "<***>;"
        }
    .end annotation

    .prologue
    .line 24
    check-cast p0, Lcom/android/internal/widget/LockPatternUtils;

    .end local p0    # "utils":Ljava/lang/Object;
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/widget/LockPatternChecker;->checkPassword(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public static checkPattern(Ljava/lang/Object;Ljava/util/List;ILcom/htc/lockscreen/framework/wrapper/OnCheckCallbackWrapper;)Landroid/os/AsyncTask;
    .locals 1
    .param p0, "utils"    # Ljava/lang/Object;
    .param p2, "userId"    # I
    .param p3, "checkCallback"    # Lcom/htc/lockscreen/framework/wrapper/OnCheckCallbackWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;I",
            "Lcom/htc/lockscreen/framework/wrapper/OnCheckCallbackWrapper;",
            ")",
            "Landroid/os/AsyncTask",
            "<***>;"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    check-cast p0, Lcom/android/internal/widget/LockPatternUtils;

    .end local p0    # "utils":Ljava/lang/Object;
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/widget/LockPatternChecker;->checkPattern(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method
