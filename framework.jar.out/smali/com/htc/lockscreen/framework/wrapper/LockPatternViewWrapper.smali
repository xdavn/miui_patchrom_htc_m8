.class public Lcom/htc/lockscreen/framework/wrapper/LockPatternViewWrapper;
.super Ljava/lang/Object;
.source "LockPatternViewWrapper.java"


# static fields
.field public static final DISPLAYMODE_ANIMATE:I

.field public static final DISPLAYMODE_CORRECT:I

.field public static final DISPLAYMODE_WRONG:I

.field static mHtcLockPatternView:Lcom/android/internal/widget/LockPatternView;


# instance fields
.field private TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$DisplayMode;->ordinal()I

    move-result v0

    sput v0, Lcom/htc/lockscreen/framework/wrapper/LockPatternViewWrapper;->DISPLAYMODE_CORRECT:I

    .line 29
    sget-object v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$DisplayMode;->ordinal()I

    move-result v0

    sput v0, Lcom/htc/lockscreen/framework/wrapper/LockPatternViewWrapper;->DISPLAYMODE_ANIMATE:I

    .line 35
    sget-object v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$DisplayMode;->ordinal()I

    move-result v0

    sput v0, Lcom/htc/lockscreen/framework/wrapper/LockPatternViewWrapper;->DISPLAYMODE_WRONG:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-class v0, Lcom/htc/lockscreen/framework/wrapper/LockPatternViewWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/LockPatternViewWrapper;->TAG:Ljava/lang/String;

    .line 45
    new-instance v0, Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/internal/widget/LockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sput-object v0, Lcom/htc/lockscreen/framework/wrapper/LockPatternViewWrapper;->mHtcLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-class v0, Lcom/htc/lockscreen/framework/wrapper/LockPatternViewWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/LockPatternViewWrapper;->TAG:Ljava/lang/String;

    .line 55
    new-instance v0, Lcom/android/internal/widget/LockPatternView;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/widget/LockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sput-object v0, Lcom/htc/lockscreen/framework/wrapper/LockPatternViewWrapper;->mHtcLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 56
    return-void
.end method

