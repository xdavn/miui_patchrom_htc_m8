.class public Landroid/hardware/Camera$Face;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Face"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public id:I

.field public leftEye:Landroid/graphics/Point;

.field public mouth:Landroid/graphics/Point;

.field public rect:Landroid/graphics/Rect;

.field public rightEye:Landroid/graphics/Point;

.field public score:I

.field public smile_degree:I

.field public smile_score:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2327
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/Camera$Face;->id:I

    .line 2336
    iput-object v1, p0, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    .line 2345
    iput-object v1, p0, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    .line 2354
    iput-object v1, p0, Landroid/hardware/Camera$Face;->mouth:Landroid/graphics/Point;

    .line 2268
    return-void
.end method
