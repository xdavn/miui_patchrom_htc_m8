.class final Lcom/android/server/display/RampAnimator;
.super Ljava/lang/Object;
.source "RampAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/RampAnimator$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static mCurrentButtonValue:I

.field static mTargetButtonValue:I


# instance fields
.field private final DEBUG_ON:Z

.field private final TAG:Ljava/lang/String;

.field private mAnimatedValue:F

.field private mAnimating:Z

.field private final mAnimationCallback:Ljava/lang/Runnable;

.field private final mChoreographer:Landroid/view/Choreographer;

.field private mCurrentValue:I

.field private mFirstTime:Z

.field private mLastFrameTimeNanos:J

.field private mListener:Lcom/android/server/display/RampAnimator$Listener;

.field private final mObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mProperty:Landroid/util/IntProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/IntProperty",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mRate:I

.field private mTargetValue:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/util/IntProperty;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/util/IntProperty",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    .local p2, "property":Landroid/util/IntProperty;, "Landroid/util/IntProperty<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, "XAN-RA"

    iput-object v0, p0, Lcom/android/server/display/RampAnimator;->TAG:Ljava/lang/String;

    .line 34
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    iput-boolean v0, p0, Lcom/android/server/display/RampAnimator;->DEBUG_ON:Z

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    .line 160
    new-instance v0, Lcom/android/server/display/RampAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/RampAnimator$1;-><init>(Lcom/android/server/display/RampAnimator;)V

    iput-object v0, p0, Lcom/android/server/display/RampAnimator;->mAnimationCallback:Ljava/lang/Runnable;

    .line 59
    iput-object p1, p0, Lcom/android/server/display/RampAnimator;->mObject:Ljava/lang/Object;

    .line 60
    iput-object p2, p0, Lcom/android/server/display/RampAnimator;->mProperty:Landroid/util/IntProperty;

    .line 61
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/RampAnimator;)Landroid/view/Choreographer;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/display/RampAnimator;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/android/server/display/RampAnimator;)Lcom/android/server/display/RampAnimator$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/display/RampAnimator;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;
    .param p1, "x1"    # J

    .prologue
    .line 31
    iput-wide p1, p0, Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/android/server/display/RampAnimator;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;

    .prologue
    .line 31
    iget v0, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/display/RampAnimator;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;
    .param p1, "x1"    # F

    .prologue
    .line 31
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/display/RampAnimator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;

    .prologue
    .line 31
    iget v0, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/display/RampAnimator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;

    .prologue
    .line 31
    iget v0, p0, Lcom/android/server/display/RampAnimator;->mRate:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/display/RampAnimator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;

    .prologue
    .line 31
    iget v0, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/display/RampAnimator;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/display/RampAnimator;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/display/RampAnimator;)Landroid/util/IntProperty;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mProperty:Landroid/util/IntProperty;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/display/RampAnimator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/server/display/RampAnimator;->postAnimationCallback()V

    return-void
.end method

.method static synthetic access$902(Lcom/android/server/display/RampAnimator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    return p1
.end method

.method private cancelAnimationCallback()V
    .locals 4

    .prologue
    .line 157
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/display/RampAnimator;->mAnimationCallback:Ljava/lang/Runnable;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 158
    return-void
.end method

.method private postAnimationCallback()V
    .locals 4

    .prologue
    .line 153
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/display/RampAnimator;->mAnimationCallback:Ljava/lang/Runnable;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 154
    return-void
.end method


# virtual methods
.method public animateTo(III)Z
    .locals 4
    .param p1, "target"    # I
    .param p2, "rate"    # I
    .param p3, "buttonValue"    # I

    .prologue
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 76
    iget-boolean v2, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    if-nez v2, :cond_0

    if-gtz p2, :cond_5

    .line 77
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    if-eq p1, v2, :cond_4

    .line 78
    :cond_1
    iput-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    .line 79
    iput v0, p0, Lcom/android/server/display/RampAnimator;->mRate:I

    .line 80
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    .line 81
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    .line 83
    sput p3, Lcom/android/server/display/RampAnimator;->mTargetButtonValue:I

    .line 85
    iget-object v2, p0, Lcom/android/server/display/RampAnimator;->mProperty:Landroid/util/IntProperty;

    iget-object v3, p0, Lcom/android/server/display/RampAnimator;->mObject:Ljava/lang/Object;

    invoke-virtual {v2, v3, p1}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    .line 87
    sget v2, Lcom/android/server/display/RampAnimator;->mTargetButtonValue:I

    sput v2, Lcom/android/server/display/RampAnimator;->mCurrentButtonValue:I

    .line 89
    iget-boolean v2, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    if-eqz v2, :cond_2

    .line 90
    iput-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    .line 91
    invoke-direct {p0}, Lcom/android/server/display/RampAnimator;->cancelAnimationCallback()V

    .line 93
    :cond_2
    iget-object v2, p0, Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    if-eqz v2, :cond_3

    .line 94
    iget-object v2, p0, Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    invoke-interface {v2}, Lcom/android/server/display/RampAnimator$Listener;->onAnimationEnd()V

    :cond_3
    move v0, v1

    .line 135
    :cond_4
    :goto_0
    return v0

    .line 108
    :cond_5
    iget-boolean v2, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/android/server/display/RampAnimator;->mRate:I

    if-gt p2, v2, :cond_7

    iget v2, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    if-gt p1, v2, :cond_6

    iget v2, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    iget v3, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    if-le v2, v3, :cond_7

    :cond_6
    iget v2, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    iget v3, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    if-gt v2, v3, :cond_8

    iget v2, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    if-gt v2, p1, :cond_8

    .line 112
    :cond_7
    iput p2, p0, Lcom/android/server/display/RampAnimator;->mRate:I

    .line 116
    :cond_8
    iget v2, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    if-ne v2, p1, :cond_9

    if-ltz p3, :cond_a

    sget v2, Lcom/android/server/display/RampAnimator;->mTargetButtonValue:I

    if-eq v2, p3, :cond_a

    :cond_9
    move v0, v1

    .line 119
    .local v0, "changed":Z
    :cond_a
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    .line 122
    sput p3, Lcom/android/server/display/RampAnimator;->mTargetButtonValue:I

    .line 127
    iget-boolean v2, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    if-nez v2, :cond_4

    iget v2, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    if-ne p1, v2, :cond_b

    if-ltz p3, :cond_4

    sget v2, Lcom/android/server/display/RampAnimator;->mCurrentButtonValue:I

    if-eq p3, v2, :cond_4

    .line 129
    :cond_b
    iput-boolean v1, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    .line 130
    iget v1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    int-to-float v1, v1

    iput v1, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    .line 131
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J

    .line 132
    invoke-direct {p0}, Lcom/android/server/display/RampAnimator;->postAnimationCallback()V

    goto :goto_0
.end method

.method getCurrentBrightness()I
    .locals 1

    .prologue
    .line 214
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    iget v0, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    return v0
.end method

.method getTargetBrightness()I
    .locals 1

    .prologue
    .line 218
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    iget v0, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    return v0
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 142
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    iget-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    return v0
.end method

.method public setListener(Lcom/android/server/display/RampAnimator$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/server/display/RampAnimator$Listener;

    .prologue
    .line 149
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    iput-object p1, p0, Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    .line 150
    return-void
.end method
