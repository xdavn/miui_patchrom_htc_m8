.class public Lcom/android/server/location/KDDIGeofenceManager;
.super Landroid/hardware/location/GeofenceHardwareCallback;
.source "KDDIGeofenceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;,
        Lcom/android/server/location/KDDIGeofenceManager$GeofenceHandler;,
        Lcom/android/server/location/KDDIGeofenceManager$NetworkLocationListener;,
        Lcom/android/server/location/KDDIGeofenceManager$PassiveLocationListener;,
        Lcom/android/server/location/KDDIGeofenceManager$MotionListener;
    }
.end annotation


# static fields
.field private static final BASE_HWGEOFENCE_NUMBER:I = 0x64

.field private static final D:Z = true

.field private static final MAX_AGE_NANOS:J = 0x45d964b800L

.field private static final MAX_HWGEOFENCE_NUMBER:I = 0xc8

.field private static final MAX_INTERVAL_MS:J = 0x6ddd00L

.field private static final MAX_SPEED_M_S:I = 0x64

.field private static final MIN_INTERVAL_MS:J = 0xea60L

.field private static final MIN_INTERVAL_TRIGGER_SENSOR_MS:J = 0x2bf20L

.field public static final MSG_ON_GEOFENCE_TRANSITION:I = 0x1

.field public static final MSG_ON_LOCATION_CHANGED:I = 0x2

.field private static final NANOS_PER_MILLI:J = 0xf4240L

.field private static final NLP_ONLY_PROPERTY:Ljava/lang/String; = "persist.gps.lpgf.nlp_only"

.field private static final SW_GEOFENCE_TRIGGER_DISTANT_M:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "KDDIGeofenceManager"


# instance fields
.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mBlacklist:Lcom/android/server/location/LocationBlacklist;

.field private final mContext:Landroid/content/Context;

.field private mCurrentFenceNumber:D

.field private mDeviceSpeed:I

