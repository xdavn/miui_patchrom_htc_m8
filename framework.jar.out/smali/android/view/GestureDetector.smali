.class public Landroid/view/GestureDetector;
.super Ljava/lang/Object;
.source "GestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/GestureDetector$GestureHandler;,
        Landroid/view/GestureDetector$SimpleOnGestureListener;,
        Landroid/view/GestureDetector$OnContextClickListener;,
        Landroid/view/GestureDetector$OnDoubleTapListener;,
        Landroid/view/GestureDetector$OnGestureListener;
    }
.end annotation


# static fields
.field private static final DOUBLE_TAP_MIN_TIME:I

.field private static final DOUBLE_TAP_TIMEOUT:I

.field private static final LONG_PRESS:I = 0x2

.field private static final SHOW_PRESS:I = 0x1

.field private static final TAP:I = 0x3

.field private static final TAP_TIMEOUT:I


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private mAlwaysInBiggerTapRegion:Z

.field private mAlwaysInTapRegion:Z

.field private mContextClickListener:Landroid/view/GestureDetector$OnContextClickListener;

.field private mCurrentDownEvent:Landroid/view/MotionEvent;

.field private mDeferConfirmSingleTap:Z

.field private mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

.field private mDoubleTapSlopSquare:I

.field private mDoubleTapTouchSlopSquare:I

.field private mDownFocusX:F

.field private mDownFocusY:F

.field private final mHandler:Landroid/os/Handler;

.field private mIgnoreNextUpEvent:Z

.field private mInContextClick:Z

.field private mInLongPress:Z

.field private final mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

.field private mIsDoubleTapping:Z

.field private mIsLongpressEnabled:Z

.field private mLastFocusX:F

.field private mLastFocusY:F

.field private final mListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mMaximumFlingVelocity:I

.field private mMinimumFlingVelocity:I

.field private mPreviousUpEvent:Landroid/view/MotionEvent;

.field private mStillDown:Z

