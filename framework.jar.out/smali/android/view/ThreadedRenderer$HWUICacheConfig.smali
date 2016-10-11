.class Landroid/view/ThreadedRenderer$HWUICacheConfig;
.super Ljava/lang/Object;
.source "ThreadedRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ThreadedRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HWUICacheConfig"
.end annotation


# static fields
.field private static mDensityDpi:I

.field private static mIsHtcApp:Z

.field private static mIsNeedDeferredHWUICache:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 588
    sput v0, Landroid/view/ThreadedRenderer$HWUICacheConfig;->mDensityDpi:I

    .line 589
    sput-boolean v0, Landroid/view/ThreadedRenderer$HWUICacheConfig;->mIsHtcApp:Z

    .line 591
    sput-boolean v0, Landroid/view/ThreadedRenderer$HWUICacheConfig;->mIsNeedDeferredHWUICache:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 574
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setHWUICacheConfig()V
    .locals 2

    .prologue
    .line 576
    sget-boolean v0, Landroid/view/ThreadedRenderer$HWUICacheConfig;->mIsNeedDeferredHWUICache:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 577
    const/4 v0, 0x0

    sput-boolean v0, Landroid/view/ThreadedRenderer$HWUICacheConfig;->mIsNeedDeferredHWUICache:Z

    .line 578
    sget v0, Landroid/view/ThreadedRenderer$HWUICacheConfig;->mDensityDpi:I

    sget-boolean v1, Landroid/view/ThreadedRenderer$HWUICacheConfig;->mIsHtcApp:Z

    # invokes: Landroid/view/ThreadedRenderer;->nSetHWUICacheConfig(IZ)V
    invoke-static {v0, v1}, Landroid/view/ThreadedRenderer;->access$200(IZ)V

    .line 580
    :cond_0
    return-void
.end method

.method public static setHWUICacheConfigDefer(IZ)V
    .locals 1
    .param p0, "densityDpi"    # I
    .param p1, "isHtcApp"    # Z

    .prologue
    .line 583
    sput p0, Landroid/view/ThreadedRenderer$HWUICacheConfig;->mDensityDpi:I

    .line 584
    sput-boolean p1, Landroid/view/ThreadedRenderer$HWUICacheConfig;->mIsHtcApp:Z

    .line 585
    const/4 v0, 0x1

    sput-boolean v0, Landroid/view/ThreadedRenderer$HWUICacheConfig;->mIsNeedDeferredHWUICache:Z

    .line 586
    return-void
.end method
