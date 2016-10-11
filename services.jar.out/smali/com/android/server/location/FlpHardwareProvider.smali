.class public Lcom/android/server/location/FlpHardwareProvider;
.super Ljava/lang/Object;
.source "FlpHardwareProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/FlpHardwareProvider$NetworkLocationListener;
    }
.end annotation


# static fields
.field private static final FIRST_VERSION_WITH_FLUSH_LOCATIONS:I = 0x2

.field private static final FLP_GEOFENCE_MONITOR_STATUS_AVAILABLE:I = 0x2

.field private static final FLP_GEOFENCE_MONITOR_STATUS_UNAVAILABLE:I = 0x1

.field private static final FLP_RESULT_ERROR:I = -0x1

.field private static final FLP_RESULT_ID_EXISTS:I = -0x4

.field private static final FLP_RESULT_ID_UNKNOWN:I = -0x5

.field private static final FLP_RESULT_INSUFFICIENT_MEMORY:I = -0x2

.field private static final FLP_RESULT_INVALID_GEOFENCE_TRANSITION:I = -0x6

.field private static final FLP_RESULT_SUCCESS:I = 0x0

.field private static final FLP_RESULT_TOO_MANY_GEOFENCES:I = -0x3

.field public static final GEOFENCING:Ljava/lang/String; = "Geofencing"

.field public static final LOCATION:Ljava/lang/String; = "Location"

.field private static final TAG:Ljava/lang/String; = "FlpHardwareProvider"

.field private static sSingletonInstance:Lcom/android/server/location/FlpHardwareProvider;


# instance fields
.field private mBatchingCapabilities:I

.field private final mContext:Landroid/content/Context;

.field private final mGeofenceHardwareService:Landroid/location/IFusedGeofenceHardware;

.field private mGeofenceHardwareSink:Landroid/hardware/location/GeofenceHardwareImpl;

.field private mHaveBatchingCapabilities:Z

.field private final mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

.field private mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;

.field private final mLocationSinkLock:Ljava/lang/Object;

