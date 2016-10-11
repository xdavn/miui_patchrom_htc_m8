.class Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SystemInfo;
.super Ljava/lang/Object;
.source "HtcWakeLockDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SystemInfo"
.end annotation


# instance fields
.field public isScreenOff:Z

.field public sysCpuUsage:F

.field public sysStat:Ljava/lang/String;

.field final synthetic this$1:Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;


# direct methods
.method private constructor <init>(Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;)V
    .locals 0

    .prologue
    .line 438
    iput-object p1, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SystemInfo;->this$1:Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;Lcom/android/server/power/HtcWakeLockDetector$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;
    .param p2, "x1"    # Lcom/android/server/power/HtcWakeLockDetector$1;

    .prologue
    .line 438
    invoke-direct {p0, p1}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SystemInfo;-><init>(Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;)V

    return-void
.end method
