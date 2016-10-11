.class public Lcom/android/server/location/GpsLocationProvider;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"

# interfaces
.implements Lcom/android/server/location/LocationProviderInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GpsLocationProvider$BackOff;,
        Lcom/android/server/location/GpsLocationProvider$NetworkLocationListener;,
        Lcom/android/server/location/GpsLocationProvider$ProviderHandler;,
        Lcom/android/server/location/GpsLocationProvider$GpsRequest;
    }
.end annotation


# static fields
.field private static final ADD_LISTENER:I = 0x8

.field private static final AGPS_DATA_CONNECTION_CLOSED:I = 0x0

.field private static final AGPS_DATA_CONNECTION_OPEN:I = 0x2

.field private static final AGPS_DATA_CONNECTION_OPENING:I = 0x1

.field private static final AGPS_REF_LOCATION_TYPE_GSM_CELLID:I = 0x1

.field private static final AGPS_REF_LOCATION_TYPE_UMTS_CELLID:I = 0x2

.field private static final AGPS_REG_LOCATION_TYPE_MAC:I = 0x3

.field private static final AGPS_RIL_REQUEST_REFLOC_CELLID:I = 0x1

.field private static final AGPS_RIL_REQUEST_REFLOC_MAC:I = 0x2

.field private static final AGPS_RIL_REQUEST_SETID_IMSI:I = 0x1

.field private static final AGPS_RIL_REQUEST_SETID_MSISDN:I = 0x2

.field private static final AGPS_SETID_TYPE_IMSI:I = 0x1

.field private static final AGPS_SETID_TYPE_MSISDN:I = 0x2

.field private static final AGPS_SETID_TYPE_NONE:I = 0x0

.field private static final AGPS_SUPL_MODE_MSA:I = 0x2

.field private static final AGPS_SUPL_MODE_MSB:I = 0x1

.field private static final AGPS_TYPE_C2K:I = 0x2

.field private static final AGPS_TYPE_SUPL:I = 0x1

.field private static final ALARM_TIMEOUT:Ljava/lang/String; = "com.android.internal.location.ALARM_TIMEOUT"

.field private static final ALARM_WAKEUP:Ljava/lang/String; = "com.android.internal.location.ALARM_WAKEUP"

.field private static final ALARM_XTRA_TIMEOUT:Ljava/lang/String; = "com.htc.location.XTRA_ALARM_TIMEOUT"

.field private static final ALMANAC_MASK:I = 0x1

.field private static final APN_INVALID:I = 0x0

.field private static final APN_IPV4:I = 0x1

.field private static final APN_IPV4V6:I = 0x3

.field private static final APN_IPV6:I = 0x2

.field private static final BATTERY_SAVER_GPS_MODE:Ljava/lang/String; = "batterySaverGpsMode"

.field private static final BATTERY_SAVER_MODE_DISABLED_WHEN_SCREEN_OFF:I = 0x1

.field private static final BATTERY_SAVER_MODE_NO_CHANGE:I = 0x0

.field private static final CHECK_LOCATION:I = 0x1

.field private static final CUSTOMIZE_MULTIRAB:Ljava/lang/String; = "ro.ril.multirab.throttling"

.field private static final DEBUG:Z = true

.field private static final DEFAULT_PROPERTIES_FILE:Ljava/lang/String; = "/etc/gps.conf"

.field private static final DOWNLOAD_XTRA_DATA:I = 0x6

.field private static final DOWNLOAD_XTRA_DATA_FINISHED:I = 0xb

.field private static final ENABLE:I = 0x2

.field private static final EPHEMERIS_MASK:I = 0x0

.field private static final GPS_AGPS_DATA_CONNECTED:I = 0x3

.field private static final GPS_AGPS_DATA_CONN_DONE:I = 0x4

.field private static final GPS_AGPS_DATA_CONN_FAILED:I = 0x5

.field private static final GPS_CAPABILITY_GEOFENCING:I = 0x20

.field private static final GPS_CAPABILITY_MEASUREMENTS:I = 0x40

.field private static final GPS_CAPABILITY_MSA:I = 0x4

.field private static final GPS_CAPABILITY_MSB:I = 0x2

.field private static final GPS_CAPABILITY_NAV_MESSAGES:I = 0x80

.field private static final GPS_CAPABILITY_ON_DEMAND_TIME:I = 0x10

.field private static final GPS_CAPABILITY_SCHEDULING:I = 0x1

.field private static final GPS_CAPABILITY_SINGLE_SHOT:I = 0x8

.field private static final GPS_DELETE_ALL:I = 0xffff

.field private static final GPS_DELETE_ALMANAC:I = 0x2

.field private static final GPS_DELETE_CELLDB_INFO:I = 0x8000

.field private static final GPS_DELETE_EPHEMERIS:I = 0x1

.field private static final GPS_DELETE_HEALTH:I = 0x40

.field private static final GPS_DELETE_IONO:I = 0x10

.field private static final GPS_DELETE_POSITION:I = 0x4

.field private static final GPS_DELETE_RTI:I = 0x400

.field private static final GPS_DELETE_SADATA:I = 0x200

.field private static final GPS_DELETE_SVDIR:I = 0x80

.field private static final GPS_DELETE_SVSTEER:I = 0x100

.field private static final GPS_DELETE_TIME:I = 0x8

.field private static final GPS_DELETE_UTC:I = 0x20

.field private static final GPS_GEOFENCE_AVAILABLE:I = 0x2

.field private static final GPS_GEOFENCE_ERROR_GENERIC:I = -0x95

.field private static final GPS_GEOFENCE_ERROR_ID_EXISTS:I = -0x65

.field private static final GPS_GEOFENCE_ERROR_ID_UNKNOWN:I = -0x66

.field private static final GPS_GEOFENCE_ERROR_INVALID_TRANSITION:I = -0x67

.field private static final GPS_GEOFENCE_ERROR_TOO_MANY_GEOFENCES:I = 0x64

.field private static final GPS_GEOFENCE_OPERATION_SUCCESS:I = 0x0

.field private static final GPS_GEOFENCE_UNAVAILABLE:I = 0x1

.field private static final GPS_POLLING_THRESHOLD_INTERVAL:I = 0x2710

.field private static final GPS_POSITION_MODE_MS_ASSISTED:I = 0x2

.field private static final GPS_POSITION_MODE_MS_BASED:I = 0x1

.field private static final GPS_POSITION_MODE_STANDALONE:I = 0x0

.field private static final GPS_POSITION_RECURRENCE_PERIODIC:I = 0x0

.field private static final GPS_POSITION_RECURRENCE_SINGLE:I = 0x1

.field private static final GPS_RELEASE_AGPS_DATA_CONN:I = 0x2

.field private static final GPS_REQUEST_AGPS_DATA_CONN:I = 0x1

.field private static final GPS_STATUS_ENGINE_OFF:I = 0x4

.field private static final GPS_STATUS_ENGINE_ON:I = 0x3

.field private static final GPS_STATUS_NONE:I = 0x0

.field private static final GPS_STATUS_SESSION_BEGIN:I = 0x1

.field private static final GPS_STATUS_SESSION_END:I = 0x2

.field private static final HTC_GPS_STATUS_INJECT_LOCATION:I = 0x2

.field private static final HTC_GPS_STATUS_INJECT_SUPL_CERT:I = 0x4

.field private static final HTC_GPS_STATUS_INJECT_TIME:I = 0x1

.field private static final HTC_GPS_STATUS_INJECT_XTRA_DATA:I = 0x3

.field private static final HTC_GPS_STATUS_SET_PRIVACY_LOCK:I = 0x5

.field private static HtcSystemUPLogger_write:Ljava/lang/reflect/Method; = null

.field private static final HtcSystemUP_action_off:Ljava/lang/String; = "A0002"

.field private static final HtcSystemUP_action_on:Ljava/lang/String; = "A0001"

.field private static final HtcSystemUP_appid_GPS:Ljava/lang/String; = "UTD_BI"

.field private static final HtcSystemUP_category:Ljava/lang/String; = "C0003"

.field private static Htc_notifyWLDLocationRequest:Ljava/lang/reflect/Method; = null

.field private static final INITIALIZE_HANDLER:I = 0xd

.field private static final INJECT_NTP_TIME:I = 0x5

.field private static final INJECT_NTP_TIME_FINISHED:I = 0xa

.field private static final LOCATION_HAS_2D_UNC:I = 0x8000

.field private static final LOCATION_HAS_ACCURACY:I = 0x10

.field private static final LOCATION_HAS_ALTITUDE:I = 0x2

.field private static final LOCATION_HAS_BEARING:I = 0x8

.field private static final LOCATION_HAS_LAT_LONG:I = 0x1

.field private static final LOCATION_HAS_SPEED:I = 0x4

.field private static final LOCATION_INVALID:I = 0x0

.field private static final LOCK_ALL:I = 0x1

.field private static final LOCK_MI:I = 0x2

.field private static final LOCK_MT:I = 0x3

.field private static final LOCK_NONE:I = 0x0

.field private static final LOC_API_ADAPTER_ERR_ENGINE_BUSY:I = 0x6

.field private static final LOC_API_ADAPTER_ERR_ENGINE_DOWN:I = 0x64

.field private static final LOC_API_ADAPTER_ERR_GENERAL_FAILURE:I = 0x1

.field private static final LOC_API_ADAPTER_ERR_INVALID_HANDLE:I = 0x4

.field private static final LOC_API_ADAPTER_ERR_INVALID_PARAMETER:I = 0x5

.field private static final LOC_API_ADAPTER_ERR_PHONE_OFFLINE:I = 0x7

.field private static final LOC_API_ADAPTER_ERR_SERVICE_NOT_PRESENT:I = 0x9

.field private static final LOC_API_ADAPTER_ERR_SUCCESS:I = 0x0

.field private static final LOC_API_ADAPTER_ERR_TIMEOUT:I = 0x8

.field private static final LOC_API_ADAPTER_ERR_UNSUPPORTED:I = 0x2

.field private static final MAX_RETRY_INTERVAL:J = 0xdbba00L

.field private static final MAX_SVS:I = 0x20

.field private static final NO_FIX_TIMEOUT:I = 0xea60

.field private static final NTP_INTERVAL:J = 0x5265c00L

.field private static final PROPERTIES:Lcom/android/internal/location/ProviderProperties;

.field private static final PROPERTIES_FILE_PREFIX:Ljava/lang/String; = "/etc/gps"

.field private static final PROPERTIES_FILE_SUFFIX:Ljava/lang/String; = ".conf"

.field private static final RECENT_FIX_TIMEOUT:J = 0x2710L

.field private static final REMOVE_LISTENER:I = 0x9

.field private static final RETRY_INTERVAL:J = 0x493e0L

.field private static final SET_REQUEST:I = 0x3

.field private static final SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field private static final SINGLE_CONF_FILE:Ljava/lang/String; = "/data/misc/gps_single_conf"

.field private static final STATE_DOWNLOADING:I = 0x1

.field private static final STATE_IDLE:I = 0x2

.field private static final STATE_PENDING_NETWORK:I = 0x0

.field private static final SUBSCRIPTION_OR_SIM_CHANGED:I = 0xc

.field private static final TAG:Ljava/lang/String; = "GpsLocationProvider"

.field private static final TCP_MAX_PORT:I = 0xffff

.field private static final TCP_MIN_PORT:I = 0x0

.field private static final UPDATE_LOCATION:I = 0x7

.field private static final UPDATE_NETWORK_STATE:I = 0x4

.field private static final USED_FOR_FIX_MASK:I = 0x2

.field private static final VERBOSE:Z = true

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "GpsLocationProvider"

.field private static isBIEnabled:Z = false

.field private static mCustManager:Lcom/htc/customization/HtcCustomizationManager; = null

.field private static mCustReader:Lcom/htc/customization/HtcCustomizationReader; = null

.field private static mIsCHINASku:Z = false

.field private static mIsCMCC:Z = false

.field private static mIsCT:Z = false

.field private static mIsKDDI:Z = false

.field private static mIsSprint:Z = false

.field private static mIsVZW:Z = false

.field private static final strFQDN:Ljava/lang/String; = "FQDN"

.field private static final strNULL:Ljava/lang/String; = ""


# instance fields
.field private IsWaitingDisconnection:Z

.field private Is_MULTI_RAB_TRAFFIC_support:Z

.field private final RETRY_LIMIT:I

.field private SSLog:I

.field private WAIT_INTERVAL:J

.field private XTRA_INTERVAL:J

.field private cert_idx:I

.field private mAGpsApn:Ljava/lang/String;

.field private mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

.field private mAGpsDataConnectionState:I

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mApnIpType:I

.field private final mAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mC2KServerHost:Ljava/lang/String;

.field private mC2KServerPort:I

.field private mCertCount:I

.field private mClientSource:Landroid/os/WorkSource;

.field private final mConnMgr:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mDefaultGpsPositionMode:I

.field private mDisableAgps:Z

.field private mDisableAgpsWhenRoaming:Z

.field private mDisableGps:Z

.field private mDisableXtraDownload:Z

.field private mDownloadXtraDataPending:I

.field private mECMState:Z

.field private mECMStateUpdate:Z

.field private mEnabled:Z

.field private mEngineCapabilities:I

.field private mEngineOn:Z

.field private mFixInterval:I

.field private mFixRequestTime:J

.field private mForceXtraInject:Z

.field private mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

.field private mGpsGeofenceBinder:Landroid/location/IGpsGeofenceHardware;

.field private final mGpsMeasurementsProvider:Lcom/android/server/location/GpsMeasurementsProvider;

.field private final mGpsNavigationMessageProvider:Lcom/android/server/location/GpsNavigationMessageProvider;

.field private final mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

.field private mHandler:Landroid/os/Handler;

.field private final mILocationManager:Landroid/location/ILocationManager;

.field private mInjectNtpTimePending:I

.field private mLastFixTime:J

.field private final mListenerHelper:Lcom/android/server/location/GpsStatusListenerHelper;

.field private mLocation:Landroid/location/Location;

.field private mLocationExtras:Landroid/os/Bundle;

.field private mLocationFlags:I

.field private mLock:Ljava/lang/Object;

.field private final mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

.field private mNativeNtpRequest:Z

.field private mNavigating:Z

.field private final mNetInitiatedListener:Landroid/location/INetInitiatedListener;

.field private mNetworkAvailable:Z