.field private final mGeoId:[Z

.field private final mGeoLock:Ljava/lang/Object;

.field private mGeofenceHardware:Landroid/hardware/location/GeofenceHardware;

.field private final mGeofenceIdClientMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Lcom/android/server/location/KDDIGeofenceManager$GeofenceHandler;

.field private final mLMSLock:Ljava/lang/Object;

.field private final mLastLocation:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastLocationCoarseInterval:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private mLastLocationUpdate:Landroid/location/Location;

.field private final mLocationManager:Landroid/location/LocationManager;

.field private mLocationUpdateInterval:J

.field private mMinDistantToNearlestFence:D

.field private final mMockProviders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/location/MockProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final mMotionListener:Lcom/android/server/location/KDDIGeofenceManager$MotionListener;

.field private final mNetworkLocationListener:Lcom/android/server/location/KDDIGeofenceManager$NetworkLocationListener;

.field private final mPassiveLocationListener:Lcom/android/server/location/KDDIGeofenceManager$PassiveLocationListener;

.field private mPendingUpdate:Z

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mReceivingLocationUpdates:Z

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private final mSigMotion:Landroid/hardware/Sensor;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/LocationBlacklist;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/Object;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "blacklist"    # Lcom/android/server/location/LocationBlacklist;
    .param p6, "lock"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/location/LocationBlacklist;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/location/Location;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/location/MockProvider;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/location/Location;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, "lastLocation":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/location/Location;>;"
    .local p4, "mockProviders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/location/MockProvider;>;"
    .local p5, "lastLocationCoarseInterval":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/location/Location;>;"
    const/16 v3, 0x64

    const/4 v2, 0x0

    .line 208
    invoke-direct {p0}, Landroid/hardware/location/GeofenceHardwareCallback;-><init>()V

    .line 127
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/KDDIGeofenceManager;->mGeoLock:Ljava/lang/Object;

    .line 151
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/server/location/KDDIGeofenceManager;->mLocationUpdateInterval:J

    .line 156
    iput v3, p0, Lcom/android/server/location/KDDIGeofenceManager;->mDeviceSpeed:I

    .line 161
    new-instance v0, Landroid/location/Location;

    const-string v1, "network"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/location/KDDIGeofenceManager;->mLastLocationUpdate:Landroid/location/Location;

    .line 166
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/KDDIGeofenceManager;->mGeofenceIdClientMap:Ljava/util/HashMap;

    .line 171
    new-array v0, v3, [Z

    iput-object v0, p0, Lcom/android/server/location/KDDIGeofenceManager;->mGeoId:[Z

    .line 176
    new-instance v0, Lcom/android/server/location/KDDIGeofenceManager$NetworkLocationListener;

    invoke-direct {v0, p0, v2}, Lcom/android/server/location/KDDIGeofenceManager$NetworkLocationListener;-><init>(Lcom/android/server/location/KDDIGeofenceManager;Lcom/android/server/location/KDDIGeofenceManager$1;)V

    iput-object v0, p0, Lcom/android/server/location/KDDIGeofenceManager;->mNetworkLocationListener:Lcom/android/server/location/KDDIGeofenceManager$NetworkLocationListener;

    .line 181
    new-instance v0, Lcom/android/server/location/KDDIGeofenceManager$PassiveLocationListener;

    invoke-direct {v0, p0, v2}, Lcom/android/server/location/KDDIGeofenceManager$PassiveLocationListener;-><init>(Lcom/android/server/location/KDDIGeofenceManager;Lcom/android/server/location/KDDIGeofenceManager$1;)V

    iput-object v0, p0, Lcom/android/server/location/KDDIGeofenceManager;->mPassiveLocationListener:Lcom/android/server/location/KDDIGeofenceManager$PassiveLocationListener;

    .line 186
    new-instance v0, Lcom/android/server/location/KDDIGeofenceManager$MotionListener;

    invoke-direct {v0, p0, v2}, Lcom/android/server/location/KDDIGeofenceManager$MotionListener;-><init>(Lcom/android/server/location/KDDIGeofenceManager;Lcom/android/server/location/KDDIGeofenceManager$1;)V

    iput-object v0, p0, Lcom/android/server/location/KDDIGeofenceManager;->mMotionListener:Lcom/android/server/location/KDDIGeofenceManager$MotionListener;

    .line 191
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v0, p0, Lcom/android/server/location/KDDIGeofenceManager;->mMinDistantToNearlestFence:D

    .line 240
    new-instance v0, Lcom/android/server/location/KDDIGeofenceManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/location/KDDIGeofenceManager$2;-><init>(Lcom/android/server/location/KDDIGeofenceManager;)V

    iput-object v0, p0, Lcom/android/server/location/KDDIGeofenceManager;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 209
    iput-object p1, p0, Lcom/android/server/location/KDDIGeofenceManager;->mContext:Landroid/content/Context;

    .line 210
    iget-object v0, p0, Lcom/android/server/location/KDDIGeofenceManager;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/server/location/KDDIGeofenceManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 211
    iget-object v0, p0, Lcom/android/server/location/KDDIGeofenceManager;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/KDDIGeofenceManager;->mSigMotion:Landroid/hardware/Sensor;

    .line 212
    iget-object v0, p0, Lcom/android/server/location/KDDIGeofenceManager;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/server/location/KDDIGeofenceManager;->mLocationManager:Landroid/location/LocationManager;

    .line 213
    iget-object v0, p0, Lcom/android/server/location/KDDIGeofenceManager;->mContext:Landroid/content/Context;

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/location/KDDIGeofenceManager;->mAppOps:Landroid/app/AppOpsManager;

    .line 214
    iget-object v0, p0, Lcom/android/server/location/KDDIGeofenceManager;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/location/KDDIGeofenceManager;->mPowerManager:Landroid/os/PowerManager;

    .line 215
    iget-object v0, p0, Lcom/android/server/location/KDDIGeofenceManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "KDDIGeofenceManager"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/KDDIGeofenceManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 216
    new-instance v0, Lcom/android/server/location/KDDIGeofenceManager$GeofenceHandler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/location/KDDIGeofenceManager$GeofenceHandler;-><init>(Lcom/android/server/location/KDDIGeofenceManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/location/KDDIGeofenceManager;->mHandler:Lcom/android/server/location/KDDIGeofenceManager$GeofenceHandler;

    .line 217
    iput-object p2, p0, Lcom/android/server/location/KDDIGeofenceManager;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    .line 218
    iput-object p3, p0, Lcom/android/server/location/KDDIGeofenceManager;->mLastLocation:Ljava/util/HashMap;

    .line 219
    iput-object p4, p0, Lcom/android/server/location/KDDIGeofenceManager;->mMockProviders:Ljava/util/HashMap;

    .line 220
    iput-object p6, p0, Lcom/android/server/location/KDDIGeofenceManager;->mLMSLock:Ljava/lang/Object;

    .line 221
    iput-object p5, p0, Lcom/android/server/location/KDDIGeofenceManager;->mLastLocationCoarseInterval:Ljava/util/HashMap;

    .line 223
    iget-object v0, p0, Lcom/android/server/location/KDDIGeofenceManager;->mHandler:Lcom/android/server/location/KDDIGeofenceManager$GeofenceHandler;

    new-instance v1, Lcom/android/server/location/KDDIGeofenceManager$1;

    invoke-direct {v1, p0}, Lcom/android/server/location/KDDIGeofenceManager$1;-><init>(Lcom/android/server/location/KDDIGeofenceManager;)V

    invoke-virtual {v0, v1}, Lcom/android/server/location/KDDIGeofenceManager$GeofenceHandler;->post(Ljava/lang/Runnable;)Z

    .line 233
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/location/KDDIGeofenceManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/KDDIGeofenceManager;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/server/location/KDDIGeofenceManager;->mLMSLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/location/KDDIGeofenceManager;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/KDDIGeofenceManager;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/server/location/KDDIGeofenceManager;->mLastLocation:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/location/KDDIGeofenceManager;)Lcom/android/server/location/KDDIGeofenceManager$GeofenceHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/KDDIGeofenceManager;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/server/location/KDDIGeofenceManager;->mHandler:Lcom/android/server/location/KDDIGeofenceManager$GeofenceHandler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/location/KDDIGeofenceManager;ZJ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/KDDIGeofenceManager;
    .param p1, "x1"    # Z
    .param p2, "x2"    # J

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/KDDIGeofenceManager;->updateNetworkRequest(ZJ)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/location/KDDIGeofenceManager;IILandroid/location/Location;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/KDDIGeofenceManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/location/Location;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/KDDIGeofenceManager;->handleGeoFenceTransition(IILandroid/location/Location;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/location/KDDIGeofenceManager;Landroid/location/Location;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/KDDIGeofenceManager;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/server/location/KDDIGeofenceManager;->handleLocationChange(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/location/KDDIGeofenceManager;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/KDDIGeofenceManager;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/server/location/KDDIGeofenceManager;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/location/KDDIGeofenceManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/KDDIGeofenceManager;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/server/location/KDDIGeofenceManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/location/KDDIGeofenceManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/KDDIGeofenceManager;
    .param p1, "x1"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/server/location/KDDIGeofenceManager;->removeGeoFenceClient(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/location/KDDIGeofenceManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/KDDIGeofenceManager;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/server/location/KDDIGeofenceManager;->bindHardwareGeofence()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/location/KDDIGeofenceManager;)Lcom/android/server/location/KDDIGeofenceManager$PassiveLocationListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/KDDIGeofenceManager;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/server/location/KDDIGeofenceManager;->mPassiveLocationListener:Lcom/android/server/location/KDDIGeofenceManager$PassiveLocationListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/location/KDDIGeofenceManager;)Landroid/location/LocationManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/KDDIGeofenceManager;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/server/location/KDDIGeofenceManager;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/location/KDDIGeofenceManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/KDDIGeofenceManager;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/server/location/KDDIGeofenceManager;->mGeoLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/location/KDDIGeofenceManager;Landroid/hardware/location/GeofenceHardware;)Landroid/hardware/location/GeofenceHardware;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/KDDIGeofenceManager;
    .param p1, "x1"    # Landroid/hardware/location/GeofenceHardware;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/server/location/KDDIGeofenceManager;->mGeofenceHardware:Landroid/hardware/location/GeofenceHardware;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/server/location/KDDIGeofenceManager;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/KDDIGeofenceManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/server/location/KDDIGeofenceManager;->isMockProvider(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private addHardwareGeofenceLocked(ILandroid/hardware/location/GeofenceHardwareRequest;)V
    .locals 5
    .param p1, "geo_id"    # I
    .param p2, "geofenceRequest"    # Landroid/hardware/location/GeofenceHardwareRequest;

    .prologue
    .line 480
    invoke-direct {p0}, Lcom/android/server/location/KDDIGeofenceManager;->checkHardwareGeofence()Z

    move-result v1

    if-nez v1, :cond_0

    .line 491
    :goto_0
    return-void

    .line 482
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 484
    .local v2, "identity":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/KDDIGeofenceManager;->mGeofenceHardware:Landroid/hardware/location/GeofenceHardware;

    const/4 v4, 0x0

    invoke-virtual {v1, p1, v4, p2, p0}, Landroid/hardware/location/GeofenceHardware;->addGeofence(IILandroid/hardware/location/GeofenceHardwareRequest;Landroid/hardware/location/GeofenceHardwareCallback;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 489
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 486
    :catch_0
    move-exception v0

    .line 487
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_1
    const-string v1, "KDDIGeofenceManager"

    const-string v4, " IllegalArgumentException "

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 489
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method private bindHardwareGeofence()V
    .locals 5

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/server/location/KDDIGeofenceManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/location/KDDIGeofenceManager;->mContext:Landroid/content/Context;

    const-class v3, Landroid/hardware/location/GeofenceHardwareService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/android/server/location/KDDIGeofenceManager;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 238
    return-void
.end method

.method private checkHardwareGeofence()Z
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/server/location/KDDIGeofenceManager;->mGeofenceHardware:Landroid/hardware/location/GeofenceHardware;

    if-nez v0, :cond_0

    .line 264
    const-string v0, "KDDIGeofenceManager"

    const-string v1, " HWGeofence not conneted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const/4 v0, 0x0

    .line 267
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getGeofenceIdforRegLock()I
    .locals 4

    .prologue
    .line 644
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/location/KDDIGeofenceManager;->mGeoId:[Z

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 645
    iget-object v2, p0, Lcom/android/server/location/KDDIGeofenceManager;->mGeoId:[Z

    aget-boolean v0, v2, v1

    .line 646
    .local v0, "b":Z
    if-nez v0, :cond_0

    .line 647
    iget-object v2, p0, Lcom/android/server/location/KDDIGeofenceManager;->mGeoId:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    .line 648
    add-int/lit8 v2, v1, 0x64

    .line 652
    .end local v0    # "b":Z
    :goto_1
    return v2

    .line 644
    .restart local v0    # "b":Z
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 652
    .end local v0    # "b":Z
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method private handleGeoFenceTransition(IILandroid/location/Location;)V
    .locals 8
    .param p1, "geofence_id"    # I
    .param p2, "transition"    # I
    .param p3, "location"    # Landroid/location/Location;

    .prologue
    .line 421
    :try_start_0
    const-string v3, "persist.gps.lpgf.nlp_only"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 422
    const-string v3, "KDDIGeofenceManager"

    const-string v4, " System propery persist.gps.lpgf.nlp_only true , Ignore HWGeofnceTransition "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    :goto_0
    return-void

    .line 425
    :catch_0
    move-exception v0

    .line 426
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "KDDIGeofenceManager"

    const-string v4, "IllegalArgumentException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 432
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    const-string v3, "fused"

    invoke-direct {p0, v3}, Lcom/android/server/location/KDDIGeofenceManager;->isMockProvider(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 433
    const-string v3, "KDDIGeofenceManager"

    const-string v4, " Fuded provider is mocked . Ignore HWGeofnceTransition "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 437
    :cond_1
    iget-object v4, p0, Lcom/android/server/location/KDDIGeofenceManager;->mLMSLock:Ljava/lang/Object;

    monitor-enter v4

    .line 438
    :try_start_1
    const-string v3, "gps"

    invoke-direct {p0, p3, v3}, Lcom/android/server/location/KDDIGeofenceManager;->updateLastKnownLocationLock(Landroid/location/Location;Ljava/lang/String;)V

    .line 439
    const-string v3, "fused"

    invoke-direct {p0, p3, v3}, Lcom/android/server/location/KDDIGeofenceManager;->updateLastKnownLocationLock(Landroid/location/Location;Ljava/lang/String;)V

    .line 440
    const-string v3, "passive"

    invoke-direct {p0, p3, v3}, Lcom/android/server/location/KDDIGeofenceManager;->updateLastKnownLocationLock(Landroid/location/Location;Ljava/lang/String;)V

    .line 441
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 443
    iget-object v4, p0, Lcom/android/server/location/KDDIGeofenceManager;->mGeoLock:Ljava/lang/Object;

    monitor-enter v4

    .line 445
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/location/KDDIGeofenceManager;->removeExpiredFencesLocked()V

    .line 447
    iget-object v3, p0, Lcom/android/server/location/KDDIGeofenceManager;->mGeofenceIdClientMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;

    .line 449
    .local v1, "geoclient":Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;
    if-nez v1, :cond_2

    .line 450
    const-string v3, "KDDIGeofenceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " No such client id :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    monitor-exit v4

    goto :goto_0

    .line 474
    .end local v1    # "geoclient":Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 441
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 454
    .restart local v1    # "geoclient":Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;
    :cond_2
    :try_start_4
    iget-object v3, p0, Lcom/android/server/location/KDDIGeofenceManager;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    iget-object v5, v1, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/android/server/location/LocationBlacklist;->isBlacklisted(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 456
    const-string v3, "KDDIGeofenceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Skipping geofence processing for blacklisted app: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    monitor-exit v4

    goto/16 :goto_0

    .line 462
    :cond_3
    iget v3, v1, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mAllowedResolutionLevel:I

    invoke-static {v3}, Lcom/android/server/LocationManagerService;->resolutionLevelToOp(I)I

    move-result v2

    .line 463
    .local v2, "op":I
    if-ltz v2, :cond_4

    .line 464
    iget-object v3, p0, Lcom/android/server/location/KDDIGeofenceManager;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v5, 0x1

    iget v6, v1, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mUid:I

    iget-object v7, v1, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v5, v6, v7}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_4

    .line 467
    const-string v3, "KDDIGeofenceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Skipping geofence processing for no op app: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    monitor-exit v4

    goto/16 :goto_0

    .line 473
    :cond_4
    invoke-virtual {v1, p2, p3}, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->onTransition(ILandroid/location/Location;)V

    .line 474
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method private handleLocationChange(Landroid/location/Location;)V
    .locals 11
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 373
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v5

    .line 374
    .local v5, "provider":Ljava/lang/String;
    const-string v6, "fused"

    invoke-direct {p0, v6}, Lcom/android/server/location/KDDIGeofenceManager;->isMockProvider(Ljava/lang/String;)Z

    move-result v2

    .line 376
    .local v2, "isFuseMock":Z
    iget-object v7, p0, Lcom/android/server/location/KDDIGeofenceManager;->mGeoLock:Ljava/lang/Object;

    monitor-enter v7

    .line 380
    if-eqz v2, :cond_0

    :try_start_0
    const-string v6, "fused"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    if-nez v2, :cond_4

    const-string v6, "gps"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 382
    :cond_1
    invoke-direct {p0}, Lcom/android/server/location/KDDIGeofenceManager;->removeExpiredFencesLocked()V

    .line 383
    iget-object v6, p0, Lcom/android/server/location/KDDIGeofenceManager;->mGeofenceIdClientMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;>;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 384
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 385
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;

    .line 386
    .local v1, "geoclient":Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;
    iget-object v6, p0, Lcom/android/server/location/KDDIGeofenceManager;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    iget-object v8, v1, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Lcom/android/server/location/LocationBlacklist;->isBlacklisted(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 388
    const-string v6, "KDDIGeofenceManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " Skipping geofence processing for blacklisted app: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mPackageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 408
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;>;"
    .end local v1    # "geoclient":Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;>;>;"
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 394
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;>;"
    .restart local v1    # "geoclient":Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;
    .restart local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;>;>;"
    :cond_2
    :try_start_1
    iget v6, v1, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mAllowedResolutionLevel:I

    invoke-static {v6}, Lcom/android/server/LocationManagerService;->resolutionLevelToOp(I)I

    move-result v4

    .line 395
    .local v4, "op":I
    if-ltz v4, :cond_3

    .line 396
    iget-object v6, p0, Lcom/android/server/location/KDDIGeofenceManager;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v8, 0x1

    iget v9, v1, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mUid:I

    iget-object v10, v1, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v8, v9, v10}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_3

    .line 399
    const-string v6, "KDDIGeofenceManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " Skipping geofence processing for no op app: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mPackageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 405
    :cond_3
    invoke-virtual {v1, p1}, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->onLocationChange(Landroid/location/Location;)V

    goto :goto_0

    .line 408
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;>;"
    .end local v1    # "geoclient":Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;>;>;"
    .end local v4    # "op":I
    :cond_4
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 410
    const-string v6, "network"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 411
    invoke-direct {p0, p1}, Lcom/android/server/location/KDDIGeofenceManager;->updateReqestInterval(Landroid/location/Location;)V

    .line 414
    :cond_5
    return-void
.end method

.method private isMockProvider(Ljava/lang/String;)Z
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 662
    iget-object v1, p0, Lcom/android/server/location/KDDIGeofenceManager;->mLMSLock:Ljava/lang/Object;

    monitor-enter v1

    .line 663
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/KDDIGeofenceManager;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 664
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private removeExpiredFencesLocked()V
    .locals 9

    .prologue
    .line 510
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 511
    .local v4, "time":J
    iget-object v6, p0, Lcom/android/server/location/KDDIGeofenceManager;->mGeofenceIdClientMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 512
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 513
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;

    .line 514
    .local v0, "clientToRemove":Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;
    iget-wide v6, v0, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mExpireAt:J

    cmp-long v6, v6, v4

    if-gez v6, :cond_0

    .line 515
    const-string v6, "KDDIGeofenceManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " GeofenceClient id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " expired "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget v2, v0, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mid:I

    .line 517
    .local v2, "geo_id":I
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 518
    const-string v6, "KDDIGeofenceManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " GeofenceHardware removeGeofence id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    const-string v6, "KDDIGeofenceManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " pid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    invoke-direct {p0, v2}, Lcom/android/server/location/KDDIGeofenceManager;->removeHardwareGeofenceLocked(I)V

    goto/16 :goto_0

    .line 523
    .end local v0    # "clientToRemove":Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;>;"
    .end local v2    # "geo_id":I
    :cond_1
    return-void
.end method

.method private removeGeoFenceClient(I)V
    .locals 3
    .param p1, "geo_id"    # I

    .prologue
    .line 599
    iget-object v1, p0, Lcom/android/server/location/KDDIGeofenceManager;->mGeoLock:Ljava/lang/Object;

    monitor-enter v1

    .line 600
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/KDDIGeofenceManager;->mGeofenceIdClientMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    invoke-direct {p0, p1}, Lcom/android/server/location/KDDIGeofenceManager;->removeHardwareGeofenceLocked(I)V

    .line 602
    monitor-exit v1

    .line 603
    return-void

    .line 602
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private removeHardwareGeofenceLocked(I)V
    .locals 5
    .param p1, "geo_id"    # I

    .prologue
    .line 495
    invoke-direct {p0}, Lcom/android/server/location/KDDIGeofenceManager;->checkHardwareGeofence()Z

    move-result v1

    if-nez v1, :cond_0

    .line 506
    :goto_0
    return-void

    .line 497
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 499
    .local v2, "identity":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/KDDIGeofenceManager;->mGeofenceHardware:Landroid/hardware/location/GeofenceHardware;

    const/4 v4, 0x0

    invoke-virtual {v1, p1, v4}, Landroid/hardware/location/GeofenceHardware;->removeGeofence(II)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 503
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 500
    :catch_0
    move-exception v0

    .line 501
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_1
    const-string v1, "KDDIGeofenceManager"

    const-string v4, " IllegalArgumentException "

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 503
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method private setGeofenceIdRegStateLock(IZ)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "state"    # Z

    .prologue
    .line 656
    const/16 v0, 0xc8

    if-ge p1, v0, :cond_0

    const/16 v0, 0x64

    if-ge p1, v0, :cond_1

    .line 659
    :cond_0
    :goto_0
    return-void

    .line 657
    :cond_1
    iget-object v0, p0, Lcom/android/server/location/KDDIGeofenceManager;->mGeoId:[Z

    add-int/lit8 v1, p1, -0x64

    aput-boolean p2, v0, v1

    goto :goto_0
.end method

.method private updateLastKnownLocationLock(Landroid/location/Location;Ljava/lang/String;)V
    .locals 10
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "provider"    # Ljava/lang/String;

    .prologue
    .line 608
    const-string v6, "noGPSLocation"

    invoke-virtual {p1, v6}, Landroid/location/Location;->getExtraLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v3

    .line 609
    .local v3, "noGPSLocation":Landroid/location/Location;
    const/4 v2, 0x0

    .line 610
    .local v2, "lastNoGPSLocation":Landroid/location/Location;
    iget-object v6, p0, Lcom/android/server/location/KDDIGeofenceManager;->mLastLocation:Ljava/util/HashMap;

    invoke-virtual {v6, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    .line 611
    .local v0, "lastLocation":Landroid/location/Location;
    if-nez v0, :cond_3

    .line 612
    new-instance v0, Landroid/location/Location;

    .end local v0    # "lastLocation":Landroid/location/Location;
    invoke-direct {v0, p2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 613
    .restart local v0    # "lastLocation":Landroid/location/Location;
    iget-object v6, p0, Lcom/android/server/location/KDDIGeofenceManager;->mLastLocation:Ljava/util/HashMap;

    invoke-virtual {v6, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    :cond_0
    :goto_0
    invoke-virtual {v0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 625
    iget-object v6, p0, Lcom/android/server/location/KDDIGeofenceManager;->mLastLocationCoarseInterval:Ljava/util/HashMap;

    invoke-virtual {v6, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    .line 626
    .local v1, "lastLocationCoarseInterval":Landroid/location/Location;
    if-nez v1, :cond_1

    .line 627
    new-instance v1, Landroid/location/Location;

    .end local v1    # "lastLocationCoarseInterval":Landroid/location/Location;
    invoke-direct {v1, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 628
    .restart local v1    # "lastLocationCoarseInterval":Landroid/location/Location;
    iget-object v6, p0, Lcom/android/server/location/KDDIGeofenceManager;->mLastLocationCoarseInterval:Ljava/util/HashMap;

    invoke-virtual {v6, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    :cond_1
    invoke-virtual {p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v6

    invoke-virtual {v1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v8

    sub-long v4, v6, v8

    .line 632
    .local v4, "timeDiffNanos":J
    const-wide v6, 0x8bb2c97000L

    cmp-long v6, v4, v6

    if-lez v6, :cond_2

    .line 633
    invoke-virtual {v1, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 636
    :cond_2
    return-void

    .line 615
    .end local v1    # "lastLocationCoarseInterval":Landroid/location/Location;
    .end local v4    # "timeDiffNanos":J
    :cond_3
    const-string v6, "noGPSLocation"

    invoke-virtual {v0, v6}, Landroid/location/Location;->getExtraLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    .line 616
    if-nez v3, :cond_0

    if-eqz v2, :cond_0

    .line 619
    const-string v6, "noGPSLocation"

    invoke-virtual {p1, v6, v2}, Landroid/location/Location;->setExtraLocation(Ljava/lang/String;Landroid/location/Location;)V

    goto :goto_0
.end method

.method private updateMotionDetectRequest(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    .line 300
    iget-object v1, p0, Lcom/android/server/location/KDDIGeofenceManager;->mGeoLock:Ljava/lang/Object;

    monitor-enter v1

    .line 301
    if-eqz p1, :cond_1

    :try_start_0
    iget-wide v2, p0, Lcom/android/server/location/KDDIGeofenceManager;->mCurrentFenceNumber:D

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_1

    .line 302
    const-string v0, "KDDIGeofenceManager"

    const-string v2, " requestTriggerSensor "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v0, p0, Lcom/android/server/location/KDDIGeofenceManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/location/KDDIGeofenceManager;->mMotionListener:Lcom/android/server/location/KDDIGeofenceManager$MotionListener;

    iget-object v3, p0, Lcom/android/server/location/KDDIGeofenceManager;->mSigMotion:Landroid/hardware/Sensor;

    invoke-virtual {v0, v2, v3}, Landroid/hardware/SensorManager;->requestTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    .line 308
    :cond_0
    :goto_0
    monitor-exit v1

    .line 309
    return-void

    .line 304
    :cond_1
    if-nez p1, :cond_0

    .line 305
    const-string v0, "KDDIGeofenceManager"

    const-string v2, " cancelTriggerSensor "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v0, p0, Lcom/android/server/location/KDDIGeofenceManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/location/KDDIGeofenceManager;->mMotionListener:Lcom/android/server/location/KDDIGeofenceManager$MotionListener;

    iget-object v3, p0, Lcom/android/server/location/KDDIGeofenceManager;->mSigMotion:Landroid/hardware/Sensor;

    invoke-virtual {v0, v2, v3}, Landroid/hardware/SensorManager;->cancelTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    goto :goto_0

    .line 308
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateNetworkRequest(ZJ)V
    .locals 8
    .param p1, "enable"    # Z
    .param p2, "interval"    # J

    .prologue
    .line 277
    iget-object v2, p0, Lcom/android/server/location/KDDIGeofenceManager;->mGeoLock:Ljava/lang/Object;

    monitor-enter v2

    .line 278
    if-eqz p1, :cond_1

    :try_start_0
    iget-wide v4, p0, Lcom/android/server/location/KDDIGeofenceManager;->mCurrentFenceNumber:D

    const-wide/16 v6, 0x0

    cmpl-double v1, v4, v6

    if-lez v1, :cond_1

    iget-wide v4, p0, Lcom/android/server/location/KDDIGeofenceManager;->mLocationUpdateInterval:J

    cmp-long v1, v4, p2

    if-eqz v1, :cond_1

    .line 279
    new-instance v0, Landroid/location/LocationRequest;

    invoke-direct {v0}, Landroid/location/LocationRequest;-><init>()V

    .line 280
    .local v0, "request":Landroid/location/LocationRequest;
    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationRequest;->setProvider(Ljava/lang/String;)Landroid/location/LocationRequest;

    .line 281
    invoke-virtual {v0, p2, p3}, Landroid/location/LocationRequest;->setInterval(J)Landroid/location/LocationRequest;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/location/LocationRequest;->setFastestInterval(J)Landroid/location/LocationRequest;

    .line 282
    const-string v1, "KDDIGeofenceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " requestLocationUpdates interval =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v1, p0, Lcom/android/server/location/KDDIGeofenceManager;->mLocationManager:Landroid/location/LocationManager;

    iget-object v3, p0, Lcom/android/server/location/KDDIGeofenceManager;->mNetworkLocationListener:Lcom/android/server/location/KDDIGeofenceManager$NetworkLocationListener;

    iget-object v4, p0, Lcom/android/server/location/KDDIGeofenceManager;->mHandler:Lcom/android/server/location/KDDIGeofenceManager$GeofenceHandler;

    invoke-virtual {v4}, Lcom/android/server/location/KDDIGeofenceManager$GeofenceHandler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v1, v0, v3, v4}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 284
    iput-wide p2, p0, Lcom/android/server/location/KDDIGeofenceManager;->mLocationUpdateInterval:J

    .line 291
    .end local v0    # "request":Landroid/location/LocationRequest;
    :cond_0
    :goto_0
    monitor-exit v2

    .line 292
    return-void

    .line 285
    :cond_1
    if-nez p1, :cond_0

    .line 286
    const-string v1, "KDDIGeofenceManager"

    const-string v3, " removeUpdates "

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v1, p0, Lcom/android/server/location/KDDIGeofenceManager;->mLocationManager:Landroid/location/LocationManager;

    iget-object v3, p0, Lcom/android/server/location/KDDIGeofenceManager;->mNetworkLocationListener:Lcom/android/server/location/KDDIGeofenceManager$NetworkLocationListener;

    invoke-virtual {v1, v3}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 288
    const-wide v4, 0x7fffffffffffffffL

    iput-wide v4, p0, Lcom/android/server/location/KDDIGeofenceManager;->mLocationUpdateInterval:J

    .line 289
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v4, p0, Lcom/android/server/location/KDDIGeofenceManager;->mMinDistantToNearlestFence:D

    goto :goto_0

    .line 291
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateReqestInterval(Landroid/location/Location;)V
    .locals 23
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/KDDIGeofenceManager;->mGeoLock:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 320
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/location/KDDIGeofenceManager;->mLastLocationUpdate:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-float v4, v4

    const v5, 0x4e6e6b28    # 1.0E9f

    div-float v17, v4, v5

    .line 321
    .local v17, "interval":F
    const/4 v4, 0x0

    cmpg-float v4, v17, v4

    if-gtz v4, :cond_0

    .line 322
    monitor-exit v22

    .line 366
    :goto_0
    return-void

    .line 325
    :cond_0
    const/4 v4, 0x3

    new-array v12, v4, [F

    .line 326
    .local v12, "results":[F
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/location/KDDIGeofenceManager;->mLastLocationUpdate:Landroid/location/Location;

    invoke-virtual {v8}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/location/KDDIGeofenceManager;->mLastLocationUpdate:Landroid/location/Location;

    invoke-virtual {v10}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    invoke-static/range {v4 .. v12}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    .line 328
    const/4 v4, 0x0

    aget v19, v12, v4

    .line 329
    .local v19, "travelDistance":F
    const-string v4, "KDDIGeofenceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Device travelDistance "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " M"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const-string v4, "KDDIGeofenceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Device location interval "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " s"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    div-float v4, v19, v17

    float-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/location/KDDIGeofenceManager;->mDeviceSpeed:I

    .line 332
    const-string v4, "KDDIGeofenceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Device speed update "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/location/KDDIGeofenceManager;->mDeviceSpeed:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " M/s"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/KDDIGeofenceManager;->mLastLocationUpdate:Landroid/location/Location;

    .line 336
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/location/KDDIGeofenceManager;->mGeofenceIdClientMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;>;>;"
    :cond_1
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 337
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    .line 338
    .local v16, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;

    .line 339
    .local v13, "client":Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;
    # getter for: Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mDistanceToCenter:D
    invoke-static {v13}, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->access$800(Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;)D

    move-result-wide v4

    iget-object v6, v13, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mGeofence:Landroid/location/Geofence;

    invoke-virtual {v6}, Landroid/location/Geofence;->getRadius()F

    move-result v6

    float-to-double v6, v6

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    .line 340
    .local v14, "distanceToFence":D
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/location/KDDIGeofenceManager;->mMinDistantToNearlestFence:D

    cmpg-double v4, v14, v4

    if-gez v4, :cond_1

    .line 341
    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/server/location/KDDIGeofenceManager;->mMinDistantToNearlestFence:D

    goto :goto_1

    .line 363
    .end local v12    # "results":[F
    .end local v13    # "client":Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;
    .end local v14    # "distanceToFence":D
    .end local v16    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;>;"
    .end local v17    # "interval":F
    .end local v18    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;>;>;"
    .end local v19    # "travelDistance":F
    :catchall_0
    move-exception v4

    monitor-exit v22
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 345
    .restart local v12    # "results":[F
    .restart local v17    # "interval":F
    .restart local v18    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;>;>;"
    .restart local v19    # "travelDistance":F
    :cond_2
    :try_start_1
    const-string v4, "KDDIGeofenceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " MinDistantToNearlestFence = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/location/KDDIGeofenceManager;->mMinDistantToNearlestFence:D

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " M "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/location/KDDIGeofenceManager;->mMinDistantToNearlestFence:D

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/location/KDDIGeofenceManager;->mDeviceSpeed:I

    if-nez v4, :cond_4

    .line 348
    const-wide/32 v20, 0x6ddd00

    .line 353
    .local v20, "new_interval":J
    :goto_2
    const-string v4, "KDDIGeofenceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Old interval = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/location/KDDIGeofenceManager;->mLocationUpdateInterval:J

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    const-string v4, "KDDIGeofenceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " New interval = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-wide/16 v6, 0x3e8

    div-long v6, v20, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/location/KDDIGeofenceManager;->updateNetworkRequest(ZJ)V

    .line 359
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/location/KDDIGeofenceManager;->mLocationUpdateInterval:J

    const-wide/32 v6, 0x2bf20

    cmp-long v4, v4, v6

    if-ltz v4, :cond_3

    .line 360
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/location/KDDIGeofenceManager;->updateMotionDetectRequest(Z)V

    .line 363
    :cond_3
    monitor-exit v22

    goto/16 :goto_0

    .line 350
    .end local v20    # "new_interval":J
    :cond_4
    const-wide v4, 0x415b774000000000L    # 7200000.0

    const-wide v6, 0x40ed4c0000000000L    # 60000.0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/location/KDDIGeofenceManager;->mMinDistantToNearlestFence:D

    const-wide v10, 0x408f400000000000L    # 1000.0

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/location/KDDIGeofenceManager;->mDeviceSpeed:I

    int-to-double v10, v10

    div-double/2addr v8, v10

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v4

    double-to-long v0, v4

    move-wide/from16 v20, v0

    .restart local v20    # "new_interval":J
    goto :goto_2
.end method


# virtual methods
.method public addGeoFenceClient(Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;IJI)V
    .locals 17
    .param p1, "geofence"    # Landroid/location/Geofence;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "allowedResolutionLevel"    # I
    .param p5, "expireAt"    # J
    .param p7, "uid"    # I

    .prologue
    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/KDDIGeofenceManager;->mGeoLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 530
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/KDDIGeofenceManager;->removeExpiredFencesLocked()V

    .line 532
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/location/KDDIGeofenceManager;->mGeofenceIdClientMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 533
    .local v13, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;>;"
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;

    .line 534
    .local v2, "currentClient":Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;
    iget-object v4, v2, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mGeofence:Landroid/location/Geofence;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/location/Geofence;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v2, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mPendingIntent:Landroid/app/PendingIntent;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 536
    const-string v4, "KDDIGeofenceManager"

    const-string v6, " Geofence alreay exits"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    monitor-exit v16

    .line 561
    .end local v2    # "currentClient":Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;
    .end local v13    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;>;"
    :goto_0
    return-void

    .line 541
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/KDDIGeofenceManager;->getGeofenceIdforRegLock()I

    move-result v5

    .line 543
    .local v5, "geo_id":I
    if-gez v5, :cond_2

    .line 544
    const-string v4, "KDDIGeofenceManager"

    const-string v6, " Exeed the maximum geofences number"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    monitor-exit v16

    goto :goto_0

    .line 559
    .end local v5    # "geo_id":I
    .end local v15    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 548
    .restart local v5    # "geo_id":I
    .restart local v15    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    new-instance v3, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v9, p4

    move-wide/from16 v10, p5

    move/from16 v12, p7

    invoke-direct/range {v3 .. v12}, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;-><init>(Lcom/android/server/location/KDDIGeofenceManager;ILandroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;IJI)V

    .line 550
    .local v3, "geoClient":Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/location/KDDIGeofenceManager;->mGeofenceIdClientMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    invoke-virtual/range {p1 .. p1}, Landroid/location/Geofence;->getLatitude()D

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Landroid/location/Geofence;->getLongitude()D

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Landroid/location/Geofence;->getRadius()F

    move-result v4

    float-to-double v10, v4

    invoke-static/range {v6 .. v11}, Landroid/hardware/location/GeofenceHardwareRequest;->createCircularGeofence(DDD)Landroid/hardware/location/GeofenceHardwareRequest;

    move-result-object v14

    .line 556
    .local v14, "geofenceRequest":Landroid/hardware/location/GeofenceHardwareRequest;
    const-string v4, "KDDIGeofenceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " GeofenceHardware addGeofence "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v14}, Lcom/android/server/location/KDDIGeofenceManager;->addHardwareGeofenceLocked(ILandroid/hardware/location/GeofenceHardwareRequest;)V

    .line 559
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 724
    const-string v2, "  KDDI Geofences: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 725
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    Device speed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/location/KDDIGeofenceManager;->mDeviceSpeed:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " M/s "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 726
    iget-wide v2, p0, Lcom/android/server/location/KDDIGeofenceManager;->mCurrentFenceNumber:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 727
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    GeoFence Number : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/server/location/KDDIGeofenceManager;->mCurrentFenceNumber:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 728
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    Distance to Nearest fence : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/server/location/KDDIGeofenceManager;->mMinDistantToNearlestFence:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " M "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 729
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    NLP Update Interval : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/server/location/KDDIGeofenceManager;->mLocationUpdateInterval:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 730
    iget-object v2, p0, Lcom/android/server/location/KDDIGeofenceManager;->mGeofenceIdClientMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 731
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;

    invoke-virtual {v2}, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 734
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public onGeofenceAdd(II)V
    .locals 6
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .prologue
    .line 678
    const-string v0, "KDDIGeofenceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onGeofenceAdd geofence Id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    iget-object v1, p0, Lcom/android/server/location/KDDIGeofenceManager;->mGeoLock:Ljava/lang/Object;

    monitor-enter v1

    .line 681
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/android/server/location/KDDIGeofenceManager;->setGeofenceIdRegStateLock(IZ)V

    .line 682
    iget-wide v2, p0, Lcom/android/server/location/KDDIGeofenceManager;->mCurrentFenceNumber:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/location/KDDIGeofenceManager;->mCurrentFenceNumber:D

    .line 683
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 684
    iget-object v0, p0, Lcom/android/server/location/KDDIGeofenceManager;->mHandler:Lcom/android/server/location/KDDIGeofenceManager$GeofenceHandler;

    new-instance v1, Lcom/android/server/location/KDDIGeofenceManager$3;

    invoke-direct {v1, p0}, Lcom/android/server/location/KDDIGeofenceManager$3;-><init>(Lcom/android/server/location/KDDIGeofenceManager;)V

    invoke-virtual {v0, v1}, Lcom/android/server/location/KDDIGeofenceManager$GeofenceHandler;->post(Ljava/lang/Runnable;)Z

    .line 699
    return-void

    .line 683
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onGeofencePause(II)V
    .locals 3
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .prologue
    .line 713
    const-string v0, "KDDIGeofenceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onGeofencePause geofence Id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    return-void
.end method

.method public onGeofenceRemove(II)V
    .locals 6
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .prologue
    .line 701
    const-string v0, "KDDIGeofenceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onGeofenceRemove geofence Id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    iget-object v1, p0, Lcom/android/server/location/KDDIGeofenceManager;->mGeoLock:Ljava/lang/Object;

    monitor-enter v1

    .line 704
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/android/server/location/KDDIGeofenceManager;->setGeofenceIdRegStateLock(IZ)V

    .line 705
    iget-wide v2, p0, Lcom/android/server/location/KDDIGeofenceManager;->mCurrentFenceNumber:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/location/KDDIGeofenceManager;->mCurrentFenceNumber:D

    .line 706
    iget-wide v2, p0, Lcom/android/server/location/KDDIGeofenceManager;->mCurrentFenceNumber:D

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-nez v0, :cond_0

    .line 707
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/location/KDDIGeofenceManager;->updateNetworkRequest(ZJ)V

    .line 708
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/location/KDDIGeofenceManager;->updateMotionDetectRequest(Z)V

    .line 710
    :cond_0
    monitor-exit v1

    .line 711
    return-void

    .line 710
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onGeofenceResume(II)V
    .locals 3
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .prologue
    .line 717
    const-string v0, "KDDIGeofenceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onGeofenceResume geofence Id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    return-void
.end method

.method public onGeofenceTransition(IILandroid/location/Location;JI)V
    .locals 3
    .param p1, "geofenceId"    # I
    .param p2, "transition"    # I
    .param p3, "location"    # Landroid/location/Location;
    .param p4, "timestamp"    # J
    .param p6, "monitoringType"    # I

    .prologue
    .line 669
    const-string v0, "KDDIGeofenceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onGeofenceTransition geofence Id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " transition "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " monitoringType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    iget-object v0, p0, Lcom/android/server/location/KDDIGeofenceManager;->mHandler:Lcom/android/server/location/KDDIGeofenceManager$GeofenceHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/android/server/location/KDDIGeofenceManager$GeofenceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 676
    return-void
.end method

.method public removeGeoFenceClient(Landroid/location/Geofence;Landroid/app/PendingIntent;)V
    .locals 8
    .param p1, "geofence"    # Landroid/location/Geofence;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 571
    iget-object v5, p0, Lcom/android/server/location/KDDIGeofenceManager;->mGeoLock:Ljava/lang/Object;

    monitor-enter v5

    .line 573
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/location/KDDIGeofenceManager;->removeExpiredFencesLocked()V

    .line 575
    iget-object v4, p0, Lcom/android/server/location/KDDIGeofenceManager;->mGeofenceIdClientMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 576
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 577
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;

    .line 578
    .local v0, "clientToRemove":Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;
    if-eqz p1, :cond_1

    iget-object v4, v0, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p2, v4}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mGeofence:Landroid/location/Geofence;

    invoke-virtual {p1, v4}, Landroid/location/Geofence;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    if-nez p1, :cond_0

    iget-object v4, v0, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p2, v4}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 583
    :cond_2
    iget v2, v0, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mid:I

    .line 584
    .local v2, "geo_id":I
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 585
    const-string v4, "KDDIGeofenceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " GeofenceHardware removeGeofence "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    const-string v4, "KDDIGeofenceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " pid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    invoke-direct {p0, v2}, Lcom/android/server/location/KDDIGeofenceManager;->removeHardwareGeofenceLocked(I)V

    goto :goto_0

    .line 590
    .end local v0    # "clientToRemove":Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;>;"
    .end local v2    # "geo_id":I
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;>;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;>;>;"
    :cond_3
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 592
    return-void
.end method
