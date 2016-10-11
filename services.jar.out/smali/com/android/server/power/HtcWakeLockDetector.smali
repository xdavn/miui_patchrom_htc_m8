.class final Lcom/android/server/power/HtcWakeLockDetector;
.super Ljava/lang/Object;
.source "HtcWakeLockDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;,
        Lcom/android/server/power/HtcWakeLockDetector$WakeLock;,
        Lcom/android/server/power/HtcWakeLockDetector$LocationRequester;
    }
.end annotation


# static fields
.field private static final CPU_DEBUG:Z

.field private static smLocationRequesterListPid:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static smLocationRequesterListProcessName:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static smLocationRequesterListProvider:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final smSyncLock:Ljava/lang/Object;


# instance fields
.field private final CONFIG_FILE_PATH_COPY:Ljava/lang/String;

.field private final CONFIG_FILE_PATH_SOURCE:Ljava/lang/String;

.field private final FDA_TAG:Ljava/lang/String;

.field private final MASTER_ENABLE:Z

.field private final MY_UID:I

.field private final PROC_STAT_IDLE_TIME_1:I

.field private final PROC_STAT_IDLE_TIME_2:I

.field private final PROC_STAT_UP_TIME_1:I

.field private final PROC_STAT_UP_TIME_2:I

.field private final TAG:Ljava/lang/String;

.field private final VERSION:Ljava/lang/String;

.field private final mActivityManager:Landroid/app/ActivityManager;

.field private final mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

.field private mConfigLastModified:J

.field private final mContext:Landroid/content/Context;

.field private mGpsFirstFix:Z

.field private mGpsSatelliteCount:J

.field private mGpsStarted:Z

.field private mGpsStatusListener:Landroid/location/GpsStatus$Listener;

.field private mInstalledPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationManager:Landroid/location/LocationManager;

.field private mNonFirstFixCount:I

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mSyncLock:Ljava/lang/Object;

.field private final mWLD_Handler:Landroid/os/Handler;

.field private final mWLD_Thread:Landroid/os/HandlerThread;

.field private final mWakeLockDetector:Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;