.field private mNmeaBuffer:[B

.field private mNtpBackOff:Lcom/android/server/location/GpsLocationProvider$BackOff;

.field private final mNtpTime:Landroid/util/NtpTrustedTime;

.field private final mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mPeriodicTimeInjection:Z

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneType:Ljava/lang/String;

.field private mPositionMode:I

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mProperties:Ljava/util/Properties;

.field private mProviderRequest:Lcom/android/internal/location/ProviderRequest;

.field private mQosAccuracy:I

.field private mQosTimeoutAgps:I

.field private mQosTimeoutStandalone:I

.field private mRoaming:Z

.field private mSingleShot:Z

.field private mSnrs:[F

.field private mStarted:Z

.field private mStatus:I

.field private mStatusUpdateTime:J

.field private mSuplEsEnabled:Z

.field private mSuplServerHost:Ljava/lang/String;

.field private mSuplServerPort:I

.field private mSuplTlsHost:Ljava/lang/String;

.field private mSupportsXtra:Z

.field private mSvAzimuths:[F

.field private mSvCount:I

.field private mSvElevations:[F

.field private mSvMasks:[I

.field private mSvs:[I

.field private mTimeToFirstFix:I

.field private final mTimeoutIntent:Landroid/app/PendingIntent;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mWakeupIntent:Landroid/app/PendingIntent;

.field private mWorkSource:Landroid/os/WorkSource;

.field private mXLock:Ljava/lang/Object;

.field private mXtraBackOff:Lcom/android/server/location/GpsLocationProvider$BackOff;

.field private mXtraInjRetryCount:I

.field private mXtraTimeoutIntent:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v8, 0x3

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 153
    new-instance v0, Lcom/android/internal/location/ProviderProperties;

    move v2, v1

    move v4, v3

    move v5, v1

    move v6, v1

    move v7, v1

    move v9, v1

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/location/ProviderProperties;-><init>(ZZZZZZZII)V

    sput-object v0, Lcom/android/server/location/GpsLocationProvider;->PROPERTIES:Lcom/android/internal/location/ProviderProperties;

    .line 467
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v0

    sput-object v0, Lcom/android/server/location/GpsLocationProvider;->mCustManager:Lcom/htc/customization/HtcCustomizationManager;

    .line 468
    sget-object v0, Lcom/android/server/location/GpsLocationProvider;->mCustManager:Lcom/htc/customization/HtcCustomizationManager;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/server/location/GpsLocationProvider;->mCustManager:Lcom/htc/customization/HtcCustomizationManager;

    const-string v2, "System"

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    :goto_0
    sput-object v0, Lcom/android/server/location/GpsLocationProvider;->mCustReader:Lcom/htc/customization/HtcCustomizationReader;

    .line 469
    sput-boolean v3, Lcom/android/server/location/GpsLocationProvider;->mIsCMCC:Z

    .line 470
    sput-boolean v3, Lcom/android/server/location/GpsLocationProvider;->mIsCHINASku:Z

    .line 471
    sput-boolean v3, Lcom/android/server/location/GpsLocationProvider;->mIsCT:Z

    .line 472
    sput-boolean v3, Lcom/android/server/location/GpsLocationProvider;->mIsKDDI:Z

    .line 473
    sput-boolean v3, Lcom/android/server/location/GpsLocationProvider;->mIsVZW:Z

    .line 474
    sput-boolean v3, Lcom/android/server/location/GpsLocationProvider;->mIsSprint:Z

    .line 477
    sget-object v0, Lcom/android/server/location/GpsLocationProvider;->mCustReader:Lcom/htc/customization/HtcCustomizationReader;

    if-eqz v0, :cond_2

    .line 478
    sget-object v0, Lcom/android/server/location/GpsLocationProvider;->mCustReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v2, "sku_id"

    invoke-interface {v0, v2, v11}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x1a

    if-ne v0, v2, :cond_4

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/android/server/location/GpsLocationProvider;->mIsCMCC:Z

    .line 479
    sget-object v0, Lcom/android/server/location/GpsLocationProvider;->mCustReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v2, "sku_id"

    invoke-interface {v0, v2, v11}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x1b

    if-eq v0, v2, :cond_0

    sget-object v0, Lcom/android/server/location/GpsLocationProvider;->mCustReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v2, "sku_id"

    invoke-interface {v0, v2, v11}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x1c

    if-ne v0, v2, :cond_5

    :cond_0
    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/android/server/location/GpsLocationProvider;->mIsCT:Z

    .line 480
    sget-object v0, Lcom/android/server/location/GpsLocationProvider;->mCustReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v2, "sku_id"

    invoke-interface {v0, v2, v11}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x1f

    if-ne v0, v2, :cond_6

    move v0, v1

    :goto_3
    sput-boolean v0, Lcom/android/server/location/GpsLocationProvider;->mIsKDDI:Z

    .line 481
    sget-object v0, Lcom/android/server/location/GpsLocationProvider;->mCustReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v2, "region"

    invoke-interface {v0, v2, v11}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v8, :cond_7

    move v0, v1

    :goto_4
    sput-boolean v0, Lcom/android/server/location/GpsLocationProvider;->mIsCHINASku:Z

    .line 482
    sget-object v0, Lcom/android/server/location/GpsLocationProvider;->mCustReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v2, "sku_id"

    invoke-interface {v0, v2, v11}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_8

    move v0, v1

    :goto_5
    sput-boolean v0, Lcom/android/server/location/GpsLocationProvider;->mIsVZW:Z

    .line 483
    sget-object v0, Lcom/android/server/location/GpsLocationProvider;->mCustReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v2, "sku_id"

    invoke-interface {v0, v2, v11}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_1

    sget-object v0, Lcom/android/server/location/GpsLocationProvider;->mCustReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v2, "sku_id"

    invoke-interface {v0, v2, v11}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x55

    if-eq v0, v2, :cond_1

    sget-object v0, Lcom/android/server/location/GpsLocationProvider;->mCustReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v2, "sku_id"

    invoke-interface {v0, v2, v11}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x62

    if-ne v0, v2, :cond_9

    :cond_1
    :goto_6
    sput-boolean v1, Lcom/android/server/location/GpsLocationProvider;->mIsSprint:Z

    .line 521
    :cond_2
    sput-boolean v3, Lcom/android/server/location/GpsLocationProvider;->isBIEnabled:Z

    .line 522
    sput-object v10, Lcom/android/server/location/GpsLocationProvider;->HtcSystemUPLogger_write:Ljava/lang/reflect/Method;

    .line 533
    sput-object v10, Lcom/android/server/location/GpsLocationProvider;->Htc_notifyWLDLocationRequest:Ljava/lang/reflect/Method;

    .line 3678
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->class_init_native()V

    return-void

    :cond_3
    move-object v0, v10

    .line 468
    goto/16 :goto_0

    :cond_4
    move v0, v3

    .line 478
    goto :goto_1

    :cond_5
    move v0, v3

    .line 479
    goto :goto_2

    :cond_6
    move v0, v3

    .line 480
    goto :goto_3

    :cond_7
    move v0, v3

    .line 481
    goto :goto_4

    :cond_8
    move v0, v3

    .line 482
    goto :goto_5

    :cond_9
    move v1, v3

    .line 483
    goto :goto_6
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/location/ILocationManager;Landroid/os/Looper;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ilocationManager"    # Landroid/location/ILocationManager;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x3

    const/16 v8, 0x20

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 873
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLock:Ljava/lang/Object;

    .line 309
    iput v6, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationFlags:I

    .line 312
    iput v7, p0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    .line 315
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStatusUpdateTime:J

    .line 340
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$BackOff;

    const-wide/32 v2, 0x493e0

    const-wide/32 v4, 0xdbba00

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/server/location/GpsLocationProvider$BackOff;-><init>(JJ)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNtpBackOff:Lcom/android/server/location/GpsLocationProvider$BackOff;

    .line 341
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$BackOff;

    const-wide/32 v2, 0x493e0

    const-wide/32 v4, 0xdbba00

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/server/location/GpsLocationProvider$BackOff;-><init>(JJ)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mXtraBackOff:Lcom/android/server/location/GpsLocationProvider$BackOff;

    .line 356
    iput v6, p0, Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimePending:I

    .line 360
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:I

    .line 373
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    .line 388
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->mFixRequestTime:J

    .line 390
    iput v6, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeToFirstFix:I

    .line 397
    iput-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    .line 399
    iput-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mWorkSource:Landroid/os/WorkSource;

    .line 401
    iput-boolean v6, p0, Lcom/android/server/location/GpsLocationProvider;->mDisableGps:Z

    .line 410
    iput v6, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I

    .line 413
    iput-boolean v6, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplEsEnabled:Z

    .line 417
    iput-boolean v6, p0, Lcom/android/server/location/GpsLocationProvider;->Is_MULTI_RAB_TRAFFIC_support:Z

    .line 421
    iput-boolean v6, p0, Lcom/android/server/location/GpsLocationProvider;->IsWaitingDisconnection:Z

    .line 425
    iput-boolean v6, p0, Lcom/android/server/location/GpsLocationProvider;->mRoaming:Z

    .line 434
    iput-boolean v7, p0, Lcom/android/server/location/GpsLocationProvider;->mForceXtraInject:Z

    .line 435
    iput-boolean v6, p0, Lcom/android/server/location/GpsLocationProvider;->mDisableXtraDownload:Z

    .line 436
    iput-boolean v7, p0, Lcom/android/server/location/GpsLocationProvider;->mNativeNtpRequest:Z

    .line 438
    const-wide/32 v0, 0x1d4c0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->WAIT_INTERVAL:J

    .line 439
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->XTRA_INTERVAL:J

    .line 441
    iput v9, p0, Lcom/android/server/location/GpsLocationProvider;->RETRY_LIMIT:I

    .line 442
    iput v6, p0, Lcom/android/server/location/GpsLocationProvider;->mXtraInjRetryCount:I

    .line 447
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mXLock:Ljava/lang/Object;

    .line 453
    iput-boolean v6, p0, Lcom/android/server/location/GpsLocationProvider;->mDisableAgpsWhenRoaming:Z

    .line 454
    iput v7, p0, Lcom/android/server/location/GpsLocationProvider;->mDefaultGpsPositionMode:I

    .line 455
    iput v6, p0, Lcom/android/server/location/GpsLocationProvider;->mQosAccuracy:I

    .line 456
    iput v6, p0, Lcom/android/server/location/GpsLocationProvider;->mQosTimeoutStandalone:I

    .line 457
    iput v6, p0, Lcom/android/server/location/GpsLocationProvider;->mQosTimeoutAgps:I

    .line 459
    iput-boolean v6, p0, Lcom/android/server/location/GpsLocationProvider;->mDisableAgps:Z

    .line 537
    iput-boolean v6, p0, Lcom/android/server/location/GpsLocationProvider;->mECMState:Z

    .line 538
    iput-boolean v6, p0, Lcom/android/server/location/GpsLocationProvider;->mECMStateUpdate:Z

    .line 542
    iput v9, p0, Lcom/android/server/location/GpsLocationProvider;->SSLog:I

    .line 548
    new-instance v0, Landroid/location/Location;

    const-string v1, "gps"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    .line 549
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    .line 584
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mClientSource:Landroid/os/WorkSource;

    .line 589
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$1;

    invoke-direct {v0, p0}, Lcom/android/server/location/GpsLocationProvider$1;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 602
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$2;

    invoke-direct {v0, p0}, Lcom/android/server/location/GpsLocationProvider$2;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    .line 636
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$3;

    invoke-direct {v0, p0}, Lcom/android/server/location/GpsLocationProvider$3;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 723
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$4;

    invoke-direct {v0, p0}, Lcom/android/server/location/GpsLocationProvider$4;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 1708
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$11;

    invoke-direct {v0, p0}, Lcom/android/server/location/GpsLocationProvider$11;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsGeofenceBinder:Landroid/location/IGpsGeofenceHardware;

    .line 2496
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$12;

    invoke-direct {v0, p0}, Lcom/android/server/location/GpsLocationProvider$12;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    .line 3669
    new-array v0, v8, [I

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSvs:[I

    .line 3670
    new-array v0, v8, [F

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSnrs:[F

    .line 3671
    new-array v0, v8, [F

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSvElevations:[F

    .line 3672
    new-array v0, v8, [F

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSvAzimuths:[F

    .line 3673
    new-array v0, v9, [I

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    .line 3676
    const/16 v0, 0x78

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNmeaBuffer:[B

    .line 874
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    .line 875
    invoke-static {p1}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;

    .line 876
    iput-object p2, p0, Lcom/android/server/location/GpsLocationProvider;->mILocationManager:Landroid/location/ILocationManager;

    .line 878
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 881
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    .line 882
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "GpsLocationProvider"

    invoke-virtual {v0, v7, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 883
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v7}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 885
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    .line 886
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.internal.location.ALARM_WAKEUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v6, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    .line 887
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.internal.location.ALARM_TIMEOUT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v6, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    .line 890
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.location.XTRA_ALARM_TIMEOUT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v6, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mXtraTimeoutIntent:Landroid/app/PendingIntent;

    .line 892
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 895
    const-string v0, "appops"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 899
    const-string v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 904
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;

    invoke-direct {v0, p0, p3}, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;-><init>(Lcom/android/server/location/GpsLocationProvider;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    .line 911
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    .line 912
    const/16 v0, 0xd

    invoke-direct {p0, v0, v6, v10}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 915
    new-instance v0, Lcom/android/internal/location/GpsNetInitiatedHandler;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplEsEnabled:Z

    invoke-direct {v0, p1, v1, v2}, Lcom/android/internal/location/GpsNetInitiatedHandler;-><init>(Landroid/content/Context;Landroid/location/INetInitiatedListener;Z)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    .line 919
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$5;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/location/GpsLocationProvider$5;-><init>(Lcom/android/server/location/GpsLocationProvider;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mListenerHelper:Lcom/android/server/location/GpsStatusListenerHelper;

    .line 931
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$6;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/location/GpsLocationProvider$6;-><init>(Lcom/android/server/location/GpsLocationProvider;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsMeasurementsProvider:Lcom/android/server/location/GpsMeasurementsProvider;

    .line 953
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$7;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/location/GpsLocationProvider$7;-><init>(Lcom/android/server/location/GpsLocationProvider;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsNavigationMessageProvider:Lcom/android/server/location/GpsNavigationMessageProvider;

    .line 974
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/location/GpsLocationProvider;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;
    .param p1, "x1"    # Z

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/android/server/location/GpsLocationProvider;->mRoaming:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/location/GpsLocationProvider;)Lcom/android/server/location/GpsStatusListenerHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mListenerHelper:Lcom/android/server/location/GpsStatusListenerHelper;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/location/GpsLocationProvider;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mECMState:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/location/GpsLocationProvider;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;
    .param p1, "x1"    # Z

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/android/server/location/GpsLocationProvider;->mECMState:Z

    return p1
.end method

.method static synthetic access$1100()Z
    .locals 1

    .prologue
    .line 144
    sget-boolean v0, Lcom/android/server/location/GpsLocationProvider;->mIsVZW:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/location/GpsLocationProvider;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/location/GpsLocationProvider;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;
    .param p1, "x1"    # Z

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/android/server/location/GpsLocationProvider;->mECMStateUpdate:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->stopNavigating()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->handleBootInit()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1700()Z
    .locals 1

    .prologue
    .line 144
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->native_is_measurement_supported()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/location/GpsLocationProvider;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_start_measurement_collection()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/location/GpsLocationProvider;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_stop_measurement_collection()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/location/GpsLocationProvider;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;
    .param p1, "x1"    # Z

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->startNavigating(Z)V

    return-void
.end method

.method static synthetic access$2000()Z
    .locals 1

    .prologue
    .line 144
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->native_is_navigation_message_supported()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/location/GpsLocationProvider;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_start_navigation_message_collection()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/location/GpsLocationProvider;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_stop_navigation_message_collection()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/location/GpsLocationProvider;)Landroid/util/NtpTrustedTime;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/location/GpsLocationProvider;JJI)V
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;
    .param p1, "x1"    # J
    .param p3, "x2"    # J
    .param p5, "x3"    # I

    .prologue
    .line 144
    invoke-direct/range {p0 .. p5}, Lcom/android/server/location/GpsLocationProvider;->native_inject_time(JJI)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/location/GpsLocationProvider;)Lcom/android/server/location/GpsLocationProvider$BackOff;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNtpBackOff:Lcom/android/server/location/GpsLocationProvider$BackOff;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/location/GpsLocationProvider;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPeriodicTimeInjection:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/Properties;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/location/GpsLocationProvider;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 144
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mXtraInjRetryCount:I

    return v0
.end method

.method static synthetic access$2902(Lcom/android/server/location/GpsLocationProvider;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;
    .param p1, "x1"    # I

    .prologue
    .line 144
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider;->mXtraInjRetryCount:I

    return p1
.end method

.method static synthetic access$2904(Lcom/android/server/location/GpsLocationProvider;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 144
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mXtraInjRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mXtraInjRetryCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->hibernate()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/location/GpsLocationProvider;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mXLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/location/GpsLocationProvider;[BI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I

    .prologue
    .line 144
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->native_inject_xtra_data([BI)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/location/GpsLocationProvider;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 144
    iget-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->XTRA_INTERVAL:J

    return-wide v0
.end method

.method static synthetic access$3300(Lcom/android/server/location/GpsLocationProvider;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPhoneType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/location/GpsLocationProvider;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_init()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/android/server/location/GpsLocationProvider;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;
    .param p1, "x1"    # I

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->native_set_privacy_lock(I)V

    return-void
.end method

.method static synthetic access$3600()Z
    .locals 1

    .prologue
    .line 144
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->native_is_geofence_supported()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3700(IDDDIIII)Z
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # D
    .param p3, "x2"    # D
    .param p5, "x3"    # D
    .param p7, "x4"    # I
    .param p8, "x5"    # I
    .param p9, "x6"    # I
    .param p10, "x7"    # I

    .prologue
    .line 144
    invoke-static/range {p0 .. p10}, Lcom/android/server/location/GpsLocationProvider;->native_add_geofence(IDDDIIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3800(I)Z
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 144
    invoke-static {p0}, Lcom/android/server/location/GpsLocationProvider;->native_remove_geofence(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900(I)Z
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 144
    invoke-static {p0}, Lcom/android/server/location/GpsLocationProvider;->native_pause_geofence(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->checkSmsSuplInit(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$4000(II)Z
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .prologue
    .line 144
    invoke-static {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->native_resume_geofence(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Lcom/android/server/location/GpsLocationProvider;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->Is_MULTI_RAB_TRAFFIC_support:Z

    return v0
.end method

.method static synthetic access$4200(Lcom/android/server/location/GpsLocationProvider;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 144
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->native_send_ni_response(II)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->handleEnable()V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->handleDisable()V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/location/GpsLocationProvider;Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;
    .param p1, "x1"    # Lcom/android/internal/location/ProviderRequest;
    .param p2, "x2"    # Landroid/os/WorkSource;

    .prologue
    .line 144
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->handleSetRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/location/GpsLocationProvider;ILandroid/net/NetworkInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/net/NetworkInfo;

    .prologue
    .line 144
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->handleUpdateNetworkState(ILandroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->handleInjectNtpTime()V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/location/GpsLocationProvider;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSupportsXtra:Z

    return v0
.end method

.method static synthetic access$4900(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->handleDownloadXtraData()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->checkWapSuplInit(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$5002(Lcom/android/server/location/GpsLocationProvider;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;
    .param p1, "x1"    # I

    .prologue
    .line 144
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimePending:I

    return p1
.end method

.method static synthetic access$5102(Lcom/android/server/location/GpsLocationProvider;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;
    .param p1, "x1"    # I

    .prologue
    .line 144
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:I

    return p1
.end method

.method static synthetic access$5200(Lcom/android/server/location/GpsLocationProvider;Landroid/location/Location;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->handleUpdateLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->loadHtcConfig()V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/server/location/GpsLocationProvider;)Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    return-object v0
.end method

.method static synthetic access$5500()Z
    .locals 1

    .prologue
    .line 144
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->native_is_agps_ril_supported()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5600(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$5800()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 144
    sget-object v0, Lcom/android/server/location/GpsLocationProvider;->HtcSystemUPLogger_write:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$5900()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 144
    sget-object v0, Lcom/android/server/location/GpsLocationProvider;->Htc_notifyWLDLocationRequest:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->updateLowPowerMode()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->subscriptionOrSimChanged(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/location/GpsLocationProvider;IILjava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/Object;

    .prologue
    .line 144
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    return-void
.end method

.method private buildLocation(IDDDFFFJ)Landroid/location/Location;
    .locals 6
    .param p1, "flags"    # I
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .param p6, "altitude"    # D
    .param p8, "speed"    # F
    .param p9, "bearing"    # F
    .param p10, "accuracy"    # F
    .param p11, "timestamp"    # J

    .prologue
    .line 2343
    new-instance v2, Landroid/location/Location;

    const-string v3, "gps"

    invoke-direct {v2, v3}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 2344
    .local v2, "location":Landroid/location/Location;
    and-int/lit8 v3, p1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 2345
    invoke-virtual {v2, p2, p3}, Landroid/location/Location;->setLatitude(D)V

    .line 2346
    invoke-virtual {v2, p4, p5}, Landroid/location/Location;->setLongitude(D)V

    .line 2347
    move-wide/from16 v0, p11

    invoke-virtual {v2, v0, v1}, Landroid/location/Location;->setTime(J)V

    .line 2348
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 2350
    :cond_0
    and-int/lit8 v3, p1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 2351
    invoke-virtual {v2, p6, p7}, Landroid/location/Location;->setAltitude(D)V

    .line 2353
    :cond_1
    and-int/lit8 v3, p1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 2354
    invoke-virtual {v2, p8}, Landroid/location/Location;->setSpeed(F)V

    .line 2356
    :cond_2
    and-int/lit8 v3, p1, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 2357
    invoke-virtual {v2, p9}, Landroid/location/Location;->setBearing(F)V

    .line 2359
    :cond_3
    and-int/lit8 v3, p1, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 2360
    move/from16 v0, p10

    invoke-virtual {v2, v0}, Landroid/location/Location;->setAccuracy(F)V

    .line 2362
    :cond_4
    return-object v2
.end method

.method private checkSmsSuplInit(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 750
    invoke-static {p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v1

    .line 751
    .local v1, "messages":[Landroid/telephony/SmsMessage;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 752
    aget-object v3, v1, v0

    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v2

    .line 753
    .local v2, "supl_init":[B
    array-length v3, v2

    invoke-direct {p0, v2, v3}, Lcom/android/server/location/GpsLocationProvider;->native_agps_ni_message([BI)V

    .line 751
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 755
    .end local v2    # "supl_init":[B
    :cond_0
    return-void
.end method

.method private checkWapSuplInit(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 758
    const-string v1, "data"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 759
    .local v0, "supl_init":[B
    array-length v1, v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/location/GpsLocationProvider;->native_agps_ni_message([BI)V

    .line 760
    return-void
.end method

.method private static native class_init_native()V
.end method

.method private deleteAidingData(Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1742
    if-nez p1, :cond_1

    .line 1743
    const v0, 0xffff

    .line 1761
    .local v0, "flags":I
    :cond_0
    :goto_0
    if-eqz v0, :cond_e

    .line 1762
    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->native_delete_aiding_data(I)V

    .line 1763
    const/4 v1, 0x1

    .line 1766
    :goto_1
    return v1

    .line 1745
    .end local v0    # "flags":I
    :cond_1
    const/4 v0, 0x0

    .line 1746
    .restart local v0    # "flags":I
    const-string v1, "ephemeris"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x1

    .line 1747
    :cond_2
    const-string v1, "almanac"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x2

    .line 1748
    :cond_3
    const-string v1, "position"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x4

    .line 1749
    :cond_4
    const-string v1, "time"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x8

    .line 1750
    :cond_5
    const-string v1, "iono"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    or-int/lit8 v0, v0, 0x10

    .line 1751
    :cond_6
    const-string v1, "utc"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    or-int/lit8 v0, v0, 0x20

    .line 1752
    :cond_7
    const-string v1, "health"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    or-int/lit8 v0, v0, 0x40

    .line 1753
    :cond_8
    const-string v1, "svdir"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    or-int/lit16 v0, v0, 0x80

    .line 1754
    :cond_9
    const-string v1, "svsteer"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    or-int/lit16 v0, v0, 0x100

    .line 1755
    :cond_a
    const-string v1, "sadata"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    or-int/lit16 v0, v0, 0x200

    .line 1756
    :cond_b
    const-string v1, "rti"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    or-int/lit16 v0, v0, 0x400

    .line 1757
    :cond_c
    const-string v1, "celldb-info"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const v1, 0x8000

    or-int/2addr v0, v1

    .line 1758
    :cond_d
    const-string v1, "all"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0xffff

    or-int/2addr v0, v1

    goto/16 :goto_0

    .line 1766
    :cond_e
    const/4 v1, 0x0

    goto/16 :goto_1
.end method

.method private getApnIpType(Ljava/lang/String;)I
    .locals 9
    .param p1, "apn"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v8, 0x0

    .line 2883
    if-nez p1, :cond_1

    move v0, v8

    .line 2915
    :cond_0
    :goto_0
    return v0

    .line 2888
    :cond_1
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsApn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mApnIpType:I

    if-eqz v0, :cond_2

    .line 2889
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mApnIpType:I

    goto :goto_0

    .line 2892
    :cond_2
    const-string v0, "current = 1 and apn = \'%s\' and carrier_enabled = 1"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2893
    .local v3, "selection":Ljava/lang/String;
    const/4 v6, 0x0

    .line 2895
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "protocol"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const-string v5, "name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2902
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2903
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/location/GpsLocationProvider;->translateToApnIpType(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 2910
    if-eqz v6, :cond_0

    .line 2911
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2905
    :cond_3
    :try_start_1
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No entry found in query for APN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2910
    if-eqz v6, :cond_4

    .line 2911
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_1
    move v0, v8

    .line 2915
    goto :goto_0

    .line 2907
    :catch_0
    move-exception v7

    .line 2908
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error encountered on APN query for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2910
    if-eqz v6, :cond_4

    .line 2911
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2910
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 2911
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method private getGeofenceStatus(I)I
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 2369
    sparse-switch p1, :sswitch_data_0

    .line 2383
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 2371
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2373
    :sswitch_1
    const/4 v0, 0x5

    goto :goto_0

    .line 2375
    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 2377
    :sswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 2379
    :sswitch_4
    const/4 v0, 0x1

    goto :goto_0

    .line 2381
    :sswitch_5
    const/4 v0, 0x3

    goto :goto_0

    .line 2369
    nop

    :sswitch_data_0
    .sparse-switch
        -0x95 -> :sswitch_1
        -0x67 -> :sswitch_3
        -0x66 -> :sswitch_5
        -0x65 -> :sswitch_2
        0x0 -> :sswitch_0
        0x64 -> :sswitch_4
    .end sparse-switch
.end method

.method private getSelectedApn()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 2857
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2858
    .local v1, "uri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 2860
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "apn"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2866
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2867
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2874
    if-eqz v6, :cond_0

    .line 2875
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2879
    :cond_0
    :goto_0
    return-object v0

    .line 2869
    :cond_1
    :try_start_1
    const-string v0, "GpsLocationProvider"

    const-string v2, "No APN found to select."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2874
    if-eqz v6, :cond_2

    .line 2875
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    move-object v0, v8

    .line 2879
    goto :goto_0

    .line 2871
    :catch_0
    move-exception v7

    .line 2872
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "GpsLocationProvider"

    const-string v2, "Error encountered on selecting the APN."

    invoke-static {v0, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2874
    if-eqz v6, :cond_2

    .line 2875
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2874
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 2875
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private getSuplMode(Ljava/util/Properties;ZZ)I
    .locals 7
    .param p1, "properties"    # Ljava/util/Properties;
    .param p2, "agpsEnabled"    # Z
    .param p3, "singleShot"    # Z

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 1325
    if-eqz p2, :cond_1

    .line 1326
    const-string v5, "SUPL_MODE"

    invoke-virtual {p1, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1327
    .local v1, "modeString":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1328
    .local v2, "suplMode":I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1330
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1338
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_2

    and-int/lit8 v5, v2, 0x1

    if-eqz v5, :cond_2

    .line 1339
    const/4 v3, 0x1

    .line 1350
    .end local v1    # "modeString":Ljava/lang/String;
    .end local v2    # "suplMode":I
    :cond_1
    :goto_0
    return v3

    .line 1331
    .restart local v1    # "modeString":Ljava/lang/String;
    .restart local v2    # "suplMode":I
    :catch_0
    move-exception v0

    .line 1332
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v4, "GpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unable to parse SUPL_MODE: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1344
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    if-eqz p3, :cond_1

    const/4 v5, 0x4

    invoke-direct {p0, v5}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_1

    and-int/lit8 v5, v2, 0x2

    if-eqz v5, :cond_1

    move v3, v4

    .line 1347
    goto :goto_0
.end method

.method private handleBootInit()V
    .locals 18

    .prologue
    .line 3065
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v14, "phone"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/location/GpsLocationProvider;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 3071
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GpsLocationProvider;->native_init()Z

    .line 3075
    const-string v13, "CDMA"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/location/GpsLocationProvider;->mPhoneType:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 3076
    const-string v13, "GpsLocationProvider"

    const-string v14, " Unlock NV 452 for UMTS projects "

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3077
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/location/GpsLocationProvider;->native_set_privacy_lock(I)V

    .line 3081
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GpsLocationProvider;->native_supports_xtra()Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/location/GpsLocationProvider;->mSupportsXtra:Z

    .line 3082
    const-string v13, "GpsLocationProvider"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "XTRA will download after "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/location/GpsLocationProvider;->WAIT_INTERVAL:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3086
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/location/GpsLocationProvider;->WAIT_INTERVAL:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v13, v14, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3090
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    if-eqz v13, :cond_1

    .line 3091
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    const-string v14, "FQDN"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 3092
    const-string v13, "GpsLocationProvider"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "call set_agps_server for SuplServerHost: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3093
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 3099
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;

    if-eqz v13, :cond_2

    .line 3100
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;

    const-string v14, "FQDN"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7

    .line 3101
    const-string v13, "GpsLocationProvider"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "call set_agps_server for C2KServerHost: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3102
    const/4 v13, 0x2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerPort:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 3108
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/location/GpsLocationProvider;->mSuplTlsHost:Ljava/lang/String;

    if-eqz v13, :cond_3

    .line 3109
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/location/GpsLocationProvider;->mSuplTlsHost:Ljava/lang/String;

    const-string v14, "FQDN"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 3110
    const-string v13, "GpsLocationProvider"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "call set_agps_server for SuplTlsHost: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/location/GpsLocationProvider;->mSuplTlsHost:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3111
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/location/GpsLocationProvider;->mSuplTlsHost:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 3120
    :cond_3
    :goto_2
    const-string v12, "SuplRootCert"

    .line 3121
    .local v12, "suplCert0":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v14, "SUPL_TLS_CERT"

    invoke-virtual {v13, v14}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3122
    .local v11, "suplCert":Ljava/lang/String;
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/location/GpsLocationProvider;->cert_idx:I

    .line 3123
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/location/GpsLocationProvider;->mCertCount:I

    .line 3124
    const-string v10, "SuplRootCert_injected"

    .line 3125
    .local v10, "injectedName":Ljava/lang/String;
    if-nez v11, :cond_4

    .line 3127
    const-string v13, "GpsLocationProvider"

    const-string v14, "[CERT]=> suplCert == null"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3128
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/location/GpsLocationProvider;->cert_idx:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/location/GpsLocationProvider;->cert_idx:I

    .line 3129
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/location/GpsLocationProvider;->mCertCount:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/location/GpsLocationProvider;->mCertCount:I

    .line 3130
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SUPL_TLS_CERT_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/location/GpsLocationProvider;->cert_idx:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3132
    :cond_4
    :goto_3
    if-eqz v11, :cond_a

    .line 3133
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3134
    .local v7, "file_cert":Ljava/io/File;
    const/16 v13, 0x800

    new-array v5, v13, [B

    .line 3135
    .local v5, "data":[B
    const/4 v4, 0x0

    .line 3137
    .local v4, "count":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/location/GpsLocationProvider;->cert_idx:I

    if-lez v13, :cond_5

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SuplRootCert_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/location/GpsLocationProvider;->cert_idx:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "_injected"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3138
    :cond_5
    new-instance v8, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "/data/misc/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v8, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3139
    .local v8, "file_injected":Ljava/io/File;
    const-string v13, "GpsLocationProvider"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[CERT]=> suplCertName "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3143
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_9

    .line 3144
    const-string v13, "GpsLocationProvider"

    const-string v14, "[CERT]=> file_injected not exist "

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3146
    :try_start_0
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 3147
    .local v9, "in":Ljava/io/FileInputStream;
    invoke-virtual {v9, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    .line 3148
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v4, v13}, Lcom/android/server/location/GpsLocationProvider;->native_inject_supl_cert([BILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3155
    .end local v9    # "in":Ljava/io/FileInputStream;
    :goto_4
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/location/GpsLocationProvider;->cert_idx:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/location/GpsLocationProvider;->cert_idx:I

    .line 3156
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SUPL_TLS_CERT_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/location/GpsLocationProvider;->cert_idx:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3157
    goto/16 :goto_3

    .line 3095
    .end local v4    # "count":I
    .end local v5    # "data":[B
    .end local v7    # "file_cert":Ljava/io/File;
    .end local v8    # "file_injected":Ljava/io/File;
    .end local v10    # "injectedName":Ljava/lang/String;
    .end local v11    # "suplCert":Ljava/lang/String;
    .end local v12    # "suplCert0":Ljava/lang/String;
    :cond_6
    const-string v13, "GpsLocationProvider"

    const-string v14, "call set_agps_server for SuplServerHost: FQDN"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3096
    const/4 v13, 0x1

    const-string v14, ""

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    goto/16 :goto_0

    .line 3104
    :cond_7
    const-string v13, "GpsLocationProvider"

    const-string v14, "call set_agps_server for C2KServerHost: FQDN"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3105
    const/4 v13, 0x2

    const-string v14, ""

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerPort:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    goto/16 :goto_1

    .line 3113
    :cond_8
    const-string v13, "GpsLocationProvider"

    const-string v14, "call set_agps_server for SuplTlsHost: FQDN"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3114
    const/4 v13, 0x1

    const-string v14, ""

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    goto/16 :goto_2

    .line 3149
    .restart local v4    # "count":I
    .restart local v5    # "data":[B
    .restart local v7    # "file_cert":Ljava/io/File;
    .restart local v8    # "file_injected":Ljava/io/File;
    .restart local v10    # "injectedName":Ljava/lang/String;
    .restart local v11    # "suplCert":Ljava/lang/String;
    .restart local v12    # "suplCert0":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 3150
    .local v6, "e":Ljava/io/IOException;
    const-string v13, "GpsLocationProvider"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[CERT]=> Could not open certificate file "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 3153
    .end local v6    # "e":Ljava/io/IOException;
    :cond_9
    const-string v13, "GpsLocationProvider"

    const-string v14, "[CERT]=> file_injected exist"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 3161
    .end local v4    # "count":I
    .end local v5    # "data":[B
    .end local v7    # "file_cert":Ljava/io/File;
    .end local v8    # "file_injected":Ljava/io/File;
    :cond_a
    :try_start_1
    const-string v13, "com.htc.server.report.up.HtcSystemUPLogger"

    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 3164
    .local v2, "HtcSystemUPLogger":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v13, "write"

    const/4 v14, 0x5

    new-array v14, v14, [Ljava/lang/Class;

    const/4 v15, 0x0

    const-class v16, Ljava/lang/String;

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-class v16, Ljava/lang/String;

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-class v16, Ljava/lang/String;

    aput-object v16, v14, v15

    const/4 v15, 0x3

    const-class v16, Ljava/lang/String;

    aput-object v16, v14, v15

    const/4 v15, 0x4

    sget-object v16, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v16, v14, v15

    invoke-virtual {v2, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    sput-object v13, Lcom/android/server/location/GpsLocationProvider;->HtcSystemUPLogger_write:Ljava/lang/reflect/Method;

    .line 3171
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GpsLocationProvider;->shouldBIEnable()Z

    move-result v13

    sput-boolean v13, Lcom/android/server/location/GpsLocationProvider;->isBIEnabled:Z

    .line 3172
    const-string v14, "GpsLocationProvider"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "BI reporting "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-boolean v13, Lcom/android/server/location/GpsLocationProvider;->isBIEnabled:Z

    if-eqz v13, :cond_b

    const-string v13, "Enable"

    :goto_5
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3181
    .end local v2    # "HtcSystemUPLogger":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_6
    :try_start_2
    const-string v13, "com.android.server.power.HtcWakeLockDetector"

    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 3183
    .local v3, "HtcWLD":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v13, "notifyWLDLocationRequest"

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Class;

    const/4 v15, 0x0

    sget-object v16, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v16, v14, v15

    const/4 v15, 0x1

    sget-object v16, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-class v16, Ljava/lang/String;

    aput-object v16, v14, v15

    const/4 v15, 0x3

    const-class v16, Ljava/lang/String;

    aput-object v16, v14, v15

    invoke-virtual {v3, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    sput-object v13, Lcom/android/server/location/GpsLocationProvider;->Htc_notifyWLDLocationRequest:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 3194
    .end local v3    # "HtcWLD":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_7
    return-void

    .line 3172
    .restart local v2    # "HtcSystemUPLogger":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_b
    :try_start_3
    const-string v13, " Disable"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_5

    .line 3174
    .end local v2    # "HtcSystemUPLogger":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v6

    .line 3175
    .local v6, "e":Ljava/lang/Exception;
    const-string v13, "GpsLocationProvider"

    const-string v14, "Can not find BI data class or method "

    invoke-static {v13, v14, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 3189
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v6

    .line 3190
    .restart local v6    # "e":Ljava/lang/Exception;
    const-string v13, "GpsLocationProvider"

    const-string v14, "Can not find WLDLocationRequest class or method "

    invoke-static {v13, v14, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method private handleDisable()V
    .locals 3

    .prologue
    .line 1416
    const-string v1, "GpsLocationProvider"

    const-string v2, "handleDisable"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1}, Landroid/os/WorkSource;-><init>()V

    invoke-direct {p0, v1}, Lcom/android/server/location/GpsLocationProvider;->updateClientUids(Landroid/os/WorkSource;)V

    .line 1419
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->stopNavigating()V

    .line 1423
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.location.GPS_ENABLED_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1424
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1425
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1429
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1430
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1433
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_cleanup()V

    .line 1435
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsMeasurementsProvider:Lcom/android/server/location/GpsMeasurementsProvider;

    invoke-virtual {v1}, Lcom/android/server/location/GpsMeasurementsProvider;->onGpsEnabledChanged()V

    .line 1436
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsNavigationMessageProvider:Lcom/android/server/location/GpsNavigationMessageProvider;

    invoke-virtual {v1}, Lcom/android/server/location/GpsNavigationMessageProvider;->onGpsEnabledChanged()V

    .line 1437
    return-void
.end method

.method private handleDownloadXtraData()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1150
    const-string v1, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[handleDownloadXtraData] mNetworkAvailable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mDisableXtraDownload:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider;->mDisableXtraDownload:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mNavigating:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mEngineOn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mForceXtraInject:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider;->mForceXtraInject:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:I

    if-ne v1, v4, :cond_0

    .line 1153
    const-string v1, "GpsLocationProvider"

    const-string v2, "[handleDownloadXtraData] XTRA Downloading, return"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    :goto_0
    return-void

    .line 1160
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider;->mDisableXtraDownload:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider;->mForceXtraInject:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineOn:Z

    if-eqz v1, :cond_2

    .line 1164
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:I

    goto :goto_0

    .line 1167
    :cond_2
    iput v4, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:I

    .line 1170
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    const-string v2, "GpsLocationProviderXTRA Download"

    invoke-virtual {v1, v4, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 1173
    .local v0, "wakeLockXTRA":Landroid/os/PowerManager$WakeLock;
    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1176
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/server/location/GpsLocationProvider$9;

    invoke-direct {v2, p0, v0}, Lcom/android/server/location/GpsLocationProvider$9;-><init>(Lcom/android/server/location/GpsLocationProvider;Landroid/os/PowerManager$WakeLock;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private handleEnable()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 1354
    const-string v1, "GpsLocationProvider"

    const-string v2, "handleEnable"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_init()Z

    move-result v0

    .line 1358
    .local v0, "enabled":Z
    if-eqz v0, :cond_6

    .line 1359
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_supports_xtra()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider;->mSupportsXtra:Z

    .line 1361
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1362
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    const-string v2, "FQDN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1363
    const-string v1, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call set_agps_server for SuplServerHost: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I

    invoke-direct {p0, v4, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 1370
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1371
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;

    const-string v2, "FQDN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1372
    const-string v1, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call set_agps_server for C2KServerHost: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerPort:I

    invoke-direct {p0, v5, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 1379
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplTlsHost:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1380
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplTlsHost:Ljava/lang/String;

    const-string v2, "FQDN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1381
    const-string v1, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call set_agps_server for SuplTlsHost: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplTlsHost:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplTlsHost:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I

    invoke-direct {p0, v4, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 1390
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsMeasurementsProvider:Lcom/android/server/location/GpsMeasurementsProvider;

    invoke-virtual {v1}, Lcom/android/server/location/GpsMeasurementsProvider;->onGpsEnabledChanged()V

    .line 1391
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsNavigationMessageProvider:Lcom/android/server/location/GpsNavigationMessageProvider;

    invoke-virtual {v1}, Lcom/android/server/location/GpsNavigationMessageProvider;->onGpsEnabledChanged()V

    .line 1398
    :goto_3
    return-void

    .line 1366
    :cond_3
    const-string v1, "GpsLocationProvider"

    const-string v2, "call set_agps_server for SuplServerHost: FQDN"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    const-string v1, ""

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I

    invoke-direct {p0, v4, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    goto :goto_0

    .line 1375
    :cond_4
    const-string v1, "GpsLocationProvider"

    const-string v2, "call set_agps_server for C2KServerHost: FQDN"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    const-string v1, ""

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerPort:I

    invoke-direct {p0, v5, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    goto :goto_1

    .line 1384
    :cond_5
    const-string v1, "GpsLocationProvider"

    const-string v2, "call set_agps_server for SuplTlsHost: FQDN"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    const-string v1, ""

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I

    invoke-direct {p0, v4, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    goto :goto_2

    .line 1393
    :cond_6
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1394
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z

    .line 1395
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1396
    const-string v1, "GpsLocationProvider"

    const-string v2, "Failed to enable location provider"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1395
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private handleInjectNtpTime()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1090
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimePending:I

    if-ne v0, v1, :cond_0

    .line 1146
    :goto_0
    return-void

    .line 1094
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    if-nez v0, :cond_1

    .line 1096
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimePending:I

    goto :goto_0

    .line 1099
    :cond_1
    iput v1, p0, Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimePending:I

    .line 1102
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1103
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/location/GpsLocationProvider$8;

    invoke-direct {v1, p0}, Lcom/android/server/location/GpsLocationProvider$8;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private handleSetRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .locals 0
    .param p1, "request"    # Lcom/android/internal/location/ProviderRequest;
    .param p2, "source"    # Landroid/os/WorkSource;

    .prologue
    .line 1474
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    .line 1475
    iput-object p2, p0, Lcom/android/server/location/GpsLocationProvider;->mWorkSource:Landroid/os/WorkSource;

    .line 1476
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->updateRequirements()V

    .line 1477
    return-void
.end method

.method private handleUpdateLocation(Landroid/location/Location;)V
    .locals 7
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 1276
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1277
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v6

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/location/GpsLocationProvider;->native_inject_location(DDF)V

    .line 1280
    :cond_0
    return-void
.end method

.method private handleUpdateNetworkState(ILandroid/net/NetworkInfo;)V
    .locals 15
    .param p1, "state"    # I
    .param p2, "info"    # Landroid/net/NetworkInfo;

    .prologue
    .line 994
    const/4 v1, 0x2

    move/from16 v0, p1

    if-ne v0, v1, :cond_3

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    .line 1001
    const-string v2, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateNetworkState "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    if-eqz v1, :cond_4

    const-string v1, "available"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " info: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->networkInfoP(Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    if-eqz p2, :cond_1

    .line 1007
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->native_is_agps_ril_supported()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1008
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v10

    .line 1009
    .local v10, "dataEnabled":Z
    invoke-virtual/range {p2 .. p2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v10, :cond_5

    const/4 v5, 0x1

    .line 1010
    .local v5, "networkAvailable":Z
    :goto_2
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->getSelectedApn()Ljava/lang/String;

    move-result-object v7

    .line 1011
    .local v7, "defaultApn":Ljava/lang/String;
    if-nez v7, :cond_0

    .line 1012
    const-string v7, "dummy-apn"

    .line 1015
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/location/GpsLocationProvider;->native_update_network_state(ZIZZLjava/lang/String;Ljava/lang/String;)V

    .line 1024
    .end local v5    # "networkAvailable":Z
    .end local v7    # "defaultApn":Ljava/lang/String;
    .end local v10    # "dataEnabled":Z
    :cond_1
    :goto_3
    if-eqz p2, :cond_9

    invoke-virtual/range {p2 .. p2}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_9

    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    .line 1026
    iget-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    if-eqz v1, :cond_d

    .line 1027
    invoke-virtual/range {p2 .. p2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v9

    .line 1028
    .local v9, "apnName":Ljava/lang/String;
    if-nez v9, :cond_2

    .line 1031
    const-string v9, "dummy-apn"

    .line 1033
    :cond_2
    iput-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsApn:Ljava/lang/String;

    .line 1034
    invoke-direct {p0, v9}, Lcom/android/server/location/GpsLocationProvider;->getApnIpType(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/location/GpsLocationProvider;->mApnIpType:I

    .line 1035
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->setRouting()V

    .line 1042
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 1043
    .local v14, "sb":Ljava/lang/StringBuilder;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_4
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsApn:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v12, v1, :cond_7

    .line 1044
    const-string v1, "*"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1043
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 994
    .end local v9    # "apnName":Ljava/lang/String;
    .end local v12    # "i":I
    .end local v14    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1001
    :cond_4
    const-string v1, "unavailable"

    goto/16 :goto_1

    .line 1009
    .restart local v10    # "dataEnabled":Z
    :cond_5
    const/4 v5, 0x0

    goto :goto_2

    .line 1019
    .end local v10    # "dataEnabled":Z
    :cond_6
    const-string v1, "GpsLocationProvider"

    const-string v2, "Skipped network state update because AGPS-RIL in GPS HAL is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1046
    .restart local v9    # "apnName":Ljava/lang/String;
    .restart local v12    # "i":I
    .restart local v14    # "sb":Ljava/lang/StringBuilder;
    :cond_7
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1047
    .local v8, "Apn_Name":Ljava/lang/String;
    const-string v1, "native_agps_data_conn_open: mAgpsApn=%s, mApnIpType=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsApn:Ljava/lang/String;

    const-string v6, "dummy-apn"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v8, "dummy-apn"

    .end local v8    # "Apn_Name":Ljava/lang/String;
    :cond_8
    aput-object v8, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/server/location/GpsLocationProvider;->mApnIpType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 1050
    .local v13, "message":Ljava/lang/String;
    const-string v1, "GpsLocationProvider"

    invoke-static {v1, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsApn:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider;->mApnIpType:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_open(Ljava/lang/String;I)V

    .line 1054
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    .line 1056
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider;->IsWaitingDisconnection:Z

    .line 1057
    const-string v1, "GpsLocationProvider"

    const-string v2, "IsWaitingDisconnection: true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    .end local v9    # "apnName":Ljava/lang/String;
    .end local v12    # "i":I
    .end local v13    # "message":Ljava/lang/String;
    .end local v14    # "sb":Ljava/lang/StringBuilder;
    :cond_9
    :goto_5
    iget-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    if-eqz v1, :cond_b

    .line 1069
    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimePending:I

    if-nez v1, :cond_a

    .line 1070
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1072
    :cond_a
    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:I

    if-nez v1, :cond_b

    .line 1073
    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1078
    :cond_b
    if-eqz p2, :cond_c

    invoke-virtual/range {p2 .. p2}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_c

    .line 1079
    invoke-virtual/range {p2 .. p2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v11

    .line 1080
    .local v11, "detailedState":Landroid/net/NetworkInfo$DetailedState;
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v11, v1, :cond_c

    .line 1081
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider;->IsWaitingDisconnection:Z

    .line 1082
    const-string v1, "GpsLocationProvider"

    const-string v2, "IsWaitingDisconnection: false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    .end local v11    # "detailedState":Landroid/net/NetworkInfo$DetailedState;
    :cond_c
    return-void

    .line 1060
    :cond_d
    const-string v1, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call native_agps_data_conn_failed, info: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsApn:Ljava/lang/String;

    .line 1062
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/location/GpsLocationProvider;->mApnIpType:I

    .line 1063
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    .line 1064
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_failed()V

    goto :goto_5
.end method

.method private hasCapability(I)Z
    .locals 1
    .param p1, "capability"    # I

    .prologue
    .line 1923
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineCapabilities:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hibernate()V
    .locals 7

    .prologue
    .line 1915
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->stopNavigating()V

    .line 1916
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1917
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1918
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1919
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    iget v4, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    int-to-long v4, v4

    add-long/2addr v4, v0

    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1920
    return-void
.end method

.method private isOwner(I)Z
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 3571
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/os/UserHandle;->isSameUser(II)Z

    move-result v0

    return v0
.end method

.method public static isSupported()Z
    .locals 1

    .prologue
    .line 779
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->native_is_supported()Z

    move-result v0

    return v0
.end method

.method private isfileExits(Ljava/lang/String;)Z
    .locals 2
    .param p1, "filepath"    # Ljava/lang/String;

    .prologue
    .line 3523
    if-nez p1, :cond_0

    .line 3524
    const/4 v1, 0x0

    .line 3527
    :goto_0
    return v1

    .line 3526
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3527
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    goto :goto_0
.end method

.method private loadHtcConfig()V
    .locals 7

    .prologue
    .line 3319
    const/4 v2, 0x0

    .line 3320
    .local v2, "nameConfFile":Ljava/lang/String;
    const/4 v3, 0x0

    .line 3322
    .local v3, "propertiesLoaded":Z
    const-string v4, "/data/misc/gps_single_conf"

    invoke-direct {p0, v4}, Lcom/android/server/location/GpsLocationProvider;->isfileExits(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3324
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/data/misc/gps_single_conf"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 3325
    .local v0, "br":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 3326
    const-string v4, "GpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "nameConfFile: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3332
    .end local v0    # "br":Ljava/io/BufferedReader;
    :goto_0
    if-eqz v2, :cond_0

    .line 3333
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/etc/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3334
    invoke-direct {p0, v2}, Lcom/android/server/location/GpsLocationProvider;->reloadConf(Ljava/lang/String;)Z

    move-result v3

    .line 3338
    :cond_0
    if-nez v3, :cond_1

    .line 3339
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/etc/gps.conf_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ro.cid"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3340
    invoke-direct {p0, v2}, Lcom/android/server/location/GpsLocationProvider;->reloadConf(Ljava/lang/String;)Z

    move-result v3

    .line 3343
    :cond_1
    if-nez v3, :cond_2

    .line 3344
    const-string v2, "/etc/gps.conf_default"

    .line 3345
    invoke-direct {p0, v2}, Lcom/android/server/location/GpsLocationProvider;->reloadConf(Ljava/lang/String;)Z

    move-result v3

    .line 3348
    :cond_2
    if-nez v3, :cond_3

    .line 3349
    const-string v2, "/etc/gps.conf"

    .line 3350
    invoke-direct {p0, v2}, Lcom/android/server/location/GpsLocationProvider;->reloadConf(Ljava/lang/String;)Z

    move-result v3

    .line 3353
    :cond_3
    const-string v4, "GpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GPS properties file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is loaded "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3357
    return-void

    .line 3327
    :catch_0
    move-exception v1

    .line 3328
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v4, "GpsLocationProvider"

    const-string v5, "FileNotFoundException  /data/misc/gps_single_conf"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3329
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 3330
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "GpsLocationProvider"

    const-string v5, " IOException in reading /data/misc/gps_single_conf"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private loadPropertiesFromFile(Ljava/lang/String;Ljava/util/Properties;)Z
    .locals 7
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "properties"    # Ljava/util/Properties;

    .prologue
    .line 856
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 857
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 859
    .local v2, "stream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 860
    .end local v2    # "stream":Ljava/io/FileInputStream;
    .local v3, "stream":Ljava/io/FileInputStream;
    :try_start_2
    invoke-virtual {p2, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 862
    :try_start_3
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 869
    const/4 v4, 0x1

    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "stream":Ljava/io/FileInputStream;
    :goto_0
    return v4

    .line 862
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v4

    :goto_1
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 865
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "stream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 866
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "GpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not open GPS configuration file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    const/4 v4, 0x0

    goto :goto_0

    .line 862
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "stream":Ljava/io/FileInputStream;
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private loadPropertiesFromResource(Landroid/content/Context;Ljava/util/Properties;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "properties"    # Ljava/util/Properties;

    .prologue
    .line 839
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x107003d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 841
    .local v1, "configValues":[Ljava/lang/String;
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v3, v0, v2

    .line 842
    .local v3, "item":Ljava/lang/String;
    const-string v6, "GpsLocationProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GpsParamsResource: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    const-string v6, "="

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 845
    .local v5, "split":[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 846
    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, v5, v7

    invoke-virtual {p2, v6, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 841
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 848
    :cond_0
    const-string v6, "GpsLocationProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "malformed contents: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 851
    .end local v3    # "item":Ljava/lang/String;
    .end local v5    # "split":[Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static native native_add_geofence(IDDDIIII)Z
.end method

.method private native native_agps_data_conn_closed()V
.end method

.method private native native_agps_data_conn_failed()V
.end method

.method private native native_agps_data_conn_open(Ljava/lang/String;I)V
.end method

.method private native native_agps_ni_message([BI)V
.end method

.method private native native_agps_set_id(ILjava/lang/String;)V
.end method

.method private native native_agps_set_ref_location_cellid(IIIII)V
.end method

.method private native native_cleanup()V
.end method

.method private static native native_configuration_update(Ljava/lang/String;)V
.end method

.method private native native_delete_aiding_data(I)V
.end method

.method private native native_get_internal_state()Ljava/lang/String;
.end method

.method private native native_init()Z
.end method

.method private native native_inject_location(DDF)V
.end method

.method private native native_inject_supl_cert([BILjava/lang/String;)V
.end method

.method private native native_inject_time(JJI)V
.end method

.method private native native_inject_xtra_data([BI)V
.end method

.method private static native native_is_agps_ril_supported()Z
.end method

.method private static native native_is_geofence_supported()Z
.end method

.method private static native native_is_gnss_configuration_supported()Z
.end method

.method private static native native_is_measurement_supported()Z
.end method

.method private static native native_is_navigation_message_supported()Z
.end method

.method private static native native_is_supported()Z
.end method

.method private static native native_pause_geofence(I)Z
.end method

.method private native native_read_nmea([BI)I
.end method

.method private native native_read_sv_status([I[F[F[F[I)I
.end method

.method private native native_reload_config()V
.end method

.method private static native native_remove_geofence(I)Z
.end method

.method private static native native_resume_geofence(II)Z
.end method

.method private native native_send_ni_response(II)V
.end method

.method private native native_set_agps_server(ILjava/lang/String;I)V
.end method

.method private native native_set_position_mode(IIIII)Z
.end method

.method private native native_set_privacy_lock(I)V
.end method

.method private native native_set_qos_time_out(II)V
.end method

.method private native native_start()Z
.end method

.method private native native_start_measurement_collection()Z
.end method

.method private native native_start_navigation_message_collection()Z
.end method

.method private native native_stop()Z
.end method

.method private native native_stop_measurement_collection()Z
.end method

.method private native native_stop_navigation_message_collection()Z
.end method

.method private native native_supports_xtra()Z
.end method

.method private native native_update_network_state(ZIZZLjava/lang/String;Ljava/lang/String;)V
.end method

.method private networkInfoP(Landroid/net/NetworkInfo;)Ljava/lang/String;
    .locals 8
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .prologue
    .line 3535
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, " NetworkInfo "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3537
    .local v0, "builder":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_5

    .line 3538
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v3

    .line 3539
    .local v3, "reason":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    .line 3540
    .local v5, "typeName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v4

    .line 3541
    .local v4, "subtypeName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkInfo$State;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3542
    .local v2, "networkState":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v1

    .line 3544
    .local v1, "detailedState":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 3545
    const-string v6, " Type: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3546
    :cond_0
    if-eqz v4, :cond_1

    .line 3547
    const-string v6, " Subtype: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3548
    :cond_1
    if-eqz v2, :cond_2

    .line 3549
    const-string v6, " NetworkState: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3550
    :cond_2
    if-eqz v1, :cond_3

    .line 3551
    const-string v6, " DetailedState: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3552
    :cond_3
    if-eqz v3, :cond_4

    .line 3553
    const-string v6, " Reason: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3555
    :cond_4
    const-string v6, ", roaming: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", failover: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isAvailable: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3560
    .end local v1    # "detailedState":Ljava/lang/String;
    .end local v2    # "networkState":Ljava/lang/String;
    .end local v3    # "reason":Ljava/lang/String;
    .end local v4    # "subtypeName":Ljava/lang/String;
    .end local v5    # "typeName":Ljava/lang/String;
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private reloadConf(Ljava/lang/String;)Z
    .locals 13
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 3362
    const-string v10, "GpsLocationProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "reload gps.conf: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3364
    if-nez p1, :cond_0

    .line 3365
    const-string v8, "GpsLocationProvider"

    const-string v10, "fileName is null "

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3519
    :goto_0
    return v9

    .line 3369
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->isfileExits(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 3370
    const-string v8, "GpsLocationProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " no such file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3376
    :cond_1
    const/4 v4, 0x0

    .line 3377
    .local v4, "stream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3379
    .local v2, "file":Ljava/io/File;
    :try_start_1
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3380
    .end local v4    # "stream":Ljava/io/FileInputStream;
    .local v5, "stream":Ljava/io/FileInputStream;
    :try_start_2
    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    invoke-virtual {v10, v5}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3382
    :try_start_3
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3385
    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v11, "SUPL_HOST"

    invoke-virtual {v10, v11}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    .line 3386
    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v11, "SUPL_PORT"

    invoke-virtual {v10, v11}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3387
    .local v3, "portString":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    if-eqz v10, :cond_2

    if-eqz v3, :cond_2

    .line 3389
    :try_start_4
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 3395
    :cond_2
    :goto_1
    :try_start_5
    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v11, "C2K_HOST"

    invoke-virtual {v10, v11}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;

    .line 3396
    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v11, "C2K_PORT"

    invoke-virtual {v10, v11}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3397
    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    if-eqz v10, :cond_3

    if-eqz v3, :cond_3

    .line 3399
    :try_start_6
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerPort:I
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 3404
    :cond_3
    :goto_2
    :try_start_7
    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v11, "SUPL_TLS_HOST"

    invoke-virtual {v10, v11}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplTlsHost:Ljava/lang/String;

    .line 3405
    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplTlsHost:Ljava/lang/String;

    if-eqz v10, :cond_4

    .line 3406
    const-string v10, "GpsLocationProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mSuplTlsHost: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplTlsHost:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3412
    :cond_4
    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v11, "DISABLE_AGPS_WHEN_ROAMING"

    invoke-virtual {v10, v11}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3413
    .local v7, "value":Ljava/lang/String;
    const-string v10, "true"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 3414
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/server/location/GpsLocationProvider;->mDisableAgpsWhenRoaming:Z

    .line 3421
    :cond_5
    :goto_3
    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v11, "SUPL_MODE"

    invoke-virtual {v10, v11}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3422
    if-eqz v7, :cond_12

    .line 3424
    const-string v10, "MS_ASSISTED"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 3425
    const-string v10, "GpsLocationProvider"

    const-string v11, "SUPL_MODE: MS_ASSISTED"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3426
    const/4 v10, 0x2

    iput v10, p0, Lcom/android/server/location/GpsLocationProvider;->mDefaultGpsPositionMode:I

    .line 3441
    :cond_6
    :goto_4
    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    if-nez v10, :cond_7

    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;

    if-nez v10, :cond_7

    .line 3443
    const-string v10, "GpsLocationProvider"

    const-string v11, "unable to parse AGPS server, Use Standalone Mode"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3444
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/server/location/GpsLocationProvider;->mDefaultGpsPositionMode:I

    .line 3447
    :cond_7
    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v11, "QOS_ACCURACY"

    invoke-virtual {v10, v11}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    move-result-object v7

    .line 3448
    if-eqz v7, :cond_8

    .line 3450
    :try_start_8
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/android/server/location/GpsLocationProvider;->mQosAccuracy:I
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 3455
    :cond_8
    :goto_5
    :try_start_9
    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v11, "QOS_TIMEOUT_STANDALONE"

    invoke-virtual {v10, v11}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    move-result-object v7

    .line 3456
    if-eqz v7, :cond_9

    .line 3458
    :try_start_a
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/android/server/location/GpsLocationProvider;->mQosTimeoutStandalone:I
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    .line 3463
    :cond_9
    :goto_6
    :try_start_b
    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v11, "QOS_TIMEOUT_AGPS"

    invoke-virtual {v10, v11}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    move-result-object v7

    .line 3464
    if-eqz v7, :cond_a

    .line 3466
    :try_start_c
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/android/server/location/GpsLocationProvider;->mQosTimeoutAgps:I
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    .line 3471
    :cond_a
    :goto_7
    :try_start_d
    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v11, "XTRA_INTERVAL"

    invoke-virtual {v10, v11}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2

    move-result-object v7

    .line 3472
    if-eqz v7, :cond_b

    .line 3474
    :try_start_e
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    mul-int/lit8 v10, v10, 0x3c

    mul-int/lit16 v10, v10, 0x3e8

    int-to-long v10, v10

    iput-wide v10, p0, Lcom/android/server/location/GpsLocationProvider;->XTRA_INTERVAL:J
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_8
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2

    .line 3481
    :cond_b
    :goto_8
    :try_start_f
    const-string v10, "persist.gps.forcextra"

    const-string v11, "true"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3482
    const-string v10, "true"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 3483
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/server/location/GpsLocationProvider;->mForceXtraInject:Z
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2

    .line 3496
    :goto_9
    const-string v10, "ro.ril.multirab.throttling"

    invoke-static {v10, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_14

    move v0, v8

    .line 3497
    .local v0, "bSetPropertyMultiRAB":Z
    :goto_a
    const-string v10, "GpsLocationProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "bSetPropertyMultiRAB:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3498
    if-ne v0, v8, :cond_c

    .line 3500
    iput-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider;->Is_MULTI_RAB_TRAFFIC_support:Z

    .line 3506
    :cond_c
    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v11, "PHONE_TYPE"

    const-string v12, "UNDEFINE"

    invoke-virtual {v10, v11, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mPhoneType:Ljava/lang/String;

    .line 3510
    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v11, "SUPL_ES"

    invoke-virtual {v10, v11}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3511
    .local v6, "suplESProperty":Ljava/lang/String;
    if-eqz v6, :cond_e

    .line 3513
    :try_start_10
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-ne v10, v8, :cond_d

    move v9, v8

    :cond_d
    iput-boolean v9, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplEsEnabled:Z
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_10} :catch_7

    :cond_e
    :goto_b
    move v9, v8

    .line 3519
    goto/16 :goto_0

    .line 3382
    .end local v0    # "bSetPropertyMultiRAB":Z
    .end local v3    # "portString":Ljava/lang/String;
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .end local v6    # "suplESProperty":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    .restart local v4    # "stream":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v8

    :goto_c
    :try_start_11
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v8
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_0

    .line 3489
    .end local v2    # "file":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 3490
    .local v1, "e":Ljava/io/IOException;
    :goto_d
    const-string v8, "GpsLocationProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not open GPS configuration file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3390
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "stream":Ljava/io/FileInputStream;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "portString":Ljava/lang/String;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v1

    .line 3391
    .local v1, "e":Ljava/lang/NumberFormatException;
    :try_start_12
    const-string v10, "GpsLocationProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "unable to parse SUPL_PORT: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3489
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "portString":Ljava/lang/String;
    :catch_2
    move-exception v1

    move-object v4, v5

    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "stream":Ljava/io/FileInputStream;
    goto :goto_d

    .line 3400
    .end local v4    # "stream":Ljava/io/FileInputStream;
    .restart local v3    # "portString":Ljava/lang/String;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    :catch_3
    move-exception v1

    .line 3401
    .restart local v1    # "e":Ljava/lang/NumberFormatException;
    const-string v10, "GpsLocationProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "unable to parse C2K_PORT: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 3415
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .restart local v7    # "value":Ljava/lang/String;
    :cond_f
    const-string v10, "false"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 3416
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/location/GpsLocationProvider;->mDisableAgpsWhenRoaming:Z

    goto/16 :goto_3

    .line 3427
    :cond_10
    const-string v10, "MS_BASED"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 3428
    const-string v10, "GpsLocationProvider"

    const-string v11, "SUPL_MODE: MS_BASED"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3429
    const/4 v10, 0x1

    iput v10, p0, Lcom/android/server/location/GpsLocationProvider;->mDefaultGpsPositionMode:I

    goto/16 :goto_4

    .line 3430
    :cond_11
    const-string v10, "STANDALONE_GPS"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 3431
    const-string v10, "GpsLocationProvider"

    const-string v11, "SUPL_MODE: STANDALONE_GPS"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3432
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/server/location/GpsLocationProvider;->mDefaultGpsPositionMode:I

    goto/16 :goto_4

    .line 3438
    :cond_12
    const/4 v10, 0x1

    iput v10, p0, Lcom/android/server/location/GpsLocationProvider;->mDefaultGpsPositionMode:I

    goto/16 :goto_4

    .line 3451
    :catch_4
    move-exception v1

    .line 3452
    .restart local v1    # "e":Ljava/lang/NumberFormatException;
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/server/location/GpsLocationProvider;->mQosAccuracy:I

    goto/16 :goto_5

    .line 3459
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :catch_5
    move-exception v1

    .line 3460
    .restart local v1    # "e":Ljava/lang/NumberFormatException;
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/server/location/GpsLocationProvider;->mQosTimeoutStandalone:I

    goto/16 :goto_6

    .line 3467
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :catch_6
    move-exception v1

    .line 3468
    .restart local v1    # "e":Ljava/lang/NumberFormatException;
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/server/location/GpsLocationProvider;->mQosTimeoutAgps:I

    goto/16 :goto_7

    .line 3485
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_13
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/location/GpsLocationProvider;->mForceXtraInject:Z
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_2

    goto/16 :goto_9

    :cond_14
    move v0, v9

    .line 3496
    goto/16 :goto_a

    .line 3514
    .restart local v0    # "bSetPropertyMultiRAB":Z
    .restart local v6    # "suplESProperty":Ljava/lang/String;
    :catch_7
    move-exception v1

    .line 3515
    .restart local v1    # "e":Ljava/lang/NumberFormatException;
    const-string v9, "GpsLocationProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unable to parse SUPL_ES: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 3475
    .end local v0    # "bSetPropertyMultiRAB":Z
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v6    # "suplESProperty":Ljava/lang/String;
    :catch_8
    move-exception v10

    goto/16 :goto_8

    .line 3382
    .end local v3    # "portString":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_c
.end method

.method private reloadGpsProperties(Landroid/content/Context;Ljava/util/Properties;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "properties"    # Ljava/util/Properties;

    .prologue
    const/4 v8, 0x1

    .line 783
    const-string v9, "GpsLocationProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Reset GPS properties, previous size = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Ljava/util/Properties;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->loadPropertiesFromResource(Landroid/content/Context;Ljava/util/Properties;)V

    .line 785
    const/4 v4, 0x0

    .line 786
    .local v4, "isPropertiesLoadedFromFile":Z
    const-string v9, "ro.hardware.gps"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 787
    .local v3, "gpsHardware":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 788
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/etc/gps."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".conf"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 790
    .local v6, "propFilename":Ljava/lang/String;
    invoke-direct {p0, v6, p2}, Lcom/android/server/location/GpsLocationProvider;->loadPropertiesFromFile(Ljava/lang/String;Ljava/util/Properties;)Z

    move-result v4

    .line 793
    .end local v6    # "propFilename":Ljava/lang/String;
    :cond_0
    if-nez v4, :cond_1

    .line 794
    const-string v9, "/etc/gps.conf"

    invoke-direct {p0, v9, p2}, Lcom/android/server/location/GpsLocationProvider;->loadPropertiesFromFile(Ljava/lang/String;Ljava/util/Properties;)Z

    .line 796
    :cond_1
    const-string v9, "GpsLocationProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "GPS properties reloaded, size = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Ljava/util/Properties;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    const-string v9, "SUPL_HOST"

    invoke-virtual {p2, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "SUPL_PORT"

    invoke-virtual {p2, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/android/server/location/GpsLocationProvider;->setSuplHostPort(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    const-string v9, "C2K_HOST"

    invoke-virtual {p2, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;

    .line 802
    const-string v9, "C2K_PORT"

    invoke-virtual {p2, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 803
    .local v5, "portString":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;

    if-eqz v9, :cond_2

    if-eqz v5, :cond_2

    .line 805
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerPort:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 811
    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->native_is_gnss_configuration_supported()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 814
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v9, 0x1000

    invoke-direct {v0, v9}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 815
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v9, 0x0

    invoke-virtual {p2, v0, v9}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 816
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/location/GpsLocationProvider;->native_configuration_update(Ljava/lang/String;)V

    .line 817
    const-string v9, "GpsLocationProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "final config = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 827
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    :goto_1
    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v10, "SUPL_ES"

    invoke-virtual {v9, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 828
    .local v7, "suplESProperty":Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 830
    :try_start_2
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-ne v9, v8, :cond_5

    :goto_2
    iput-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplEsEnabled:Z
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 835
    :cond_3
    :goto_3
    return-void

    .line 806
    .end local v7    # "suplESProperty":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 807
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v9, "GpsLocationProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unable to parse C2K_PORT: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 818
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v2

    .line 819
    .local v2, "ex":Ljava/io/IOException;
    const-string v9, "GpsLocationProvider"

    const-string v10, "failed to dump properties contents"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 822
    .end local v2    # "ex":Ljava/io/IOException;
    :cond_4
    const-string v9, "GpsLocationProvider"

    const-string v10, "Skipped configuration update because GNSS configuration in GPS HAL is not supported"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 830
    .restart local v7    # "suplESProperty":Ljava/lang/String;
    :cond_5
    const/4 v8, 0x0

    goto :goto_2

    .line 831
    :catch_2
    move-exception v1

    .line 832
    .restart local v1    # "e":Ljava/lang/NumberFormatException;
    const-string v8, "GpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unable to parse SUPL_ES: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private reportAGpsStatus(II[B)V
    .locals 10
    .param p1, "type"    # I
    .param p2, "status"    # I
    .param p3, "ipaddr"    # [B

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2190
    const-string v4, "GpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleReportAgpsStatus with type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ipaddr = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2193
    packed-switch p2, :pswitch_data_0

    .line 2278
    const-string v4, "GpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received Unknown AGPS status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2280
    :cond_0
    :goto_0
    return-void

    .line 2195
    :pswitch_0
    const-string v4, "GpsLocationProvider"

    const-string v5, "GPS_REQUEST_AGPS_DATA_CONN"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2198
    const/4 v0, 0x0

    .line 2199
    .local v0, "count":I
    :cond_1
    :goto_1
    iget-boolean v4, p0, Lcom/android/server/location/GpsLocationProvider;->IsWaitingDisconnection:Z

    if-eqz v4, :cond_2

    .line 2200
    const-string v4, "GpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WaitingDisconnection count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2202
    const-wide/16 v4, 0x3e8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2206
    :goto_2
    add-int/lit8 v0, v0, 0x1

    const/16 v4, 0x9

    if-lt v0, v4, :cond_1

    .line 2207
    iput-boolean v7, p0, Lcom/android/server/location/GpsLocationProvider;->IsWaitingDisconnection:Z

    .line 2208
    const-string v4, "GpsLocationProvider"

    const-string v5, "WaitingDisconnection timeout"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2203
    :catch_0
    move-exception v2

    .line 2204
    .local v2, "ignore":Ljava/lang/InterruptedException;
    const-string v4, "GpsLocationProvider"

    const-string v5, "WaitingDisconnection InterruptedException"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2213
    .end local v2    # "ignore":Ljava/lang/InterruptedException;
    :cond_2
    const-string v4, "GpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received SUPL IP addr[]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2216
    iput v8, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    .line 2217
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    const-string v5, "enableSUPL"

    invoke-virtual {v4, v7, v5}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v3

    .line 2219
    .local v3, "result":I
    if-eqz p3, :cond_3

    .line 2221
    :try_start_1
    invoke-static {p3}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    .line 2222
    const-string v4, "GpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IP address converted to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2229
    :cond_3
    :goto_3
    if-nez v3, :cond_5

    .line 2230
    const-string v4, "GpsLocationProvider"

    const-string v5, "PhoneConstants.APN_ALREADY_ACTIVE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2231
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsApn:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 2232
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->setRouting()V

    .line 2233
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsApn:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/location/GpsLocationProvider;->mApnIpType:I

    invoke-direct {p0, v4, v5}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_open(Ljava/lang/String;I)V

    .line 2234
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    goto/16 :goto_0

    .line 2223
    :catch_1
    move-exception v1

    .line 2224
    .local v1, "e":Ljava/net/UnknownHostException;
    const-string v4, "GpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad IP Address: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2225
    iput-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    goto :goto_3

    .line 2236
    .end local v1    # "e":Ljava/net/UnknownHostException;
    :cond_4
    const-string v4, "GpsLocationProvider"

    const-string v5, "mAGpsApn not set when receiving PhoneConstants.APN_ALREADY_ACTIVE"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2237
    iput v7, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    .line 2238
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_failed()V

    goto/16 :goto_0

    .line 2240
    :cond_5
    if-ne v3, v8, :cond_6

    .line 2241
    const-string v4, "GpsLocationProvider"

    const-string v5, "PhoneConstants.APN_REQUEST_STARTED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2244
    :cond_6
    const-string v4, "GpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startUsingNetworkFeature failed, value is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2246
    iput v7, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    .line 2247
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_failed()V

    goto/16 :goto_0

    .line 2251
    .end local v0    # "count":I
    .end local v3    # "result":I
    :pswitch_1
    const-string v4, "GpsLocationProvider"

    const-string v5, "GPS_RELEASE_AGPS_DATA_CONN"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2252
    iget v4, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    if-eqz v4, :cond_0

    .line 2253
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    const-string v5, "enableSUPL"

    invoke-virtual {v4, v7, v5}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    .line 2255
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_closed()V

    .line 2258
    iget-boolean v4, p0, Lcom/android/server/location/GpsLocationProvider;->Is_MULTI_RAB_TRAFFIC_support:Z

    if-eqz v4, :cond_7

    .line 2260
    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider;->enableMRTT()V

    .line 2264
    :cond_7
    iput v7, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    .line 2265
    iput-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    goto/16 :goto_0

    .line 2269
    :pswitch_2
    const-string v4, "GpsLocationProvider"

    const-string v5, "GPS_AGPS_DATA_CONNECTED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2272
    :pswitch_3
    const-string v4, "GpsLocationProvider"

    const-string v5, "GPS_AGPS_DATA_CONN_DONE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2275
    :pswitch_4
    const-string v4, "GpsLocationProvider"

    const-string v5, "GPS_AGPS_DATA_CONN_FAILED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2193
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private reportGeofenceAddStatus(II)V
    .locals 3
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .prologue
    .line 2453
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GeoFence]reportGeofenceAddStatus(),id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2454
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_0

    .line 2455
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 2457
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0, p2}, Lcom/android/server/location/GpsLocationProvider;->getGeofenceStatus(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceAddStatus(II)V

    .line 2458
    return-void
.end method

.method private reportGeofencePauseStatus(II)V
    .locals 3
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .prologue
    .line 2475
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GeoFence]reportGeofencePauseStatus(),id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2476
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_0

    .line 2477
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 2479
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0, p2}, Lcom/android/server/location/GpsLocationProvider;->getGeofenceStatus(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofencePauseStatus(II)V

    .line 2480
    return-void
.end method

.method private reportGeofenceRemoveStatus(II)V
    .locals 3
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .prologue
    .line 2464
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GeoFence]reportGeofenceRemoveStatus(),id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2465
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_0

    .line 2466
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 2468
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0, p2}, Lcom/android/server/location/GpsLocationProvider;->getGeofenceStatus(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceRemoveStatus(II)V

    .line 2469
    return-void
.end method

.method private reportGeofenceResumeStatus(II)V
    .locals 3
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .prologue
    .line 2486
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GeoFence]reportGeofenceResumeStatus(),id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2487
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_0

    .line 2488
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 2490
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0, p2}, Lcom/android/server/location/GpsLocationProvider;->getGeofenceStatus(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceResumeStatus(II)V

    .line 2491
    return-void
.end method

.method private reportGeofenceStatus(IIDDDFFFJ)V
    .locals 17
    .param p1, "status"    # I
    .param p2, "flags"    # I
    .param p3, "latitude"    # D
    .param p5, "longitude"    # D
    .param p7, "altitude"    # D
    .param p9, "speed"    # F
    .param p10, "bearing"    # F
    .param p11, "accuracy"    # F
    .param p12, "timestamp"    # J

    .prologue
    .line 2424
    const-string v2, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[GeoFence]reportGeofenceStatus(), status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",flags="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",speed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",bearing="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p10

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",accuracy="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p11

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",timestamp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p12

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2426
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v2, :cond_0

    .line 2427
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    :cond_0
    move-object/from16 v2, p0

    move/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move-wide/from16 v13, p12

    .line 2429
    invoke-direct/range {v2 .. v14}, Lcom/android/server/location/GpsLocationProvider;->buildLocation(IDDDFFFJ)Landroid/location/Location;

    move-result-object v15

    .line 2438
    .local v15, "location":Landroid/location/Location;
    const/16 v16, 0x1

    .line 2439
    .local v16, "monitorStatus":I
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_1

    .line 2440
    const/16 v16, 0x0

    .line 2442
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    const/4 v3, 0x0

    sget v4, Landroid/location/FusedBatchOptions$SourceTechnologies;->GNSS:I

    move/from16 v0, v16

    invoke-virtual {v2, v3, v0, v15, v4}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceMonitorStatus(IILandroid/location/Location;I)V

    .line 2447
    return-void
.end method

.method private reportGeofenceTransition(IIDDDFFFJIJ)V
    .locals 15
    .param p1, "geofenceId"    # I
    .param p2, "flags"    # I
    .param p3, "latitude"    # D
    .param p5, "longitude"    # D
    .param p7, "altitude"    # D
    .param p9, "speed"    # F
    .param p10, "bearing"    # F
    .param p11, "accuracy"    # F
    .param p12, "timestamp"    # J
    .param p14, "transition"    # I
    .param p15, "transitionTimestamp"    # J

    .prologue
    .line 2394
    const-string v2, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[GeoFence]reportGeofenceTransition(), id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",flags="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",speed="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",bearing="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p10

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",accuracy="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p11

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",timestamp="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p12

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",transition="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p14

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",transitionTimestamp="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p15

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2397
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v2, :cond_0

    .line 2398
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    :cond_0
    move-object v2, p0

    move/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move-wide/from16 v13, p12

    .line 2400
    invoke-direct/range {v2 .. v14}, Lcom/android/server/location/GpsLocationProvider;->buildLocation(IDDDFFFJ)Landroid/location/Location;

    move-result-object v4

    .line 2409
    .local v4, "location":Landroid/location/Location;
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    const/4 v8, 0x0

    sget v9, Landroid/location/FusedBatchOptions$SourceTechnologies;->GNSS:I

    move/from16 v3, p1

    move/from16 v5, p14

    move-wide/from16 v6, p15

    invoke-virtual/range {v2 .. v9}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceTransition(ILandroid/location/Location;IJII)V

    .line 2416
    return-void
.end method

.method private reportHTCStatus(II)V
    .locals 6
    .param p1, "eventMask"    # I
    .param p2, "status"    # I

    .prologue
    .line 3200
    const-string v3, "GpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[reportHTCStatus] eventMask = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3201
    packed-switch p1, :pswitch_data_0

    .line 3307
    const-string v3, "GpsLocationProvider"

    const-string v4, "[reportHTCStatus] NOT have this event type !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3309
    :goto_0
    return-void

    .line 3204
    :pswitch_0
    const-string v3, "GpsLocationProvider"

    const-string v4, "[reportHTCStatus] INJECT_LOCATION"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3208
    :pswitch_1
    const-string v3, "GpsLocationProvider"

    const-string v4, "[reportHTCStatus] INJECT_TIME"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3212
    :pswitch_2
    const-string v3, "GpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[reportHTCStatus] INJECT_XTRA_DATA, status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3213
    const/4 v3, 0x6

    if-eq v3, p2, :cond_0

    const/16 v3, 0x8

    if-ne v3, p2, :cond_1

    .line 3215
    :cond_0
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mXLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3217
    const/4 v3, 0x0

    :try_start_0
    iput v3, p0, Lcom/android/server/location/GpsLocationProvider;->mXtraInjRetryCount:I

    .line 3218
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mXLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3222
    :goto_1
    :try_start_1
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 3219
    :catch_0
    move-exception v0

    .line 3220
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_2
    const-string v3, "GpsLocationProvider"

    const-string v5, "inject return notify exception"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 3223
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    const/4 v3, 0x1

    if-ne v3, p2, :cond_2

    .line 3224
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mXLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3226
    :try_start_3
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mXLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3230
    :goto_2
    :try_start_4
    monitor-exit v4

    goto :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3

    .line 3227
    :catch_1
    move-exception v0

    .line 3228
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    :try_start_5
    const-string v3, "GpsLocationProvider"

    const-string v5, "inject return notify exception"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    .line 3232
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_2
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mXLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3234
    const/4 v3, -0x1

    :try_start_6
    iput v3, p0, Lcom/android/server/location/GpsLocationProvider;->mXtraInjRetryCount:I

    .line 3235
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mXLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 3239
    :goto_3
    :try_start_7
    monitor-exit v4

    goto :goto_0

    :catchall_2
    move-exception v3

    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v3

    .line 3236
    :catch_2
    move-exception v0

    .line 3237
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    :try_start_8
    const-string v3, "GpsLocationProvider"

    const-string v5, "inject return notify exception"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_3

    .line 3245
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :pswitch_3
    const-string v3, "GpsLocationProvider"

    const-string v4, "[reportHTCStatus] INJECT_SUPL_CERT"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3248
    const-string v2, "SuplRootCert_injected"

    .line 3249
    .local v2, "injectedFileName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/misc/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3250
    .local v1, "file_injected":Ljava/io/File;
    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->mCertCount:I

    if-lez v3, :cond_4

    .line 3251
    :cond_3
    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->mCertCount:I

    iget v4, p0, Lcom/android/server/location/GpsLocationProvider;->cert_idx:I

    if-gt v3, v4, :cond_4

    .line 3252
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SuplRootCert_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/location/GpsLocationProvider;->mCertCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_injected"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3253
    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->mCertCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/location/GpsLocationProvider;->mCertCount:I

    .line 3254
    new-instance v1, Ljava/io/File;

    .end local v1    # "file_injected":Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/misc/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3255
    .restart local v1    # "file_injected":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 3260
    :cond_4
    if-nez p2, :cond_6

    .line 3261
    const-string v3, "GpsLocationProvider"

    const-string v4, "[CERT]<= Injection success"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3262
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_5

    .line 3263
    const-string v3, "GpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CERT]<= create token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3265
    :try_start_9
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_0

    .line 3266
    :catch_3
    move-exception v0

    .line 3267
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "GpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CERT]<= Could not create token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3270
    .end local v0    # "e":Ljava/io/IOException;
    :cond_5
    const-string v3, "GpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CERT]<= token already exists: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3273
    :cond_6
    const-string v3, "GpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CERT]<= Injection failure: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3279
    .end local v1    # "file_injected":Ljava/io/File;
    .end local v2    # "injectedFileName":Ljava/lang/String;
    :pswitch_4
    const-string v3, "GpsLocationProvider"

    const-string v4, "[reportHTCStatus] SET_PRIVACY_LOCK"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3280
    if-eqz p2, :cond_7

    .line 3282
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/server/location/GpsLocationProvider$13;

    invoke-direct {v4, p0}, Lcom/android/server/location/GpsLocationProvider$13;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 3302
    :cond_7
    const-string v3, "GpsLocationProvider"

    const-string v4, "[reportHTCStatus] HTC_GPS_STATUS_SET_PRIVACY_LOCK success"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3201
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private reportLocation(IDDDFFFJFFF)V
    .locals 8
    .param p1, "flags"    # I
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .param p6, "altitude"    # D
    .param p8, "speed"    # F
    .param p9, "bearing"    # F
    .param p10, "accuracy"    # F
    .param p11, "timestamp"    # J
    .param p13, "uncAngle"    # F
    .param p14, "uncAlong"    # F
    .param p15, "uncPer"    # F

    .prologue
    .line 1939
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    monitor-enter v5

    .line 1940
    :try_start_0
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationFlags:I

    .line 1941
    and-int/lit8 v4, p1, 0x1

    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    .line 1942
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v4, p2, p3}, Landroid/location/Location;->setLatitude(D)V

    .line 1943
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v4, p4, p5}, Landroid/location/Location;->setLongitude(D)V

    .line 1944
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move-wide/from16 v0, p11

    invoke-virtual {v4, v0, v1}, Landroid/location/Location;->setTime(J)V

    .line 1947
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 1949
    :cond_0
    and-int/lit8 v4, p1, 0x2

    const/4 v6, 0x2

    if-ne v4, v6, :cond_8

    .line 1950
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v4, p6, p7}, Landroid/location/Location;->setAltitude(D)V

    .line 1954
    :goto_0
    and-int/lit8 v4, p1, 0x4

    const/4 v6, 0x4

    if-ne v4, v6, :cond_9

    .line 1955
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move/from16 v0, p8

    invoke-virtual {v4, v0}, Landroid/location/Location;->setSpeed(F)V

    .line 1959
    :goto_1
    and-int/lit8 v4, p1, 0x8

    const/16 v6, 0x8

    if-ne v4, v6, :cond_a

    .line 1960
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move/from16 v0, p9

    invoke-virtual {v4, v0}, Landroid/location/Location;->setBearing(F)V

    .line 1964
    :goto_2
    and-int/lit8 v4, p1, 0x10

    const/16 v6, 0x10

    if-ne v4, v6, :cond_b

    .line 1965
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move/from16 v0, p10

    invoke-virtual {v4, v0}, Landroid/location/Location;->setAccuracy(F)V

    .line 1970
    :goto_3
    const v4, 0x8000

    and-int/2addr v4, p1

    const v6, 0x8000

    if-ne v4, v6, :cond_c

    .line 1971
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    const-string v6, "uncAngle"

    move/from16 v0, p13

    invoke-virtual {v4, v6, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1972
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    const-string v6, "uncAlong"

    move/from16 v0, p14

    invoke-virtual {v4, v6, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1973
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    const-string v6, "uncPer"

    move/from16 v0, p15

    invoke-virtual {v4, v6, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1974
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    const-string v6, "has2dunc"

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1981
    :goto_4
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    invoke-virtual {v4, v6}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1987
    :try_start_1
    iget-boolean v4, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    if-eqz v4, :cond_d

    .line 1990
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mILocationManager:Landroid/location/ILocationManager;

    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7}, Landroid/location/ILocationManager;->reportLocation(Landroid/location/Location;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2001
    :goto_5
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2003
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    .line 2005
    iget v4, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeToFirstFix:I

    if-nez v4, :cond_2

    and-int/lit8 v4, p1, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 2006
    iget-wide v4, p0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    iget-wide v6, p0, Lcom/android/server/location/GpsLocationProvider;->mFixRequestTime:J

    sub-long/2addr v4, v6

    long-to-int v4, v4

    iput v4, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeToFirstFix:I

    .line 2007
    const-string v4, "GpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TTFF: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeToFirstFix:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    sget-boolean v4, Lcom/android/server/location/GpsLocationProvider;->mIsCMCC:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sync_time_with_gps_enabled"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    .line 2010
    const-string v4, "GpsLocationProvider"

    const-string v5, "Before GpsTimeSync "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2011
    invoke-static/range {p11 .. p12}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 2012
    const-string v4, "GpsLocationProvider"

    const-string v5, "GpsTimeSync Success"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2019
    :cond_1
    :goto_6
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mListenerHelper:Lcom/android/server/location/GpsStatusListenerHelper;

    iget v5, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeToFirstFix:I

    invoke-virtual {v4, v5}, Lcom/android/server/location/GpsStatusListenerHelper;->onFirstFix(I)V

    .line 2022
    :cond_2
    iget-boolean v4, p0, Lcom/android/server/location/GpsLocationProvider;->mSingleShot:Z

    if-eqz v4, :cond_3

    .line 2023
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->stopNavigating()V

    .line 2026
    :cond_3
    iget-boolean v4, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_5

    .line 2029
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v4

    if-nez v4, :cond_4

    iget v4, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    const v5, 0xea60

    if-ge v4, v5, :cond_4

    .line 2030
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2035
    :cond_4
    iget-boolean v4, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    if-eqz v4, :cond_f

    .line 2037
    const-string v4, "GpsLocationProvider"

    const-string v5, "[GICON] +++++ GPS_FIX_CHANGE_ACTION +++++  (true)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2041
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.location.GPS_FIX_CHANGE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2042
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "enabled"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2043
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2044
    const/4 v4, 0x2

    iget v5, p0, Lcom/android/server/location/GpsLocationProvider;->mSvCount:I

    invoke-direct {p0, v4, v5}, Lcom/android/server/location/GpsLocationProvider;->updateStatus(II)V

    .line 2054
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_5
    :goto_7
    iget v4, p0, Lcom/android/server/location/GpsLocationProvider;->SSLog:I

    if-lez v4, :cond_6

    iget v4, p0, Lcom/android/server/location/GpsLocationProvider;->SSLog:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/server/location/GpsLocationProvider;->SSLog:I

    .line 2056
    :cond_6
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v4

    if-nez v4, :cond_7

    iget-boolean v4, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    if-eqz v4, :cond_7

    iget v4, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    const/16 v5, 0x2710

    if-le v4, v5, :cond_7

    .line 2058
    const-string v4, "GpsLocationProvider"

    const-string v5, "got fix, hibernating"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2059
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->hibernate()V

    .line 2061
    :cond_7
    return-void

    .line 1952
    :cond_8
    :try_start_3
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->removeAltitude()V

    goto/16 :goto_0

    .line 2001
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 1957
    :cond_9
    :try_start_4
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->removeSpeed()V

    goto/16 :goto_1

    .line 1962
    :cond_a
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->removeBearing()V

    goto/16 :goto_2

    .line 1967
    :cond_b
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->removeAccuracy()V

    goto/16 :goto_3

    .line 1976
    :cond_c
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    const-string v6, "uncAngle"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1977
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    const-string v6, "uncAlong"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1978
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    const-string v6, "uncPer"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_4

    .line 1994
    :cond_d
    :try_start_5
    const-string v4, "GpsLocationProvider"

    const-string v6, "Dummy location report"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_5

    .line 1998
    :catch_0
    move-exception v2

    .line 1999
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_6
    const-string v4, "GpsLocationProvider"

    const-string v6, "RemoteException calling reportLocation"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_5

    .line 2014
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_e
    const-string v4, "GpsLocationProvider"

    const-string v5, "GpsTimeSync Fail"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 2049
    :cond_f
    const-string v4, "GpsLocationProvider"

    const-string v5, "Fix event comes in no navigating state!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method private reportMeasurementData(Landroid/location/GpsMeasurementsEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/location/GpsMeasurementsEvent;

    .prologue
    .line 2295
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsMeasurementsProvider:Lcom/android/server/location/GpsMeasurementsProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/location/GpsMeasurementsProvider;->onMeasurementsAvailable(Landroid/location/GpsMeasurementsEvent;)V

    .line 2296
    return-void
.end method

.method private reportNavigationMessage(Landroid/location/GpsNavigationMessageEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/location/GpsNavigationMessageEvent;

    .prologue
    .line 2302
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsNavigationMessageProvider:Lcom/android/server/location/GpsNavigationMessageProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/location/GpsNavigationMessageProvider;->onNavigationMessageAvailable(Landroid/location/GpsNavigationMessageEvent;)V

    .line 2303
    return-void
.end method

.method private reportNmea(J)V
    .locals 5
    .param p1, "timestamp"    # J

    .prologue
    .line 2286
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mNmeaBuffer:[B

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mNmeaBuffer:[B

    array-length v3, v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/location/GpsLocationProvider;->native_read_nmea([BI)I

    move-result v0

    .line 2287
    .local v0, "length":I
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mNmeaBuffer:[B

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([BII)V

    .line 2288
    .local v1, "nmea":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mListenerHelper:Lcom/android/server/location/GpsStatusListenerHelper;

    invoke-virtual {v2, p1, p2, v1}, Lcom/android/server/location/GpsStatusListenerHelper;->onNmeaReceived(JLjava/lang/String;)V

    .line 2289
    return-void
.end method

.method private reportStatus(I)V
    .locals 9
    .param p1, "status"    # I

    .prologue
    const/4 v8, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2067
    const-string v5, "GpsLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reportStatus status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2069
    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    .line 2070
    .local v2, "wasNavigating":Z
    packed-switch p1, :pswitch_data_0

    .line 2088
    :goto_0
    sget-boolean v5, Lcom/android/server/location/GpsLocationProvider;->mIsVZW:Z

    if-eqz v5, :cond_1

    .line 2089
    iget-boolean v5, p0, Lcom/android/server/location/GpsLocationProvider;->mECMState:Z

    if-ne v5, v4, :cond_1

    .line 2090
    if-eq p1, v8, :cond_0

    if-ne p1, v4, :cond_5

    :cond_0
    move v0, v4

    .line 2091
    .local v0, "GpsIconStatus":Z
    :goto_1
    const-string v5, "GpsLocationProvider"

    const-string v6, "[GICON] ### GPS_ENABLED_CHANGE_ACTION ###  (E911)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2093
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.location.GPS_ENABLED_CHANGE"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2094
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "enabled"

    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2095
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v1, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2096
    const-string v5, "GpsLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GPS_ENABLED_CHANGE_ACTION: android.location.GPS_ENABLED_CHANGE EXTRA_GPS_ENABLED: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2103
    .end local v0    # "GpsIconStatus":Z
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    iget-boolean v5, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineOn:Z

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    if-nez v5, :cond_2

    .line 2104
    invoke-direct {p0, v4, v3}, Lcom/android/server/location/GpsLocationProvider;->updateStatus(II)V

    .line 2108
    :cond_2
    iget-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    if-eq v2, v3, :cond_4

    .line 2109
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mListenerHelper:Lcom/android/server/location/GpsStatusListenerHelper;

    iget-boolean v4, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    invoke-virtual {v3, v4}, Lcom/android/server/location/GpsStatusListenerHelper;->onStatusChanged(Z)V

    .line 2112
    iget-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    if-nez v3, :cond_6

    .line 2114
    :cond_3
    const-string v3, "GpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[GICON] ### GPS_ENABLED_CHANGE_ACTION ###  ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2117
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.location.GPS_ENABLED_CHANGE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2118
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v3, "enabled"

    iget-boolean v4, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2119
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2121
    iget-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    if-eqz v3, :cond_4

    .line 2122
    iput v8, p0, Lcom/android/server/location/GpsLocationProvider;->SSLog:I

    .line 2132
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_4
    :goto_2
    return-void

    .line 2072
    :pswitch_0
    iput-boolean v4, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    .line 2073
    iput-boolean v4, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineOn:Z

    goto/16 :goto_0

    .line 2076
    :pswitch_1
    iput-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    goto/16 :goto_0

    .line 2079
    :pswitch_2
    iput-boolean v4, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineOn:Z

    goto/16 :goto_0

    .line 2082
    :pswitch_3
    iput-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineOn:Z

    .line 2083
    iput-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    goto/16 :goto_0

    :cond_5
    move v0, v3

    .line 2090
    goto/16 :goto_1

    .line 2128
    :cond_6
    const-string v3, "GpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[GICON] No GPS notify, mStarted: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mNavigating: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2070
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private reportSvStatus()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 2138
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mSvs:[I

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mSnrs:[F

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mSvElevations:[F

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mSvAzimuths:[F

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GpsLocationProvider;->native_read_sv_status([I[F[F[F[I)I

    move-result v1

    .line 2139
    .local v1, "svCount":I
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mListenerHelper:Lcom/android/server/location/GpsStatusListenerHelper;

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mSvs:[I

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mSnrs:[F

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mSvElevations:[F

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mSvAzimuths:[F

    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    aget v6, v6, v12

    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    aget v7, v7, v11

    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    aget v8, v8, v13

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/location/GpsStatusListenerHelper;->onSvStatusChanged(I[I[F[F[FIII)V

    .line 2151
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->SSLog:I

    if-lez v0, :cond_3

    .line 2153
    const-string v0, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SV count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ephemerisMask: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    aget v3, v3, v12

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " almanacMask: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    aget v3, v3, v11

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2156
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v1, :cond_3

    .line 2157
    const-string v2, "GpsLocationProvider"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sv: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mSvs:[I

    aget v3, v3, v9

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " snr: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mSnrs:[F

    aget v3, v3, v9

    const/high16 v4, 0x41200000    # 10.0f

    div-float/2addr v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " elev: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mSvElevations:[F

    aget v3, v3, v9

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " azimuth: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mSvAzimuths:[F

    aget v3, v3, v9

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    aget v0, v0, v12

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mSvs:[I

    aget v4, v4, v9

    add-int/lit8 v4, v4, -0x1

    shl-int v4, v11, v4

    and-int/2addr v0, v4

    if-nez v0, :cond_0

    const-string v0, "  "

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    aget v0, v0, v11

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mSvs:[I

    aget v4, v4, v9

    add-int/lit8 v4, v4, -0x1

    shl-int v4, v11, v4

    and-int/2addr v0, v4

    if-nez v0, :cond_1

    const-string v0, "  "

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    aget v0, v0, v13

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mSvs:[I

    aget v4, v4, v9

    add-int/lit8 v4, v4, -0x1

    shl-int v4, v11, v4

    and-int/2addr v0, v4

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2156
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 2157
    :cond_0
    const-string v0, " E"

    goto :goto_1

    :cond_1
    const-string v0, " A"

    goto :goto_2

    :cond_2
    const-string v0, "U"

    goto :goto_3

    .line 2168
    .end local v9    # "i":I
    :cond_3
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    aget v2, v2, v13

    invoke-static {v2}, Ljava/lang/Integer;->bitCount(I)I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/android/server/location/GpsLocationProvider;->updateStatus(II)V

    .line 2170
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    if-ne v0, v13, :cond_4

    iget-wide v2, p0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2710

    cmp-long v0, v2, v4

    if-lez v0, :cond_4

    .line 2174
    const-string v0, "GpsLocationProvider"

    const-string v2, "[GICON] ----- GPS_FIX_CHANGE_ACTION -----  (false)"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2176
    new-instance v10, Landroid/content/Intent;

    const-string v0, "android.location.GPS_FIX_CHANGE"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2177
    .local v10, "intent":Landroid/content/Intent;
    const-string v0, "enabled"

    invoke-virtual {v10, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2178
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v10, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2179
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSvCount:I

    invoke-direct {p0, v11, v0}, Lcom/android/server/location/GpsLocationProvider;->updateStatus(II)V

    .line 2181
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->SSLog:I

    .line 2184
    .end local v10    # "intent":Landroid/content/Intent;
    :cond_4
    return-void
.end method

.method private requestRefLocation(I)V
    .locals 10
    .param p1, "flags"    # I

    .prologue
    const/4 v5, 0x3

    .line 2655
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 2657
    .local v8, "phone":Landroid/telephony/TelephonyManager;
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v9

    .line 2658
    .local v9, "phoneType":I
    const/4 v0, 0x1

    if-ne v9, v0, :cond_4

    .line 2659
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v6

    check-cast v6, Landroid/telephony/gsm/GsmCellLocation;

    .line 2660
    .local v6, "gsm_cell":Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v6, :cond_3

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v5, :cond_3

    .line 2663
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2664
    .local v2, "mcc":I
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2665
    .local v3, "mnc":I
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v7

    .line 2666
    .local v7, "networkType":I
    if-eq v7, v5, :cond_0

    const/16 v0, 0x8

    if-eq v7, v0, :cond_0

    const/16 v0, 0x9

    if-eq v7, v0, :cond_0

    const/16 v0, 0xa

    if-eq v7, v0, :cond_0

    const/16 v0, 0xf

    if-ne v7, v0, :cond_2

    .line 2671
    :cond_0
    const/4 v1, 0x2

    .line 2675
    .local v1, "type":I
    :goto_0
    invoke-virtual {v6}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v4

    invoke-virtual {v6}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GpsLocationProvider;->native_agps_set_ref_location_cellid(IIIII)V

    .line 2683
    .end local v1    # "type":I
    .end local v2    # "mcc":I
    .end local v3    # "mnc":I
    .end local v6    # "gsm_cell":Landroid/telephony/gsm/GsmCellLocation;
    .end local v7    # "networkType":I
    :cond_1
    :goto_1
    return-void

    .line 2673
    .restart local v2    # "mcc":I
    .restart local v3    # "mnc":I
    .restart local v6    # "gsm_cell":Landroid/telephony/gsm/GsmCellLocation;
    .restart local v7    # "networkType":I
    :cond_2
    const/4 v1, 0x1

    .restart local v1    # "type":I
    goto :goto_0

    .line 2678
    .end local v1    # "type":I
    .end local v2    # "mcc":I
    .end local v3    # "mnc":I
    .end local v7    # "networkType":I
    :cond_3
    const-string v0, "GpsLocationProvider"

    const-string v4, "Error getting cell location info."

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2680
    .end local v6    # "gsm_cell":Landroid/telephony/gsm/GsmCellLocation;
    :cond_4
    const/4 v0, 0x2

    if-ne v9, v0, :cond_1

    .line 2681
    const-string v0, "GpsLocationProvider"

    const-string v4, "CDMA not supported."

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private requestSetID(I)V
    .locals 6
    .param p1, "flags"    # I

    .prologue
    .line 2607
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 2609
    .local v2, "phone":Landroid/telephony/TelephonyManager;
    const/4 v3, 0x0

    .line 2610
    .local v3, "type":I
    const-string v0, ""

    .line 2612
    .local v0, "data":Ljava/lang/String;
    and-int/lit8 v4, p1, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 2613
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 2614
    .local v1, "data_temp":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 2632
    .end local v1    # "data_temp":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-direct {p0, v3, v0}, Lcom/android/server/location/GpsLocationProvider;->native_agps_set_id(ILjava/lang/String;)V

    .line 2633
    return-void

    .line 2618
    .restart local v1    # "data_temp":Ljava/lang/String;
    :cond_1
    move-object v0, v1

    .line 2619
    const/4 v3, 0x1

    goto :goto_0

    .line 2622
    .end local v1    # "data_temp":Ljava/lang/String;
    :cond_2
    and-int/lit8 v4, p1, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 2623
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 2624
    .restart local v1    # "data_temp":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 2628
    move-object v0, v1

    .line 2629
    const/4 v3, 0x2

    goto :goto_0
.end method

.method private requestUtcTime()V
    .locals 3

    .prologue
    .line 2641
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNativeNtpRequest:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2643
    const-string v0, "GpsLocationProvider"

    const-string v1, "requestUtcTime from native"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2644
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 2648
    :goto_0
    return-void

    .line 2646
    :cond_0
    const-string v0, "GpsLocationProvider"

    const-string v1, "requestUtcTime: disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendMessage(IILjava/lang/Object;)V
    .locals 2
    .param p1, "message"    # I
    .param p2, "arg"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2689
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2690
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2691
    return-void
.end method

.method private setEngineCapabilities(I)V
    .locals 5
    .param p1, "capabilities"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2309
    const-string v0, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setEngineCapabilities "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2310
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineCapabilities:I

    .line 2312
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPeriodicTimeInjection:Z

    if-nez v0, :cond_0

    .line 2313
    iput-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPeriodicTimeInjection:Z

    .line 2314
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->requestUtcTime()V

    .line 2317
    :cond_0
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsMeasurementsProvider:Lcom/android/server/location/GpsMeasurementsProvider;

    and-int/lit8 v0, p1, 0x40

    const/16 v4, 0x40

    if-ne v0, v4, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/server/location/GpsMeasurementsProvider;->onCapabilitiesUpdated(Z)V

    .line 2319
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsNavigationMessageProvider:Lcom/android/server/location/GpsNavigationMessageProvider;

    and-int/lit16 v3, p1, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/server/location/GpsNavigationMessageProvider;->onCapabilitiesUpdated(Z)V

    .line 2321
    return-void

    :cond_1
    move v0, v2

    .line 2317
    goto :goto_0

    :cond_2
    move v1, v2

    .line 2319
    goto :goto_1
.end method

.method private setRouting()V
    .locals 4

    .prologue
    .line 2940
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    if-nez v1, :cond_0

    .line 2953
    :goto_0
    return-void

    .line 2944
    :cond_0
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    invoke-virtual {v1, v2, v3}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    move-result v0

    .line 2948
    .local v0, "result":Z
    if-nez v0, :cond_1

    .line 2949
    const-string v1, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error requesting route to host: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2951
    :cond_1
    const-string v1, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Successfully requested route to host: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setSuplHostPort(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "hostString"    # Ljava/lang/String;
    .param p2, "portString"    # Ljava/lang/String;

    .prologue
    .line 1298
    if-eqz p1, :cond_0

    .line 1299
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    .line 1301
    :cond_0
    if-eqz p2, :cond_1

    .line 1303
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1308
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I

    if-lez v1, :cond_2

    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I

    const v2, 0xffff

    if-gt v1, v2, :cond_2

    .line 1311
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 1313
    :cond_2
    return-void

    .line 1304
    :catch_0
    move-exception v0

    .line 1305
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v1, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to parse SUPL_PORT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private shouldBIEnable()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3620
    const-string v1, "htc.build.stage"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider;->HtcSystemUPLogger_write:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private startNavigating(Z)V
    .locals 18
    .param p1, "singleShot"    # Z

    .prologue
    .line 1770
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    if-nez v2, :cond_4

    .line 1771
    const-string v2, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startNavigating, singleShot is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1772
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/location/GpsLocationProvider;->mTimeToFirstFix:I

    .line 1773
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    .line 1774
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    .line 1775
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/location/GpsLocationProvider;->mSingleShot:Z

    .line 1776
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    .line 1786
    const/4 v8, 0x1

    .line 1787
    .local v8, "enableAgps":Z
    sget-boolean v2, Lcom/android/server/location/GpsLocationProvider;->mIsCHINASku:Z

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "assisted_gps_enabled"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_5

    .line 1789
    const/4 v8, 0x0

    .line 1790
    const-string v2, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AGPS status: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], dsable APGS due to setting config"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1802
    :cond_0
    :goto_0
    if-eqz v8, :cond_9

    .line 1804
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/location/GpsLocationProvider;->mSingleShot:Z

    if-eqz v2, :cond_8

    const/4 v2, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1805
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    .line 1811
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/TelephonyManager;

    .line 1812
    .local v12, "tm":Landroid/telephony/TelephonyManager;
    const/16 v6, 0x32

    .line 1816
    .local v6, "accuracy":I
    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_a

    .line 1817
    const/16 v11, 0x3e80

    .line 1818
    .local v11, "timeout_standalone":I
    const/16 v10, 0x3e80

    .line 1824
    .local v10, "timeout_agps":I
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GpsLocationProvider;->mQosAccuracy:I

    if-lez v2, :cond_1

    .line 1825
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/location/GpsLocationProvider;->mQosAccuracy:I

    .line 1827
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GpsLocationProvider;->mQosTimeoutStandalone:I

    if-lez v2, :cond_2

    .line 1828
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GpsLocationProvider;->mQosTimeoutStandalone:I

    mul-int/lit16 v11, v2, 0x3e8

    .line 1830
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GpsLocationProvider;->mQosTimeoutAgps:I

    if-lez v2, :cond_3

    .line 1831
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GpsLocationProvider;->mQosTimeoutAgps:I

    mul-int/lit16 v10, v2, 0x3e8

    .line 1834
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v10}, Lcom/android/server/location/GpsLocationProvider;->native_set_qos_time_out(II)V

    .line 1837
    const-string v2, "GpsLocationProvider"

    const-string v3, "startNavigating: set_agps_qos_time_out complete"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1843
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    packed-switch v2, :pswitch_data_0

    .line 1854
    const-string v9, "unknown"

    .line 1857
    .local v9, "mode":Ljava/lang/String;
    :goto_3
    const-string v2, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setting position_mode to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1860
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    .line 1863
    .local v5, "interval":I
    :goto_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_c

    const/4 v4, 0x1

    :goto_5
    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/location/GpsLocationProvider;->native_set_position_mode(IIIII)Z

    move-result v2

    if-nez v2, :cond_d

    .line 1866
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    .line 1867
    const-string v2, "GpsLocationProvider"

    const-string v3, "set_position_mode failed in startNavigating()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    .end local v5    # "interval":I
    .end local v6    # "accuracy":I
    .end local v8    # "enableAgps":Z
    .end local v9    # "mode":Ljava/lang/String;
    .end local v10    # "timeout_agps":I
    .end local v11    # "timeout_standalone":I
    .end local v12    # "tm":Landroid/telephony/TelephonyManager;
    :cond_4
    :goto_6
    return-void

    .line 1791
    .restart local v8    # "enableAgps":Z
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/location/GpsLocationProvider;->mRoaming:Z

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/location/GpsLocationProvider;->mDisableAgpsWhenRoaming:Z

    if-eqz v2, :cond_6

    .line 1792
    const/4 v8, 0x0

    .line 1793
    const-string v2, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AGPS status: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], dsable APGS due to Roaming"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1794
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/location/GpsLocationProvider;->mDisableAgps:Z

    if-eqz v2, :cond_7

    .line 1795
    const/4 v8, 0x0

    .line 1796
    const-string v2, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AGPS status: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], due to diable ExtraCommand"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1797
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GpsLocationProvider;->mDefaultGpsPositionMode:I

    if-nez v2, :cond_0

    .line 1798
    const/4 v8, 0x0

    .line 1799
    const-string v2, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AGPS status: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], dsable APGS due to no SUPL && C2K settings"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1807
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GpsLocationProvider;->mDefaultGpsPositionMode:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    goto/16 :goto_1

    .line 1809
    :cond_9
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    goto/16 :goto_1

    .line 1820
    .restart local v6    # "accuracy":I
    .restart local v12    # "tm":Landroid/telephony/TelephonyManager;
    :cond_a
    const v11, 0xea60

    .line 1821
    .restart local v11    # "timeout_standalone":I
    const v10, 0x15ba8

    .restart local v10    # "timeout_agps":I
    goto/16 :goto_2

    .line 1845
    :pswitch_0
    const-string v9, "standalone"

    .line 1846
    .restart local v9    # "mode":Ljava/lang/String;
    goto/16 :goto_3

    .line 1848
    .end local v9    # "mode":Ljava/lang/String;
    :pswitch_1
    const-string v9, "MS_ASSISTED"

    .line 1849
    .restart local v9    # "mode":Ljava/lang/String;
    goto/16 :goto_3

    .line 1851
    .end local v9    # "mode":Ljava/lang/String;
    :pswitch_2
    const-string v9, "MS_BASED"

    .line 1852
    .restart local v9    # "mode":Ljava/lang/String;
    goto/16 :goto_3

    .line 1860
    :cond_b
    const/16 v5, 0x3e8

    goto/16 :goto_4

    .line 1863
    .restart local v5    # "interval":I
    :cond_c
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 1870
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GpsLocationProvider;->native_start()Z

    move-result v2

    if-nez v2, :cond_e

    .line 1871
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    .line 1872
    const-string v2, "GpsLocationProvider"

    const-string v3, "native_start failed in startNavigating()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1877
    :cond_e
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/location/GpsLocationProvider;->updateStatus(II)V

    .line 1878
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/location/GpsLocationProvider;->mFixRequestTime:J

    .line 1879
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1882
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    const v3, 0xea60

    if-lt v2, v3, :cond_4

    .line 1883
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    const-wide/32 v16, 0xea60

    add-long v14, v14, v16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v14, v15, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_6

    .line 1843
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private stopNavigating()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1891
    const-string v0, "GpsLocationProvider"

    const-string v1, "stopNavigating"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1894
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mECMStateUpdate:Z

    if-eqz v0, :cond_0

    .line 1895
    const-string v0, "GpsLocationProvider"

    const-string v1, "mECMStateUpdate is TRUE ==> stop GPS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1896
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_stop()Z

    .line 1900
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    if-eqz v0, :cond_1

    .line 1901
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    .line 1902
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mSingleShot:Z

    .line 1903
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_stop()Z

    .line 1904
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeToFirstFix:I

    .line 1905
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    .line 1906
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationFlags:I

    .line 1909
    const/4 v0, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/server/location/GpsLocationProvider;->updateStatus(II)V

    .line 1911
    :cond_1
    return-void
.end method

.method private subscriptionOrSimChanged(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 732
    const-string v2, "GpsLocationProvider"

    const-string v3, "received SIM related action: "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 735
    .local v1, "phone":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 736
    .local v0, "mccMnc":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 737
    const-string v2, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SIM MCC/MNC is available: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 741
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    iget-boolean v4, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplEsEnabled:Z

    invoke-virtual {v2, v4}, Lcom/android/internal/location/GpsNetInitiatedHandler;->setSuplEsEnabled(Z)V

    .line 743
    monitor-exit v3

    .line 747
    :goto_0
    return-void

    .line 743
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 745
    :cond_0
    const-string v2, "GpsLocationProvider"

    const-string v3, "SIM MCC/MNC is still not available"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private translateToApnIpType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "ipProtocol"    # Ljava/lang/String;
    .param p2, "apn"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2920
    const-string v3, "IP Protocol: %s"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2921
    .local v0, "message":Ljava/lang/String;
    const-string v3, "GpsLocationProvider"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2923
    const-string v3, "IP"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2936
    :goto_0
    return v1

    .line 2926
    :cond_0
    const-string v1, "IPV6"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2927
    const/4 v1, 0x2

    goto :goto_0

    .line 2929
    :cond_1
    const-string v1, "IPV4V6"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2930
    const/4 v1, 0x3

    goto :goto_0

    .line 2935
    :cond_2
    const-string v1, "GpsLocationProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 2936
    goto :goto_0
.end method

.method private updateClientUids(Landroid/os/WorkSource;)V
    .locals 11
    .param p1, "source"    # Landroid/os/WorkSource;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1548
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mClientSource:Landroid/os/WorkSource;

    invoke-virtual {v7, p1}, Landroid/os/WorkSource;->setReturningDiffs(Landroid/os/WorkSource;)[Landroid/os/WorkSource;

    move-result-object v0

    .line 1549
    .local v0, "changes":[Landroid/os/WorkSource;
    if-nez v0, :cond_1

    .line 1609
    :cond_0
    return-void

    .line 1552
    :cond_1
    aget-object v5, v0, v8

    .line 1553
    .local v5, "newWork":Landroid/os/WorkSource;
    aget-object v2, v0, v9

    .line 1556
    .local v2, "goneWork":Landroid/os/WorkSource;
    if-eqz v5, :cond_4

    .line 1557
    const/4 v4, -0x1

    .line 1558
    .local v4, "lastuid":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v5}, Landroid/os/WorkSource;->size()I

    move-result v7

    if-ge v3, v7, :cond_4

    .line 1560
    :try_start_0
    invoke-virtual {v5, v3}, Landroid/os/WorkSource;->get(I)I

    move-result v6

    .line 1561
    .local v6, "uid":I
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v8}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v5, v3}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v8, v9, v6, v10}, Lcom/android/internal/app/IAppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;)I

    .line 1563
    if-eq v6, v4, :cond_3

    .line 1564
    move v4, v6

    .line 1565
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v7, v6}, Lcom/android/internal/app/IBatteryStats;->noteStartGps(I)V

    .line 1568
    sget-boolean v7, Lcom/android/server/location/GpsLocationProvider;->isBIEnabled:Z

    if-eqz v7, :cond_2

    .line 1569
    const/4 v7, 0x1

    invoke-virtual {v5, v3}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8, v6}, Lcom/android/server/location/GpsLocationProvider;->write_BI(ZLjava/lang/String;I)V

    .line 1574
    :cond_2
    const/4 v7, 0x1

    invoke-virtual {v5, v3}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v6, v8}, Lcom/android/server/location/GpsLocationProvider;->write_WLD(ZILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1558
    .end local v6    # "uid":I
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1577
    :catch_0
    move-exception v1

    .line 1578
    .local v1, "e":Landroid/os/RemoteException;
    const-string v7, "GpsLocationProvider"

    const-string v8, "RemoteException"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1584
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "i":I
    .end local v4    # "lastuid":I
    :cond_4
    if-eqz v2, :cond_0

    .line 1585
    const/4 v4, -0x1

    .line 1586
    .restart local v4    # "lastuid":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    invoke-virtual {v2}, Landroid/os/WorkSource;->size()I

    move-result v7

    if-ge v3, v7, :cond_0

    .line 1588
    :try_start_1
    invoke-virtual {v2, v3}, Landroid/os/WorkSource;->get(I)I

    move-result v6

    .line 1589
    .restart local v6    # "uid":I
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v8}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v2, v3}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v8, v9, v6, v10}, Lcom/android/internal/app/IAppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V

    .line 1591
    if-eq v6, v4, :cond_6

    .line 1592
    move v4, v6

    .line 1593
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v7, v6}, Lcom/android/internal/app/IBatteryStats;->noteStopGps(I)V

    .line 1595
    sget-boolean v7, Lcom/android/server/location/GpsLocationProvider;->isBIEnabled:Z

    if-eqz v7, :cond_5

    .line 1596
    const/4 v7, 0x0

    invoke-virtual {v2, v3}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8, v6}, Lcom/android/server/location/GpsLocationProvider;->write_BI(ZLjava/lang/String;I)V

    .line 1601
    :cond_5
    const/4 v7, 0x0

    invoke-virtual {v2, v3}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v6, v8}, Lcom/android/server/location/GpsLocationProvider;->write_WLD(ZILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1586
    .end local v6    # "uid":I
    :cond_6
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1604
    :catch_1
    move-exception v1

    .line 1605
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string v7, "GpsLocationProvider"

    const-string v8, "RemoteException"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method private updateLowPowerMode()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 764
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v0

    .line 765
    .local v0, "disableGps":Z
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "batterySaverGpsMode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 772
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider;->mDisableGps:Z

    if-eq v0, v1, :cond_0

    .line 773
    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mDisableGps:Z

    .line 774
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->updateRequirements()V

    .line 776
    :cond_0
    return-void

    .line 769
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    or-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 765
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private updateRequirements()V
    .locals 12

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 1481
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mWorkSource:Landroid/os/WorkSource;

    if-nez v0, :cond_1

    .line 1544
    :cond_0
    :goto_0
    return-void

    .line 1485
    :cond_1
    const/4 v9, 0x0

    .line 1488
    .local v9, "singleShot":Z
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-object v0, v0, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-object v0, v0, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1492
    const/4 v9, 0x1

    .line 1494
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-object v0, v0, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/location/LocationRequest;

    .line 1495
    .local v8, "lr":Landroid/location/LocationRequest;
    invoke-virtual {v8}, Landroid/location/LocationRequest;->getNumUpdates()I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 1496
    const/4 v9, 0x0

    goto :goto_1

    .line 1501
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "lr":Landroid/location/LocationRequest;
    :cond_3
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRequest "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-boolean v0, v0, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mDisableGps:Z

    if-nez v0, :cond_8

    .line 1504
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->updateClientUids(Landroid/os/WorkSource;)V

    .line 1506
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-wide v0, v0, Lcom/android/internal/location/ProviderRequest;->interval:J

    long-to-int v0, v0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    .line 1509
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    int-to-long v0, v0

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-wide v10, v3, Lcom/android/internal/location/ProviderRequest;->interval:J

    cmp-long v0, v0, v10

    if-eqz v0, :cond_4

    .line 1510
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "interval overflow: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-wide v10, v3, Lcom/android/internal/location/ProviderRequest;->interval:J

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    .line 1515
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    if-eqz v0, :cond_7

    invoke-direct {p0, v2}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1517
    const/16 v4, 0x32

    .line 1518
    .local v4, "accuracy":I
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mQosAccuracy:I

    if-lez v0, :cond_5

    .line 1519
    iget v4, p0, Lcom/android/server/location/GpsLocationProvider;->mQosAccuracy:I

    .line 1523
    :cond_5
    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_6

    :goto_2
    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GpsLocationProvider;->native_set_position_mode(IIIII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1526
    const-string v0, "GpsLocationProvider"

    const-string v1, "set_position_mode failed in setMinTime()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    move v2, v5

    .line 1523
    goto :goto_2

    .line 1528
    .end local v4    # "accuracy":I
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    if-nez v0, :cond_0

    .line 1530
    invoke-direct {p0, v9}, Lcom/android/server/location/GpsLocationProvider;->startNavigating(Z)V

    goto/16 :goto_0

    .line 1533
    :cond_8
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->updateClientUids(Landroid/os/WorkSource;)V

    .line 1535
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->stopNavigating()V

    .line 1536
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1537
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1539
    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.location.GPS_ENABLED_CHANGE"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1540
    .local v7, "intent":Landroid/content/Intent;
    const-string v0, "enabled"

    invoke-virtual {v7, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1541
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v7, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0
.end method

.method private updateStatus(II)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "svCount"    # I

    .prologue
    .line 1455
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSvCount:I

    if-eq p2, v0, :cond_1

    .line 1456
    :cond_0
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    .line 1457
    iput p2, p0, Lcom/android/server/location/GpsLocationProvider;->mSvCount:I

    .line 1458
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    const-string v1, "satellites"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1459
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStatusUpdateTime:J

    .line 1461
    :cond_1
    return-void
.end method

.method private write_BI(ZLjava/lang/String;I)V
    .locals 2
    .param p1, "onoff"    # Z
    .param p2, "packagename"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .prologue
    .line 3581
    invoke-direct {p0, p3}, Lcom/android/server/location/GpsLocationProvider;->isOwner(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3611
    :goto_0
    return-void

    .line 3583
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/GpsLocationProvider$14;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider$14;-><init>(Lcom/android/server/location/GpsLocationProvider;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private write_WLD(ZILjava/lang/String;)V
    .locals 2
    .param p1, "onoff"    # Z
    .param p2, "uid"    # I
    .param p3, "packagename"    # Ljava/lang/String;

    .prologue
    .line 3632
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/GpsLocationProvider$15;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/android/server/location/GpsLocationProvider$15;-><init>(Lcom/android/server/location/GpsLocationProvider;ZLjava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3659
    return-void
.end method

.method private xtraDownloadRequest()V
    .locals 3

    .prologue
    .line 2327
    const-string v0, "GpsLocationProvider"

    const-string v1, "xtraDownloadRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2328
    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 2329
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1407
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1408
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z

    if-nez v0, :cond_0

    monitor-exit v1

    .line 1413
    :goto_0
    return-void

    .line 1409
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z

    .line 1410
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1412
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    goto :goto_0

    .line 1410
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public disableMRTT()V
    .locals 2

    .prologue
    .line 3023
    const-string v0, "GpsLocationProvider"

    const-string v1, " disableMRTT MRTT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3024
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->setMRTT(Z)V

    .line 3025
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2957
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2958
    .local v3, "s":Ljava/lang/StringBuilder;
    const-string v4, "  mFixInterval="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2959
    const-string v4, "  mDisableGps (battery saver mode)="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/location/GpsLocationProvider;->mDisableGps:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2960
    const-string v4, "  mEngineCapabilities=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineCapabilities:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2961
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "SCHED "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2962
    :cond_0
    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "MSB "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2963
    :cond_1
    const/4 v4, 0x4

    invoke-direct {p0, v4}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "MSA "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2964
    :cond_2
    const/16 v4, 0x8

    invoke-direct {p0, v4}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "SINGLE_SHOT "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2965
    :cond_3
    const/16 v4, 0x10

    invoke-direct {p0, v4}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "ON_DEMAND_TIME "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2966
    :cond_4
    const-string v4, ")\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2969
    const-string v4, "gps configuration:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2970
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    invoke-virtual {v4}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v2

    .line 2971
    .local v2, "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 2972
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2973
    .local v1, "name":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2974
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2975
    .local v0, "key":Ljava/lang/String;
    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v7, "null"

    invoke-virtual {v6, v0, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2979
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "name":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_5
    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ro.ril.def.agps.mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2980
    const-string v4, "ro.ril.def.agps.mode"

    const-string v5, "null"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2981
    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "persist.radio.agps.mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2982
    const-string v4, "persist.radio.agps.mode"

    const-string v5, "null"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2984
    const-string v4, "native_internal_state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2985
    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_get_internal_state()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2987
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2988
    return-void
.end method

.method public enable()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1289
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1290
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 1295
    :goto_0
    return-void

    .line 1291
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z

    .line 1292
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1294
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    goto :goto_0

    .line 1292
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public enableMRTT()V
    .locals 2

    .prologue
    .line 3027
    const-string v0, "GpsLocationProvider"

    const-string v1, " enableMRTT MRTT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3028
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->setMRTT(Z)V

    .line 3029
    return-void
.end method

.method public getGpsGeofenceProxy()Landroid/location/IGpsGeofenceHardware;
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsGeofenceBinder:Landroid/location/IGpsGeofenceHardware;

    return-object v0
.end method

.method public getGpsMeasurementsProvider()Lcom/android/server/location/GpsMeasurementsProvider;
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsMeasurementsProvider:Lcom/android/server/location/GpsMeasurementsProvider;

    return-object v0
.end method

.method public getGpsNavigationMessageProvider()Lcom/android/server/location/GpsNavigationMessageProvider;
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsNavigationMessageProvider:Lcom/android/server/location/GpsNavigationMessageProvider;

    return-object v0
.end method

.method public getGpsStatusProvider()Landroid/location/IGpsStatusProvider;
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    return-object v0
.end method

.method public getListenerHelper()Lcom/android/server/location/GpsStatusListenerHelper;
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mListenerHelper:Lcom/android/server/location/GpsStatusListenerHelper;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 981
    const-string v0, "gps"

    return-object v0
.end method

.method public getNetInitiatedListener()Landroid/location/INetInitiatedListener;
    .locals 1

    .prologue
    .line 2524
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    return-object v0
.end method

.method public getProperties()Lcom/android/internal/location/ProviderProperties;
    .locals 1

    .prologue
    .line 986
    sget-object v0, Lcom/android/server/location/GpsLocationProvider;->PROPERTIES:Lcom/android/internal/location/ProviderProperties;

    return-object v0
.end method

.method public getStatus(Landroid/os/Bundle;)I
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1448
    if-eqz p1, :cond_0

    .line 1449
    const-string v0, "satellites"

    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mSvCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1451
    :cond_0
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    return v0
.end method

.method public getStatusUpdateTime()J
    .locals 2

    .prologue
    .line 1465
    iget-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStatusUpdateTime:J

    return-wide v0
.end method

.method public isEnabled()Z
    .locals 2

    .prologue
    .line 1441
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1442
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z

    monitor-exit v1

    return v0

    .line 1443
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reportNiNotification(IIIIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 10
    .param p1, "notificationId"    # I
    .param p2, "niType"    # I
    .param p3, "notifyFlags"    # I
    .param p4, "timeout"    # I
    .param p5, "defaultResponse"    # I
    .param p6, "requestorId"    # Ljava/lang/String;
    .param p7, "text"    # Ljava/lang/String;
    .param p8, "requestorIdEncoding"    # I
    .param p9, "textEncoding"    # I
    .param p10, "extras"    # Ljava/lang/String;

    .prologue
    .line 2541
    const-string v7, "GpsLocationProvider"

    const-string v8, "reportNiNotification: entered"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2542
    const-string v7, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "notificationId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", niType: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", notifyFlags: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", timeout: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", defaultResponse: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2548
    const-string v7, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "requestorId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p6

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", text: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p7

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", requestorIdEncoding: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", textEncoding: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p9

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2554
    iget-boolean v7, p0, Lcom/android/server/location/GpsLocationProvider;->Is_MULTI_RAB_TRAFFIC_support:Z

    if-eqz v7, :cond_0

    .line 2556
    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider;->disableMRTT()V

    .line 2561
    :cond_0
    new-instance v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;

    invoke-direct {v6}, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;-><init>()V

    .line 2563
    .local v6, "notification":Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;
    iput p1, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    .line 2564
    iput p2, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->niType:I

    .line 2565
    and-int/lit8 v7, p3, 0x1

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    :goto_0
    iput-boolean v7, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needNotify:Z

    .line 2566
    and-int/lit8 v7, p3, 0x2

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    :goto_1
    iput-boolean v7, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needVerify:Z

    .line 2567
    and-int/lit8 v7, p3, 0x4

    if-eqz v7, :cond_4

    const/4 v7, 0x1

    :goto_2
    iput-boolean v7, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->privacyOverride:Z

    .line 2568
    iput p4, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->timeout:I

    .line 2569
    iput p5, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->defaultResponse:I

    .line 2570
    move-object/from16 v0, p6

    iput-object v0, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorId:Ljava/lang/String;

    .line 2571
    move-object/from16 v0, p7

    iput-object v0, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->text:Ljava/lang/String;

    .line 2572
    move/from16 v0, p8

    iput v0, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorIdEncoding:I

    .line 2573
    move/from16 v0, p9

    iput v0, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->textEncoding:I

    .line 2577
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2579
    .local v1, "bundle":Landroid/os/Bundle;
    if-nez p10, :cond_1

    const-string p10, ""

    .line 2580
    :cond_1
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 2583
    .local v4, "extraProp":Ljava/util/Properties;
    :try_start_0
    new-instance v7, Ljava/io/StringReader;

    move-object/from16 v0, p10

    invoke-direct {v7, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/util/Properties;->load(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2590
    :goto_3
    invoke-virtual {v4}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2592
    .local v3, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 2565
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v3    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v4    # "extraProp":Ljava/util/Properties;
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 2566
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 2567
    :cond_4
    const/4 v7, 0x0

    goto :goto_2

    .line 2585
    .restart local v1    # "bundle":Landroid/os/Bundle;
    .restart local v4    # "extraProp":Ljava/util/Properties;
    :catch_0
    move-exception v2

    .line 2587
    .local v2, "e":Ljava/io/IOException;
    const-string v7, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "reportNiNotification cannot parse extras data: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p10

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2595
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_5
    iput-object v1, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->extras:Landroid/os/Bundle;

    .line 2597
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-virtual {v7, v6}, Lcom/android/internal/location/GpsNetInitiatedHandler;->handleNiNotification(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V

    .line 2598
    return-void
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 11
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1614
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1615
    .local v2, "identity":J
    const/4 v6, 0x0

    .line 1617
    .local v6, "result":Z
    const-string v8, "delete_aiding_data"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1618
    invoke-direct {p0, p2}, Lcom/android/server/location/GpsLocationProvider;->deleteAidingData(Landroid/os/Bundle;)Z

    move-result v6

    .line 1704
    :cond_0
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1705
    return v6

    .line 1619
    :cond_1
    const-string v8, "force_time_injection"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1620
    const/4 v8, 0x5

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {p0, v8, v9, v10}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1621
    const/4 v6, 0x1

    goto :goto_0

    .line 1622
    :cond_2
    const-string v8, "force_xtra_injection"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1623
    iget-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider;->mSupportsXtra:Z

    if-eqz v8, :cond_0

    .line 1624
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->xtraDownloadRequest()V

    .line 1625
    const/4 v6, 0x1

    goto :goto_0

    .line 1630
    :cond_3
    const-string v8, "set_privacy_lock"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1631
    move-object v4, p2

    .line 1632
    .local v4, "local_extra":Landroid/os/Bundle;
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/location/GpsLocationProvider$10;

    invoke-direct {v9, p0, v4}, Lcom/android/server/location/GpsLocationProvider$10;-><init>(Lcom/android/server/location/GpsLocationProvider;Landroid/os/Bundle;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1643
    const/4 v6, 0x1

    .line 1646
    goto :goto_0

    .end local v4    # "local_extra":Landroid/os/Bundle;
    :cond_4
    const-string v8, "disable_xtra_download"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1647
    const-string v8, "GpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sendExtraCommand: disable_xtra_download mDownloadXtraDataPending: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider;->mDisableXtraDownload:Z

    .line 1649
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider;->mNativeNtpRequest:Z

    .line 1650
    const/4 v6, 0x1

    goto :goto_0

    .line 1651
    :cond_5
    const-string v8, "enable_xtra_download"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1652
    const-string v8, "GpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sendExtraCommand: enable_xtra_download mDownloadXtraDataPending: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider;->mDisableXtraDownload:Z

    .line 1654
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider;->mNativeNtpRequest:Z

    .line 1655
    iget v8, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:I

    if-nez v8, :cond_6

    .line 1656
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x6

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 1657
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x6

    invoke-static {v9, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1659
    :cond_6
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1662
    :cond_7
    const-string v8, "enable_agps"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1663
    const-string v8, "GpsLocationProvider"

    const-string v9, "ExtraCommand: enable_agps"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider;->mDisableAgps:Z

    .line 1665
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1666
    :cond_8
    const-string v8, "disable_agps"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1667
    const-string v8, "GpsLocationProvider"

    const-string v9, "ExtraCommand: disable_agps"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider;->mDisableAgps:Z

    .line 1669
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1672
    :cond_9
    const-string v8, "set_gps_conf"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 1673
    const-string v8, "GpsLocationProvider"

    const-string v9, "ExtraCommand: set_gps_conf"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1674
    const-string v8, "fileName"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1675
    .local v0, "confFileName":Ljava/lang/String;
    if-eqz v0, :cond_b

    .line 1676
    new-instance v7, Ljava/io/File;

    const-string v8, "/data/misc/gps_single_conf"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1678
    .local v7, "singleFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_a

    .line 1680
    :try_start_0
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    .line 1682
    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v8, Ljava/io/FileWriter;

    const-string v9, "/data/misc/gps_single_conf"

    invoke-direct {v8, v9}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 1683
    .local v5, "out":Ljava/io/BufferedWriter;
    invoke-virtual {v5, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1684
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V

    .line 1686
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_reload_config()V

    .line 1687
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/etc/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/server/location/GpsLocationProvider;->reloadConf(Ljava/lang/String;)Z

    .line 1688
    const/4 v6, 0x1

    .line 1689
    const-string v8, "GpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "conf file set: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1690
    .end local v5    # "out":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v1

    .line 1691
    .local v1, "e":Ljava/io/IOException;
    const-string v8, "GpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "fail to init single gps.conf file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1694
    .end local v1    # "e":Ljava/io/IOException;
    :cond_a
    const-string v8, "GpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "gps.conf file has init before"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1697
    .end local v7    # "singleFile":Ljava/io/File;
    :cond_b
    const-string v8, "GpsLocationProvider"

    const-string v9, "empty config file name"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1701
    .end local v0    # "confFileName":Ljava/lang/String;
    :cond_c
    const-string v8, "GpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sendExtraCommand: unknown command "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method sendMessageDelayed(IJ)V
    .locals 6
    .param p1, "what"    # I
    .param p2, "delayMillis"    # J

    .prologue
    .line 3050
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    .line 3051
    const-wide/16 p2, 0x0

    .line 3053
    :cond_0
    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    .line 3054
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, p2

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mXtraTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 3056
    :cond_1
    return-void
.end method

.method public setMRTT(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 3031
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v3, "htctelephony"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/service/HtcTelephonyManager;

    .line 3032
    .local v1, "ihtcPhoneInterface":Lcom/htc/service/HtcTelephonyManager;
    if-eqz v1, :cond_0

    .line 3034
    if-eqz p1, :cond_1

    .line 3035
    const/4 v2, 0x3

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1, v2, v3}, Lcom/htc/service/HtcTelephonyManager;->requestSetMultiRABTrafficThrottling(II)V

    .line 3044
    :cond_0
    :goto_0
    return-void

    .line 3037
    :cond_1
    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/htc/service/HtcTelephonyManager;->requestSetMultiRABTrafficThrottling(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3039
    :catch_0
    move-exception v0

    .line 3041
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .locals 3
    .param p1, "request"    # Lcom/android/internal/location/ProviderRequest;
    .param p2, "source"    # Landroid/os/WorkSource;

    .prologue
    .line 1470
    const/4 v0, 0x3

    const/4 v1, 0x0

    new-instance v2, Lcom/android/server/location/GpsLocationProvider$GpsRequest;

    invoke-direct {v2, p1, p2}, Lcom/android/server/location/GpsLocationProvider$GpsRequest;-><init>(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1471
    return-void
.end method

.method public updateNetworkState(ILandroid/net/NetworkInfo;)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "info"    # Landroid/net/NetworkInfo;

    .prologue
    .line 990
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 991
    return-void
.end method
