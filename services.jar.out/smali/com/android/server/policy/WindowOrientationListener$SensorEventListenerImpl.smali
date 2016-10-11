.class final Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;
.super Ljava/lang/Object;
.source "WindowOrientationListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/WindowOrientationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SensorEventListenerImpl"
.end annotation


# static fields
.field private static final ACCELEROMETER_DATA_X:I = 0x0

.field private static final ACCELEROMETER_DATA_Y:I = 0x1

.field private static final ACCELEROMETER_DATA_Z:I = 0x2

.field private static final ADJACENT_ORIENTATION_ANGLE_GAP:I = 0x2d

.field private static final FILTER_TIME_CONSTANT_MS:F = 200.0f

.field private static final FLAT_ANGLE:F = 80.0f

.field private static final FLAT_TIME_NANOS:J = 0x3b9aca00L

.field private static final MAX_FILTER_DELTA_TIME_NANOS:J = 0x3b9aca00L

.field private static final MAX_TILT:I = 0x50

.field private static final NANOS_PER_MS:J = 0xf4240L

.field private static final NEAR_ZERO_MAGNITUDE:F = 1.0f

.field private static final PROPOSAL_MIN_TIME_SINCE_ACCELERATION_ENDED_NANOS:J = 0x1dcd6500L

.field private static final PROPOSAL_MIN_TIME_SINCE_FLAT_ENDED_NANOS:J = 0x1dcd6500L

.field private static final PROPOSAL_MIN_TIME_SINCE_SWING_ENDED_NANOS:J = 0x11e1a300L

.field private static final PROPOSAL_MIN_TIME_SINCE_TOUCH_END_NANOS:J = 0x1dcd6500L

.field private static final PROPOSAL_SETTLE_TIME_NANOS:J = 0x2625a00L

.field private static final RADIANS_TO_DEGREES:F = 57.29578f

.field private static final SWING_AWAY_ANGLE_DELTA:F = 20.0f

.field private static final SWING_TIME_NANOS:J = 0x11e1a300L

.field private static final TILT_HISTORY_SIZE:I = 0xc8

.field private static final TILT_OVERHEAD_ENTER:I = -0x28

.field private static final TILT_OVERHEAD_EXIT:I = -0xf


# instance fields
.field private final ACCELERATION_TOLERANCE:F

.field private final MAX_ACCELERATION_MAGNITUDE:F

.field private final MIN_ACCELERATION_MAGNITUDE:F

.field private mAccelerating:Z

.field private mAccelerationTimestampNanos:J

.field private mFlat:Z

.field private mFlatTimestampNanos:J

.field private mLastFilteredTimestampNanos:J

.field private mLastFilteredX:F

.field private mLastFilteredY:F

.field private mLastFilteredZ:F

.field private mOverhead:Z

.field private mPredictedRotation:I

.field private mPredictedRotationTimestampNanos:J

.field private mProposedRotation:I

.field private mSwingTimestampNanos:J

.field private mSwinging:Z