.field private final mWakeLocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/HtcWakeLockDetector$WakeLock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/power/HtcWakeLockDetector;->smSyncLock:Ljava/lang/Object;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/power/HtcWakeLockDetector;->smLocationRequesterListPid:Ljava/util/List;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/power/HtcWakeLockDetector;->smLocationRequesterListProcessName:Ljava/util/List;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/power/HtcWakeLockDetector;->smLocationRequesterListProvider:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callbacks"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;
    .param p3, "pmsUid"    # I

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-string v1, "v4.4.0"

    iput-object v1, p0, Lcom/android/server/power/HtcWakeLockDetector;->VERSION:Ljava/lang/String;

    .line 59
    const-string v1, "HtcWLD_v4.4.0"

    iput-object v1, p0, Lcom/android/server/power/HtcWakeLockDetector;->TAG:Ljava/lang/String;

    .line 60
    const-string v1, "[Power_FDA] "

    iput-object v1, p0, Lcom/android/server/power/HtcWakeLockDetector;->FDA_TAG:Ljava/lang/String;

    .line 63
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/HtcWakeLockDetector;->MASTER_ENABLE:Z

    .line 72
    iput-object v3, p0, Lcom/android/server/power/HtcWakeLockDetector;->mLocationManager:Landroid/location/LocationManager;

    .line 78
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/power/HtcWakeLockDetector;->mSyncLock:Ljava/lang/Object;

    .line 81
    const-string v1, "/system/etc/wld_config.xml"

    iput-object v1, p0, Lcom/android/server/power/HtcWakeLockDetector;->CONFIG_FILE_PATH_SOURCE:Ljava/lang/String;

    .line 82
    const-string v1, "/data/data/htc/cupd/libwld.so"

    iput-object v1, p0, Lcom/android/server/power/HtcWakeLockDetector;->CONFIG_FILE_PATH_COPY:Ljava/lang/String;

    .line 84
    const/16 v1, 0xd

    iput v1, p0, Lcom/android/server/power/HtcWakeLockDetector;->PROC_STAT_UP_TIME_1:I

    .line 85
    const/16 v1, 0xe

    iput v1, p0, Lcom/android/server/power/HtcWakeLockDetector;->PROC_STAT_UP_TIME_2:I

    .line 86
    const/16 v1, 0xf

    iput v1, p0, Lcom/android/server/power/HtcWakeLockDetector;->PROC_STAT_IDLE_TIME_1:I

    .line 87
    const/16 v1, 0x10

    iput v1, p0, Lcom/android/server/power/HtcWakeLockDetector;->PROC_STAT_IDLE_TIME_2:I

    .line 89
    new-instance v1, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;

    invoke-direct {v1, p0}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;-><init>(Lcom/android/server/power/HtcWakeLockDetector;)V

    iput-object v1, p0, Lcom/android/server/power/HtcWakeLockDetector;->mWakeLockDetector:Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;

    .line 91
    iput-object v3, p0, Lcom/android/server/power/HtcWakeLockDetector;->mInstalledPackages:Ljava/util/List;

    .line 93
    iput-object v3, p0, Lcom/android/server/power/HtcWakeLockDetector;->mGpsStatusListener:Landroid/location/GpsStatus$Listener;

    .line 94
    iput-wide v4, p0, Lcom/android/server/power/HtcWakeLockDetector;->mGpsSatelliteCount:J

    .line 95
    iput-boolean v2, p0, Lcom/android/server/power/HtcWakeLockDetector;->mGpsStarted:Z

    .line 96
    iput-boolean v2, p0, Lcom/android/server/power/HtcWakeLockDetector;->mGpsFirstFix:Z

    .line 97
    iput-wide v4, p0, Lcom/android/server/power/HtcWakeLockDetector;->mConfigLastModified:J

    .line 98
    iput v2, p0, Lcom/android/server/power/HtcWakeLockDetector;->mNonFirstFixCount:I

    .line 327
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/power/HtcWakeLockDetector;->mWakeLocks:Ljava/util/ArrayList;

    .line 127
    iput-object p1, p0, Lcom/android/server/power/HtcWakeLockDetector;->mContext:Landroid/content/Context;

    .line 128
    iput-object p2, p0, Lcom/android/server/power/HtcWakeLockDetector;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    .line 129
    iput p3, p0, Lcom/android/server/power/HtcWakeLockDetector;->MY_UID:I

    .line 131
    iget-object v1, p0, Lcom/android/server/power/HtcWakeLockDetector;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/android/server/power/HtcWakeLockDetector;->mActivityManager:Landroid/app/ActivityManager;

    .line 134
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "WLD"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/power/HtcWakeLockDetector;->mWLD_Thread:Landroid/os/HandlerThread;

    .line 135
    iget-object v1, p0, Lcom/android/server/power/HtcWakeLockDetector;->mWLD_Thread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 136
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/power/HtcWakeLockDetector;->mWLD_Thread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/power/HtcWakeLockDetector;->mWLD_Handler:Landroid/os/Handler;

    .line 142
    iget-object v1, p0, Lcom/android/server/power/HtcWakeLockDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/HtcWakeLockDetector;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 143
    iget-object v1, p0, Lcom/android/server/power/HtcWakeLockDetector;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/HtcWakeLockDetector;->mInstalledPackages:Ljava/util/List;

    .line 145
    new-instance v0, Lcom/android/server/HtcAdaptiveSmartNetwork;

    iget-object v1, p0, Lcom/android/server/power/HtcWakeLockDetector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/HtcAdaptiveSmartNetwork;-><init>(Landroid/content/Context;)V

    .line 148
    .local v0, "asn":Lcom/android/server/HtcAdaptiveSmartNetwork;
    new-instance v1, Lcom/android/server/power/HtcWakeLockDetector$1;

    invoke-direct {v1, p0}, Lcom/android/server/power/HtcWakeLockDetector$1;-><init>(Lcom/android/server/power/HtcWakeLockDetector;)V

    iput-object v1, p0, Lcom/android/server/power/HtcWakeLockDetector;->mGpsStatusListener:Landroid/location/GpsStatus$Listener;

    .line 175
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/power/HtcWakeLockDetector;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockDetector;
    .param p1, "x1"    # J

    .prologue
    .line 55
    iput-wide p1, p0, Lcom/android/server/power/HtcWakeLockDetector;->mGpsSatelliteCount:J

    return-wide p1