.field private mTouchSlopSquare:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 237
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Landroid/view/GestureDetector;->TAP_TIMEOUT:I

    .line 238
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Landroid/view/GestureDetector;->DOUBLE_TAP_TIMEOUT:I

    .line 239
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapMinTime()I

    move-result v0

    sput v0, Landroid/view/GestureDetector;->DOUBLE_TAP_MIN_TIME:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/view/GestureDetector$OnGestureListener;

    .prologue
    .line 380
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 381
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/view/GestureDetector$OnGestureListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string v0, "debug.gesture.verbose"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/GestureDetector;->DEBUG:Z

    .line 47
    const-string v0, "GestureDetector"

    iput-object v0, p0, Landroid/view/GestureDetector;->TAG:Ljava/lang/String;

    .line 283
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/view/InputEventConsistencyVerifier;

    invoke-direct {v0, p0, v1}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    :goto_0
    iput-object v0, p0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 396
    if-eqz p3, :cond_3

    .line 397
    new-instance v0, Landroid/view/GestureDetector$GestureHandler;

    invoke-direct {v0, p0, p3}, Landroid/view/GestureDetector$GestureHandler;-><init>(Landroid/view/GestureDetector;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    .line 401
    :goto_1
    iput-object p2, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 402
    instance-of v0, p2, Landroid/view/GestureDetector$OnDoubleTapListener;

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 403
    check-cast v0, Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-virtual {p0, v0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 405
    :cond_0
    instance-of v0, p2, Landroid/view/GestureDetector$OnContextClickListener;

    if-eqz v0, :cond_1

    .line 406
    check-cast p2, Landroid/view/GestureDetector$OnContextClickListener;

    .end local p2    # "listener":Landroid/view/GestureDetector$OnGestureListener;
    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->setContextClickListener(Landroid/view/GestureDetector$OnContextClickListener;)V

    .line 408
    :cond_1
    invoke-direct {p0, p1}, Landroid/view/GestureDetector;->init(Landroid/content/Context;)V

    .line 409
    return-void

    .line 283
    .restart local p2    # "listener":Landroid/view/GestureDetector$OnGestureListener;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 399
    :cond_3
    new-instance v0, Landroid/view/GestureDetector$GestureHandler;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector$GestureHandler;-><init>(Landroid/view/GestureDetector;)V

    iput-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/view/GestureDetector$OnGestureListener;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "unused"    # Z

    .prologue
    .line 426
    invoke-direct {p0, p1, p2, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 427
    return-void
.end method

.method public constructor <init>(Landroid/view/GestureDetector$OnGestureListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/GestureDetector$OnGestureListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 365
    invoke-direct {p0, v0, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 366
    return-void
.end method

.method public constructor <init>(Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/GestureDetector$OnGestureListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 347
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 348
    return-void
.end method

.method static synthetic access$000(Landroid/view/GestureDetector;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/GestureDetector;

    .prologue
    .line 44
    iget-boolean v0, p0, Landroid/view/GestureDetector;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Landroid/view/GestureDetector;)Landroid/view/MotionEvent;
    .locals 1
    .param p0, "x0"    # Landroid/view/GestureDetector;

    .prologue
    .line 44
    iget-object v0, p0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method static synthetic access$200(Landroid/view/GestureDetector;)Landroid/view/GestureDetector$OnGestureListener;
    .locals 1
    .param p0, "x0"    # Landroid/view/GestureDetector;

    .prologue
    .line 44
    iget-object v0, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    return-object v0
.end method

.method static synthetic access$300(Landroid/view/GestureDetector;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/GestureDetector;

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/view/GestureDetector;->dispatchLongPress()V

    return-void
.end method

.method static synthetic access$400(Landroid/view/GestureDetector;)Landroid/view/GestureDetector$OnDoubleTapListener;
    .locals 1
    .param p0, "x0"    # Landroid/view/GestureDetector;

    .prologue
    .line 44
    iget-object v0, p0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    return-object v0
.end method

.method static synthetic access$500(Landroid/view/GestureDetector;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/GestureDetector;

    .prologue
    .line 44
    iget-boolean v0, p0, Landroid/view/GestureDetector;->mStillDown:Z

    return v0
.end method

.method static synthetic access$602(Landroid/view/GestureDetector;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/view/GestureDetector;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    return p1
.end method

.method private cancel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 784
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 785
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 786
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 787
    iget-object v0, p0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 788
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 789
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    .line 790
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mStillDown:Z

    .line 791
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    .line 792
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    .line 793
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    .line 794
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    .line 795
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mInContextClick:Z

    .line 796
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mIgnoreNextUpEvent:Z

    .line 798
    iget-boolean v0, p0, Landroid/view/GestureDetector;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GestureDetector"

    const-string v1, "cancel()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    :cond_0
    return-void
.end method

.method private cancelTaps()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 803
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 804
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 805
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 806
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    .line 807
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    .line 808
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    .line 809
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    .line 810
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    .line 811
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mInContextClick:Z

    .line 812
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mIgnoreNextUpEvent:Z

    .line 814
    iget-boolean v0, p0, Landroid/view/GestureDetector;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GestureDetector"

    const-string v1, "cancelTaps()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    :cond_0
    return-void
.end method

.method private dispatchLongPress()V
    .locals 2

    .prologue
    .line 835
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 836
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    .line 837
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    .line 839
    iget-boolean v0, p0, Landroid/view/GestureDetector;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GestureDetector"

    const-string v1, "GestureHandler LONG_PRESS: dispatchLongPress(), onLongPress()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    :cond_0
    iget-object v0, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v1, p0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 842
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 430
    iget-object v4, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    if-nez v4, :cond_0

    .line 431
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "OnGestureListener must not be null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 433
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    .line 437
    if-nez p1, :cond_1

    .line 439
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v3

    .line 440
    .local v3, "touchSlop":I
    move v2, v3

    .line 441
    .local v2, "doubleTapTouchSlop":I
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapSlop()I

    move-result v1

    .line 443
    .local v1, "doubleTapSlop":I
    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v4

    iput v4, p0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    .line 444
    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v4

    iput v4, p0, Landroid/view/GestureDetector;->mMaximumFlingVelocity:I

    .line 453
    :goto_0
    mul-int v4, v3, v3

    iput v4, p0, Landroid/view/GestureDetector;->mTouchSlopSquare:I

    .line 454
    mul-int v4, v2, v2

    iput v4, p0, Landroid/view/GestureDetector;->mDoubleTapTouchSlopSquare:I

    .line 455
    mul-int v4, v1, v1

    iput v4, p0, Landroid/view/GestureDetector;->mDoubleTapSlopSquare:I

    .line 456
    return-void

    .line 446
    .end local v1    # "doubleTapSlop":I
    .end local v2    # "doubleTapTouchSlop":I
    .end local v3    # "touchSlop":I
    :cond_1
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 447
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    .line 448
    .restart local v3    # "touchSlop":I
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapTouchSlop()I

    move-result v2

    .line 449
    .restart local v2    # "doubleTapTouchSlop":I
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v1

    .line 450
    .restart local v1    # "doubleTapSlop":I
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v4

    iput v4, p0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    .line 451
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v4

    iput v4, p0, Landroid/view/GestureDetector;->mMaximumFlingVelocity:I

    goto :goto_0
.end method

.method private isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "firstDown"    # Landroid/view/MotionEvent;
    .param p2, "firstUp"    # Landroid/view/MotionEvent;
    .param p3, "secondDown"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 820
    iget-boolean v5, p0, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    if-nez v5, :cond_1

    .line 831
    :cond_0
    :goto_0
    return v4

    .line 824
    :cond_1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    sub-long v0, v6, v8

    .line 825
    .local v0, "deltaTime":J
    sget v5, Landroid/view/GestureDetector;->DOUBLE_TAP_TIMEOUT:I

    int-to-long v6, v5

    cmp-long v5, v0, v6

    if-gtz v5, :cond_0

    sget v5, Landroid/view/GestureDetector;->DOUBLE_TAP_MIN_TIME:I

    int-to-long v6, v5

    cmp-long v5, v0, v6

    if-ltz v5, :cond_0

    .line 829
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    sub-int v2, v5, v6

    .line 830
    .local v2, "deltaX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    sub-int v3, v5, v6

    .line 831
    .local v3, "deltaY":I
    mul-int v5, v2, v2

    mul-int v6, v3, v3

    add-int/2addr v5, v6

    iget v6, p0, Landroid/view/GestureDetector;->mDoubleTapSlopSquare:I

    if-ge v5, v6, :cond_0

    const/4 v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method public isLongpressEnabled()Z
    .locals 1

    .prologue
    .line 496
    iget-boolean v0, p0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    return v0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v5, 0x20

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 753
    iget-object v3, p0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v3, :cond_0

    .line 754
    iget-object v3, p0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v3, p1, v2}, Landroid/view/InputEventConsistencyVerifier;->onGenericMotionEvent(Landroid/view/MotionEvent;I)V

    .line 757
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionButton()I

    move-result v0

    .line 758
    .local v0, "actionButton":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_1
    :goto_0
    move v1, v2

    .line 780
    :goto_1
    return v1

    .line 760
    :pswitch_0
    iget-object v3, p0, Landroid/view/GestureDetector;->mContextClickListener:Landroid/view/GestureDetector$OnContextClickListener;

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Landroid/view/GestureDetector;->mInContextClick:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    if-nez v3, :cond_1

    if-eq v0, v5, :cond_2

    if-ne v0, v4, :cond_1

    .line 763
    :cond_2
    iget-object v3, p0, Landroid/view/GestureDetector;->mContextClickListener:Landroid/view/GestureDetector$OnContextClickListener;

    invoke-interface {v3, p1}, Landroid/view/GestureDetector$OnContextClickListener;->onContextClick(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 764
    iput-boolean v1, p0, Landroid/view/GestureDetector;->mInContextClick:Z

    .line 765
    iget-object v2, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 766
    iget-object v2, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_1

    .line 773
    :pswitch_1
    iget-boolean v3, p0, Landroid/view/GestureDetector;->mInContextClick:Z

    if-eqz v3, :cond_1

    if-eq v0, v5, :cond_3

    if-ne v0, v4, :cond_1

    .line 775
    :cond_3
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mInContextClick:Z

    .line 776
    iput-boolean v1, p0, Landroid/view/GestureDetector;->mIgnoreNextUpEvent:Z

    goto :goto_0

    .line 758
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 42
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v36, v0

    if-eqz v36, :cond_0

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    .line 513
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->DEBUG:Z

    move/from16 v36, v0

    if-eqz v36, :cond_1

    const-string v36, "GestureDetector"

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    .line 518
    .local v6, "action":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v36, v0

    if-nez v36, :cond_2

    .line 519
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 521
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 523
    and-int/lit16 v0, v6, 0xff

    move/from16 v36, v0

    const/16 v37, 0x6

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_3

    const/16 v22, 0x1

    .line 525
    .local v22, "pointerUp":Z
    :goto_0
    if-eqz v22, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v25

    .line 528
    .local v25, "skipIndex":I
    :goto_1
    const/16 v26, 0x0

    .local v26, "sumX":F
    const/16 v27, 0x0

    .line 529
    .local v27, "sumY":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    .line 530
    .local v7, "count":I
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_2
    move/from16 v0, v18

    if-ge v0, v7, :cond_6

    .line 531
    move/from16 v0, v25

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 530
    :goto_3
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 523
    .end local v7    # "count":I
    .end local v18    # "i":I
    .end local v22    # "pointerUp":Z
    .end local v25    # "skipIndex":I
    .end local v26    # "sumX":F
    .end local v27    # "sumY":F
    :cond_3
    const/16 v22, 0x0

    goto :goto_0

    .line 525
    .restart local v22    # "pointerUp":Z
    :cond_4
    const/16 v25, -0x1

    goto :goto_1

    .line 532
    .restart local v7    # "count":I
    .restart local v18    # "i":I
    .restart local v25    # "skipIndex":I
    .restart local v26    # "sumX":F
    .restart local v27    # "sumY":F
    :cond_5
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v36

    add-float v26, v26, v36

    .line 533
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v36

    add-float v27, v27, v36

    goto :goto_3

    .line 535
    :cond_6
    if-eqz v22, :cond_9

    add-int/lit8 v12, v7, -0x1

    .line 536
    .local v12, "div":I
    :goto_4
    int-to-float v0, v12

    move/from16 v36, v0

    div-float v14, v26, v36

    .line 537
    .local v14, "focusX":F
    int-to-float v0, v12

    move/from16 v36, v0

    div-float v15, v27, v36

    .line 539
    .local v15, "focusY":F
    const/16 v17, 0x0

    .line 541
    .local v17, "handled":Z
    and-int/lit16 v0, v6, 0xff

    move/from16 v36, v0

    packed-switch v36, :pswitch_data_0

    .line 738
    :cond_7
    :goto_5
    :pswitch_0
    if-nez v17, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v36, v0

    if-eqz v36, :cond_8

    .line 739
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    .line 741
    :cond_8
    return v17

    .end local v12    # "div":I
    .end local v14    # "focusX":F
    .end local v15    # "focusY":F
    .end local v17    # "handled":Z
    :cond_9
    move v12, v7

    .line 535
    goto :goto_4

    .line 543
    .restart local v12    # "div":I
    .restart local v14    # "focusX":F
    .restart local v15    # "focusY":F
    .restart local v17    # "handled":Z
    :pswitch_1
    move-object/from16 v0, p0

    iput v14, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    move-object/from16 v0, p0

    iput v14, v0, Landroid/view/GestureDetector;->mDownFocusX:F

    .line 544
    move-object/from16 v0, p0

    iput v15, v0, Landroid/view/GestureDetector;->mLastFocusY:F

    move-object/from16 v0, p0

    iput v15, v0, Landroid/view/GestureDetector;->mDownFocusY:F

    .line 546
    invoke-direct/range {p0 .. p0}, Landroid/view/GestureDetector;->cancelTaps()V

    .line 548
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->DEBUG:Z

    move/from16 v36, v0

    if-eqz v36, :cond_7

    const-string v36, "GestureDetector"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "et("

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v38

    invoke-virtual/range {v37 .. v39}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, ") MotionEvent.ACTION_POINTER_DOWN: mDownFocusX="

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mDownFocusX:F

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, ", mLastFocusX="

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, ", focusX="

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 553
    :pswitch_2
    move-object/from16 v0, p0

    iput v14, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    move-object/from16 v0, p0

    iput v14, v0, Landroid/view/GestureDetector;->mDownFocusX:F

    .line 554
    move-object/from16 v0, p0

    iput v15, v0, Landroid/view/GestureDetector;->mLastFocusY:F

    move-object/from16 v0, p0

    iput v15, v0, Landroid/view/GestureDetector;->mDownFocusY:F

    .line 556
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->DEBUG:Z

    move/from16 v36, v0

    if-eqz v36, :cond_a

    const-string v36, "GestureDetector"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "et("

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v38

    invoke-virtual/range {v37 .. v39}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, ") MotionEvent.ACTION_POINTER_UP: mDownFocusX="

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mDownFocusX:F

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, ", mLastFocusX="

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, ", focusX="

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v36, v0

    const/16 v37, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mMaximumFlingVelocity:I

    move/from16 v38, v0

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    invoke-virtual/range {v36 .. v38}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 562
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v28

    .line 563
    .local v28, "upIndex":I
    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v19

    .line 564
    .local v19, "id1":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v33

    .line 565
    .local v33, "x1":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v35

    .line 566
    .local v35, "y1":F
    const/16 v18, 0x0

    :goto_6
    move/from16 v0, v18

    if-ge v0, v7, :cond_7

    .line 567
    move/from16 v0, v18

    move/from16 v1, v28

    if-ne v0, v1, :cond_c

    .line 566
    :cond_b
    add-int/lit8 v18, v18, 0x1

    goto :goto_6

    .line 569
    :cond_c
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v20

    .line 570
    .local v20, "id2":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v36

    mul-float v32, v33, v36

    .line 571
    .local v32, "x":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v36

    mul-float v34, v35, v36

    .line 573
    .local v34, "y":F
    add-float v13, v32, v34

    .line 574
    .local v13, "dot":F
    const/16 v36, 0x0

    cmpg-float v36, v13, v36

    if-gez v36, :cond_b

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_5

    .line 582
    .end local v13    # "dot":F
    .end local v19    # "id1":I
    .end local v20    # "id2":I
    .end local v28    # "upIndex":I
    .end local v32    # "x":F
    .end local v33    # "x1":F
    .end local v34    # "y":F
    .end local v35    # "y1":F
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v36, v0

    if-eqz v36, :cond_10

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v36, v0

    const/16 v37, 0x3

    invoke-virtual/range {v36 .. v37}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v16

    .line 584
    .local v16, "hadTapMessage":Z
    if-eqz v16, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v36, v0

    const/16 v37, 0x3

    invoke-virtual/range {v36 .. v37}, Landroid/os/Handler;->removeMessages(I)V

    .line 585
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v36, v0

    if-eqz v36, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v36, v0

    if-eqz v36, :cond_15

    if-eqz v16, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Landroid/view/GestureDetector;->isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v36

    if-eqz v36, :cond_15

    .line 588
    const/16 v36, 0x1

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    .line 591
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->DEBUG:Z

    move/from16 v36, v0

    if-eqz v36, :cond_e

    const-string v36, "GestureDetector"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "et("

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v38

    invoke-virtual/range {v37 .. v39}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, ") MotionEvent.ACTION_DOWN: onDoubleTap()"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v37, v0

    invoke-interface/range {v36 .. v37}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v36

    or-int v17, v17, v36

    .line 596
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->DEBUG:Z

    move/from16 v36, v0

    if-eqz v36, :cond_f

    const-string v36, "GestureDetector"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "et("

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v38

    invoke-virtual/range {v37 .. v39}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, ") MotionEvent.ACTION_DOWN: onDoubleTapEvent()"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v36

    or-int v17, v17, v36

    .line 605
    .end local v16    # "hadTapMessage":Z
    :cond_10
    :goto_7
    move-object/from16 v0, p0

    iput v14, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    move-object/from16 v0, p0

    iput v14, v0, Landroid/view/GestureDetector;->mDownFocusX:F

    .line 606
    move-object/from16 v0, p0

    iput v15, v0, Landroid/view/GestureDetector;->mLastFocusY:F

    move-object/from16 v0, p0

    iput v15, v0, Landroid/view/GestureDetector;->mDownFocusY:F

    .line 608
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->DEBUG:Z

    move/from16 v36, v0

    if-eqz v36, :cond_11

    const-string v36, "GestureDetector"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "et("

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v38

    invoke-virtual/range {v37 .. v39}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, ") MotionEvent.ACTION_DOWN: mDownFocusX="

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mDownFocusX:F

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, ", mLastFocusX="

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, ", focusX="

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v36, v0

    if-eqz v36, :cond_12

    .line 611
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/view/MotionEvent;->recycle()V

    .line 613
    :cond_12
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 614
    const/16 v36, 0x1

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    .line 615
    const/16 v36, 0x1

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    .line 616
    const/16 v36, 0x1

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mStillDown:Z

    .line 617
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mInLongPress:Z

    .line 618
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    .line 620
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    move/from16 v36, v0

    if-eqz v36, :cond_13

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v36, v0

    const/16 v37, 0x2

    invoke-virtual/range {v36 .. v37}, Landroid/os/Handler;->removeMessages(I)V

    .line 623
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v36, v0

    const/16 v37, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v38

    sget v40, Landroid/view/GestureDetector;->TAP_TIMEOUT:I

    move/from16 v0, v40

    int-to-long v0, v0

    move-wide/from16 v40, v0

    add-long v38, v38, v40

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v40

    move/from16 v0, v40

    int-to-long v0, v0

    move-wide/from16 v40, v0

    add-long v38, v38, v40

    invoke-virtual/range {v36 .. v39}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 627
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v38

    sget v40, Landroid/view/GestureDetector;->TAP_TIMEOUT:I

    move/from16 v0, v40

    int-to-long v0, v0

    move-wide/from16 v40, v0

    add-long v38, v38, v40

    invoke-virtual/range {v36 .. v39}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 629
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->DEBUG:Z

    move/from16 v36, v0

    if-eqz v36, :cond_14

    const-string v36, "GestureDetector"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "et("

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v38

    invoke-virtual/range {v37 .. v39}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, ") MotionEvent.ACTION_DOWN: onDown()"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v36

    or-int v17, v17, v36

    .line 632
    goto/16 :goto_5

    .line 601
    .restart local v16    # "hadTapMessage":Z
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v36, v0

    const/16 v37, 0x3

    sget v38, Landroid/view/GestureDetector;->DOUBLE_TAP_TIMEOUT:I

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    invoke-virtual/range {v36 .. v39}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_7

    .line 635
    .end local v16    # "hadTapMessage":Z
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mInLongPress:Z

    move/from16 v36, v0

    if-nez v36, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mInContextClick:Z

    move/from16 v36, v0

    if-nez v36, :cond_7

    .line 638
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    move/from16 v36, v0

    sub-float v23, v36, v14

    .line 639
    .local v23, "scrollX":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mLastFocusY:F

    move/from16 v36, v0

    sub-float v24, v36, v15

    .line 640
    .local v24, "scrollY":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    move/from16 v36, v0

    if-eqz v36, :cond_17

    .line 643
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->DEBUG:Z

    move/from16 v36, v0

    if-eqz v36, :cond_16

    const-string v36, "GestureDetector"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "et("

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v38

    invoke-virtual/range {v37 .. v39}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, ") MotionEvent.ACTION_MOVE: onDoubleTapEvent()"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v36

    or-int v17, v17, v36

    goto/16 :goto_5

    .line 646
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    move/from16 v36, v0

    if-eqz v36, :cond_1a

    .line 647
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mDownFocusX:F

    move/from16 v36, v0

    sub-float v36, v14, v36

    move/from16 v0, v36

    float-to-int v9, v0

    .line 648
    .local v9, "deltaX":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mDownFocusY:F

    move/from16 v36, v0

    sub-float v36, v15, v36

    move/from16 v0, v36

    float-to-int v10, v0

    .line 649
    .local v10, "deltaY":I
    mul-int v36, v9, v9

    mul-int v37, v10, v10

    add-int v11, v36, v37

    .line 650
    .local v11, "distance":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mTouchSlopSquare:I

    move/from16 v36, v0

    move/from16 v0, v36

    if-le v11, v0, :cond_19

    .line 652
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->DEBUG:Z

    move/from16 v36, v0

    if-eqz v36, :cond_18

    const-string v36, "GestureDetector"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "et("

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v38

    invoke-virtual/range {v37 .. v39}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, ") MotionEvent.ACTION_MOVE: onScroll(), mAlwaysInTapRegion="

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "->false"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v37, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, p1

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v17

    .line 655
    move-object/from16 v0, p0

    iput v14, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    .line 656
    move-object/from16 v0, p0

    iput v15, v0, Landroid/view/GestureDetector;->mLastFocusY:F

    .line 657
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    .line 658
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v36, v0

    const/16 v37, 0x3

    invoke-virtual/range {v36 .. v37}, Landroid/os/Handler;->removeMessages(I)V

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    invoke-virtual/range {v36 .. v37}, Landroid/os/Handler;->removeMessages(I)V

    .line 660
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v36, v0

    const/16 v37, 0x2

    invoke-virtual/range {v36 .. v37}, Landroid/os/Handler;->removeMessages(I)V

    .line 662
    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mDoubleTapTouchSlopSquare:I

    move/from16 v36, v0

    move/from16 v0, v36

    if-le v11, v0, :cond_7

    .line 663
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    goto/16 :goto_5

    .line 665
    .end local v9    # "deltaX":I
    .end local v10    # "deltaY":I
    .end local v11    # "distance":I
    :cond_1a
    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(F)F

    move-result v36

    const/high16 v37, 0x3f800000    # 1.0f

    cmpl-float v36, v36, v37

    if-gez v36, :cond_1b

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v36

    const/high16 v37, 0x3f800000    # 1.0f

    cmpl-float v36, v36, v37

    if-ltz v36, :cond_7

    .line 667
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->DEBUG:Z

    move/from16 v36, v0

    if-eqz v36, :cond_1c

    const-string v36, "GestureDetector"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "et("

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v38

    invoke-virtual/range {v37 .. v39}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, ") MotionEvent.ACTION_MOVE: onScroll()"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v37, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, p1

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v17

    .line 670
    move-object/from16 v0, p0

    iput v14, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    .line 671
    move-object/from16 v0, p0

    iput v15, v0, Landroid/view/GestureDetector;->mLastFocusY:F

    .line 673
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->DEBUG:Z

    move/from16 v36, v0

    if-eqz v36, :cond_7

    const-string v36, "GestureDetector"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "et("

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v38

    invoke-virtual/range {v37 .. v39}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, ") MotionEvent.ACTION_MOVE: mDownFocusX="

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mDownFocusX:F

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, ", mLastFocusX="

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, ", focusX="

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 679
    .end local v23    # "scrollX":F
    .end local v24    # "scrollY":F
    :pswitch_5
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mStillDown:Z

    .line 680
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v8

    .line 681
    .local v8, "currentUpEvent":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    move/from16 v36, v0

    if-eqz v36, :cond_21

    .line 684
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->DEBUG:Z

    move/from16 v36, v0

    if-eqz v36, :cond_1d

    const-string v36, "GestureDetector"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "et("

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v38

    invoke-virtual/range {v37 .. v39}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, ") MotionEvent.ACTION_UP: onDoubleTapEvent()"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v36

    or-int v17, v17, v36

    .line 715
    :cond_1e
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v36, v0

    if-eqz v36, :cond_1f

    .line 716
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/view/MotionEvent;->recycle()V

    .line 719
    :cond_1f
    move-object/from16 v0, p0

    iput-object v8, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    .line 720
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v36, v0

    if-eqz v36, :cond_20

    .line 723
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/view/VelocityTracker;->recycle()V

    .line 724
    const/16 v36, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 726
    :cond_20
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    .line 727
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    .line 728
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mIgnoreNextUpEvent:Z

    .line 729
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    invoke-virtual/range {v36 .. v37}, Landroid/os/Handler;->removeMessages(I)V

    .line 730
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v36, v0

    const/16 v37, 0x2

    invoke-virtual/range {v36 .. v37}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_5

    .line 687
    :cond_21
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mInLongPress:Z

    move/from16 v36, v0

    if-eqz v36, :cond_22

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v36, v0

    const/16 v37, 0x3

    invoke-virtual/range {v36 .. v37}, Landroid/os/Handler;->removeMessages(I)V

    .line 689
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mInLongPress:Z

    goto :goto_8

    .line 690
    :cond_22
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    move/from16 v36, v0

    if-eqz v36, :cond_24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mIgnoreNextUpEvent:Z

    move/from16 v36, v0

    if-nez v36, :cond_24

    .line 692
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->DEBUG:Z

    move/from16 v36, v0

    if-eqz v36, :cond_23

    const-string v36, "GestureDetector"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "et("

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v38

    invoke-virtual/range {v37 .. v39}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, ") MotionEvent.ACTION_UP: onSingleTapUp()"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v17

    .line 695
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    move/from16 v36, v0

    if-eqz v36, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v36, v0

    if-eqz v36, :cond_1e

    .line 696
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    goto/16 :goto_8

    .line 698
    :cond_24
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mIgnoreNextUpEvent:Z

    move/from16 v36, v0

    if-nez v36, :cond_1e

    .line 701
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v29, v0

    .line 702
    .local v29, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v36, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v21

    .line 703
    .local v21, "pointerId":I
    const/16 v36, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mMaximumFlingVelocity:I

    move/from16 v37, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    move-object/from16 v0, v29

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 704
    move-object/from16 v0, v29

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v31

    .line 705
    .local v31, "velocityY":F
    move-object/from16 v0, v29

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v30

    .line 707
    .local v30, "velocityX":F
    invoke-static/range {v31 .. v31}, Ljava/lang/Math;->abs(F)F

    move-result v36

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    move/from16 v37, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    cmpl-float v36, v36, v37

    if-gtz v36, :cond_25

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->abs(F)F

    move-result v36

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    move/from16 v37, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    cmpl-float v36, v36, v37

    if-lez v36, :cond_1e

    .line 710
    :cond_25
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->DEBUG:Z

    move/from16 v36, v0

    if-eqz v36, :cond_26

    const-string v36, "GestureDetector"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "et("

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v38

    invoke-virtual/range {v37 .. v39}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, ") MotionEvent.ACTION_UP: onFling()"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v37, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, p1

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/GestureDetector$OnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v17

    goto/16 :goto_8

    .line 734
    .end local v8    # "currentUpEvent":Landroid/view/MotionEvent;
    .end local v21    # "pointerId":I
    .end local v29    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v30    # "velocityX":F
    .end local v31    # "velocityY":F
    :pswitch_6
    invoke-direct/range {p0 .. p0}, Landroid/view/GestureDetector;->cancel()V

    goto/16 :goto_5

    .line 541
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setContextClickListener(Landroid/view/GestureDetector$OnContextClickListener;)V
    .locals 0
    .param p1, "onContextClickListener"    # Landroid/view/GestureDetector$OnContextClickListener;

    .prologue
    .line 476
    iput-object p1, p0, Landroid/view/GestureDetector;->mContextClickListener:Landroid/view/GestureDetector$OnContextClickListener;

    .line 477
    return-void
.end method

.method public setIsLongpressEnabled(Z)V
    .locals 0
    .param p1, "isLongpressEnabled"    # Z

    .prologue
    .line 489
    iput-boolean p1, p0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    .line 490
    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 0
    .param p1, "onDoubleTapListener"    # Landroid/view/GestureDetector$OnDoubleTapListener;

    .prologue
    .line 466
    iput-object p1, p0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 467
    return-void
.end method