.field private mTiltHistory:[F

.field private mTiltHistoryIndex:I

.field private mTiltHistoryTimestampNanos:[J

.field private final mTiltToleranceConfig:[[I

.field private mTouchEndedTimestampNanos:J

.field private mTouched:Z

.field final synthetic this$0:Lcom/android/server/policy/WindowOrientationListener;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/WindowOrientationListener;Landroid/content/Context;)V
    .locals 11
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x1

    const/4 v8, 0x0

    const v7, 0x411ce80a

    const/4 v6, 0x2

    .line 449
    iput-object p1, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->this$0:Lcom/android/server/policy/WindowOrientationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    const-string v4, "sense_version"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/htc/customization/HtcCustomizationSystemReaderImpl;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    const/high16 v4, 0x40800000    # 4.0f

    :goto_0
    iput v4, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->ACCELERATION_TOLERANCE:F

    .line 367
    iget v4, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->ACCELERATION_TOLERANCE:F

    sub-float v4, v7, v4

    iput v4, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->MIN_ACCELERATION_MAGNITUDE:F

    .line 369
    iget v4, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->ACCELERATION_TOLERANCE:F

    add-float/2addr v4, v7

    iput v4, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->MAX_ACCELERATION_MAGNITUDE:F

    .line 404
    new-array v4, v10, [[I

    new-array v5, v6, [I

    fill-array-data v5, :array_0

    aput-object v5, v4, v8

    new-array v5, v6, [I

    fill-array-data v5, :array_1

    aput-object v5, v4, v9

    new-array v5, v6, [I

    fill-array-data v5, :array_2

    aput-object v5, v4, v6

    const/4 v5, 0x3

    new-array v6, v6, [I

    fill-array-data v6, :array_3

    aput-object v6, v4, v5

    iput-object v4, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mTiltToleranceConfig:[[I

    .line 437
    const-wide/high16 v4, -0x8000000000000000L

    iput-wide v4, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mTouchEndedTimestampNanos:J

    .line 445
    const/16 v4, 0xc8

    new-array v4, v4, [F

    iput-object v4, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistory:[F

    .line 446
    const/16 v4, 0xc8

    new-array v4, v4, [J

    iput-object v4, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryTimestampNanos:[J

    .line 451
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070019

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 453
    .local v3, "tiltTolerance":[I
    array-length v4, v3

    const/16 v5, 0x8

    if-ne v4, v5, :cond_2

    .line 454
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v10, :cond_3

    .line 455
    mul-int/lit8 v4, v0, 0x2

    aget v2, v3, v4

    .line 456
    .local v2, "min":I
    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    aget v1, v3, v4

    .line 457
    .local v1, "max":I
    const/16 v4, -0x5a

    if-lt v2, v4, :cond_1

    if-gt v2, v1, :cond_1

    const/16 v4, 0x5a

    if-gt v1, v4, :cond_1

    .line 458
    iget-object v4, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mTiltToleranceConfig:[[I

    aget-object v4, v4, v0

    aput v2, v4, v8

    .line 459
    iget-object v4, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mTiltToleranceConfig:[[I

    aget-object v4, v4, v0

    aput v1, v4, v9

    .line 454
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 365
    .end local v0    # "i":I
    .end local v1    # "max":I
    .end local v2    # "min":I
    .end local v3    # "tiltTolerance":[I
    :cond_0
    const v4, 0x40266666    # 2.6f

    goto :goto_0

    .line 461
    .restart local v0    # "i":I
    .restart local v1    # "max":I
    .restart local v2    # "min":I
    .restart local v3    # "tiltTolerance":[I
    :cond_1
    const-string v4, "WindowOrientationListener"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "config_autoRotationTiltTolerance contains invalid range: min="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", max="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 466
    .end local v0    # "i":I
    .end local v1    # "max":I
    .end local v2    # "min":I
    :cond_2
    const-string v4, "WindowOrientationListener"

    const-string v5, "config_autoRotationTiltTolerance should have exactly 8 elements"

    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_3
    return-void

    .line 404
    :array_0
    .array-data 4
        -0x19
        0x46
    .end array-data

    :array_1
    .array-data 4
        -0x19
        0x41
    .end array-data

    :array_2
    .array-data 4
        -0x19
        0x3c
    .end array-data

    :array_3
    .array-data 4
        -0x19
        0x41
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->resetLocked()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->onTouchStartLocked()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;
    .param p1, "x1"    # J

    .prologue
    .line 263
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->onTouchEndLocked(J)V

    return-void
.end method

.method private addTiltHistoryEntryLocked(JF)V
    .locals 5
    .param p1, "now"    # J
    .param p3, "tilt"    # F

    .prologue
    .line 843
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistory:[F

    iget v1, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryIndex:I

    aput p3, v0, v1

    .line 844
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryTimestampNanos:[J

    iget v1, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryIndex:I

    aput-wide p1, v0, v1

    .line 845
    iget v0, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit16 v0, v0, 0xc8

    iput v0, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryIndex:I

    .line 846
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryTimestampNanos:[J

    iget v1, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryIndex:I

    const-wide/high16 v2, -0x8000000000000000L

    aput-wide v2, v0, v1

    .line 847
    return-void
.end method

.method private clearPredictedRotationLocked()V
    .locals 2

    .prologue
    .line 821
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotation:I

    .line 822
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotationTimestampNanos:J

    .line 823
    return-void
.end method

.method private clearTiltHistoryLocked()V
    .locals 4

    .prologue
    .line 838
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryTimestampNanos:[J

    const/4 v1, 0x0

    const-wide/high16 v2, -0x8000000000000000L

    aput-wide v2, v0, v1

    .line 839
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryIndex:I

    .line 840
    return-void
.end method

.method private getLastTiltLocked()F
    .locals 2

    .prologue
    .line 881
    iget v1, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryIndex:I

    invoke-direct {p0, v1}, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->nextTiltHistoryIndexLocked(I)I

    move-result v0

    .line 882
    .local v0, "index":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistory:[F

    aget v1, v1, v0

    :goto_0
    return v1

    :cond_0
    const/high16 v1, 0x7fc00000    # NaNf

    goto :goto_0
.end method

.method private isAcceleratingLocked(F)Z
    .locals 1
    .param p1, "magnitude"    # F

    .prologue
    .line 833
    iget v0, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->MIN_ACCELERATION_MAGNITUDE:F

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->MAX_ACCELERATION_MAGNITUDE:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFlatLocked(J)Z
    .locals 7
    .param p1, "now"    # J

    .prologue
    .line 850
    iget v0, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryIndex:I

    .local v0, "i":I
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->nextTiltHistoryIndexLocked(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 851
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistory:[F

    aget v1, v1, v0

    const/high16 v2, 0x42a00000    # 80.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 859
    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 854
    :cond_2
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryTimestampNanos:[J

    aget-wide v2, v1, v0

    const-wide/32 v4, 0x3b9aca00

    add-long/2addr v2, v4

    cmp-long v1, v2, p1

    if-gtz v1, :cond_0

    .line 856
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isOrientationAngleAcceptableLocked(II)Z
    .locals 5
    .param p1, "rotation"    # I
    .param p2, "orientationAngle"    # I

    .prologue
    const/4 v3, 0x0

    .line 726
    iget-object v4, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->this$0:Lcom/android/server/policy/WindowOrientationListener;

    # getter for: Lcom/android/server/policy/WindowOrientationListener;->mCurrentRotation:I
    invoke-static {v4}, Lcom/android/server/policy/WindowOrientationListener;->access$600(Lcom/android/server/policy/WindowOrientationListener;)I

    move-result v0

    .line 727
    .local v0, "currentRotation":I
    if-ltz v0, :cond_5

    .line 732
    if-eq p1, v0, :cond_0

    add-int/lit8 v4, v0, 0x1

    rem-int/lit8 v4, v4, 0x4

    if-ne p1, v4, :cond_3

    .line 734
    :cond_0
    mul-int/lit8 v4, p1, 0x5a

    add-int/lit8 v4, v4, -0x2d

    add-int/lit8 v1, v4, 0x16

    .line 736
    .local v1, "lowerBound":I
    if-nez p1, :cond_2

    .line 737
    const/16 v4, 0x13b

    if-lt p2, v4, :cond_3

    add-int/lit16 v4, v1, 0x168

    if-ge p2, v4, :cond_3

    .line 766
    .end local v1    # "lowerBound":I
    :cond_1
    :goto_0
    return v3

    .line 741
    .restart local v1    # "lowerBound":I
    :cond_2
    if-lt p2, v1, :cond_1

    .line 751
    .end local v1    # "lowerBound":I
    :cond_3
    if-eq p1, v0, :cond_4

    add-int/lit8 v4, v0, 0x3

    rem-int/lit8 v4, v4, 0x4

    if-ne p1, v4, :cond_5

    .line 753
    :cond_4
    mul-int/lit8 v4, p1, 0x5a

    add-int/lit8 v4, v4, 0x2d

    add-int/lit8 v2, v4, -0x16

    .line 755
    .local v2, "upperBound":I
    if-nez p1, :cond_6

    .line 756
    const/16 v4, 0x2d

    if-gt p2, v4, :cond_5

    if-gt p2, v2, :cond_1

    .line 766
    .end local v2    # "upperBound":I
    :cond_5
    const/4 v3, 0x1

    goto :goto_0

    .line 760
    .restart local v2    # "upperBound":I
    :cond_6
    if-le p2, v2, :cond_5

    goto :goto_0
.end method

.method private isPredictedRotationAcceptableLocked(J)Z
    .locals 9
    .param p1, "now"    # J

    .prologue
    const-wide/32 v6, 0x1dcd6500

    const/4 v0, 0x0

    .line 775
    iget-wide v2, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotationTimestampNanos:J

    const-wide/32 v4, 0x2625a00

    add-long/2addr v2, v4

    cmp-long v1, p1, v2

    if-gez v1, :cond_1

    .line 803
    :cond_0
    :goto_0
    return v0

    .line 780
    :cond_1
    iget-wide v2, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mFlatTimestampNanos:J

    add-long/2addr v2, v6

    cmp-long v1, p1, v2

    if-ltz v1, :cond_0

    .line 786
    iget-wide v2, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mSwingTimestampNanos:J

    const-wide/32 v4, 0x11e1a300

    add-long/2addr v2, v4

    cmp-long v1, p1, v2

    if-ltz v1, :cond_0

    .line 791
    iget-wide v2, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mAccelerationTimestampNanos:J

    add-long/2addr v2, v6

    cmp-long v1, p1, v2

    if-ltz v1, :cond_0

    .line 797
    iget-boolean v1, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mTouched:Z

    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mTouchEndedTimestampNanos:J

    add-long/2addr v2, v6

    cmp-long v1, p1, v2

    if-ltz v1, :cond_0

    .line 803
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isSwingingLocked(JF)Z
    .locals 7
    .param p1, "now"    # J
    .param p3, "tilt"    # F

    .prologue
    .line 863
    iget v0, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryIndex:I

    .local v0, "i":I
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->nextTiltHistoryIndexLocked(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 864
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryTimestampNanos:[J

    aget-wide v2, v1, v0

    const-wide/32 v4, 0x11e1a300

    add-long/2addr v2, v4

    cmp-long v1, v2, p1

    if-gez v1, :cond_2

    .line 872
    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 867
    :cond_2
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistory:[F

    aget v1, v1, v0

    const/high16 v2, 0x41a00000    # 20.0f

    add-float/2addr v1, v2

    cmpg-float v1, v1, p3

    if-gtz v1, :cond_0

    .line 869
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isTiltAngleAcceptableLocked(II)Z
    .locals 3
    .param p1, "rotation"    # I
    .param p2, "tiltAngle"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 712
    iget-object v2, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mTiltToleranceConfig:[[I

    aget-object v2, v2, p1

    aget v2, v2, v1

    if-lt p2, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mTiltToleranceConfig:[[I

    aget-object v2, v2, p1

    aget v2, v2, v0

    if-gt p2, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private nextTiltHistoryIndexLocked(I)I
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 876
    if-nez p1, :cond_0

    const/16 p1, 0xc8

    .end local p1    # "index":I
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 877
    .restart local p1    # "index":I
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryTimestampNanos:[J

    aget-wide v0, v0, p1

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .end local p1    # "index":I
    :goto_0
    return p1

    .restart local p1    # "index":I
    :cond_1
    const/4 p1, -0x1

    goto :goto_0
.end method

.method private onTouchEndLocked(J)V
    .locals 1
    .param p1, "whenElapsedNanos"    # J

    .prologue
    .line 894
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mTouched:Z

    .line 895
    iput-wide p1, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mTouchEndedTimestampNanos:J

    .line 896
    return-void
.end method

.method private onTouchStartLocked()V
    .locals 1

    .prologue
    .line 890
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mTouched:Z

    .line 891
    return-void
.end method

.method private remainingMS(JJ)F
    .locals 3
    .param p1, "now"    # J
    .param p3, "until"    # J

    .prologue
    .line 886
    cmp-long v0, p1, p3

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sub-long v0, p3, p1

    long-to-float v0, v0

    const v1, 0x358637bd    # 1.0E-6f

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method private resetLocked()V
    .locals 4

    .prologue
    const-wide/high16 v2, -0x8000000000000000L

    const/4 v1, 0x0

    .line 807
    iput-wide v2, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredTimestampNanos:J

    .line 808
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mProposedRotation:I

    .line 809
    iput-wide v2, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mFlatTimestampNanos:J

    .line 810
    iput-boolean v1, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mFlat:Z

    .line 811
    iput-wide v2, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mSwingTimestampNanos:J

    .line 812
    iput-boolean v1, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mSwinging:Z

    .line 813
    iput-wide v2, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mAccelerationTimestampNanos:J

    .line 814
    iput-boolean v1, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mAccelerating:Z

    .line 815
    iput-boolean v1, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mOverhead:Z

    .line 816
    invoke-direct {p0}, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->clearPredictedRotationLocked()V

    .line 817
    invoke-direct {p0}, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->clearTiltHistoryLocked()V

    .line 818
    return-void
.end method

.method private updatePredictedRotationLocked(JI)V
    .locals 1
    .param p1, "now"    # J
    .param p3, "rotation"    # I

    .prologue
    .line 826
    iget v0, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotation:I

    if-eq v0, p3, :cond_0

    .line 827
    iput p3, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotation:I

    .line 828
    iput-wide p1, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotationTimestampNanos:J

    .line 830
    :cond_0
    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 475
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mProposedRotation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mProposedRotation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 476
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mPredictedRotation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 477
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mLastFilteredX="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredX:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 478
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mLastFilteredY="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredY:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 479
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mLastFilteredZ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredZ:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 480
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredTimestampNanos:J

    sub-long v0, v4, v6

    .line 481
    .local v0, "delta":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mLastFilteredTimestampNanos="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredTimestampNanos:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    long-to-float v4, v0

    const v5, 0x358637bd    # 1.0E-6f

    mul-float/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms ago)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 483
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mTiltHistory={last: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->getLastTiltLocked()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 484
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mFlat="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mFlat:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 485
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mSwinging="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mSwinging:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 486
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mAccelerating="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mAccelerating:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 487
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mOverhead="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mOverhead:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 488
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mTouched="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mTouched:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 489
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mTiltToleranceConfig=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 490
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    .line 491
    if-eqz v2, :cond_0

    .line 492
    const-string v3, ", "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 494
    :cond_0
    const-string v3, "["

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 495
    iget-object v3, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mTiltToleranceConfig:[[I

    aget-object v3, v3, v2

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 496
    const-string v3, ", "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 497
    iget-object v3, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mTiltToleranceConfig:[[I

    aget-object v3, v3, v2

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 498
    const-string v3, "]"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 490
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 500
    :cond_1
    const-string v3, "]"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 501
    return-void
.end method

.method public getProposedRotationLocked()I
    .locals 1

    .prologue
    .line 471
    iget v0, p0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mProposedRotation:I

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 505
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 32
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->this$0:Lcom/android/server/policy/WindowOrientationListener;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/policy/WindowOrientationListener;->mLock:Ljava/lang/Object;
    invoke-static/range {v24 .. v24}, Lcom/android/server/policy/WindowOrientationListener;->access$300(Lcom/android/server/policy/WindowOrientationListener;)Ljava/lang/Object;

    move-result-object v25

    monitor-enter v25

    .line 516
    :try_start_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v24, v0

    const/16 v26, 0x0

    aget v21, v24, v26

    .line 517
    .local v21, "x":F
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v24, v0

    const/16 v26, 0x1

    aget v22, v24, v26

    .line 518
    .local v22, "y":F
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v24, v0

    const/16 v26, 0x2

    aget v23, v24, v26

    .line 520
    .local v23, "z":F
    # getter for: Lcom/android/server/policy/WindowOrientationListener;->LOG:Z
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->access$400()Z

    move-result v24

    if-eqz v24, :cond_0

    .line 521
    const-string v24, "WindowOrientationListener"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Raw acceleration vector: x="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", y="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", z="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", magnitude="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    mul-float v27, v21, v21

    mul-float v28, v22, v22

    add-float v27, v27, v28

    mul-float v28, v23, v23

    add-float v27, v27, v28

    move/from16 v0, v27

    float-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v28

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    :cond_0
    move-object/from16 v0, p1

    iget-wide v12, v0, Landroid/hardware/SensorEvent;->timestamp:J

    .line 531
    .local v12, "now":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredTimestampNanos:J

    move-wide/from16 v18, v0

    .line 532
    .local v18, "then":J
    sub-long v26, v12, v18

    move-wide/from16 v0, v26

    long-to-float v0, v0

    move/from16 v24, v0

    const v26, 0x358637bd    # 1.0E-6f

    mul-float v20, v24, v26

    .line 534
    .local v20, "timeDeltaMS":F
    cmp-long v24, v12, v18

    if-ltz v24, :cond_1

    const-wide/32 v26, 0x3b9aca00

    add-long v26, v26, v18

    cmp-long v24, v12, v26

    if-gtz v24, :cond_1

    const/16 v24, 0x0

    cmpl-float v24, v21, v24

    if-nez v24, :cond_b

    const/16 v24, 0x0

    cmpl-float v24, v22, v24

    if-nez v24, :cond_b

    const/16 v24, 0x0

    cmpl-float v24, v23, v24

    if-nez v24, :cond_b

    .line 537
    :cond_1
    # getter for: Lcom/android/server/policy/WindowOrientationListener;->LOG:Z
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->access$400()Z

    move-result v24

    if-eqz v24, :cond_2

    .line 538
    const-string v24, "WindowOrientationListener"

    const-string v26, "Resetting orientation listener."

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->resetLocked()V

    .line 541
    const/16 v16, 0x1

    .line 554
    .local v16, "skipSample":Z
    :goto_0
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredTimestampNanos:J

    .line 555
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredX:F

    .line 556
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredY:F

    .line 557
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredZ:F

    .line 559
    const/4 v5, 0x0

    .line 560
    .local v5, "isAccelerating":Z
    const/4 v6, 0x0

    .line 561
    .local v6, "isFlat":Z
    const/4 v7, 0x0

    .line 562
    .local v7, "isSwinging":Z
    if-nez v16, :cond_4

    .line 564
    mul-float v24, v21, v21

    mul-float v26, v22, v22

    add-float v24, v24, v26

    mul-float v26, v23, v23

    add-float v24, v24, v26

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-float v9, v0

    .line 565
    .local v9, "magnitude":F
    const/high16 v24, 0x3f800000    # 1.0f

    cmpg-float v24, v9, v24

    if-gez v24, :cond_d

    .line 566
    # getter for: Lcom/android/server/policy/WindowOrientationListener;->LOG:Z
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->access$400()Z

    move-result v24

    if-eqz v24, :cond_3

    .line 567
    const-string v24, "WindowOrientationListener"

    const-string v26, "Ignoring sensor data, magnitude too close to zero."

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->clearPredictedRotationLocked()V

    .line 659
    .end local v9    # "magnitude":F
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mFlat:Z

    .line 660
    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mSwinging:Z

    .line 661
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mAccelerating:Z

    .line 664
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mProposedRotation:I

    .line 665
    .local v11, "oldProposedRotation":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotation:I

    move/from16 v24, v0

    if-ltz v24, :cond_5

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->isPredictedRotationAcceptableLocked(J)Z

    move-result v24

    if-eqz v24, :cond_6

    .line 666
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotation:I

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mProposedRotation:I

    .line 668
    :cond_6
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mProposedRotation:I

    .line 671
    .local v15, "proposedRotation":I
    # getter for: Lcom/android/server/policy/WindowOrientationListener;->DEBUG_HTC:Z
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->access$500()Z

    move-result v24

    if-eqz v24, :cond_1b

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v26

    const-wide/32 v28, 0x1dcd6500

    add-long v28, v28, v12

    cmp-long v24, v26, v28

    if-lez v24, :cond_1b

    const/4 v8, 0x1

    .line 674
    .local v8, "logInfo":Z
    :goto_2
    # getter for: Lcom/android/server/policy/WindowOrientationListener;->LOG:Z
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->access$400()Z

    move-result v24

    if-nez v24, :cond_7

    if-eqz v8, :cond_8

    .line 676
    :cond_7
    const-string v24, "WindowOrientationListener"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Result: currentRotation="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->this$0:Lcom/android/server/policy/WindowOrientationListener;

    move-object/from16 v27, v0

    # getter for: Lcom/android/server/policy/WindowOrientationListener;->mCurrentRotation:I
    invoke-static/range {v27 .. v27}, Lcom/android/server/policy/WindowOrientationListener;->access$600(Lcom/android/server/policy/WindowOrientationListener;)I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", proposedRotation="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", predictedRotation="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotation:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", timeDeltaMS="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", isAccelerating="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", isFlat="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", isSwinging="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", isOverhead="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mOverhead:Z

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", isTouched="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mTouched:Z

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", timeUntilSettledMS="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotationTimestampNanos:J

    move-wide/from16 v28, v0

    const-wide/32 v30, 0x2625a00

    add-long v28, v28, v30

    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    invoke-direct {v0, v12, v13, v1, v2}, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->remainingMS(JJ)F

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", timeUntilAccelerationDelayExpiredMS="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mAccelerationTimestampNanos:J

    move-wide/from16 v28, v0

    const-wide/32 v30, 0x1dcd6500

    add-long v28, v28, v30

    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    invoke-direct {v0, v12, v13, v1, v2}, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->remainingMS(JJ)F

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", timeUntilFlatDelayExpiredMS="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mFlatTimestampNanos:J

    move-wide/from16 v28, v0

    const-wide/32 v30, 0x1dcd6500

    add-long v28, v28, v30

    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    invoke-direct {v0, v12, v13, v1, v2}, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->remainingMS(JJ)F

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", timeUntilSwingDelayExpiredMS="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mSwingTimestampNanos:J

    move-wide/from16 v28, v0

    const-wide/32 v30, 0x11e1a300

    add-long v28, v28, v30

    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    invoke-direct {v0, v12, v13, v1, v2}, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->remainingMS(JJ)F

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", timeUntilTouchDelayExpiredMS="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mTouchEndedTimestampNanos:J

    move-wide/from16 v28, v0

    const-wide/32 v30, 0x1dcd6500

    add-long v28, v28, v30

    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    invoke-direct {v0, v12, v13, v1, v2}, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->remainingMS(JJ)F

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    :cond_8
    monitor-exit v25
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 699
    if-eq v15, v11, :cond_a

    if-ltz v15, :cond_a

    .line 700
    # getter for: Lcom/android/server/policy/WindowOrientationListener;->LOG:Z
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->access$400()Z

    move-result v24

    if-eqz v24, :cond_9

    .line 701
    const-string v24, "WindowOrientationListener"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Proposed rotation changed!  proposedRotation="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", oldProposedRotation="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->this$0:Lcom/android/server/policy/WindowOrientationListener;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Lcom/android/server/policy/WindowOrientationListener;->onProposedRotationChanged(I)V

    .line 706
    :cond_a
    return-void

    .line 543
    .end local v5    # "isAccelerating":Z
    .end local v6    # "isFlat":Z
    .end local v7    # "isSwinging":Z
    .end local v8    # "logInfo":Z
    .end local v11    # "oldProposedRotation":I
    .end local v15    # "proposedRotation":I
    .end local v16    # "skipSample":Z
    :cond_b
    const/high16 v24, 0x43480000    # 200.0f

    add-float v24, v24, v20

    div-float v4, v20, v24

    .line 544
    .local v4, "alpha":F
    :try_start_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredX:F

    move/from16 v24, v0

    sub-float v24, v21, v24

    mul-float v24, v24, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredX:F

    move/from16 v26, v0

    add-float v21, v24, v26

    .line 545
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredY:F

    move/from16 v24, v0

    sub-float v24, v22, v24

    mul-float v24, v24, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredY:F

    move/from16 v26, v0

    add-float v22, v24, v26

    .line 546
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredZ:F

    move/from16 v24, v0

    sub-float v24, v23, v24

    mul-float v24, v24, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredZ:F

    move/from16 v26, v0

    add-float v23, v24, v26

    .line 547
    # getter for: Lcom/android/server/policy/WindowOrientationListener;->LOG:Z
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->access$400()Z

    move-result v24

    if-eqz v24, :cond_c

    .line 548
    const-string v24, "WindowOrientationListener"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Filtered acceleration vector: x="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", y="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", z="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", magnitude="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    mul-float v27, v21, v21

    mul-float v28, v22, v22

    add-float v27, v27, v28

    mul-float v28, v23, v23

    add-float v27, v27, v28

    move/from16 v0, v27

    float-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v28

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    :cond_c
    const/16 v16, 0x0

    .restart local v16    # "skipSample":Z
    goto/16 :goto_0

    .line 573
    .end local v4    # "alpha":F
    .restart local v5    # "isAccelerating":Z
    .restart local v6    # "isFlat":Z
    .restart local v7    # "isSwinging":Z
    .restart local v9    # "magnitude":F
    :cond_d
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->isAcceleratingLocked(F)Z

    move-result v24

    if-eqz v24, :cond_e

    .line 574
    const/4 v5, 0x1

    .line 575
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mAccelerationTimestampNanos:J

    .line 584
    :cond_e
    div-float v24, v23, v9

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->asin(D)D

    move-result-wide v26

    const-wide v28, 0x404ca5dc20000000L    # 57.295780181884766

    mul-double v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->round(D)J

    move-result-wide v26

    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v17, v0

    .line 586
    .local v17, "tiltAngle":I
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v12, v13, v1}, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->addTiltHistoryEntryLocked(JF)V

    .line 589
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->isFlatLocked(J)Z

    move-result v24

    if-eqz v24, :cond_f

    .line 590
    const/4 v6, 0x1

    .line 591
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mFlatTimestampNanos:J

    .line 593
    :cond_f
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v12, v13, v1}, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->isSwingingLocked(JF)Z

    move-result v24

    if-eqz v24, :cond_10

    .line 594
    const/4 v7, 0x1

    .line 595
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mSwingTimestampNanos:J

    .line 600
    :cond_10
    const/16 v24, -0x28

    move/from16 v0, v17

    move/from16 v1, v24

    if-gt v0, v1, :cond_13

    .line 601
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mOverhead:Z

    .line 605
    :cond_11
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mOverhead:Z

    move/from16 v24, v0

    if-eqz v24, :cond_14

    .line 606
    # getter for: Lcom/android/server/policy/WindowOrientationListener;->LOG:Z
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->access$400()Z

    move-result v24

    if-eqz v24, :cond_12

    .line 607
    const-string v24, "WindowOrientationListener"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Ignoring sensor data, device is overhead: tiltAngle="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->clearPredictedRotationLocked()V

    goto/16 :goto_1

    .line 696
    .end local v5    # "isAccelerating":Z
    .end local v6    # "isFlat":Z
    .end local v7    # "isSwinging":Z
    .end local v9    # "magnitude":F
    .end local v12    # "now":J
    .end local v16    # "skipSample":Z
    .end local v17    # "tiltAngle":I
    .end local v18    # "then":J
    .end local v20    # "timeDeltaMS":F
    .end local v21    # "x":F
    .end local v22    # "y":F
    .end local v23    # "z":F
    :catchall_0
    move-exception v24

    monitor-exit v25
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v24

    .line 602
    .restart local v5    # "isAccelerating":Z
    .restart local v6    # "isFlat":Z
    .restart local v7    # "isSwinging":Z
    .restart local v9    # "magnitude":F
    .restart local v12    # "now":J
    .restart local v16    # "skipSample":Z
    .restart local v17    # "tiltAngle":I
    .restart local v18    # "then":J
    .restart local v20    # "timeDeltaMS":F
    .restart local v21    # "x":F
    .restart local v22    # "y":F
    .restart local v23    # "z":F
    :cond_13
    const/16 v24, -0xf

    move/from16 v0, v17

    move/from16 v1, v24

    if-lt v0, v1, :cond_11

    .line 603
    const/16 v24, 0x0

    :try_start_2
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mOverhead:Z

    goto :goto_3

    .line 611
    :cond_14
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v24

    const/16 v26, 0x50

    move/from16 v0, v24

    move/from16 v1, v26

    if-le v0, v1, :cond_16

    .line 612
    # getter for: Lcom/android/server/policy/WindowOrientationListener;->LOG:Z
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->access$400()Z

    move-result v24

    if-eqz v24, :cond_15

    .line 613
    const-string v24, "WindowOrientationListener"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Ignoring sensor data, tilt angle too high: tiltAngle="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :cond_15
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->clearPredictedRotationLocked()V

    goto/16 :goto_1

    .line 621
    :cond_16
    move/from16 v0, v21

    neg-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v26, v0

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v26

    move-wide/from16 v0, v26

    neg-double v0, v0

    move-wide/from16 v26, v0

    const-wide v28, 0x404ca5dc20000000L    # 57.295780181884766

    mul-double v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->round(D)J

    move-result-wide v26

    move-wide/from16 v0, v26

    long-to-int v14, v0

    .line 623
    .local v14, "orientationAngle":I
    if-gez v14, :cond_17

    .line 625
    add-int/lit16 v14, v14, 0x168

    .line 629
    :cond_17
    add-int/lit8 v24, v14, 0x2d

    div-int/lit8 v10, v24, 0x5a

    .line 630
    .local v10, "nearestRotation":I
    const/16 v24, 0x4

    move/from16 v0, v24

    if-ne v10, v0, :cond_18

    .line 631
    const/4 v10, 0x0

    .line 635
    :cond_18
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v10, v1}, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->isTiltAngleAcceptableLocked(II)Z

    move-result v24

    if-eqz v24, :cond_19

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v14}, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->isOrientationAngleAcceptableLocked(II)Z

    move-result v24

    if-eqz v24, :cond_19

    .line 638
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v10}, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->updatePredictedRotationLocked(JI)V

    .line 639
    # getter for: Lcom/android/server/policy/WindowOrientationListener;->LOG:Z
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->access$400()Z

    move-result v24

    if-eqz v24, :cond_4

    .line 640
    const-string v24, "WindowOrientationListener"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Predicted: tiltAngle="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", orientationAngle="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", predictedRotation="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotation:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", predictedRotationAgeMS="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotationTimestampNanos:J

    move-wide/from16 v28, v0

    sub-long v28, v12, v28

    move-wide/from16 v0, v28

    long-to-float v0, v0

    move/from16 v27, v0

    const v28, 0x358637bd    # 1.0E-6f

    mul-float v27, v27, v28

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 649
    :cond_19
    # getter for: Lcom/android/server/policy/WindowOrientationListener;->LOG:Z
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->access$400()Z

    move-result v24

    if-eqz v24, :cond_1a

    .line 650
    const-string v24, "WindowOrientationListener"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Ignoring sensor data, no predicted rotation: tiltAngle="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", orientationAngle="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    :cond_1a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->clearPredictedRotationLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 671
    .end local v9    # "magnitude":F
    .end local v10    # "nearestRotation":I
    .end local v14    # "orientationAngle":I
    .end local v17    # "tiltAngle":I
    .restart local v11    # "oldProposedRotation":I
    .restart local v15    # "proposedRotation":I
    :cond_1b
    const/4 v8, 0x0

    goto/16 :goto_2
.end method