.end method

.method static synthetic access$008(Lcom/android/server/power/HtcWakeLockDetector;)J
    .locals 4
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockDetector;

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/android/server/power/HtcWakeLockDetector;->mGpsSatelliteCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/power/HtcWakeLockDetector;->mGpsSatelliteCount:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/android/server/power/HtcWakeLockDetector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockDetector;

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/server/power/HtcWakeLockDetector;->mGpsFirstFix:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/power/HtcWakeLockDetector;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockDetector;
    .param p1, "x1"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/server/power/HtcWakeLockDetector;->readProcessStat(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/power/HtcWakeLockDetector;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockDetector;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/server/power/HtcWakeLockDetector;->mGpsFirstFix:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/power/HtcWakeLockDetector;Ljava/lang/String;Ljava/lang/String;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockDetector;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/HtcWakeLockDetector;->getSystemCpuUsage(Ljava/lang/String;Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/power/HtcWakeLockDetector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockDetector;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/server/power/HtcWakeLockDetector;->isMusicActive()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/power/HtcWakeLockDetector;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockDetector;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector;->mSyncLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/power/HtcWakeLockDetector;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockDetector;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector;->mWakeLocks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/power/HtcWakeLockDetector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockDetector;

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/server/power/HtcWakeLockDetector;->mGpsStarted:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/power/HtcWakeLockDetector;)Landroid/location/LocationManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockDetector;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/power/HtcWakeLockDetector;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockDetector;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/server/power/HtcWakeLockDetector;->mGpsStarted:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/power/HtcWakeLockDetector;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockDetector;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector;->mInstalledPackages:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/power/HtcWakeLockDetector;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockDetector;

    .prologue
    .line 55
    iget v0, p0, Lcom/android/server/power/HtcWakeLockDetector;->mNonFirstFixCount:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/power/HtcWakeLockDetector;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockDetector;
    .param p1, "x1"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/android/server/power/HtcWakeLockDetector;->mNonFirstFixCount:I

    return p1
.end method

.method static synthetic access$308(Lcom/android/server/power/HtcWakeLockDetector;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockDetector;

    .prologue
    .line 55
    iget v0, p0, Lcom/android/server/power/HtcWakeLockDetector;->mNonFirstFixCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/power/HtcWakeLockDetector;->mNonFirstFixCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/power/HtcWakeLockDetector;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockDetector;

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/android/server/power/HtcWakeLockDetector;->mConfigLastModified:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/android/server/power/HtcWakeLockDetector;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockDetector;
    .param p1, "x1"    # J

    .prologue
    .line 55
    iput-wide p1, p0, Lcom/android/server/power/HtcWakeLockDetector;->mConfigLastModified:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/android/server/power/HtcWakeLockDetector;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockDetector;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector;->mWLD_Handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/power/HtcWakeLockDetector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockDetector;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/server/power/HtcWakeLockDetector;->isScreenOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/power/HtcWakeLockDetector;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockDetector;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/server/power/HtcWakeLockDetector;->readSystemStat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/power/HtcWakeLockDetector;)Landroid/app/ActivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockDetector;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector;->mActivityManager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method private static addLocationRequester(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "pid"    # I
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "provider"    # Ljava/lang/String;

    .prologue
    .line 244
    sget-object v4, Lcom/android/server/power/HtcWakeLockDetector;->smSyncLock:Ljava/lang/Object;

    monitor-enter v4

    .line 245
    const/4 v1, 0x0

    .line 248
    .local v1, "is_in_list":Z
    :try_start_0
    sget-object v3, Lcom/android/server/power/HtcWakeLockDetector;->smLocationRequesterListPid:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 250
    sget-object v3, Lcom/android/server/power/HtcWakeLockDetector;->smLocationRequesterListPid:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 252
    .local v2, "lr_pid":I
    if-ne p0, v2, :cond_0

    .line 253
    const/4 v1, 0x1

    .line 260
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "lr_pid":I
    :cond_1
    if-nez v1, :cond_2

    .line 262
    sget-object v3, Lcom/android/server/power/HtcWakeLockDetector;->smLocationRequesterListPid:Ljava/util/List;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    sget-object v3, Lcom/android/server/power/HtcWakeLockDetector;->smLocationRequesterListProcessName:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    sget-object v3, Lcom/android/server/power/HtcWakeLockDetector;->smLocationRequesterListProvider:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    :cond_2
    monitor-exit v4

    .line 267
    return-void

    .line 266
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private clearLocationRequesterList()V
    .locals 2

    .prologue
    .line 320
    sget-object v1, Lcom/android/server/power/HtcWakeLockDetector;->smSyncLock:Ljava/lang/Object;

    monitor-enter v1

    .line 321
    :try_start_0
    sget-object v0, Lcom/android/server/power/HtcWakeLockDetector;->smLocationRequesterListPid:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/power/HtcWakeLockDetector;->smLocationRequesterListPid:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 322
    :cond_0
    sget-object v0, Lcom/android/server/power/HtcWakeLockDetector;->smLocationRequesterListProcessName:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/server/power/HtcWakeLockDetector;->smLocationRequesterListProcessName:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 323
    :cond_1
    sget-object v0, Lcom/android/server/power/HtcWakeLockDetector;->smLocationRequesterListProvider:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/server/power/HtcWakeLockDetector;->smLocationRequesterListProvider:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 324
    :cond_2
    monitor-exit v1

    .line 325
    return-void

    .line 324
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private doBeforeRunning()V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector;->mLocationManager:Landroid/location/LocationManager;

    .line 191
    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/android/server/power/HtcWakeLockDetector;->mGpsStatusListener:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    .line 192
    return-void
.end method

.method private getLocationRequesterList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/power/HtcWakeLockDetector$LocationRequester;",
            ">;"
        }
    .end annotation

    .prologue
    .line 291
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 293
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/HtcWakeLockDetector$LocationRequester;>;"
    sget-object v6, Lcom/android/server/power/HtcWakeLockDetector;->smSyncLock:Ljava/lang/Object;

    monitor-enter v6

    .line 294
    :try_start_0
    sget-object v5, Lcom/android/server/power/HtcWakeLockDetector;->smLocationRequesterListPid:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sget-object v7, Lcom/android/server/power/HtcWakeLockDetector;->smLocationRequesterListProcessName:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ne v5, v7, :cond_0

    sget-object v5, Lcom/android/server/power/HtcWakeLockDetector;->smLocationRequesterListPid:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sget-object v7, Lcom/android/server/power/HtcWakeLockDetector;->smLocationRequesterListProvider:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ne v5, v7, :cond_0

    .line 297
    const/4 v1, -0x1

    .line 298
    .local v1, "id":I
    sget-object v5, Lcom/android/server/power/HtcWakeLockDetector;->smLocationRequesterListPid:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 300
    .local v3, "pid":I
    add-int/lit8 v1, v1, 0x1

    .line 301
    new-instance v2, Lcom/android/server/power/HtcWakeLockDetector$LocationRequester;

    invoke-direct {v2, p0}, Lcom/android/server/power/HtcWakeLockDetector$LocationRequester;-><init>(Lcom/android/server/power/HtcWakeLockDetector;)V

    .line 302
    .local v2, "lr":Lcom/android/server/power/HtcWakeLockDetector$LocationRequester;
    iput v1, v2, Lcom/android/server/power/HtcWakeLockDetector$LocationRequester;->id:I

    .line 303
    iput v3, v2, Lcom/android/server/power/HtcWakeLockDetector$LocationRequester;->pid:I

    .line 304
    sget-object v5, Lcom/android/server/power/HtcWakeLockDetector;->smLocationRequesterListProcessName:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v2, Lcom/android/server/power/HtcWakeLockDetector$LocationRequester;->processName:Ljava/lang/String;

    .line 305
    sget-object v5, Lcom/android/server/power/HtcWakeLockDetector;->smLocationRequesterListProvider:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v2, Lcom/android/server/power/HtcWakeLockDetector$LocationRequester;->provider:Ljava/lang/String;

    .line 306
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 313
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "id":I
    .end local v2    # "lr":Lcom/android/server/power/HtcWakeLockDetector$LocationRequester;
    .end local v3    # "pid":I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 311
    :cond_0
    :try_start_1
    const-string v5, "HtcWLD_v4.4.0"

    const-string v7, "Exception in getLocationRequesterList(): The list of requester info are inconsistent."

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 315
    return-object v4
.end method

.method private getSystemCpuUsage(Ljava/lang/String;Ljava/lang/String;)F
    .locals 18
    .param p1, "start"    # Ljava/lang/String;
    .param p2, "end"    # Ljava/lang/String;

    .prologue
    .line 1888
    const-string v12, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1889
    .local v3, "stat":[Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/power/HtcWakeLockDetector;->getSystemIdleTime([Ljava/lang/String;)J

    move-result-wide v4

    .line 1890
    .local v4, "idle1":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/power/HtcWakeLockDetector;->getSystemUptime([Ljava/lang/String;)J

    move-result-wide v8

    .line 1892
    .local v8, "up1":J
    const-string v12, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1893
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/power/HtcWakeLockDetector;->getSystemIdleTime([Ljava/lang/String;)J

    move-result-wide v6

    .line 1894
    .local v6, "idle2":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/power/HtcWakeLockDetector;->getSystemUptime([Ljava/lang/String;)J

    move-result-wide v10

    .line 1897
    .local v10, "up2":J
    const/high16 v2, -0x40800000    # -1.0f

    .line 1898
    .local v2, "cpu":F
    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-ltz v12, :cond_0

    const-wide/16 v12, 0x0

    cmp-long v12, v8, v12

    if-ltz v12, :cond_0

    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-ltz v12, :cond_0

    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-ltz v12, :cond_0

    .line 1899
    add-long v12, v10, v6

    add-long v14, v8, v4

    cmp-long v12, v12, v14

    if-lez v12, :cond_0

    cmp-long v12, v10, v8

    if-ltz v12, :cond_0

    .line 1900
    sub-long v12, v10, v8

    long-to-float v12, v12

    add-long v14, v10, v6

    add-long v16, v8, v4

    sub-long v14, v14, v16

    long-to-float v13, v14

    div-float v2, v12, v13

    .line 1901
    const/high16 v12, 0x42c80000    # 100.0f

    mul-float/2addr v2, v12

    .line 1904
    :cond_0
    return v2
.end method

.method private isMusicActive()Z
    .locals 6

    .prologue
    .line 1995
    const/4 v2, 0x0

    .line 1997
    .local v2, "result":Z
    :try_start_0
    iget-object v3, p0, Lcom/android/server/power/HtcWakeLockDetector;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1998
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2002
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :goto_0
    return v2

    .line 1999
    :catch_0
    move-exception v1

    .line 2000
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "HtcWLD_v4.4.0"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Exception] isMusicActive: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isScreenOn()Z
    .locals 6

    .prologue
    .line 1983
    const/4 v2, 0x0

    .line 1985
    .local v2, "result":Z
    :try_start_0
    const-string v3, "power"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 1987
    .local v1, "pms":Landroid/os/IPowerManager;
    invoke-interface {v1}, Landroid/os/IPowerManager;->isInteractive()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1991
    .end local v1    # "pms":Landroid/os/IPowerManager;
    :goto_0
    return v2

    .line 1988
    :catch_0
    move-exception v0

    .line 1989
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "HtcWLD_v4.4.0"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isScreenOn: Exception caught. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static notifyWLDLocationRequest(ZILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "new_flag"    # Z
    .param p1, "pid"    # I
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "provider"    # Ljava/lang/String;

    .prologue
    .line 115
    if-eqz p0, :cond_0

    .line 116
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/android/server/power/HtcWakeLockDetector;->addLocationRequester(ILjava/lang/String;Ljava/lang/String;)V

    .line 123
    :goto_0
    return-void

    .line 118
    :cond_0
    invoke-static {p1}, Lcom/android/server/power/HtcWakeLockDetector;->removeLocationRequester(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HtcWLD"

    const-string v2, "Exception in notifyWLDLocationRequest:"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private readProcessStat(I)Ljava/lang/String;
    .locals 5
    .param p1, "pid"    # I

    .prologue
    .line 1868
    const/4 v1, 0x0

    .line 1869
    .local v1, "reader":Ljava/io/RandomAccessFile;
    const/4 v0, 0x0

    .line 1871
    .local v0, "line":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/proc/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/stat"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "r"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1872
    .end local v1    # "reader":Ljava/io/RandomAccessFile;
    .local v2, "reader":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 1873
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 1877
    .end local v2    # "reader":Ljava/io/RandomAccessFile;
    .restart local v1    # "reader":Ljava/io/RandomAccessFile;
    :goto_0
    return-object v0

    .line 1874
    :catch_0
    move-exception v3

    goto :goto_0

    .end local v1    # "reader":Ljava/io/RandomAccessFile;
    .restart local v2    # "reader":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "reader":Ljava/io/RandomAccessFile;
    .restart local v1    # "reader":Ljava/io/RandomAccessFile;
    goto :goto_0
.end method

.method private readSystemStat()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1856
    const/4 v2, 0x0

    .line 1857
    .local v2, "reader":Ljava/io/RandomAccessFile;
    const/4 v1, 0x0

    .line 1859
    .local v1, "load":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "/proc/stat"

    const-string v5, "r"

    invoke-direct {v3, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1860
    .end local v2    # "reader":Ljava/io/RandomAccessFile;
    .local v3, "reader":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 1861
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .line 1865
    .end local v3    # "reader":Ljava/io/RandomAccessFile;
    .restart local v2    # "reader":Ljava/io/RandomAccessFile;
    :goto_0
    return-object v1

    .line 1862
    :catch_0
    move-exception v0

    .line 1863
    .local v0, "ex":Ljava/io/IOException;
    :goto_1
    const-string v4, "HtcWLD_v4.4.0"

    const-string v5, "[Warning] Cannot open /proc/stat"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1862
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v2    # "reader":Ljava/io/RandomAccessFile;
    .restart local v3    # "reader":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/RandomAccessFile;
    .restart local v2    # "reader":Ljava/io/RandomAccessFile;
    goto :goto_1
.end method

.method private static removeLocationRequester(I)V
    .locals 4
    .param p0, "pid"    # I

    .prologue
    .line 271
    sget-object v2, Lcom/android/server/power/HtcWakeLockDetector;->smSyncLock:Ljava/lang/Object;

    monitor-enter v2

    .line 272
    :try_start_0
    sget-object v1, Lcom/android/server/power/HtcWakeLockDetector;->smLocationRequesterListPid:Ljava/util/List;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/power/HtcWakeLockDetector;->smLocationRequesterListProcessName:Ljava/util/List;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/power/HtcWakeLockDetector;->smLocationRequesterListProvider:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 276
    sget-object v1, Lcom/android/server/power/HtcWakeLockDetector;->smLocationRequesterListPid:Ljava/util/List;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 277
    .local v0, "found_idx":I
    if-ltz v0, :cond_0

    sget-object v1, Lcom/android/server/power/HtcWakeLockDetector;->smLocationRequesterListProcessName:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    sget-object v1, Lcom/android/server/power/HtcWakeLockDetector;->smLocationRequesterListProvider:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 281
    sget-object v1, Lcom/android/server/power/HtcWakeLockDetector;->smLocationRequesterListPid:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 282
    sget-object v1, Lcom/android/server/power/HtcWakeLockDetector;->smLocationRequesterListProcessName:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 283
    sget-object v1, Lcom/android/server/power/HtcWakeLockDetector;->smLocationRequesterListProvider:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 286
    .end local v0    # "found_idx":I
    :cond_0
    monitor-exit v2

    .line 287
    return-void

    .line 286
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method protected addWakeLock(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;II)V
    .locals 10
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "workSource"    # Landroid/os/WorkSource;
    .param p6, "ownerUid"    # I
    .param p7, "ownerPid"    # I

    .prologue
    .line 220
    iget-object v9, p0, Lcom/android/server/power/HtcWakeLockDetector;->mSyncLock:Ljava/lang/Object;

    monitor-enter v9

    .line 222
    :try_start_0
    new-instance v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;-><init>(Lcom/android/server/power/HtcWakeLockDetector;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;II)V

    .line 223
    .local v0, "wl":Lcom/android/server/power/HtcWakeLockDetector$WakeLock;
    iget-object v1, p0, Lcom/android/server/power/HtcWakeLockDetector;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    monitor-exit v9

    .line 226
    return-void

    .line 225
    .end local v0    # "wl":Lcom/android/server/power/HtcWakeLockDetector$WakeLock;
    :catchall_0
    move-exception v1

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected bootCompleted()V
    .locals 6

    .prologue
    .line 180
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/power/HtcWakeLockDetector;->doBeforeRunning()V

    .line 181
    iget-object v1, p0, Lcom/android/server/power/HtcWakeLockDetector;->mWLD_Handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/power/HtcWakeLockDetector;->mWakeLockDetector:Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :goto_0
    return-void

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HtcWLD_v4.4.0"

    const-string v2, "[Power_FDA] Exception on boot completed."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getProcessCpuUsage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)F
    .locals 18
    .param p1, "procStart"    # Ljava/lang/String;
    .param p2, "procEnd"    # Ljava/lang/String;
    .param p3, "sysStart"    # Ljava/lang/String;
    .param p4, "sysEnd"    # Ljava/lang/String;

    .prologue
    .line 1959
    const-string v9, " "

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1960
    .local v8, "splitStart":[Ljava/lang/String;
    const-string v9, " "

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1961
    .local v7, "splitEnd":[Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/server/power/HtcWakeLockDetector;->getSystemIdleTime([Ljava/lang/String;)J

    move-result-wide v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/server/power/HtcWakeLockDetector;->getSystemUptime([Ljava/lang/String;)J

    move-result-wide v16

    add-long v10, v14, v16

    .line 1962
    .local v10, "sysTotal1":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/server/power/HtcWakeLockDetector;->getSystemIdleTime([Ljava/lang/String;)J

    move-result-wide v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/server/power/HtcWakeLockDetector;->getSystemUptime([Ljava/lang/String;)J

    move-result-wide v16

    add-long v12, v14, v16

    .line 1963
    .local v12, "sysTotal2":J
    const-string v9, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/server/power/HtcWakeLockDetector;->getProcessUptime([Ljava/lang/String;)J

    move-result-wide v2

    .line 1964
    .local v2, "procUp1":J
    const-string v9, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/server/power/HtcWakeLockDetector;->getProcessUptime([Ljava/lang/String;)J

    move-result-wide v4

    .line 1966
    .local v4, "procUp2":J
    const/high16 v6, -0x40800000    # -1.0f

    .line 1967
    .local v6, "ret":F
    const-wide/16 v14, 0x0

    cmp-long v9, v2, v14

    if-ltz v9, :cond_0

    cmp-long v9, v4, v2

    if-ltz v9, :cond_0

    cmp-long v9, v12, v10

    if-lez v9, :cond_0

    .line 1968
    const/high16 v9, 0x42c80000    # 100.0f

    sub-long v14, v4, v2

    long-to-float v14, v14

    mul-float/2addr v9, v14

    sub-long v14, v12, v10

    long-to-float v14, v14

    div-float v6, v9, v14

    .line 1979
    :cond_0
    return v6
.end method

.method public getProcessIdleTime([Ljava/lang/String;)J
    .locals 4
    .param p1, "stat"    # [Ljava/lang/String;

    .prologue
    .line 1947
    const/16 v0, 0xf

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const/16 v2, 0x10

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getProcessUptime([Ljava/lang/String;)J
    .locals 4
    .param p1, "stat"    # [Ljava/lang/String;

    .prologue
    .line 1940
    const/16 v0, 0xd

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const/16 v2, 0xe

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getSystemIdleTime([Ljava/lang/String;)J
    .locals 4
    .param p1, "stat"    # [Ljava/lang/String;

    .prologue
    .line 1929
    const/4 v1, 0x5

    :try_start_0
    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 1933
    :goto_0
    return-wide v2

    .line 1930
    :catch_0
    move-exception v0

    .line 1931
    .local v0, "ex":Ljava/lang/NumberFormatException;
    const-string v1, "HtcWLD_v4.4.0"

    const-string v2, "[Exception] Fail to parse long for system idle time!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1933
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public getSystemUptime([Ljava/lang/String;)J
    .locals 7
    .param p1, "stat"    # [Ljava/lang/String;

    .prologue
    .line 1910
    const-wide/16 v2, 0x0

    .line 1911
    .local v2, "l":J
    const/4 v1, 0x2

    .local v1, "i":I
    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_1

    .line 1912
    const/4 v4, 0x5

    if-eq v1, v4, :cond_0

    .line 1914
    :try_start_0
    aget-object v4, p1, v1

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    add-long/2addr v2, v4

    .line 1911
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1915
    :catch_0
    move-exception v0

    .line 1916
    .local v0, "ex":Ljava/lang/NumberFormatException;
    const-string v4, "HtcWLD_v4.4.0"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Exception] Fail to parse long: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p1, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1917
    const-wide/16 v2, -0x1

    .line 1922
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    .end local v2    # "l":J
    :cond_1
    return-wide v2
.end method

.method protected removeWakeLock(Landroid/os/IBinder;)V
    .locals 6
    .param p1, "lock"    # Landroid/os/IBinder;

    .prologue
    .line 229
    iget-object v5, p0, Lcom/android/server/power/HtcWakeLockDetector;->mSyncLock:Ljava/lang/Object;

    monitor-enter v5

    .line 231
    const/4 v2, -0x1

    .line 232
    .local v2, "rm":I
    :try_start_0
    iget-object v4, p0, Lcom/android/server/power/HtcWakeLockDetector;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 233
    .local v1, "numWakeLocks":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 234
    iget-object v4, p0, Lcom/android/server/power/HtcWakeLockDetector;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;

    .line 235
    .local v3, "wl":Lcom/android/server/power/HtcWakeLockDetector$WakeLock;
    iget-object v4, v3, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mLock:Landroid/os/IBinder;

    if-ne v4, p1, :cond_0

    move v2, v0

    .line 233
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 237
    .end local v3    # "wl":Lcom/android/server/power/HtcWakeLockDetector$WakeLock;
    :cond_1
    if-ltz v2, :cond_2

    iget-object v4, p0, Lcom/android/server/power/HtcWakeLockDetector;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 239
    :cond_2
    monitor-exit v5

    .line 240
    return-void

    .line 239
    .end local v0    # "i":I
    .end local v1    # "numWakeLocks":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method
