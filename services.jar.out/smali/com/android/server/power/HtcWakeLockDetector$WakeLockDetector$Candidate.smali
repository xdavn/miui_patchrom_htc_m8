.class Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;
.super Ljava/lang/Object;
.source "HtcWakeLockDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Candidate"
.end annotation


# instance fields
.field public avgCpuUsage:F

.field public avgRx:J

.field public avgThroughput:J

.field public avgTx:J

.field public cpuValidCount:I

.field public id:I

.field public importance:I

.field public maxCpuUsage:F

.field public maxThroughput:J

.field public minCpuUsage:F

.field public minThroughput:J

.field public packageList:[Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public pid:I

.field public processName:Ljava/lang/String;

.field public runningTime:J

.field public semiUsage:Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;

.field final synthetic this$1:Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;

.field public txrxValidCount:I

.field public uid:I


# direct methods
.method private constructor <init>(Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;)V
    .locals 0

    .prologue
    .line 394
    iput-object p1, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->this$1:Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;Lcom/android/server/power/HtcWakeLockDetector$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;
    .param p2, "x1"    # Lcom/android/server/power/HtcWakeLockDetector$1;

    .prologue
    .line 394
    invoke-direct {p0, p1}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;-><init>(Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;)V

    return-void
.end method