.method public static getCellStates()[[Lcom/android/internal/widget/LockPatternView$CellState;
    .locals 1

    .prologue
    .line 239
    sget-object v0, Lcom/htc/lockscreen/framework/wrapper/LockPatternViewWrapper;->mHtcLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v0, :cond_0

    .line 240
    sget-object v0, Lcom/htc/lockscreen/framework/wrapper/LockPatternViewWrapper;->mHtcLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->getCellStates()[[Lcom/android/internal/widget/LockPatternView$CellState;

    move-result-object v0

    .line 242
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    check-cast v0, [[Lcom/android/internal/widget/LockPatternView$CellState;

    goto :goto_0
.end method


# virtual methods
.method public clearPattern()V
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/htc/lockscreen/framework/wrapper/LockPatternViewWrapper;->mHtcLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v0, :cond_0

    .line 67
    sget-object v0, Lcom/htc/lockscreen/framework/wrapper/LockPatternViewWrapper;->mHtcLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 69
    :cond_0
    return-void
.end method

.method public enableInput()V
    .locals 1

    .prologue
    .line 160
    sget-object v0, Lcom/htc/lockscreen/framework/wrapper/LockPatternViewWrapper;->mHtcLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v0, :cond_0

    .line 161
    sget-object v0, Lcom/htc/lockscreen/framework/wrapper/LockPatternViewWrapper;->mHtcLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    .line 163
    :cond_0
    return-void
.end method

.method public getPatternViewCellSize(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 231
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v0, 0x0

    .line 232
    .local v0, "size":I
    if-eqz p1, :cond_0

    .line 233
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 235
    :cond_0
    return v0
.end method

.method public getView()Lcom/android/internal/widget/LockPatternView;
    .locals 1

    .prologue
    .line 222
    sget-object v0, Lcom/htc/lockscreen/framework/wrapper/LockPatternViewWrapper;->mHtcLockPatternView:Lcom/android/internal/widget/LockPatternView;

    return-object v0
.end method

.method public postDelayed(Ljava/lang/Runnable;I)V
    .locals 4
    .param p1, "Runnable"    # Ljava/lang/Runnable;
    .param p2, "delay"    # I

    .prologue
    .line 211
    sget-object v0, Lcom/htc/lockscreen/framework/wrapper/LockPatternViewWrapper;->mHtcLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v0, :cond_0

    .line 212
    sget-object v0, Lcom/htc/lockscreen/framework/wrapper/LockPatternViewWrapper;->mHtcLockPatternView:Lcom/android/internal/widget/LockPatternView;

    int-to-long v2, p2

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 214
    :cond_0
    return-void
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 176
    sget-object v0, Lcom/htc/lockscreen/framework/wrapper/LockPatternViewWrapper;->mHtcLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v0, :cond_0

    .line 177
    sget-object v0, Lcom/htc/lockscreen/framework/wrapper/LockPatternViewWrapper;->mHtcLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 179
    :cond_0
    return-void
.end method

.method public setDisplayMode(I)V
    .locals 3
    .param p1, "displayMode"    # I

    .prologue
    .line 192
    sget-object v1, Lcom/htc/lockscreen/framework/wrapper/LockPatternViewWrapper;->mHtcLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v1, :cond_0

    .line 193
    invoke-static {}, Lcom/android/internal/widget/LockPatternView$DisplayMode;->values()[Lcom/android/internal/widget/LockPatternView$DisplayMode;

    move-result-object v0

    .line 194
    .local v0, "displayModeValues":[Lcom/android/internal/widget/LockPatternView$DisplayMode;
    sget-object v1, Lcom/htc/lockscreen/framework/wrapper/LockPatternViewWrapper;->mHtcLockPatternView:Lcom/android/internal/widget/LockPatternView;

    aget-object v2, v0, p1

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 196
    .end local v0    # "displayModeValues":[Lcom/android/internal/widget/LockPatternView$DisplayMode;
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 147
    sget-object v0, Lcom/htc/lockscreen/framework/wrapper/LockPatternViewWrapper;->mHtcLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v0, :cond_0

    .line 148
    sget-object v0, Lcom/htc/lockscreen/framework/wrapper/LockPatternViewWrapper;->mHtcLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 150
    :cond_0
    return-void
.end method

.method public setFocusable(Z)V
    .locals 1
    .param p1, "focusable"    # Z

    .prologue
    .line 93
    sget-object v0, Lcom/htc/lockscreen/framework/wrapper/LockPatternViewWrapper;->mHtcLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v0, :cond_0

    .line 94
    sget-object v0, Lcom/htc/lockscreen/framework/wrapper/LockPatternViewWrapper;->mHtcLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternView;->setFocusable(Z)V

    .line 96
    :cond_0
    return-void
.end method

.method public setInStealthMode(Z)V
    .locals 1
    .param p1, "inStealthMode"    # Z

    .prologue
    .line 118
    sget-object v0, Lcom/htc/lockscreen/framework/wrapper/LockPatternViewWrapper;->mHtcLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v0, :cond_0

    .line 119
    sget-object v0, Lcom/htc/lockscreen/framework/wrapper/LockPatternViewWrapper;->mHtcLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternView;->setInStealthMode(Z)V

    .line 121
    :cond_0
    return-void
.end method

.method public setOnPatternListener(Lcom/htc/lockscreen/framework/wrapper/OnPatternListenerWrapper;)V
    .locals 1
    .param p1, "onPatternListener"    # Lcom/htc/lockscreen/framework/wrapper/OnPatternListenerWrapper;

    .prologue
    .line 104
    sget-object v0, Lcom/htc/lockscreen/framework/wrapper/LockPatternViewWrapper;->mHtcLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v0, :cond_0

    .line 105
    sget-object v0, Lcom/htc/lockscreen/framework/wrapper/LockPatternViewWrapper;->mHtcLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 107
    :cond_0
    return-void
.end method

.method public setSaveEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 81
    sget-object v0, Lcom/htc/lockscreen/framework/wrapper/LockPatternViewWrapper;->mHtcLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v0, :cond_0

    .line 82
    sget-object v0, Lcom/htc/lockscreen/framework/wrapper/LockPatternViewWrapper;->mHtcLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 84
    :cond_0
    return-void
.end method

.method public setTactileFeedbackEnabled(Z)V
    .locals 1
    .param p1, "tactileFeedbackEnabled"    # Z

    .prologue
    .line 132
    sget-object v0, Lcom/htc/lockscreen/framework/wrapper/LockPatternViewWrapper;->mHtcLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v0, :cond_0

    .line 133
    sget-object v0, Lcom/htc/lockscreen/framework/wrapper/LockPatternViewWrapper;->mHtcLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternView;->setTactileFeedbackEnabled(Z)V

    .line 135
    :cond_0
    return-void
.end method

.method public updateCellState(Ljava/lang/Object;FF)V
    .locals 0
    .param p1, "state"    # Ljava/lang/Object;
    .param p2, "scale"    # F
    .param p3, "translateY"    # F

    .prologue
    .line 252
    return-void
.end method