.field private mVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/location/FlpHardwareProvider;->sSingletonInstance:Lcom/android/server/location/FlpHardwareProvider;

    .line 296
    invoke-static {}, Lcom/android/server/location/FlpHardwareProvider;->nativeClassInit()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v11, p0, Lcom/android/server/location/FlpHardwareProvider;->mGeofenceHardwareSink:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 47
    iput-object v11, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;

    .line 51
    iput v12, p0, Lcom/android/server/location/FlpHardwareProvider;->mVersion:I

    .line 57
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSinkLock:Ljava/lang/Object;

    .line 351
    new-instance v6, Lcom/android/server/location/FlpHardwareProvider$1;

    invoke-direct {v6, p0}, Lcom/android/server/location/FlpHardwareProvider$1;-><init>(Lcom/android/server/location/FlpHardwareProvider;)V

    iput-object v6, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    .line 438
    new-instance v6, Lcom/android/server/location/FlpHardwareProvider$2;

    invoke-direct {v6, p0}, Lcom/android/server/location/FlpHardwareProvider$2;-><init>(Lcom/android/server/location/FlpHardwareProvider;)V

    iput-object v6, p0, Lcom/android/server/location/FlpHardwareProvider;->mGeofenceHardwareService:Landroid/location/IFusedGeofenceHardware;

    .line 82
    iput-object p1, p0, Lcom/android/server/location/FlpHardwareProvider;->mContext:Landroid/content/Context;

    .line 85
    iget-object v6, p0, Lcom/android/server/location/FlpHardwareProvider;->mContext:Landroid/content/Context;

    const-string v7, "location"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 87
    .local v0, "manager":Landroid/location/LocationManager;
    const-wide/16 v2, 0x0

    .line 88
    .local v2, "minTime":J
    const/4 v1, 0x0

    .line 89
    .local v1, "minDistance":F
    const/4 v4, 0x0

    .line 90
    .local v4, "oneShot":Z
    const-string v6, "passive"

    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    invoke-static {v6, v8, v9, v7, v10}, Landroid/location/LocationRequest;->createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;

    move-result-object v5

    .line 97
    .local v5, "request":Landroid/location/LocationRequest;
    invoke-virtual {v5, v12}, Landroid/location/LocationRequest;->setHideFromAppOps(Z)V

    .line 98
    new-instance v6, Lcom/android/server/location/FlpHardwareProvider$NetworkLocationListener;

    invoke-direct {v6, p0, v11}, Lcom/android/server/location/FlpHardwareProvider$NetworkLocationListener;-><init>(Lcom/android/server/location/FlpHardwareProvider;Lcom/android/server/location/FlpHardwareProvider$1;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-virtual {v0, v5, v6, v7}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 102
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/location/FlpHardwareProvider;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/FlpHardwareProvider;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSinkLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/location/FlpHardwareProvider;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/FlpHardwareProvider;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->nativeIsDiagnosticSupported()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/location/FlpHardwareProvider;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/FlpHardwareProvider;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/server/location/FlpHardwareProvider;->nativeInjectDiagnosticData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/location/FlpHardwareProvider;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/FlpHardwareProvider;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->nativeIsDeviceContextSupported()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/location/FlpHardwareProvider;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/FlpHardwareProvider;
    .param p1, "x1"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/server/location/FlpHardwareProvider;->nativeInjectDeviceContext(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/location/FlpHardwareProvider;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/FlpHardwareProvider;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->getVersion()I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/location/FlpHardwareProvider;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/FlpHardwareProvider;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->nativeIsGeofencingSupported()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/location/FlpHardwareProvider;[Landroid/hardware/location/GeofenceHardwareRequestParcelable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/FlpHardwareProvider;
    .param p1, "x1"    # [Landroid/hardware/location/GeofenceHardwareRequestParcelable;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/server/location/FlpHardwareProvider;->nativeAddGeofences([Landroid/hardware/location/GeofenceHardwareRequestParcelable;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/location/FlpHardwareProvider;[I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/FlpHardwareProvider;
    .param p1, "x1"    # [I

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/server/location/FlpHardwareProvider;->nativeRemoveGeofences([I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/location/FlpHardwareProvider;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/FlpHardwareProvider;
    .param p1, "x1"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/server/location/FlpHardwareProvider;->nativePauseGeofence(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/location/FlpHardwareProvider;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/FlpHardwareProvider;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/FlpHardwareProvider;->nativeResumeGeofence(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/location/FlpHardwareProvider;)Landroid/hardware/location/IFusedLocationHardwareSink;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/FlpHardwareProvider;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/location/FlpHardwareProvider;IIIIII)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/FlpHardwareProvider;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I

    .prologue
    .line 44
    invoke-direct/range {p0 .. p6}, Lcom/android/server/location/FlpHardwareProvider;->nativeModifyGeofenceOption(IIIIII)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/server/location/FlpHardwareProvider;Landroid/hardware/location/IFusedLocationHardwareSink;)Landroid/hardware/location/IFusedLocationHardwareSink;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/FlpHardwareProvider;
    .param p1, "x1"    # Landroid/hardware/location/IFusedLocationHardwareSink;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/server/location/FlpHardwareProvider;Landroid/location/Location;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/FlpHardwareProvider;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/server/location/FlpHardwareProvider;->nativeInjectLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/location/FlpHardwareProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/FlpHardwareProvider;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->maybeSendCapabilities()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/location/FlpHardwareProvider;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/FlpHardwareProvider;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->nativeGetBatchSize()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/location/FlpHardwareProvider;ILandroid/location/FusedBatchOptions;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/FlpHardwareProvider;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/location/FusedBatchOptions;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/FlpHardwareProvider;->nativeStartBatching(ILandroid/location/FusedBatchOptions;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/location/FlpHardwareProvider;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/FlpHardwareProvider;
    .param p1, "x1"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/server/location/FlpHardwareProvider;->nativeStopBatching(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/location/FlpHardwareProvider;ILandroid/location/FusedBatchOptions;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/FlpHardwareProvider;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/location/FusedBatchOptions;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/FlpHardwareProvider;->nativeUpdateBatchingOptions(ILandroid/location/FusedBatchOptions;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/location/FlpHardwareProvider;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/FlpHardwareProvider;
    .param p1, "x1"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/server/location/FlpHardwareProvider;->nativeRequestBatchedLocation(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/location/FlpHardwareProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/FlpHardwareProvider;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->nativeFlushBatchedLocations()V

    return-void
.end method

.method private getGeofenceHardwareSink()Landroid/hardware/location/GeofenceHardwareImpl;
    .locals 2

    .prologue
    .line 509
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mGeofenceHardwareSink:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mGeofenceHardwareSink:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 511
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mGeofenceHardwareSink:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->setVersion(I)V

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mGeofenceHardwareSink:Landroid/hardware/location/GeofenceHardwareImpl;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/location/FlpHardwareProvider;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    sget-object v0, Lcom/android/server/location/FlpHardwareProvider;->sSingletonInstance:Lcom/android/server/location/FlpHardwareProvider;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/android/server/location/FlpHardwareProvider;

    invoke-direct {v0, p0}, Lcom/android/server/location/FlpHardwareProvider;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/location/FlpHardwareProvider;->sSingletonInstance:Lcom/android/server/location/FlpHardwareProvider;

    .line 75
    sget-object v0, Lcom/android/server/location/FlpHardwareProvider;->sSingletonInstance:Lcom/android/server/location/FlpHardwareProvider;

    invoke-direct {v0}, Lcom/android/server/location/FlpHardwareProvider;->nativeInit()V

    .line 78
    :cond_0
    sget-object v0, Lcom/android/server/location/FlpHardwareProvider;->sSingletonInstance:Lcom/android/server/location/FlpHardwareProvider;

    return-object v0
.end method

.method private getVersion()I
    .locals 2

    .prologue
    .line 167
    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSinkLock:Ljava/lang/Object;

    monitor-enter v1

    .line 168
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mHaveBatchingCapabilities:Z

    if-eqz v0, :cond_0

    .line 169
    iget v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mVersion:I

    monitor-exit v1

    .line 172
    :goto_0
    return v0

    .line 171
    :cond_0
    monitor-exit v1

    .line 172
    const/4 v0, 0x1

    goto :goto_0

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static isSupported()Z
    .locals 1

    .prologue
    .line 105
    invoke-static {}, Lcom/android/server/location/FlpHardwareProvider;->nativeIsSupported()Z

    move-result v0

    return v0
.end method

.method private maybeSendCapabilities()V
    .locals 6

    .prologue
    .line 186
    iget-object v5, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSinkLock:Ljava/lang/Object;

    monitor-enter v5

    .line 187
    :try_start_0
    iget-object v3, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;

    .line 188
    .local v3, "sink":Landroid/hardware/location/IFusedLocationHardwareSink;
    iget-boolean v2, p0, Lcom/android/server/location/FlpHardwareProvider;->mHaveBatchingCapabilities:Z

    .line 189
    .local v2, "haveBatchingCapabilities":Z
    iget v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mBatchingCapabilities:I

    .line 190
    .local v0, "batchingCapabilities":I
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 193
    :try_start_1
    invoke-interface {v3, v0}, Landroid/hardware/location/IFusedLocationHardwareSink;->onCapabilities(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 190
    .end local v0    # "batchingCapabilities":I
    .end local v2    # "haveBatchingCapabilities":Z
    .end local v3    # "sink":Landroid/hardware/location/IFusedLocationHardwareSink;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 195
    .restart local v0    # "batchingCapabilities":I
    .restart local v2    # "haveBatchingCapabilities":Z
    .restart local v3    # "sink":Landroid/hardware/location/IFusedLocationHardwareSink;
    :catch_0
    move-exception v1

    .line 196
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "FlpHardwareProvider"

    const-string v5, "RemoteException calling onLocationAvailable"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private native nativeAddGeofences([Landroid/hardware/location/GeofenceHardwareRequestParcelable;)V
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeCleanup()V
.end method

.method private native nativeFlushBatchedLocations()V
.end method

.method private native nativeGetBatchSize()I
.end method

.method private native nativeInit()V
.end method

.method private native nativeInjectDeviceContext(I)V
.end method

.method private native nativeInjectDiagnosticData(Ljava/lang/String;)V
.end method

.method private native nativeInjectLocation(Landroid/location/Location;)V
.end method

.method private native nativeIsDeviceContextSupported()Z
.end method

.method private native nativeIsDiagnosticSupported()Z
.end method

.method private native nativeIsGeofencingSupported()Z
.end method

.method private static native nativeIsSupported()Z
.end method

.method private native nativeModifyGeofenceOption(IIIIII)V
.end method

.method private native nativePauseGeofence(I)V
.end method

.method private native nativeRemoveGeofences([I)V
.end method

.method private native nativeRequestBatchedLocation(I)V
.end method

.method private native nativeResumeGeofence(II)V
.end method

.method private native nativeStartBatching(ILandroid/location/FusedBatchOptions;)V
.end method

.method private native nativeStopBatching(I)V
.end method

.method private native nativeUpdateBatchingOptions(ILandroid/location/FusedBatchOptions;)V
.end method

.method private onBatchingCapabilities(I)V
    .locals 3
    .param p1, "capabilities"    # I

    .prologue
    .line 134
    const-string v0, "FlpHardwareProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBatchingCapabilities capabilities "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSinkLock:Ljava/lang/Object;

    monitor-enter v1

    .line 136
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mHaveBatchingCapabilities:Z

    .line 137
    iput p1, p0, Lcom/android/server/location/FlpHardwareProvider;->mBatchingCapabilities:I

    .line 138
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->maybeSendCapabilities()V

    .line 142
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mGeofenceHardwareSink:Landroid/hardware/location/GeofenceHardwareImpl;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mGeofenceHardwareSink:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->setVersion(I)V

    .line 145
    :cond_0
    return-void

    .line 138
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private onBatchingStatus(I)V
    .locals 5
    .param p1, "status"    # I

    .prologue
    .line 148
    const-string v2, "FlpHardwareProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onBatchingStatus status "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v3, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSinkLock:Ljava/lang/Object;

    monitor-enter v3

    .line 151
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;

    .line 152
    .local v1, "sink":Landroid/hardware/location/IFusedLocationHardwareSink;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    if-eqz v1, :cond_0

    .line 155
    :try_start_1
    invoke-interface {v1, p1}, Landroid/hardware/location/IFusedLocationHardwareSink;->onStatusChanged(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 152
    .end local v1    # "sink":Landroid/hardware/location/IFusedLocationHardwareSink;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 157
    .restart local v1    # "sink":Landroid/hardware/location/IFusedLocationHardwareSink;
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "FlpHardwareProvider"

    const-string v3, "RemoteException calling onBatchingStatus"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onDataReport(Ljava/lang/String;)V
    .locals 5
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 202
    const-string v2, "FlpHardwareProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDataReport data "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v3, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSinkLock:Ljava/lang/Object;

    monitor-enter v3

    .line 205
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;

    .line 206
    .local v1, "sink":Landroid/hardware/location/IFusedLocationHardwareSink;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    :try_start_1
    iget-object v2, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;

    if-eqz v2, :cond_0

    .line 209
    invoke-interface {v1, p1}, Landroid/hardware/location/IFusedLocationHardwareSink;->onDiagnosticDataAvailable(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 206
    .end local v1    # "sink":Landroid/hardware/location/IFusedLocationHardwareSink;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 211
    .restart local v1    # "sink":Landroid/hardware/location/IFusedLocationHardwareSink;
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "FlpHardwareProvider"

    const-string v3, "RemoteException calling onDiagnosticDataAvailable"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onGeofenceAdd(II)V
    .locals 2
    .param p1, "geofenceId"    # I
    .param p2, "result"    # I

    .prologue
    .line 266
    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->getGeofenceHardwareSink()Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    invoke-static {p2}, Lcom/android/server/location/FlpHardwareProvider;->translateToGeofenceHardwareStatus(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceAddStatus(II)V

    .line 269
    return-void
.end method

.method private onGeofenceMonitorStatus(IILandroid/location/Location;)V
    .locals 5
    .param p1, "status"    # I
    .param p2, "source"    # I
    .param p3, "location"    # Landroid/location/Location;

    .prologue
    .line 238
    const-string v2, "FlpHardwareProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onGeofenceMonitorStatus status "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " source "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const/4 v1, 0x0

    .line 240
    .local v1, "updatedLocation":Landroid/location/Location;
    if-eqz p3, :cond_0

    .line 241
    invoke-direct {p0, p3}, Lcom/android/server/location/FlpHardwareProvider;->updateLocationInformation(Landroid/location/Location;)Landroid/location/Location;

    move-result-object v1

    .line 245
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 253
    const-string v2, "FlpHardwareProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid FlpHal Geofence monitor status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const/4 v0, 0x1

    .line 258
    .local v0, "monitorStatus":I
    :goto_0
    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->getGeofenceHardwareSink()Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0, v1, p2}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceMonitorStatus(IILandroid/location/Location;I)V

    .line 263
    return-void

    .line 247
    .end local v0    # "monitorStatus":I
    :pswitch_0
    const/4 v0, 0x1

    .line 248
    .restart local v0    # "monitorStatus":I
    goto :goto_0

    .line 250
    .end local v0    # "monitorStatus":I
    :pswitch_1
    const/4 v0, 0x0

    .line 251
    .restart local v0    # "monitorStatus":I
    goto :goto_0

    .line 245
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onGeofencePause(II)V
    .locals 2
    .param p1, "geofenceId"    # I
    .param p2, "result"    # I

    .prologue
    .line 278
    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->getGeofenceHardwareSink()Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    invoke-static {p2}, Lcom/android/server/location/FlpHardwareProvider;->translateToGeofenceHardwareStatus(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofencePauseStatus(II)V

    .line 281
    return-void
.end method

.method private onGeofenceRemove(II)V
    .locals 2
    .param p1, "geofenceId"    # I
    .param p2, "result"    # I

    .prologue
    .line 272
    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->getGeofenceHardwareSink()Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    invoke-static {p2}, Lcom/android/server/location/FlpHardwareProvider;->translateToGeofenceHardwareStatus(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceRemoveStatus(II)V

    .line 275
    return-void
.end method

.method private onGeofenceResume(II)V
    .locals 2
    .param p1, "geofenceId"    # I
    .param p2, "result"    # I

    .prologue
    .line 284
    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->getGeofenceHardwareSink()Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    invoke-static {p2}, Lcom/android/server/location/FlpHardwareProvider;->translateToGeofenceHardwareStatus(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceResumeStatus(II)V

    .line 287
    return-void
.end method

.method private onGeofenceTransition(ILandroid/location/Location;IJI)V
    .locals 8
    .param p1, "geofenceId"    # I
    .param p2, "location"    # Landroid/location/Location;
    .param p3, "transition"    # I
    .param p4, "timestamp"    # J
    .param p6, "sourcesUsed"    # I

    .prologue
    .line 225
    const-string v0, "FlpHardwareProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGeofenceTransition geofenceId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " transition "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " timestamp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sourcesUsed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->getGeofenceHardwareSink()Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/android/server/location/FlpHardwareProvider;->updateLocationInformation(Landroid/location/Location;)Landroid/location/Location;

    move-result-object v2

    const/4 v6, 0x1

    move v1, p1

    move v3, p3

    move-wide v4, p4

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceTransition(ILandroid/location/Location;IJII)V

    .line 234
    return-void
.end method

.method private onGeofencingCapabilities(I)V
    .locals 1
    .param p1, "capabilities"    # I

    .prologue
    .line 290
    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->getGeofenceHardwareSink()Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/location/GeofenceHardwareImpl;->onCapabilities(I)V

    .line 291
    return-void
.end method

.method private onLocationReport([Landroid/location/Location;)V
    .locals 9
    .param p1, "locations"    # [Landroid/location/Location;

    .prologue
    .line 113
    const-string v6, "FlpHardwareProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onLocationReport size "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, p1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    move-object v0, p1

    .local v0, "arr$":[Landroid/location/Location;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 115
    .local v4, "location":Landroid/location/Location;
    const-string v6, "fused"

    invoke-virtual {v4, v6}, Landroid/location/Location;->setProvider(Ljava/lang/String;)V

    .line 117
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 114
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 121
    .end local v4    # "location":Landroid/location/Location;
    :cond_0
    iget-object v7, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSinkLock:Ljava/lang/Object;

    monitor-enter v7

    .line 122
    :try_start_0
    iget-object v5, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;

    .line 123
    .local v5, "sink":Landroid/hardware/location/IFusedLocationHardwareSink;
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    if-eqz v5, :cond_1

    .line 126
    :try_start_1
    invoke-interface {v5, p1}, Landroid/hardware/location/IFusedLocationHardwareSink;->onLocationAvailable([Landroid/location/Location;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 131
    :cond_1
    :goto_1
    return-void

    .line 123
    .end local v5    # "sink":Landroid/hardware/location/IFusedLocationHardwareSink;
    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 128
    .restart local v5    # "sink":Landroid/hardware/location/IFusedLocationHardwareSink;
    :catch_0
    move-exception v1

    .line 129
    .local v1, "e":Landroid/os/RemoteException;
    const-string v6, "FlpHardwareProvider"

    const-string v7, "RemoteException calling onLocationAvailable"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setVersion(I)V
    .locals 2
    .param p1, "version"    # I

    .prologue
    .line 176
    iput p1, p0, Lcom/android/server/location/FlpHardwareProvider;->mVersion:I

    .line 177
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mGeofenceHardwareSink:Landroid/hardware/location/GeofenceHardwareImpl;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mGeofenceHardwareSink:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->setVersion(I)V

    .line 180
    :cond_0
    return-void
.end method

.method private static translateToGeofenceHardwareStatus(I)I
    .locals 6
    .param p0, "flpHalResult"    # I

    .prologue
    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 518
    packed-switch p0, :pswitch_data_0

    .line 534
    const-string v3, "FlpHardwareProvider"

    const-string v4, "Invalid FlpHal result code: %d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v0

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 535
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    .line 522
    goto :goto_0

    .line 524
    :pswitch_2
    const/4 v0, 0x6

    goto :goto_0

    :pswitch_3
    move v0, v2

    .line 526
    goto :goto_0

    .line 528
    :pswitch_4
    const/4 v0, 0x2

    goto :goto_0

    .line 530
    :pswitch_5
    const/4 v0, 0x3

    goto :goto_0

    .line 532
    :pswitch_6
    const/4 v0, 0x4

    goto :goto_0

    .line 518
    nop

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateLocationInformation(Landroid/location/Location;)Landroid/location/Location;
    .locals 2
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 540
    const-string v0, "fused"

    invoke-virtual {p1, v0}, Landroid/location/Location;->setProvider(Ljava/lang/String;)V

    .line 542
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 543
    return-object p1
.end method


# virtual methods
.method public getGeofenceHardware()Landroid/location/IFusedGeofenceHardware;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mGeofenceHardwareService:Landroid/location/IFusedGeofenceHardware;

    return-object v0
.end method

.method public getLocationHardware()Landroid/hardware/location/IFusedLocationHardware;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    return-object v0
.end method
