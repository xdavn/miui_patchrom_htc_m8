.class public Lcom/android/server/net/NetworkPolicyManagerService;
.super Landroid/net/INetworkPolicyManager$Stub;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkPolicyManagerService$HtcNetPolicyManSrvHistory;,
        Lcom/android/server/net/NetworkPolicyManagerService$AppIdleStateChangeListener;,
        Lcom/android/server/net/NetworkPolicyManagerService$EPSSettingObserver;
    }
.end annotation


# static fields
.field private static final ACTION_ALLOW_BACKGROUND:Ljava/lang/String; = "com.android.server.net.action.ALLOW_BACKGROUND"

.field private static final ACTION_SNOOZE_WARNING:Ljava/lang/String; = "com.android.server.net.action.SNOOZE_WARNING"

.field private static final ATTR_APP_ID:Ljava/lang/String; = "appId"

.field private static final ATTR_CYCLE_DAY:Ljava/lang/String; = "cycleDay"

.field private static final ATTR_CYCLE_TIMEZONE:Ljava/lang/String; = "cycleTimezone"

.field private static final ATTR_INFERRED:Ljava/lang/String; = "inferred"

.field private static final ATTR_LAST_LIMIT_SNOOZE:Ljava/lang/String; = "lastLimitSnooze"

.field private static final ATTR_LAST_SNOOZE:Ljava/lang/String; = "lastSnooze"

.field private static final ATTR_LAST_WARNING_SNOOZE:Ljava/lang/String; = "lastWarningSnooze"

.field private static final ATTR_LIMIT_BYTES:Ljava/lang/String; = "limitBytes"

.field private static final ATTR_METERED:Ljava/lang/String; = "metered"

.field private static final ATTR_NETWORK_ID:Ljava/lang/String; = "networkId"

.field private static final ATTR_NETWORK_TEMPLATE:Ljava/lang/String; = "networkTemplate"

.field private static final ATTR_POLICY:Ljava/lang/String; = "policy"

.field private static final ATTR_RESTRICT_BACKGROUND:Ljava/lang/String; = "restrictBackground"

.field private static final ATTR_SUBSCRIBER_ID:Ljava/lang/String; = "subscriberId"

.field private static final ATTR_UID:Ljava/lang/String; = "uid"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final ATTR_WARNING_BYTES:Ljava/lang/String; = "warningBytes"

.field private static final HTC_HISTORY_ENTRIES:I = 0x40

.field private static final HTC_HISTORY_LOG:Z = true

.field private static final HTC_HISTORY__EVENT_DEVICE_IDLE_CHANGED:I = 0x6

.field private static final HTC_HISTORY__EVENT_EPS_MODE:I = 0x1

.field private static final HTC_HISTORY__EVENT_FORGROUND_UID_CHANGED:I = 0x5

.field private static final HTC_HISTORY__EVENT_HTC_SET_RESTRICT_BACKGROUND:I = 0x3

.field private static final HTC_HISTORY__EVENT_METERED_INTERFACE_CHANGED:I = 0x4

.field private static final HTC_HISTORY__EVENT_SET_RESTRICT_BACKGROUND:I = 0x2

.field private static final HTC_UIDSTATE_ENTRIES:I = 0x80

.field private static final INVALID_SUBSCRIBER_ID:Ljava/lang/String; = "FFFFFFFFFFFFFFF"

.field private static final LOGD:Z = true

.field private static final LOGV:Z = true

.field private static final MIN_QUOTA_BYTE:I = 0x1

.field private static final MSG_ADVISE_PERSIST_THRESHOLD:I = 0x7

.field private static final MSG_LIMIT_REACHED:I = 0x5

.field private static final MSG_METERED_IFACES_CHANGED:I = 0x2

.field private static final MSG_RESTRICT_BACKGROUND_CHANGED:I = 0x6

.field private static final MSG_RULES_CHANGED:I = 0x1

.field private static final MSG_SCREEN_ON_CHANGED:I = 0x8

.field private static final PCO_STATE_REDIRECTION:I = 0x3

.field private static final PCO_STATE_RESTRICT_ACCESS:I = 0x2

.field private static final PCO_STATE_UNKNOWN:I = -0x1

.field private static final RESTRICT_TYPE_PCO:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NetworkPolicy"

.field private static final TAG_ALLOW_BACKGROUND:Ljava/lang/String; = "NetworkPolicy:allowBackground"

.field private static final TAG_APP_POLICY:Ljava/lang/String; = "app-policy"

.field private static final TAG_NETWORK_POLICY:Ljava/lang/String; = "network-policy"

.field private static final TAG_POLICY_LIST:Ljava/lang/String; = "policy-list"

.field private static final TAG_UID_POLICY:Ljava/lang/String; = "uid-policy"

.field private static final TIME_CACHE_MAX_AGE:J = 0x5265c00L

.field public static final TYPE_LIMIT:I = 0x2

.field public static final TYPE_LIMIT_SNOOZED:I = 0x3

.field public static final TYPE_WARNING:I = 0x1

.field private static final VERSION_ADDED_INFERRED:I = 0x7

.field private static final VERSION_ADDED_METERED:I = 0x4

.field private static final VERSION_ADDED_NETWORK_ID:I = 0x9

.field private static final VERSION_ADDED_RESTRICT_BACKGROUND:I = 0x3

.field private static final VERSION_ADDED_SNOOZE:I = 0x2

.field private static final VERSION_ADDED_TIMEZONE:I = 0x6

.field private static final VERSION_INIT:I = 0x1

.field private static final VERSION_LATEST:I = 0xa

.field private static final VERSION_SPLIT_SNOOZE:I = 0x5

.field private static final VERSION_SWITCH_APP_ID:I = 0x8

.field private static final VERSION_SWITCH_UID:I = 0xa

.field private static mSenseVersion:Ljava/lang/String;


# instance fields
.field final KEY_ALERT_ENABLE:Ljava/lang/String;

.field final KEY_ALERT_USAGE:Ljava/lang/String;

.field final KEY_LIMIT_ENABLE:Ljava/lang/String;

.field final KEY_LIMIT_USAGE:Ljava/lang/String;

.field private WIFI_RESTRICT_ENABLED:Ljava/lang/String;

.field private final mActiveNotifs:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivityManager:Landroid/app/IActivityManager;

.field private final mAlertObserver:Landroid/net/INetworkManagementEventObserver;

.field private final mAllowReceiver:Landroid/content/BroadcastReceiver;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/net/IHtcPolicyCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mConnManager:Landroid/net/IConnectivityManager;

.field private mConnReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mCustomizeMobileCharge:I

.field private mDeviceIdleController:Landroid/os/IDeviceIdleController;

.field volatile mDeviceIdleMode:Z

.field private final mEPSSettingObserver:Lcom/android/server/net/NetworkPolicyManagerService$EPSSettingObserver;

.field private mEPSenable:Z

.field final mFirewallChainStates:Landroid/util/SparseBooleanArray;

.field final mHandler:Landroid/os/Handler;

.field private mHandlerCallback:Landroid/os/Handler$Callback;

.field private final mHtcCustomizationManager:Lcom/htc/customization/HtcCustomizationManager;

.field private mHtcRestrictBackground:Z

.field private mLimitedQuotas:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/net/INetworkPolicyListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLogNetPolicyManSrv:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/net/NetworkPolicyManagerService$HtcNetPolicyManSrvHistory;",
            ">;"
        }
    .end annotation
.end field

.field private mLogNetPolicyUidState:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/net/NetworkPolicyManagerService$HtcNetPolicyManSrvHistory;",
            ">;"
        }
    .end annotation
.end field

.field private mMeteredIfaces:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkManager:Landroid/os/INetworkManagementService;

.field final mNetworkPolicy:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/net/NetworkTemplate;",
            "Landroid/net/NetworkPolicy;",
            ">;"
        }
    .end annotation
.end field

.field final mNetworkRules:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/net/NetworkPolicy;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkStats:Landroid/net/INetworkStatsService;

.field private mNotifManager:Landroid/app/INotificationManager;

.field private final mOverLimitNotified:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Landroid/net/NetworkTemplate;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private mPcoValue:I

.field private final mPolicyFile:Landroid/util/AtomicFile;

.field private final mPowerManager:Landroid/os/IPowerManager;

.field private mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private final mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

.field private final mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

.field private final mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

.field private final mPowerSaveWhitelistReceiver:Landroid/content/BroadcastReceiver;

.field private mPowerSaverRestrictBackground:Z

.field protected mResolver:Landroid/content/ContentResolver;

.field volatile mRestrictBackground:Z

.field volatile mRestrictPower:Z

.field private mRestrictRequests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final mRulesLock:Ljava/lang/Object;

.field volatile mScreenOn:Z

.field private final mScreenReceiver:Landroid/content/BroadcastReceiver;

.field private final mSnoozeWarningReceiver:Landroid/content/BroadcastReceiver;

.field private final mStatsReceiver:Landroid/content/BroadcastReceiver;

.field private final mSuppressDefaultPolicy:Z

.field volatile mSystemReady:Z

.field private final mTempPowerSaveChangedCallback:Ljava/lang/Runnable;

.field private final mTime:Landroid/util/TrustedTime;

.field private final mUidObserver:Landroid/app/IUidObserver;

.field final mUidPolicy:Landroid/util/SparseIntArray;

.field private final mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

.field final mUidRules:Landroid/util/SparseIntArray;

.field final mUidState:Landroid/util/SparseIntArray;

.field private mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mUserReceiver:Landroid/content/BroadcastReceiver;

.field private mUsgaeWhiteList:[Ljava/lang/String;

.field private mWhiteUid:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mWiFirestriction:Z

.field private final mWifiConfigReceiver:Landroid/content/BroadcastReceiver;

.field private final mWifiStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 336
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/net/NetworkPolicyManagerService;->mSenseVersion:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityManager"    # Landroid/app/IActivityManager;
    .param p3, "powerManager"    # Landroid/os/IPowerManager;
    .param p4, "networkStats"    # Landroid/net/INetworkStatsService;
    .param p5, "networkManagement"    # Landroid/os/INetworkManagementService;

    .prologue
    .line 408
    invoke-static {p1}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    move-result-object v6

    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->getSystemDir()Ljava/io/File;

    move-result-object v7

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;Landroid/util/TrustedTime;Ljava/io/File;Z)V

    .line 410
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;Landroid/util/TrustedTime;Ljava/io/File;Z)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityManager"    # Landroid/app/IActivityManager;
    .param p3, "powerManager"    # Landroid/os/IPowerManager;
    .param p4, "networkStats"    # Landroid/net/INetworkStatsService;
    .param p5, "networkManagement"    # Landroid/os/INetworkManagementService;
    .param p6, "time"    # Landroid/util/TrustedTime;
    .param p7, "systemDir"    # Ljava/io/File;
    .param p8, "suppressDefaultPolicy"    # Z

    .prologue
    .line 419
    invoke-direct {p0}, Landroid/net/INetworkPolicyManager$Stub;-><init>()V

    .line 313
    new-instance v11, Ljava/lang/Object;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    iput-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    .line 318
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    .line 325
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mWhiteUid:Ljava/util/ArrayList;

    .line 328
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mWiFirestriction:Z

    .line 329
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mEPSenable:Z

    .line 330
    const-string v11, "net.wifi.restrit"

    iput-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->WIFI_RESTRICT_ENABLED:Ljava/lang/String;

    .line 333
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mCustomizeMobileCharge:I

    .line 342
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaverRestrictBackground:Z

    .line 345
    new-instance v11, Landroid/util/ArrayMap;

    invoke-direct {v11}, Landroid/util/ArrayMap;-><init>()V

    iput-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    .line 347
    new-instance v11, Landroid/util/ArrayMap;

    invoke-direct {v11}, Landroid/util/ArrayMap;-><init>()V

    iput-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Landroid/util/ArrayMap;

    .line 353
    new-instance v11, Landroid/util/SparseIntArray;

    invoke-direct {v11}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    .line 355
    new-instance v11, Landroid/util/SparseIntArray;

    invoke-direct {v11}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    .line 357
    new-instance v11, Landroid/util/SparseBooleanArray;

    invoke-direct {v11}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    .line 364
    new-instance v11, Landroid/util/SparseBooleanArray;

    invoke-direct {v11}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    .line 371
    new-instance v11, Landroid/util/SparseBooleanArray;

    invoke-direct {v11}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    .line 373
    new-instance v11, Landroid/util/SparseBooleanArray;

    invoke-direct {v11}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    .line 376
    new-instance v11, Landroid/util/ArraySet;

    invoke-direct {v11}, Landroid/util/ArraySet;-><init>()V

    iput-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    .line 378
    new-instance v11, Landroid/util/ArraySet;

    invoke-direct {v11}, Landroid/util/ArraySet;-><init>()V

    iput-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    .line 381
    new-instance v11, Landroid/util/ArraySet;

    invoke-direct {v11}, Landroid/util/ArraySet;-><init>()V

    iput-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    .line 384
    new-instance v11, Landroid/util/SparseIntArray;

    invoke-direct {v11}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    .line 386
    new-instance v11, Landroid/os/RemoteCallbackList;

    invoke-direct {v11}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    .line 396
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    iput-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLimitedQuotas:Ljava/util/HashMap;

    .line 655
    new-instance v11, Lcom/android/server/net/NetworkPolicyManagerService$2;

    invoke-direct {v11, p0}, Lcom/android/server/net/NetworkPolicyManagerService$2;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidObserver:Landroid/app/IUidObserver;

    .line 669
    new-instance v11, Lcom/android/server/net/NetworkPolicyManagerService$3;

    invoke-direct {v11, p0}, Lcom/android/server/net/NetworkPolicyManagerService$3;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistReceiver:Landroid/content/BroadcastReceiver;

    .line 680
    new-instance v11, Lcom/android/server/net/NetworkPolicyManagerService$4;

    invoke-direct {v11, p0}, Lcom/android/server/net/NetworkPolicyManagerService$4;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTempPowerSaveChangedCallback:Ljava/lang/Runnable;

    .line 691
    new-instance v11, Lcom/android/server/net/NetworkPolicyManagerService$5;

    invoke-direct {v11, p0}, Lcom/android/server/net/NetworkPolicyManagerService$5;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    .line 700
    new-instance v11, Lcom/android/server/net/NetworkPolicyManagerService$6;

    invoke-direct {v11, p0}, Lcom/android/server/net/NetworkPolicyManagerService$6;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 720
    new-instance v11, Lcom/android/server/net/NetworkPolicyManagerService$7;

    invoke-direct {v11, p0}, Lcom/android/server/net/NetworkPolicyManagerService$7;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

    .line 738
    new-instance v11, Lcom/android/server/net/NetworkPolicyManagerService$8;

    invoke-direct {v11, p0}, Lcom/android/server/net/NetworkPolicyManagerService$8;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    .line 767
    new-instance v11, Lcom/android/server/net/NetworkPolicyManagerService$9;

    invoke-direct {v11, p0}, Lcom/android/server/net/NetworkPolicyManagerService$9;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatsReceiver:Landroid/content/BroadcastReceiver;

    .line 785
    new-instance v11, Lcom/android/server/net/NetworkPolicyManagerService$10;

    invoke-direct {v11, p0}, Lcom/android/server/net/NetworkPolicyManagerService$10;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAllowReceiver:Landroid/content/BroadcastReceiver;

    .line 799
    new-instance v11, Lcom/android/server/net/NetworkPolicyManagerService$11;

    invoke-direct {v11, p0}, Lcom/android/server/net/NetworkPolicyManagerService$11;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSnoozeWarningReceiver:Landroid/content/BroadcastReceiver;

    .line 923
    new-instance v11, Lcom/android/server/net/NetworkPolicyManagerService$12;

    invoke-direct {v11, p0}, Lcom/android/server/net/NetworkPolicyManagerService$12;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiConfigReceiver:Landroid/content/BroadcastReceiver;

    .line 950
    new-instance v11, Lcom/android/server/net/NetworkPolicyManagerService$13;

    invoke-direct {v11, p0}, Lcom/android/server/net/NetworkPolicyManagerService$13;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    .line 1009
    new-instance v11, Lcom/android/server/net/NetworkPolicyManagerService$14;

    invoke-direct {v11, p0}, Lcom/android/server/net/NetworkPolicyManagerService$14;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    .line 1482
    new-instance v11, Lcom/android/server/net/NetworkPolicyManagerService$15;

    invoke-direct {v11, p0}, Lcom/android/server/net/NetworkPolicyManagerService$15;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    .line 1833
    const-string v11, "limitEnable"

    iput-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->KEY_LIMIT_ENABLE:Ljava/lang/String;

    .line 1834
    const-string v11, "limitUsage"

    iput-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->KEY_LIMIT_USAGE:Ljava/lang/String;

    .line 1835
    const-string v11, "alertEnable"

    iput-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->KEY_ALERT_ENABLE:Ljava/lang/String;

    .line 1836
    const-string v11, "alertUsage"

    iput-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->KEY_ALERT_USAGE:Ljava/lang/String;

    .line 3153
    new-instance v11, Lcom/android/server/net/NetworkPolicyManagerService$16;

    invoke-direct {v11, p0}, Lcom/android/server/net/NetworkPolicyManagerService$16;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandlerCallback:Landroid/os/Handler$Callback;

    .line 3428
    new-instance v11, Landroid/os/RemoteCallbackList;

    invoke-direct {v11}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 3488
    const/4 v11, -0x1

    iput v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPcoValue:I

    .line 3491
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    iput-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictRequests:Ljava/util/HashMap;

    .line 3492
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHtcRestrictBackground:Z

    .line 3549
    new-instance v11, Ljava/util/LinkedList;

    invoke-direct {v11}, Ljava/util/LinkedList;-><init>()V

    iput-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogNetPolicyManSrv:Ljava/util/LinkedList;

    .line 3551
    new-instance v11, Ljava/util/LinkedList;

    invoke-direct {v11}, Ljava/util/LinkedList;-><init>()V

    iput-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogNetPolicyUidState:Ljava/util/LinkedList;

    .line 420
    const-string v11, "missing context"

    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/Context;

    iput-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 421
    const-string v11, "missing activityManager"

    move-object/from16 v0, p2

    invoke-static {v0, v11}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/IActivityManager;

    iput-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 422
    const-string v11, "missing powerManager"

    move-object/from16 v0, p3

    invoke-static {v0, v11}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/IPowerManager;

    iput-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManager:Landroid/os/IPowerManager;

    .line 423
    const-string v11, "missing networkStats"

    move-object/from16 v0, p4

    invoke-static {v0, v11}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/INetworkStatsService;

    iput-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;

    .line 424
    const-string v11, "missing networkManagement"

    move-object/from16 v0, p5

    invoke-static {v0, v11}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/INetworkManagementService;

    iput-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    .line 425
    const-string v11, "deviceidle"

    invoke-static {v11}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v11

    iput-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    .line 427
    const-string v11, "missing TrustedTime"

    move-object/from16 v0, p6

    invoke-static {v0, v11}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/TrustedTime;

    iput-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTime:Landroid/util/TrustedTime;

    .line 428
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v12, "user"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/UserManager;

    iput-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 430
    new-instance v10, Landroid/os/HandlerThread;

    const-string v11, "NetworkPolicy"

    invoke-direct {v10, v11}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 431
    .local v10, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v10}, Landroid/os/HandlerThread;->start()V

    .line 432
    new-instance v11, Landroid/os/Handler;

    invoke-virtual {v10}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v11, v12, v13}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 434
    move/from16 v0, p8

    iput-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSuppressDefaultPolicy:Z

    .line 435
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v11

    iput-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHtcCustomizationManager:Lcom/htc/customization/HtcCustomizationManager;

    .line 436
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHtcCustomizationManager:Lcom/htc/customization/HtcCustomizationManager;

    const-string v12, "Android_Networking"

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v9

    .line 439
    .local v9, "reader":Lcom/htc/customization/HtcCustomizationReader;
    const-string v11, "sense_version"

    const/4 v12, 0x0

    invoke-interface {v9, v11, v12}, Lcom/htc/customization/HtcCustomizationReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lcom/android/server/net/NetworkPolicyManagerService;->mSenseVersion:Ljava/lang/String;

    .line 440
    const-string v11, "NetworkPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "NetworkPolicyManagerService: mSenseVersion= "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/android/server/net/NetworkPolicyManagerService;->mSenseVersion:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const-string v11, "usageWhiteListConifg"

    const-string v12, ""

    invoke-interface {v9, v11, v12}, Lcom/htc/customization/HtcCustomizationReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 443
    .local v8, "mWhiteListConifg":Ljava/lang/String;
    const-string v11, ";"

    invoke-virtual {v8, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 444
    .local v7, "mWhiteList":[Ljava/lang/String;
    const-string v11, "usageCustomerWhiteList"

    const-string v12, ""

    invoke-interface {v9, v11, v12}, Lcom/htc/customization/HtcCustomizationReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 445
    .local v5, "mCustomerWhite":Ljava/lang/String;
    const-string v11, ";"

    invoke-virtual {v5, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 446
    .local v6, "mCustomerWhiteList":[Ljava/lang/String;
    const-string v11, "NetworkPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "NetworkPolicyManagerService: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    array-length v13, v7

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    array-length v13, v6

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    array-length v11, v7

    array-length v12, v6

    add-int/2addr v11, v12

    new-array v11, v11, [Ljava/lang/String;

    iput-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUsgaeWhiteList:[Ljava/lang/String;

    .line 449
    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUsgaeWhiteList:[Ljava/lang/String;

    const/4 v13, 0x0

    array-length v14, v7

    invoke-static {v7, v11, v12, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 450
    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUsgaeWhiteList:[Ljava/lang/String;

    array-length v13, v7

    array-length v14, v6

    invoke-static {v6, v11, v12, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 451
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUsgaeWhiteList:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v1, v2

    .line 452
    .local v4, "list":Ljava/lang/String;
    const-string v11, "NetworkPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "NetworkPolicyManagerService: mUsgaeWhiteList="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 456
    .end local v4    # "list":Ljava/lang/String;
    :cond_0
    const-string v11, "CustomizeMobileCharge"

    const/4 v12, 0x0

    invoke-interface {v9, v11, v12}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v11

    iput v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mCustomizeMobileCharge:I

    .line 457
    const-string v11, "NetworkPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "NetworkPolicyManagerService: mCustomizeMobileCharge="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mCustomizeMobileCharge:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const-string v11, "power_saver_restrict_background"

    const/4 v12, 0x0

    invoke-interface {v9, v11, v12}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaverRestrictBackground:Z

    .line 461
    const-string v11, "NetworkPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "NetworkPolicyManagerService: mPowerSaverRestrictBackground="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaverRestrictBackground:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    new-instance v11, Lcom/android/server/net/NetworkPolicyManagerService$EPSSettingObserver;

    iget-object v12, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    iget-object v13, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v11, p0, v12, v13}, Lcom/android/server/net/NetworkPolicyManagerService$EPSSettingObserver;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mEPSSettingObserver:Lcom/android/server/net/NetworkPolicyManagerService$EPSSettingObserver;

    .line 464
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mEPSSettingObserver:Lcom/android/server/net/NetworkPolicyManagerService$EPSSettingObserver;

    invoke-virtual {v11}, Lcom/android/server/net/NetworkPolicyManagerService$EPSSettingObserver;->register()V

    .line 466
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "htc_extreme_power_saver_state"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1

    const/4 v11, 0x1

    :goto_1
    iput-boolean v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mEPSenable:Z

    .line 469
    iget-object v12, p0, Lcom/android/server/net/NetworkPolicyManagerService;->WIFI_RESTRICT_ENABLED:Ljava/lang/String;

    iget-boolean v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mEPSenable:Z

    if-eqz v11, :cond_2

    const-string v11, "true"

    :goto_2
    invoke-static {v12, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    new-instance v11, Landroid/util/AtomicFile;

    new-instance v12, Ljava/io/File;

    const-string v13, "netpolicy.xml"

    move-object/from16 v0, p7

    invoke-direct {v12, v0, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v11, v12}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    .line 474
    const-class v11, Landroid/app/AppOpsManager;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/AppOpsManager;

    iput-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 475
    return-void

    .line 466
    :cond_1
    const/4 v11, 0x0

    goto :goto_1

    .line 469
    :cond_2
    const-string v11, "false"

    goto :goto_2
.end method

.method static synthetic access$100(Lcom/android/server/net/NetworkPolicyManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mEPSenable:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 233
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateScreenOn()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/server/net/NetworkPolicyManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 233
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mEPSenable:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->WIFI_RESTRICT_ENABLED:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/net/NetworkPolicyManagerService;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 233
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->addToHtcNetPolicyManSrvHistory(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 233
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->ensureActiveMobilePolicyLocked()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 233
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesLocked()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/ArraySet;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkStatsService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;

    return-object v0
.end method

.method private addToHtcNetPolicyManSrvHistory(ILjava/lang/String;)V
    .locals 4
    .param p1, "event"    # I
    .param p2, "args"    # Ljava/lang/String;

    .prologue
    .line 3553
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogNetPolicyManSrv:Ljava/util/LinkedList;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogNetPolicyUidState:Ljava/util/LinkedList;

    if-nez v1, :cond_0

    .line 3579
    :goto_0
    return-void

    .line 3558
    :cond_0
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$HtcNetPolicyManSrvHistory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/net/NetworkPolicyManagerService$HtcNetPolicyManSrvHistory;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/net/NetworkPolicyManagerService$1;)V

    .line 3559
    .local v0, "hist":Lcom/android/server/net/NetworkPolicyManagerService$HtcNetPolicyManSrvHistory;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/net/NetworkPolicyManagerService$HtcNetPolicyManSrvHistory;->timeStamp:J

    .line 3560
    iput p1, v0, Lcom/android/server/net/NetworkPolicyManagerService$HtcNetPolicyManSrvHistory;->event:I

    .line 3561
    iput-object p2, v0, Lcom/android/server/net/NetworkPolicyManagerService$HtcNetPolicyManSrvHistory;->args:Ljava/lang/String;

    .line 3563
    const/4 v1, 0x5

    if-eq p1, v1, :cond_2

    .line 3564
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogNetPolicyManSrv:Ljava/util/LinkedList;

    monitor-enter v2

    .line 3565
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogNetPolicyManSrv:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 3566
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogNetPolicyManSrv:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/16 v3, 0x40

    if-le v1, v3, :cond_1

    .line 3567
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogNetPolicyManSrv:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 3569
    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3571
    :cond_2
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogNetPolicyUidState:Ljava/util/LinkedList;

    monitor-enter v2

    .line 3572
    :try_start_1
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogNetPolicyUidState:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 3573
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogNetPolicyUidState:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/16 v3, 0x80

    if-le v1, v3, :cond_3

    .line 3574
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogNetPolicyUidState:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 3576
    :cond_3
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method private static buildAllowBackgroundDataIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 3381
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.net.action.ALLOW_BACKGROUND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static buildNetworkOverLimitIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .locals 4
    .param p0, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 3391
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3392
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.net.NetworkOverLimitActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3394
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3395
    const-string v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3396
    return-object v0
.end method

.method private buildNotificationTag(Landroid/net/NetworkPolicy;I)Ljava/lang/String;
    .locals 2
    .param p1, "policy"    # Landroid/net/NetworkPolicy;
    .param p2, "type"    # I

    .prologue
    .line 1193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkPolicy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v1}, Landroid/net/NetworkTemplate;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static buildSnoozeWarningIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .locals 2
    .param p0, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 3385
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.net.action.SNOOZE_WARNING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3386
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3387
    return-object v0
.end method

.method private static buildViewDataUsageIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .locals 4
    .param p0, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 3400
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3401
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSenseVersion:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3403
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.htc.usage"

    const-string v3, "com.htc.usage.DataUsageSummaryActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3410
    :goto_0
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3411
    const-string v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3412
    return-object v0

    .line 3407
    :cond_0
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$DataUsageSummaryActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private buildWiFiRestrict(Z)V
    .locals 26
    .param p1, "enable"    # Z

    .prologue
    .line 823
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v6, "NetworkPolicy"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    const-string v4, "NetworkPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "buildWiFiRestrict: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mWiFirestriction:Z

    .line 826
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/net/NetworkPolicyManagerService;->WIFI_RESTRICT_ENABLED:Ljava/lang/String;

    if-eqz p1, :cond_2

    const-string v4, "true"

    :goto_0
    invoke-static {v5, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    const-string v4, "wifi"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v24

    .line 829
    .local v24, "wifib":Landroid/os/IBinder;
    const/16 v20, 0x0

    .line 830
    .local v20, "info":Landroid/net/wifi/WifiInfo;
    const/4 v3, 0x0

    .line 835
    .local v3, "template":Landroid/net/NetworkTemplate;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/IConnectivityManager;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v23

    .line 836
    .local v23, "netInfo":Landroid/net/NetworkInfo;
    invoke-virtual/range {v23 .. v23}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_5

    .line 838
    const-string v4, "NetworkPolicy"

    const-string v5, "buildWiFiRestrict: Not connected."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 842
    :try_start_1
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v19

    .line 843
    .local v19, "ifaceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mLimitedQuotas:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 844
    .local v21, "key":Ljava/lang/String;
    if-nez p1, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mLimitedQuotas:Ljava/util/HashMap;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v6, 0x4

    if-ne v4, v6, :cond_0

    .line 845
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 853
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v19    # "ifaceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v21    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 873
    .end local v23    # "netInfo":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v16

    .line 874
    .local v16, "e":Landroid/os/RemoteException;
    const-string v4, "NetworkPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "buildWiFiRestrict exp="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    .end local v16    # "e":Landroid/os/RemoteException;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 881
    if-eqz p1, :cond_8

    .line 882
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkPolicy;

    .line 883
    .local v2, "policy":Landroid/net/NetworkPolicy;
    if-nez v2, :cond_7

    if-eqz v3, :cond_7

    .line 886
    new-instance v2, Landroid/net/NetworkPolicy;

    .end local v2    # "policy":Landroid/net/NetworkPolicy;
    const/4 v4, -0x1

    const-string v5, "UTC"

    const-wide/16 v6, -0x1

    const-wide/16 v8, -0x1

    const-wide/16 v10, -0x1

    const-wide/16 v12, -0x1

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-direct/range {v2 .. v15}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJJJZZ)V

    .line 890
    .restart local v2    # "policy":Landroid/net/NetworkPolicy;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->addNetworkPolicyLocked(Landroid/net/NetworkPolicy;)V

    .line 913
    .end local v2    # "policy":Landroid/net/NetworkPolicy;
    :cond_1
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    .line 915
    monitor-exit v25
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 916
    :goto_4
    return-void

    .line 826
    .end local v3    # "template":Landroid/net/NetworkTemplate;
    .end local v20    # "info":Landroid/net/wifi/WifiInfo;
    .end local v24    # "wifib":Landroid/os/IBinder;
    :cond_2
    const-string v4, "false"

    goto/16 :goto_0

    .line 849
    .restart local v3    # "template":Landroid/net/NetworkTemplate;
    .restart local v17    # "i$":Ljava/util/Iterator;
    .restart local v19    # "ifaceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v20    # "info":Landroid/net/wifi/WifiInfo;
    .restart local v23    # "netInfo":Landroid/net/NetworkInfo;
    .restart local v24    # "wifib":Landroid/os/IBinder;
    :cond_3
    :try_start_4
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_5
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 850
    .local v18, "iface":Ljava/lang/String;
    const-wide v6, 0x7fffffffffffffffL

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v6, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->setInterfaceQuota(Ljava/lang/String;J)V

    .line 851
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->removeInterfaceQuota(Ljava/lang/String;)V

    goto :goto_5

    .line 853
    .end local v18    # "iface":Ljava/lang/String;
    :cond_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 857
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    goto :goto_4

    .line 862
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v19    # "ifaceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    invoke-static/range {v24 .. v24}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v22

    .line 863
    .local v22, "mWifiManager":Landroid/net/wifi/IWifiManager;
    invoke-interface/range {v22 .. v22}, Landroid/net/wifi/IWifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v20

    .line 865
    if-eqz v20, :cond_6

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    const-string v5, "<unknown ssid>"

    if-eq v4, v5, :cond_6

    .line 867
    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/NetworkTemplate;->buildTemplateWifi(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v3

    goto :goto_2

    .line 871
    :cond_6
    const-string v4, "NetworkPolicy"

    const-string v5, "buildWiFiRestrict: Wifiinfo is null or unknown ssid"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_2

    .line 891
    .end local v22    # "mWifiManager":Landroid/net/wifi/IWifiManager;
    .end local v23    # "netInfo":Landroid/net/NetworkInfo;
    .restart local v2    # "policy":Landroid/net/NetworkPolicy;
    :cond_7
    if-eqz v2, :cond_1

    :try_start_6
    iget-boolean v4, v2, Landroid/net/NetworkPolicy;->inferred:Z

    if-eqz v4, :cond_1

    .line 894
    move/from16 v0, p1

    iput-boolean v0, v2, Landroid/net/NetworkPolicy;->metered:Z

    .line 898
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesLocked()V

    goto :goto_3

    .line 915
    .end local v2    # "policy":Landroid/net/NetworkPolicy;
    :catchall_1
    move-exception v4

    monitor-exit v25
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v4

    .line 903
    :cond_8
    :try_start_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 904
    const-string v4, "NetworkPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "buildWiFiRestrict disable, remove "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 906
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    .line 910
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesLocked()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_3
.end method

.method private cancelNotification(Ljava/lang/String;)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 1470
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1471
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNotifManager:Landroid/app/INotificationManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v0, p1, v2, v3}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1476
    .end local v0    # "packageName":Ljava/lang/String;
    :goto_0
    return-void

    .line 1473
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static collectKeys(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;)V
    .locals 4
    .param p0, "source"    # Landroid/util/SparseIntArray;
    .param p1, "target"    # Landroid/util/SparseBooleanArray;

    .prologue
    .line 3421
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    .line 3422
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 3423
    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3422
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3425
    :cond_0
    return-void
.end method

.method private configGlobalPcoValue()V
    .locals 5

    .prologue
    .line 3496
    :try_start_0
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v2

    const-string v3, "getPcoExtra"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/htc/service/HtcTelephonyManager;->generalGetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 3497
    .local v1, "pcoExtra":Landroid/os/Bundle;
    const-string v2, "pco_value"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPcoValue:I

    .line 3498
    const-string v2, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configGlobalPcoValue: pco = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPcoValue:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3502
    .end local v1    # "pcoExtra":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 3499
    :catch_0
    move-exception v0

    .line 3500
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configGlobalPcoValue: try to get pcoValue but failed. Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private currentTimeMillis()J
    .locals 2

    .prologue
    .line 3377
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->hasCache()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0
.end method

.method private dumpHistory(Ljava/util/LinkedList;Ljava/lang/String;ILcom/android/internal/util/IndentingPrintWriter;)V
    .locals 20
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "length"    # I
    .param p4, "fout"    # Lcom/android/internal/util/IndentingPrintWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/net/NetworkPolicyManagerService$HtcNetPolicyManSrvHistory;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/internal/util/IndentingPrintWriter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3585
    .local p1, "history":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/net/NetworkPolicyManagerService$HtcNetPolicyManSrvHistory;>;"
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 3586
    .local v4, "dataTimeStamp":Ljava/util/Date;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 3588
    .local v14, "timeStamp":J
    const/4 v11, 0x0

    .line 3589
    .local v11, "mHistArray":[Ljava/lang/Object;
    monitor-enter p1

    .line 3591
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->toArray()[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    .line 3595
    :goto_0
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3596
    if-eqz v11, :cond_0

    .line 3597
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3598
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v16, " Change History: "

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    array-length v0, v11

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v16, "/"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v16, " entries (current 0x"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v14, v15}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v16, " ms"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v16, " - "

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v16, ")"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3602
    move-object v3, v11

    .local v3, "arr$":[Ljava/lang/Object;
    array-length v10, v3

    .local v10, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_1
    if-ge v9, v10, :cond_1

    aget-object v12, v3, v9

    .local v12, "oHist":Ljava/lang/Object;
    move-object v8, v12

    .line 3603
    check-cast v8, Lcom/android/server/net/NetworkPolicyManagerService$HtcNetPolicyManSrvHistory;

    .line 3604
    .local v8, "hist":Lcom/android/server/net/NetworkPolicyManagerService$HtcNetPolicyManSrvHistory;
    invoke-virtual {v8}, Lcom/android/server/net/NetworkPolicyManagerService$HtcNetPolicyManSrvHistory;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3605
    .local v2, "argStr":Ljava/lang/String;
    new-instance v5, Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    sub-long v16, v16, v14

    iget-wide v0, v8, Lcom/android/server/net/NetworkPolicyManagerService$HtcNetPolicyManSrvHistory;->timeStamp:J

    move-wide/from16 v18, v0

    add-long v16, v16, v18

    move-wide/from16 v0, v16

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 3606
    .local v5, "date":Ljava/util/Date;
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v13, "MM-dd HH:mm:ss"

    invoke-direct {v7, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3608
    .local v7, "formatter":Ljava/text/SimpleDateFormat;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v16, " "

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3602
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 3592
    .end local v2    # "argStr":Ljava/lang/String;
    .end local v3    # "arr$":[Ljava/lang/Object;
    .end local v5    # "date":Ljava/util/Date;
    .end local v7    # "formatter":Ljava/text/SimpleDateFormat;
    .end local v8    # "hist":Lcom/android/server/net/NetworkPolicyManagerService$HtcNetPolicyManSrvHistory;
    .end local v9    # "i$":I
    .end local v10    # "len$":I
    .end local v12    # "oHist":Ljava/lang/Object;
    :catch_0
    move-exception v6

    .line 3593
    .local v6, "ex6":Ljava/lang/Exception;
    :try_start_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Log Exception : "

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3595
    .end local v6    # "ex6":Ljava/lang/Exception;
    :catchall_0
    move-exception v13

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v13

    .line 3612
    :cond_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v16, " Change History: "

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v16, " entries"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3614
    :cond_1
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3615
    return-void
.end method

.method private enableFirewallChainLocked(IZ)V
    .locals 3
    .param p1, "chain"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 3324
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-ne v1, p2, :cond_0

    .line 3337
    :goto_0
    return-void

    .line 3329
    :cond_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3331
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v1, p1, p2}, Landroid/os/INetworkManagementService;->setFirewallChainEnabled(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 3332
    :catch_0
    move-exception v0

    .line 3333
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "NetworkPolicy"

    const-string v2, "problem enable firewall chain"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3334
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private enqueueNotification(Landroid/net/NetworkPolicy;IJ)V
    .locals 23
    .param p1, "policy"    # Landroid/net/NetworkPolicy;
    .param p2, "type"    # I
    .param p3, "totalBytes"    # J

    .prologue
    .line 1201
    invoke-direct/range {p0 .. p2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildNotificationTag(Landroid/net/NetworkPolicy;I)Ljava/lang/String;

    move-result-object v5

    .line 1202
    .local v5, "tag":Ljava/lang/String;
    new-instance v12, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v12, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1203
    .local v12, "builder":Landroid/app/Notification$Builder;
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 1204
    const-wide/16 v6, 0x0

    invoke-virtual {v12, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 1205
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const v4, 0x1060059

    invoke-virtual {v2, v4}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v12, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 1209
    const-string v2, "NetworkPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enqueueNotification() type="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ",match="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v6}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ",total="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ",custCharge="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mCustomizeMobileCharge:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .line 1214
    .local v18, "res":Landroid/content/res/Resources;
    packed-switch p2, :pswitch_data_0

    .line 1375
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1376
    .local v3, "packageName":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v8, v2, [I

    .line 1377
    .local v8, "idReceived":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNotifManager:Landroid/app/INotificationManager;

    const/4 v6, 0x0

    invoke-virtual {v12}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v7

    const/4 v9, 0x0

    move-object v4, v3

    invoke-interface/range {v2 .. v9}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V

    .line 1380
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4

    .line 1384
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v8    # "idReceived":[I
    :goto_1
    return-void

    .line 1227
    :pswitch_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mCustomizeMobileCharge:I

    const/16 v4, 0x69

    if-ne v2, v4, :cond_0

    .line 1229
    const v2, 0x107002d

    :try_start_1
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v21

    .line 1235
    .local v21, "title_temp":Ljava/lang/CharSequence;
    :goto_2
    const v2, 0x107002e

    :try_start_2
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v11

    .line 1241
    .local v11, "body_temp":Ljava/lang/CharSequence;
    :goto_3
    const v2, 0x1020008

    :try_start_3
    invoke-virtual {v12, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1251
    :goto_4
    move-object/from16 v20, v21

    .line 1252
    .local v20, "title":Ljava/lang/CharSequence;
    move-object v10, v11

    .line 1255
    .local v10, "body":Ljava/lang/CharSequence;
    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1256
    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1257
    invoke-virtual {v12, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1259
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildSnoozeWarningIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v19

    .line 1260
    .local v19, "snoozeIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v6, 0x8000000

    move-object/from16 v0, v19

    invoke-static {v2, v4, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1263
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildViewDataUsageIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v22

    .line 1264
    .local v22, "viewIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v6, 0x8000000

    move-object/from16 v0, v22

    invoke-static {v2, v4, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto/16 :goto_0

    .line 1230
    .end local v10    # "body":Ljava/lang/CharSequence;
    .end local v11    # "body_temp":Ljava/lang/CharSequence;
    .end local v19    # "snoozeIntent":Landroid/content/Intent;
    .end local v20    # "title":Ljava/lang/CharSequence;
    .end local v21    # "title_temp":Ljava/lang/CharSequence;
    .end local v22    # "viewIntent":Landroid/content/Intent;
    :catch_0
    move-exception v13

    .line 1231
    .local v13, "e":Ljava/lang/Exception;
    const-string v2, "NetworkPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "can\'t not found warning title resource: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    const v2, 0x1040487

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v21

    .restart local v21    # "title_temp":Ljava/lang/CharSequence;
    goto :goto_2

    .line 1236
    .end local v13    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v13

    .line 1237
    .restart local v13    # "e":Ljava/lang/Exception;
    const-string v2, "NetworkPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "can\'t not found warning body resource: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    const v2, 0x1040488

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "body_temp":Ljava/lang/CharSequence;
    goto/16 :goto_3

    .line 1242
    .end local v13    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v13

    .line 1243
    .restart local v13    # "e":Ljava/lang/Exception;
    const-string v2, "NetworkPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "can\'t not found warning icon: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    const v2, 0x1080078

    invoke-virtual {v12, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto/16 :goto_4

    .line 1247
    .end local v11    # "body_temp":Ljava/lang/CharSequence;
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v21    # "title_temp":Ljava/lang/CharSequence;
    :cond_0
    const v2, 0x1040487

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v21

    .line 1248
    .restart local v21    # "title_temp":Ljava/lang/CharSequence;
    const v2, 0x1040488

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1249
    .restart local v11    # "body_temp":Ljava/lang/CharSequence;
    const v2, 0x1080078

    invoke-virtual {v12, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto/16 :goto_4

    .line 1278
    .end local v11    # "body_temp":Ljava/lang/CharSequence;
    .end local v21    # "title_temp":Ljava/lang/CharSequence;
    :pswitch_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mCustomizeMobileCharge:I

    const/16 v4, 0x69

    if-ne v2, v4, :cond_1

    .line 1280
    const v2, 0x107002f

    :try_start_4
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v11

    .line 1288
    .restart local v11    # "body_temp":Ljava/lang/CharSequence;
    :goto_5
    move-object v10, v11

    .line 1292
    .restart local v10    # "body":Ljava/lang/CharSequence;
    const v14, 0x1080639

    .line 1293
    .local v14, "icon":I
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 1314
    const/16 v20, 0x0

    .line 1318
    .restart local v20    # "title":Ljava/lang/CharSequence;
    :goto_6
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 1319
    invoke-virtual {v12, v14}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1320
    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1321
    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1322
    invoke-virtual {v12, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1324
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildNetworkOverLimitIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v15

    .line 1325
    .local v15, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v6, 0x8000000

    invoke-static {v2, v4, v15, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto/16 :goto_0

    .line 1281
    .end local v10    # "body":Ljava/lang/CharSequence;
    .end local v11    # "body_temp":Ljava/lang/CharSequence;
    .end local v14    # "icon":I
    .end local v15    # "intent":Landroid/content/Intent;
    .end local v20    # "title":Ljava/lang/CharSequence;
    :catch_3
    move-exception v13

    .line 1282
    .restart local v13    # "e":Ljava/lang/Exception;
    const-string v2, "NetworkPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "can\'t not found limit body resource: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    const v2, 0x104048d

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 1284
    .restart local v11    # "body_temp":Ljava/lang/CharSequence;
    goto :goto_5

    .line 1286
    .end local v11    # "body_temp":Ljava/lang/CharSequence;
    .end local v13    # "e":Ljava/lang/Exception;
    :cond_1
    const v2, 0x104048d

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .restart local v11    # "body_temp":Ljava/lang/CharSequence;
    goto :goto_5

    .line 1295
    .restart local v10    # "body":Ljava/lang/CharSequence;
    .restart local v14    # "icon":I
    :sswitch_0
    const v2, 0x1040489

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v20

    .line 1296
    .restart local v20    # "title":Ljava/lang/CharSequence;
    goto :goto_6

    .line 1298
    .end local v20    # "title":Ljava/lang/CharSequence;
    :sswitch_1
    const v2, 0x104048a

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v20

    .line 1299
    .restart local v20    # "title":Ljava/lang/CharSequence;
    goto :goto_6

    .line 1307
    .end local v20    # "title":Ljava/lang/CharSequence;
    :sswitch_2
    const v2, 0x104048b

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v20

    .line 1308
    .restart local v20    # "title":Ljava/lang/CharSequence;
    goto :goto_6

    .line 1310
    .end local v20    # "title":Ljava/lang/CharSequence;
    :sswitch_3
    const v2, 0x104048c

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v20

    .line 1311
    .restart local v20    # "title":Ljava/lang/CharSequence;
    const v14, 0x1080078

    .line 1312
    goto/16 :goto_6

    .line 1330
    .end local v10    # "body":Ljava/lang/CharSequence;
    .end local v11    # "body_temp":Ljava/lang/CharSequence;
    .end local v14    # "icon":I
    .end local v20    # "title":Ljava/lang/CharSequence;
    :pswitch_2
    move-object/from16 v0, p1

    iget-wide v6, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    sub-long v16, p3, v6

    .line 1331
    .local v16, "overBytes":J
    const v2, 0x1040492

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-wide/from16 v0, v16

    invoke-static {v7, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 1335
    .restart local v10    # "body":Ljava/lang/CharSequence;
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v2

    sparse-switch v2, :sswitch_data_1

    .line 1355
    const/16 v20, 0x0

    .line 1359
    .restart local v20    # "title":Ljava/lang/CharSequence;
    :goto_7
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 1360
    const v2, 0x1080078

    invoke-virtual {v12, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1361
    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1362
    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1363
    invoke-virtual {v12, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1365
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildViewDataUsageIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v15

    .line 1366
    .restart local v15    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v6, 0x8000000

    invoke-static {v2, v4, v15, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto/16 :goto_0

    .line 1337
    .end local v15    # "intent":Landroid/content/Intent;
    .end local v20    # "title":Ljava/lang/CharSequence;
    :sswitch_4
    const v2, 0x104048e

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v20

    .line 1338
    .restart local v20    # "title":Ljava/lang/CharSequence;
    goto :goto_7

    .line 1340
    .end local v20    # "title":Ljava/lang/CharSequence;
    :sswitch_5
    const v2, 0x104048f

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v20

    .line 1341
    .restart local v20    # "title":Ljava/lang/CharSequence;
    goto :goto_7

    .line 1349
    .end local v20    # "title":Ljava/lang/CharSequence;
    :sswitch_6
    const v2, 0x1040490

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v20

    .line 1350
    .restart local v20    # "title":Ljava/lang/CharSequence;
    goto :goto_7

    .line 1352
    .end local v20    # "title":Ljava/lang/CharSequence;
    :sswitch_7
    const v2, 0x1040491

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v20

    .line 1353
    .restart local v20    # "title":Ljava/lang/CharSequence;
    goto :goto_7

    .line 1381
    .end local v10    # "body":Ljava/lang/CharSequence;
    .end local v16    # "overBytes":J
    .end local v20    # "title":Ljava/lang/CharSequence;
    :catch_4
    move-exception v2

    goto/16 :goto_1

    .line 1214
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1293
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_3
        0x69 -> :sswitch_2
        0x6a -> :sswitch_2
    .end sparse-switch

    .line 1335
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_6
        0x2 -> :sswitch_4
        0x3 -> :sswitch_5
        0x4 -> :sswitch_7
        0x69 -> :sswitch_6
        0x6a -> :sswitch_6
    .end sparse-switch
.end method

.method private enqueueRestrictedNotification(Ljava/lang/String;)V
    .locals 13
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1391
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 1392
    .local v11, "res":Landroid/content/res/Resources;
    new-instance v9, Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v9, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1395
    .local v9, "builder":Landroid/app/Notification$Builder;
    const/4 v12, 0x0

    .line 1396
    .local v12, "title":Ljava/lang/CharSequence;
    iget v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPcoValue:I

    if-ne v0, v5, :cond_0

    .line 1397
    const v0, 0x107002b

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 1400
    :cond_0
    if-nez v12, :cond_1

    .line 1401
    const v0, 0x1040493

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 1410
    :cond_1
    const/4 v8, 0x0

    .line 1411
    .local v8, "body":Ljava/lang/CharSequence;
    iget v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mCustomizeMobileCharge:I

    const/16 v2, 0x69

    if-ne v0, v2, :cond_2

    .line 1412
    iget v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPcoValue:I

    if-ne v0, v5, :cond_5

    .line 1413
    const v0, 0x107002c

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 1420
    :cond_2
    :goto_0
    if-nez v8, :cond_3

    .line 1421
    const v0, 0x1040494

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1426
    :cond_3
    invoke-virtual {v9, v4}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 1427
    invoke-virtual {v9, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 1429
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mEPSenable:Z

    if-eqz v0, :cond_6

    .line 1432
    const-string v0, "NetworkPolicy"

    const-string v2, "enqueueRestrictedNotification: EPS mode"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    :goto_1
    invoke-virtual {v9, v12}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1440
    invoke-virtual {v9, v12}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1441
    invoke-virtual {v9, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1442
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const v2, 0x1060059

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 1446
    iget v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPcoValue:I

    if-eq v0, v5, :cond_4

    .line 1447
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->buildAllowBackgroundDataIntent()Landroid/content/Intent;

    move-result-object v10

    .line 1448
    .local v10, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/high16 v2, 0x8000000

    invoke-static {v0, v3, v10, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1456
    .end local v10    # "intent":Landroid/content/Intent;
    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1457
    .local v1, "packageName":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v6, v0, [I

    .line 1458
    .local v6, "idReceived":[I
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNotifManager:Landroid/app/INotificationManager;

    const/4 v4, 0x0

    invoke-virtual {v9}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v5

    const/4 v7, 0x0

    move-object v2, v1

    move-object v3, p1

    invoke-interface/range {v0 .. v7}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V

    .line 1460
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1464
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v6    # "idReceived":[I
    :goto_2
    return-void

    .line 1416
    :cond_5
    const v0, 0x1070030

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 1436
    :cond_6
    const v0, 0x1080078

    invoke-virtual {v9, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto :goto_1

    .line 1461
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method private ensureActiveMobilePolicyLocked()V
    .locals 10

    .prologue
    .line 1750
    const-string v8, "NetworkPolicy"

    const-string v9, "ensureActiveMobilePolicyLocked()"

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    iget-boolean v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSuppressDefaultPolicy:Z

    if-eqz v8, :cond_1

    .line 1761
    :cond_0
    return-void

    .line 1753
    :cond_1
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v7

    .line 1754
    .local v7, "tele":Landroid/telephony/TelephonyManager;
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    .line 1756
    .local v3, "sub":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v5

    .line 1757
    .local v5, "subIds":[I
    move-object v0, v5

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget v4, v0, v1

    .line 1758
    .local v4, "subId":I
    invoke-virtual {v7, v4}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v6

    .line 1759
    .local v6, "subscriberId":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->ensureActiveMobilePolicyLocked(Ljava/lang/String;)V

    .line 1757
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private ensureActiveMobilePolicyLocked(Ljava/lang/String;)V
    .locals 26
    .param p1, "subscriberId"    # Ljava/lang/String;

    .prologue
    .line 1765
    new-instance v2, Landroid/net/NetworkIdentity;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v7}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;Z)V

    .line 1767
    .local v2, "probeIdent":Landroid/net/NetworkIdentity;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v19, v3, -0x1

    .local v19, "i":I
    :goto_0
    if-ltz v19, :cond_2

    .line 1768
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/net/NetworkTemplate;

    .line 1769
    .local v23, "template":Landroid/net/NetworkTemplate;
    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1771
    const-string v3, "NetworkPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Found template "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " which matches subscriber "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static/range {p1 .. p1}, Landroid/net/NetworkIdentity;->scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1829
    .end local v23    # "template":Landroid/net/NetworkTemplate;
    :cond_0
    return-void

    .line 1767
    .restart local v23    # "template":Landroid/net/NetworkTemplate;
    :cond_1
    add-int/lit8 v19, v19, -0x1

    goto :goto_0

    .line 1779
    .end local v23    # "template":Landroid/net/NetworkTemplate;
    :cond_2
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 1782
    .local v21, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/NetworkTemplate;>;"
    const-string v3, "NetworkPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "No policy for subscriber "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static/range {p1 .. p1}, Landroid/net/NetworkIdentity;->scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "; generating default policy, mCustomizeMobileCharge = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mCustomizeMobileCharge:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mCustomizeMobileCharge:I

    const/16 v12, 0x69

    if-ne v3, v12, :cond_4

    .line 1787
    invoke-static/range {p1 .. p1}, Landroid/net/NetworkTemplate;->buildTemplateMobile_VzwCharge(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v25

    .line 1788
    .local v25, "vzw_template":Landroid/net/NetworkTemplate;
    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1800
    .end local v25    # "vzw_template":Landroid/net/NetworkTemplate;
    :goto_1
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1803
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v12, 0x10e007d

    invoke-virtual {v3, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v12, v3

    const-wide/32 v14, 0x100000

    mul-long v8, v12, v14

    .line 1805
    .local v8, "warningBytes":J
    const-wide/16 v10, -0x1

    .line 1806
    .local v10, "limitBytes":J
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getBundle()Landroid/os/Bundle;

    move-result-object v18

    .line 1807
    .local v18, "bundle":Landroid/os/Bundle;
    if-eqz v18, :cond_3

    .line 1808
    const-wide/16 v12, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v12, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->readLimitBytes(Landroid/os/Bundle;J)J

    move-result-wide v10

    .line 1809
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v8, v9}, Lcom/android/server/net/NetworkPolicyManagerService;->readWarningBytes(Landroid/os/Bundle;J)J

    move-result-wide v8

    .line 1813
    :cond_3
    new-instance v24, Landroid/text/format/Time;

    invoke-direct/range {v24 .. v24}, Landroid/text/format/Time;-><init>()V

    .line 1814
    .local v24, "time":Landroid/text/format/Time;
    invoke-virtual/range {v24 .. v24}, Landroid/text/format/Time;->setToNow()V

    .line 1816
    move-object/from16 v0, v24

    iget v6, v0, Landroid/text/format/Time;->monthDay:I

    .line 1817
    .local v6, "cycleDay":I
    move-object/from16 v0, v24

    iget-object v7, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1819
    .local v7, "cycleTimezone":Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkTemplate;

    .line 1821
    .local v5, "temp":Landroid/net/NetworkTemplate;
    new-instance v4, Landroid/net/NetworkPolicy;

    const-wide/16 v12, -0x1

    const-wide/16 v14, -0x1

    const/16 v16, 0x1

    const/16 v17, 0x1

    invoke-direct/range {v4 .. v17}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJJJZZ)V

    .line 1825
    .local v4, "policy":Landroid/net/NetworkPolicy;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->addNetworkPolicyLocked(Landroid/net/NetworkPolicy;)V

    goto :goto_2

    .line 1790
    .end local v4    # "policy":Landroid/net/NetworkPolicy;
    .end local v5    # "temp":Landroid/net/NetworkTemplate;
    .end local v6    # "cycleDay":I
    .end local v7    # "cycleTimezone":Ljava/lang/String;
    .end local v8    # "warningBytes":J
    .end local v10    # "limitBytes":J
    .end local v18    # "bundle":Landroid/os/Bundle;
    .end local v20    # "i$":Ljava/util/Iterator;
    .end local v24    # "time":Landroid/text/format/Time;
    :cond_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mCustomizeMobileCharge:I

    const/16 v12, 0x6a

    if-ne v3, v12, :cond_5

    .line 1791
    invoke-static/range {p1 .. p1}, Landroid/net/NetworkTemplate;->buildTemplateMobile_SpcsCharge(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v22

    .line 1792
    .local v22, "spcs_template":Landroid/net/NetworkTemplate;
    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1795
    .end local v22    # "spcs_template":Landroid/net/NetworkTemplate;
    :cond_5
    invoke-static/range {p1 .. p1}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v23

    .line 1796
    .restart local v23    # "template":Landroid/net/NetworkTemplate;
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method private findPolicyForNetworkLocked(Landroid/net/NetworkIdentity;)Landroid/net/NetworkPolicy;
    .locals 3
    .param p1, "ident"    # Landroid/net/NetworkIdentity;

    .prologue
    .line 2504
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2505
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkPolicy;

    .line 2506
    .local v1, "policy":Landroid/net/NetworkPolicy;
    iget-object v2, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, p1}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2510
    .end local v1    # "policy":Landroid/net/NetworkPolicy;
    :goto_1
    return-object v1

    .line 2504
    .restart local v1    # "policy":Landroid/net/NetworkPolicy;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2510
    .end local v1    # "policy":Landroid/net/NetworkPolicy;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getBundle()Landroid/os/Bundle;
    .locals 14

    .prologue
    const/4 v2, 0x0

    .line 1891
    const-string v0, "content://customization_settings/SettingTable/system_DataUsage"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1892
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1894
    .local v8, "cursor":Landroid/database/Cursor;
    const-string v0, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1896
    if-nez v8, :cond_0

    .line 1897
    const-string v0, "NetworkPolicy"

    const-string v3, "Failed to get cursor"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1956
    :goto_0
    return-object v2

    .line 1901
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 1902
    const-string v0, "NetworkPolicy"

    const-string v3, "cursor size is 0"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1903
    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1904
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1906
    :cond_1
    const/4 v8, 0x0

    .line 1907
    goto :goto_0

    .line 1910
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1911
    const-string v0, "value"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 1912
    .local v11, "index":I
    const/4 v0, -0x1

    if-ne v11, v0, :cond_4

    .line 1913
    const-string v0, "NetworkPolicy"

    const-string v3, "no customized data support"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1914
    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1915
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1917
    :cond_3
    const/4 v8, 0x0

    .line 1918
    goto :goto_0

    .line 1921
    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1922
    const/4 v9, 0x0

    .line 1923
    .local v9, "data":[B
    const/4 v6, 0x0

    .line 1924
    .local v6, "bundle":Landroid/os/Bundle;
    const/4 v13, 0x0

    .line 1927
    .local v13, "setting":Landroid/os/Bundle;
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v12

    .line 1928
    .local v12, "parcel":Landroid/os/Parcel;
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1929
    .end local v6    # "bundle":Landroid/os/Bundle;
    .local v7, "bundle":Landroid/os/Bundle;
    :try_start_1
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9

    .line 1931
    const-string v0, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "column_index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", data_length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v9

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1932
    const/4 v0, 0x0

    array-length v3, v9

    invoke-virtual {v12, v9, v0, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 1933
    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1934
    invoke-virtual {v7, v12}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1939
    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1940
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1942
    :cond_5
    const/4 v8, 0x0

    move-object v6, v7

    .line 1945
    .end local v7    # "bundle":Landroid/os/Bundle;
    .end local v12    # "parcel":Landroid/os/Parcel;
    .restart local v6    # "bundle":Landroid/os/Bundle;
    :goto_1
    const-string v0, "settings"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v13

    .line 1947
    if-nez v13, :cond_8

    .line 1948
    const-string v0, "NetworkPolicy"

    const-string v3, "settings bundle is null"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1935
    :catch_0
    move-exception v10

    .line 1936
    .local v10, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_2
    const-string v0, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load customize URI failed, get exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1937
    const/4 v6, 0x0

    .line 1939
    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1940
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1942
    :cond_6
    const/4 v8, 0x0

    .line 1943
    goto :goto_1

    .line 1939
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v8, :cond_7

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1940
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1942
    :cond_7
    const/4 v8, 0x0

    throw v0

    .line 1950
    :cond_8
    invoke-virtual {v13}, Landroid/os/Bundle;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 1951
    const-string v0, "NetworkPolicy"

    const-string v3, "settings bundle is empty"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1955
    :cond_9
    const-string v0, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBundle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v13

    .line 1956
    goto/16 :goto_0

    .line 1939
    .end local v6    # "bundle":Landroid/os/Bundle;
    .restart local v7    # "bundle":Landroid/os/Bundle;
    .restart local v12    # "parcel":Landroid/os/Parcel;
    :catchall_1
    move-exception v0

    move-object v6, v7

    .end local v7    # "bundle":Landroid/os/Bundle;
    .restart local v6    # "bundle":Landroid/os/Bundle;
    goto :goto_3

    .line 1935
    .end local v6    # "bundle":Landroid/os/Bundle;
    .restart local v7    # "bundle":Landroid/os/Bundle;
    :catch_1
    move-exception v10

    move-object v6, v7

    .end local v7    # "bundle":Landroid/os/Bundle;
    .restart local v6    # "bundle":Landroid/os/Bundle;
    goto :goto_2
.end method

.method private getNetworkQuotaInfoUnchecked(Landroid/net/NetworkState;)Landroid/net/NetworkQuotaInfo;
    .locals 22
    .param p1, "state"    # Landroid/net/NetworkState;

    .prologue
    .line 2528
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Landroid/net/NetworkIdentity;->buildNetworkIdentity(Landroid/content/Context;Landroid/net/NetworkState;)Landroid/net/NetworkIdentity;

    move-result-object v8

    .line 2531
    .local v8, "ident":Landroid/net/NetworkIdentity;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2532
    :try_start_0
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->findPolicyForNetworkLocked(Landroid/net/NetworkIdentity;)Landroid/net/NetworkPolicy;

    move-result-object v18

    .line 2533
    .local v18, "policy":Landroid/net/NetworkPolicy;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2535
    if-eqz v18, :cond_0

    invoke-virtual/range {v18 .. v18}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2537
    :cond_0
    const/4 v9, 0x0

    .line 2553
    :goto_0
    return-object v9

    .line 2533
    .end local v18    # "policy":Landroid/net/NetworkPolicy;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 2540
    .restart local v18    # "policy":Landroid/net/NetworkPolicy;
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->currentTimeMillis()J

    move-result-wide v16

    .line 2543
    .local v16, "currentTime":J
    invoke-static/range {v16 .. v18}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v4

    .line 2544
    .local v4, "start":J
    move-wide/from16 v6, v16

    .line 2545
    .local v6, "end":J
    move-object/from16 v0, v18

    iget-object v3, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v10

    .line 2548
    .local v10, "totalBytes":J
    move-object/from16 v0, v18

    iget-wide v2, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    const-wide/16 v20, -0x1

    cmp-long v2, v2, v20

    if-eqz v2, :cond_2

    move-object/from16 v0, v18

    iget-wide v12, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 2550
    .local v12, "softLimitBytes":J
    :goto_1
    move-object/from16 v0, v18

    iget-wide v2, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v20, -0x1

    cmp-long v2, v2, v20

    if-eqz v2, :cond_3

    move-object/from16 v0, v18

    iget-wide v14, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 2553
    .local v14, "hardLimitBytes":J
    :goto_2
    new-instance v9, Landroid/net/NetworkQuotaInfo;

    invoke-direct/range {v9 .. v15}, Landroid/net/NetworkQuotaInfo;-><init>(JJJ)V

    goto :goto_0

    .line 2548
    .end local v12    # "softLimitBytes":J
    .end local v14    # "hardLimitBytes":J
    :cond_2
    const-wide/16 v12, -0x1

    goto :goto_1

    .line 2550
    .restart local v12    # "softLimitBytes":J
    :cond_3
    const-wide/16 v14, -0x1

    goto :goto_2
.end method

.method private static getSystemDir()Ljava/io/File;
    .locals 3

    .prologue
    .line 413
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    .locals 10
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    const-wide/16 v8, 0x0

    .line 3341
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsService;->getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v0

    .line 3347
    :goto_0
    return-wide v0

    .line 3342
    :catch_0
    move-exception v6

    .line 3343
    .local v6, "e":Ljava/lang/RuntimeException;
    const-string v0, "NetworkPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "problem reading network stats: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v0, v8

    .line 3344
    goto :goto_0

    .line 3345
    .end local v6    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v6

    .local v6, "e":Landroid/os/RemoteException;
    move-wide v0, v8

    .line 3347
    goto :goto_0
.end method

.method private isBandwidthControlEnabled()Z
    .locals 4

    .prologue
    .line 3352
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3354
    .local v2, "token":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 3359
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return v1

    .line 3355
    :catch_0
    move-exception v0

    .line 3357
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    .line 3359
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method static isProcStateAllowedWhileIdle(I)Z
    .locals 1
    .param p0, "procState"    # I

    .prologue
    .line 2868
    const/4 v0, 0x4

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTemplateRelevant(Landroid/net/NetworkTemplate;)Z
    .locals 14
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    const/4 v13, 0x1

    const/4 v1, 0x0

    .line 1133
    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->isMatchRuleMobile()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1134
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v12

    .line 1135
    .local v12, "tele":Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v9

    .line 1138
    .local v9, "sub":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v9}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v11

    .line 1139
    .local v11, "subIds":[I
    move-object v6, v11

    .local v6, "arr$":[I
    array-length v8, v6

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v8, :cond_0

    aget v10, v6, v7

    .line 1140
    .local v10, "subId":I
    invoke-virtual {v12, v10}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v3

    .line 1141
    .local v3, "subscriberId":Ljava/lang/String;
    new-instance v0, Landroid/net/NetworkIdentity;

    const/4 v4, 0x0

    move v2, v1

    move v5, v1

    invoke-direct/range {v0 .. v5}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;Z)V

    .line 1143
    .local v0, "probeIdent":Landroid/net/NetworkIdentity;
    invoke-virtual {p1, v0}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v13

    .line 1149
    .end local v0    # "probeIdent":Landroid/net/NetworkIdentity;
    .end local v3    # "subscriberId":Ljava/lang/String;
    .end local v6    # "arr$":[I
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    .end local v9    # "sub":Landroid/telephony/SubscriptionManager;
    .end local v10    # "subId":I
    .end local v11    # "subIds":[I
    .end local v12    # "tele":Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_1
    return v1

    .line 1139
    .restart local v0    # "probeIdent":Landroid/net/NetworkIdentity;
    .restart local v3    # "subscriberId":Ljava/lang/String;
    .restart local v6    # "arr$":[I
    .restart local v7    # "i$":I
    .restart local v8    # "len$":I
    .restart local v9    # "sub":Landroid/telephony/SubscriptionManager;
    .restart local v10    # "subId":I
    .restart local v11    # "subIds":[I
    .restart local v12    # "tele":Landroid/telephony/TelephonyManager;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .end local v0    # "probeIdent":Landroid/net/NetworkIdentity;
    .end local v3    # "subscriberId":Ljava/lang/String;
    .end local v6    # "arr$":[I
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    .end local v9    # "sub":Landroid/telephony/SubscriptionManager;
    .end local v10    # "subId":I
    .end local v11    # "subIds":[I
    .end local v12    # "tele":Landroid/telephony/TelephonyManager;
    :cond_2
    move v1, v13

    .line 1149
    goto :goto_1
.end method

.method private isUidIdle(I)Z
    .locals 7
    .param p1, "uid"    # I

    .prologue
    .line 3021
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 3022
    .local v4, "packages":[Ljava/lang/String;
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 3024
    .local v5, "userId":I
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 3025
    .local v3, "packageName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v6, v3, v5}, Landroid/app/usage/UsageStatsManagerInternal;->isAppIdle(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 3026
    const/4 v6, 0x0

    .line 3029
    .end local v3    # "packageName":Ljava/lang/String;
    :goto_1
    return v6

    .line 3024
    .restart local v3    # "packageName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3029
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_1
    const/4 v6, 0x1

    goto :goto_1
.end method

.method private static isUidValidForRules(I)Z
    .locals 1
    .param p0, "uid"    # I

    .prologue
    .line 3012
    const/16 v0, 0x3f5

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3fb

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3014
    :cond_0
    const/4 v0, 0x1

    .line 3017
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWhiteListUid(I)Z
    .locals 5
    .param p1, "uid"    # I

    .prologue
    .line 3035
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mWhiteUid:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3036
    .local v1, "list":I
    if-ne v1, p1, :cond_0

    .line 3037
    const-string v2, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isWhiteListUid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3038
    const/4 v2, 0x1

    .line 3041
    .end local v1    # "list":I
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private normalizePoliciesLocked()V
    .locals 1

    .prologue
    .line 2381
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesLocked([Landroid/net/NetworkPolicy;)V

    .line 2382
    return-void
.end method

.method private normalizePoliciesLocked([Landroid/net/NetworkPolicy;)V
    .locals 10
    .param p1, "policies"    # [Landroid/net/NetworkPolicy;

    .prologue
    .line 2385
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v6

    .line 2386
    .local v6, "tele":Landroid/telephony/TelephonyManager;
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getMergedSubscriberIds()[Ljava/lang/String;

    move-result-object v4

    .line 2388
    .local v4, "merged":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->clear()V

    .line 2389
    move-object v0, p1

    .local v0, "arr$":[Landroid/net/NetworkPolicy;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v5, v0, v2

    .line 2392
    .local v5, "policy":Landroid/net/NetworkPolicy;
    iget-object v7, v5, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v7, v4}, Landroid/net/NetworkTemplate;->normalize(Landroid/net/NetworkTemplate;[Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v7

    iput-object v7, v5, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 2393
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    iget-object v8, v5, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkPolicy;

    .line 2394
    .local v1, "existing":Landroid/net/NetworkPolicy;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v5}, Landroid/net/NetworkPolicy;->compareTo(Landroid/net/NetworkPolicy;)I

    move-result v7

    if-lez v7, :cond_2

    .line 2395
    :cond_0
    if-eqz v1, :cond_1

    .line 2396
    const-string v7, "NetworkPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Normalization replaced "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " with "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2398
    :cond_1
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    iget-object v8, v5, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v7, v8, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2389
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2401
    .end local v1    # "existing":Landroid/net/NetworkPolicy;
    .end local v5    # "policy":Landroid/net/NetworkPolicy;
    :cond_3
    return-void
.end method

.method private notifyOverLimitLocked(Landroid/net/NetworkTemplate;)V
    .locals 5
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 1158
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    invoke-virtual {v3, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1162
    const-string v3, "gsm.radio.volte.vt.state"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 1163
    const-string v3, "NetworkPolicy"

    const-string v4, "notifyOverLimitLocked, VT"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1165
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1166
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/net/IHtcPolicyCallback;

    .line 1167
    .local v0, "callback":Landroid/net/IHtcPolicyCallback;
    if-eqz v0, :cond_0

    .line 1169
    :try_start_0
    invoke-interface {v0}, Landroid/net/IHtcPolicyCallback;->onUsageLimitReached()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1165
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1174
    .end local v0    # "callback":Landroid/net/IHtcPolicyCallback;
    :cond_1
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1178
    .end local v1    # "i":I
    .end local v2    # "length":I
    :goto_2
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    invoke-virtual {v3, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1182
    :cond_2
    return-void

    .line 1176
    :cond_3
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/net/NetworkPolicyManagerService;->buildNetworkOverLimitIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 1170
    .restart local v0    # "callback":Landroid/net/IHtcPolicyCallback;
    .restart local v1    # "i":I
    .restart local v2    # "length":I
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private notifyUnderLimitLocked(Landroid/net/NetworkTemplate;)V
    .locals 1
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 1185
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1186
    return-void
.end method

.method private readLimitBytes(Landroid/os/Bundle;J)J
    .locals 8
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "origLimitBytes"    # J

    .prologue
    .line 1839
    move-wide v2, p2

    .line 1841
    .local v2, "limitBytes":J
    if-eqz p1, :cond_1

    .line 1843
    const-string v5, "limitUsage"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1844
    const-string v5, "limitUsage"

    const-string v6, ""

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1846
    .local v4, "value":Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1847
    const-string v5, "NetworkPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CUST_DATAUSAGE limitUsage > "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1853
    .end local v4    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    const-string v5, "limitEnable"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1854
    const-string v5, "limitEnable"

    const-string v6, ""

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1855
    .restart local v4    # "value":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 1856
    .local v1, "limit":Z
    const-string v5, "NetworkPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CUST_DATAUSAGE limitEnable > "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1857
    if-nez v1, :cond_1

    .line 1858
    const-wide/16 v2, -0x1

    .line 1862
    .end local v1    # "limit":Z
    .end local v4    # "value":Ljava/lang/String;
    :cond_1
    return-wide v2

    .line 1848
    .restart local v4    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1849
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "NetworkPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fail parse to long: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private readPolicyLocked()V
    .locals 46

    .prologue
    .line 1961
    const-string v4, "NetworkPolicy"

    const-string v18, "readPolicyLocked()"

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1964
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    .line 1965
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->clear()V

    .line 1967
    const/16 v36, 0x0

    .line 1969
    .local v36, "fis":Ljava/io/FileInputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v36

    .line 1970
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v37

    .line 1971
    .local v37, "in":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1974
    const/16 v45, 0x1

    .line 1975
    .local v45, "version":I
    :cond_0
    :goto_0
    invoke-interface/range {v37 .. v37}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v43

    .local v43, "type":I
    const/4 v4, 0x1

    move/from16 v0, v43

    if-eq v0, v4, :cond_10

    .line 1976
    invoke-interface/range {v37 .. v37}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v42

    .line 1977
    .local v42, "tag":Ljava/lang/String;
    const/4 v4, 0x2

    move/from16 v0, v43

    if-ne v0, v4, :cond_0

    .line 1978
    const-string v4, "policy-list"

    move-object/from16 v0, v42

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1979
    const-string v4, "version"

    move-object/from16 v0, v37

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v45

    .line 1980
    const/4 v4, 0x3

    move/from16 v0, v45

    if-lt v0, v4, :cond_1

    .line 1981
    const-string v4, "restrictBackground"

    move-object/from16 v0, v37

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2107
    .end local v37    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v42    # "tag":Ljava/lang/String;
    .end local v43    # "type":I
    .end local v45    # "version":I
    :catch_0
    move-exception v35

    .line 2109
    .local v35, "e":Ljava/io/FileNotFoundException;
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->upgradeLegacyBackgroundData()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2115
    invoke-static/range {v36 .. v36}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2117
    .end local v35    # "e":Ljava/io/FileNotFoundException;
    :goto_1
    return-void

    .line 1984
    .restart local v37    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v42    # "tag":Ljava/lang/String;
    .restart local v43    # "type":I
    .restart local v45    # "version":I
    :cond_1
    const/4 v4, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2110
    .end local v37    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v42    # "tag":Ljava/lang/String;
    .end local v43    # "type":I
    .end local v45    # "version":I
    :catch_1
    move-exception v35

    .line 2111
    .local v35, "e":Ljava/io/IOException;
    :try_start_3
    const-string v4, "NetworkPolicy"

    const-string v18, "problem reading network policy"

    move-object/from16 v0, v18

    move-object/from16 v1, v35

    invoke-static {v4, v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2115
    invoke-static/range {v36 .. v36}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    .line 1987
    .end local v35    # "e":Ljava/io/IOException;
    .restart local v37    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v42    # "tag":Ljava/lang/String;
    .restart local v43    # "type":I
    .restart local v45    # "version":I
    :cond_2
    :try_start_4
    const-string v4, "network-policy"

    move-object/from16 v0, v42

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1988
    const-string v4, "networkTemplate"

    move-object/from16 v0, v37

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v39

    .line 1989
    .local v39, "networkTemplate":I
    const/4 v4, 0x0

    const-string v18, "subscriberId"

    move-object/from16 v0, v37

    move-object/from16 v1, v18

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 1991
    .local v41, "subscriberId":Ljava/lang/String;
    const/16 v4, 0x9

    move/from16 v0, v45

    if-lt v0, v4, :cond_3

    .line 1992
    const/4 v4, 0x0

    const-string v18, "networkId"

    move-object/from16 v0, v37

    move-object/from16 v1, v18

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 1996
    .local v38, "networkId":Ljava/lang/String;
    :goto_2
    const-string v4, "cycleDay"

    move-object/from16 v0, v37

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v6

    .line 1998
    .local v6, "cycleDay":I
    const/4 v4, 0x6

    move/from16 v0, v45

    if-lt v0, v4, :cond_4

    .line 1999
    const/4 v4, 0x0

    const-string v18, "cycleTimezone"

    move-object/from16 v0, v37

    move-object/from16 v1, v18

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2003
    .local v7, "cycleTimezone":Ljava/lang/String;
    :goto_3
    const-string v4, "warningBytes"

    move-object/from16 v0, v37

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v8

    .line 2004
    .local v8, "warningBytes":J
    const-string v4, "limitBytes"

    move-object/from16 v0, v37

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v10

    .line 2006
    .local v10, "limitBytes":J
    const/4 v4, 0x5

    move/from16 v0, v45

    if-lt v0, v4, :cond_5

    .line 2007
    const-string v4, "lastLimitSnooze"

    move-object/from16 v0, v37

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v14

    .line 2014
    .local v14, "lastLimitSnooze":J
    :goto_4
    const/4 v4, 0x4

    move/from16 v0, v45

    if-lt v0, v4, :cond_7

    .line 2015
    const-string v4, "metered"

    move-object/from16 v0, v37

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v16

    .line 2032
    .local v16, "metered":Z
    :goto_5
    const/4 v4, 0x5

    move/from16 v0, v45

    if-lt v0, v4, :cond_8

    .line 2033
    const-string v4, "lastWarningSnooze"

    move-object/from16 v0, v37

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v12

    .line 2038
    .local v12, "lastWarningSnooze":J
    :goto_6
    const/4 v4, 0x7

    move/from16 v0, v45

    if-lt v0, v4, :cond_9

    .line 2039
    const-string v4, "inferred"

    move-object/from16 v0, v37

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v17

    .line 2053
    .local v17, "inferred":Z
    :goto_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mCustomizeMobileCharge:I

    const/16 v18, 0x69

    move/from16 v0, v18

    if-ne v4, v0, :cond_a

    const/4 v4, 0x1

    move/from16 v0, v39

    if-ne v0, v4, :cond_a

    .line 2054
    invoke-static/range {v41 .. v41}, Landroid/net/NetworkTemplate;->buildTemplateMobile_VzwCharge(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v5

    .line 2055
    .local v5, "vzw_template":Landroid/net/NetworkTemplate;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 2056
    const-string v4, "NetworkPolicy"

    const-string v18, "Add VzwTemplete to mNetworkPolicy"

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2057
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    move-object/from16 v18, v0

    new-instance v4, Landroid/net/NetworkPolicy;

    invoke-direct/range {v4 .. v17}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJJJZZ)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 2112
    .end local v5    # "vzw_template":Landroid/net/NetworkTemplate;
    .end local v6    # "cycleDay":I
    .end local v7    # "cycleTimezone":Ljava/lang/String;
    .end local v8    # "warningBytes":J
    .end local v10    # "limitBytes":J
    .end local v12    # "lastWarningSnooze":J
    .end local v14    # "lastLimitSnooze":J
    .end local v16    # "metered":Z
    .end local v17    # "inferred":Z
    .end local v37    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v38    # "networkId":Ljava/lang/String;
    .end local v39    # "networkTemplate":I
    .end local v41    # "subscriberId":Ljava/lang/String;
    .end local v42    # "tag":Ljava/lang/String;
    .end local v43    # "type":I
    .end local v45    # "version":I
    :catch_2
    move-exception v35

    .line 2113
    .local v35, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_5
    const-string v4, "NetworkPolicy"

    const-string v18, "problem reading network policy"

    move-object/from16 v0, v18

    move-object/from16 v1, v35

    invoke-static {v4, v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2115
    invoke-static/range {v36 .. v36}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_1

    .line 1994
    .end local v35    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v37    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v39    # "networkTemplate":I
    .restart local v41    # "subscriberId":Ljava/lang/String;
    .restart local v42    # "tag":Ljava/lang/String;
    .restart local v43    # "type":I
    .restart local v45    # "version":I
    :cond_3
    const/16 v38, 0x0

    .restart local v38    # "networkId":Ljava/lang/String;
    goto/16 :goto_2

    .line 2001
    .restart local v6    # "cycleDay":I
    :cond_4
    :try_start_6
    const-string v7, "UTC"

    .restart local v7    # "cycleTimezone":Ljava/lang/String;
    goto/16 :goto_3

    .line 2008
    .restart local v8    # "warningBytes":J
    .restart local v10    # "limitBytes":J
    :cond_5
    const/4 v4, 0x2

    move/from16 v0, v45

    if-lt v0, v4, :cond_6

    .line 2009
    const-string v4, "lastSnooze"

    move-object/from16 v0, v37

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v14

    .restart local v14    # "lastLimitSnooze":J
    goto/16 :goto_4

    .line 2011
    .end local v14    # "lastLimitSnooze":J
    :cond_6
    const-wide/16 v14, -0x1

    .restart local v14    # "lastLimitSnooze":J
    goto/16 :goto_4

    .line 2017
    :cond_7
    sparse-switch v39, :sswitch_data_0

    .line 2028
    const/16 v16, 0x0

    .restart local v16    # "metered":Z
    goto/16 :goto_5

    .line 2025
    .end local v16    # "metered":Z
    :sswitch_0
    const/16 v16, 0x1

    .line 2026
    .restart local v16    # "metered":Z
    goto/16 :goto_5

    .line 2035
    :cond_8
    const-wide/16 v12, -0x1

    .restart local v12    # "lastWarningSnooze":J
    goto :goto_6

    .line 2041
    :cond_9
    const/16 v17, 0x0

    .restart local v17    # "inferred":Z
    goto :goto_7

    .line 2064
    :cond_a
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mCustomizeMobileCharge:I

    const/16 v18, 0x6a

    move/from16 v0, v18

    if-ne v4, v0, :cond_b

    const/4 v4, 0x1

    move/from16 v0, v39

    if-ne v0, v4, :cond_b

    .line 2065
    invoke-static/range {v41 .. v41}, Landroid/net/NetworkTemplate;->buildTemplateMobile_SpcsCharge(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v19

    .line 2066
    .local v19, "spcs_template":Landroid/net/NetworkTemplate;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 2067
    const-string v4, "NetworkPolicy"

    const-string v18, "Add SpcsTemplete to mNetworkPolicy"

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2068
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    new-instance v18, Landroid/net/NetworkPolicy;

    move/from16 v20, v6

    move-object/from16 v21, v7

    move-wide/from16 v22, v8

    move-wide/from16 v24, v10

    move-wide/from16 v26, v12

    move-wide/from16 v28, v14

    move/from16 v30, v16

    move/from16 v31, v17

    invoke-direct/range {v18 .. v31}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJJJZZ)V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 2115
    .end local v6    # "cycleDay":I
    .end local v7    # "cycleTimezone":Ljava/lang/String;
    .end local v8    # "warningBytes":J
    .end local v10    # "limitBytes":J
    .end local v12    # "lastWarningSnooze":J
    .end local v14    # "lastLimitSnooze":J
    .end local v16    # "metered":Z
    .end local v17    # "inferred":Z
    .end local v19    # "spcs_template":Landroid/net/NetworkTemplate;
    .end local v37    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v38    # "networkId":Ljava/lang/String;
    .end local v39    # "networkTemplate":I
    .end local v41    # "subscriberId":Ljava/lang/String;
    .end local v42    # "tag":Ljava/lang/String;
    .end local v43    # "type":I
    .end local v45    # "version":I
    :catchall_0
    move-exception v4

    invoke-static/range {v36 .. v36}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v4

    .line 2075
    .restart local v6    # "cycleDay":I
    .restart local v7    # "cycleTimezone":Ljava/lang/String;
    .restart local v8    # "warningBytes":J
    .restart local v10    # "limitBytes":J
    .restart local v12    # "lastWarningSnooze":J
    .restart local v14    # "lastLimitSnooze":J
    .restart local v16    # "metered":Z
    .restart local v17    # "inferred":Z
    .restart local v37    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v38    # "networkId":Ljava/lang/String;
    .restart local v39    # "networkTemplate":I
    .restart local v41    # "subscriberId":Ljava/lang/String;
    .restart local v42    # "tag":Ljava/lang/String;
    .restart local v43    # "type":I
    .restart local v45    # "version":I
    :cond_b
    :try_start_7
    new-instance v21, Landroid/net/NetworkTemplate;

    move-object/from16 v0, v21

    move/from16 v1, v39

    move-object/from16 v2, v41

    move-object/from16 v3, v38

    invoke-direct {v0, v1, v2, v3}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2077
    .local v21, "template":Landroid/net/NetworkTemplate;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    new-instance v20, Landroid/net/NetworkPolicy;

    move/from16 v22, v6

    move-object/from16 v23, v7

    move-wide/from16 v24, v8

    move-wide/from16 v26, v10

    move-wide/from16 v28, v12

    move-wide/from16 v30, v14

    move/from16 v32, v16

    move/from16 v33, v17

    invoke-direct/range {v20 .. v33}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJJJZZ)V

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 2083
    .end local v6    # "cycleDay":I
    .end local v7    # "cycleTimezone":Ljava/lang/String;
    .end local v8    # "warningBytes":J
    .end local v10    # "limitBytes":J
    .end local v12    # "lastWarningSnooze":J
    .end local v14    # "lastLimitSnooze":J
    .end local v16    # "metered":Z
    .end local v17    # "inferred":Z
    .end local v21    # "template":Landroid/net/NetworkTemplate;
    .end local v38    # "networkId":Ljava/lang/String;
    .end local v39    # "networkTemplate":I
    .end local v41    # "subscriberId":Ljava/lang/String;
    :cond_c
    const-string v4, "uid-policy"

    move-object/from16 v0, v42

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 2084
    const-string v4, "uid"

    move-object/from16 v0, v37

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v44

    .line 2085
    .local v44, "uid":I
    const-string v4, "policy"

    move-object/from16 v0, v37

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v40

    .line 2087
    .local v40, "policy":I
    invoke-static/range {v44 .. v44}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 2088
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v40

    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedLocked(IIZ)V

    goto/16 :goto_0

    .line 2090
    :cond_d
    const-string v4, "NetworkPolicy"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "unable to apply policy to UID "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, "; ignoring"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2092
    .end local v40    # "policy":I
    .end local v44    # "uid":I
    :cond_e
    const-string v4, "app-policy"

    move-object/from16 v0, v42

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2093
    const-string v4, "appId"

    move-object/from16 v0, v37

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v34

    .line 2094
    .local v34, "appId":I
    const-string v4, "policy"

    move-object/from16 v0, v37

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v40

    .line 2097
    .restart local v40    # "policy":I
    const/4 v4, 0x0

    move/from16 v0, v34

    invoke-static {v4, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v44

    .line 2098
    .restart local v44    # "uid":I
    invoke-static/range {v44 .. v44}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 2099
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v40

    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedLocked(IIZ)V

    goto/16 :goto_0

    .line 2101
    :cond_f
    const-string v4, "NetworkPolicy"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "unable to apply policy to UID "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, "; ignoring"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 2115
    .end local v34    # "appId":I
    .end local v40    # "policy":I
    .end local v42    # "tag":Ljava/lang/String;
    .end local v44    # "uid":I
    :cond_10
    invoke-static/range {v36 .. v36}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_1

    .line 2017
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x69 -> :sswitch_0
        0x6a -> :sswitch_0
    .end sparse-switch
.end method

.method private readWarningBytes(Landroid/os/Bundle;J)J
    .locals 8
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "origWarningBytes"    # J

    .prologue
    .line 1866
    move-wide v4, p2

    .line 1869
    .local v4, "warningBytes":J
    const-string v3, "alertUsage"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1870
    const-string v3, "alertUsage"

    const-string v6, ""

    invoke-virtual {p1, v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1872
    .local v1, "value":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1873
    const-string v3, "NetworkPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CUST_DATAUSAGE alertUsage > "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1879
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    const-string v3, "alertEnable"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1880
    const-string v3, "alertEnable"

    const-string v6, ""

    invoke-virtual {p1, v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1881
    .restart local v1    # "value":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1882
    .local v2, "warning":Z
    const-string v3, "NetworkPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CUST_DATAUSAGE alertEnable > "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1883
    if-nez v2, :cond_1

    .line 1884
    const-wide/16 v4, -0x1

    .line 1887
    .end local v1    # "value":Ljava/lang/String;
    .end local v2    # "warning":Z
    :cond_1
    return-wide v4

    .line 1874
    .restart local v1    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1875
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "NetworkPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fail parse to long: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private removeInterfaceQuota(Ljava/lang/String;)V
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 3260
    const-string v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeInterfaceQuota: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3262
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v1, p1}, Landroid/os/INetworkManagementService;->removeInterfaceQuota(Ljava/lang/String;)V

    .line 3263
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLimitedQuotas:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3264
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLimitedQuotas:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3273
    :cond_0
    :goto_0
    return-void

    .line 3266
    :catch_0
    move-exception v0

    .line 3267
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "NetworkPolicy"

    const-string v2, "problem removing interface quota, e="

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3268
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 3270
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NetworkPolicy"

    const-string v2, "problem removing interface quota, e="

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setInterfaceQuota(Ljava/lang/String;J)V
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "quotaBytes"    # J

    .prologue
    .line 3248
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/INetworkManagementService;->setInterfaceQuota(Ljava/lang/String;J)V

    .line 3249
    invoke-static {p1, p2, p3}, Lcom/android/server/net/NetPluginDelegate;->setQuota(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3256
    :goto_0
    return-void

    .line 3250
    :catch_0
    move-exception v0

    .line 3251
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "NetworkPolicy"

    const-string v2, "problem setting interface quota"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3252
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 3254
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "problem setting interface quota:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setNetworkTemplateEnabled(Landroid/net/NetworkTemplate;Z)V
    .locals 0
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "enabled"    # Z

    .prologue
    .line 1538
    return-void
.end method

.method private setUidFirewallRule(III)V
    .locals 3
    .param p1, "chain"    # I
    .param p2, "uid"    # I
    .param p3, "rule"    # I

    .prologue
    .line 3312
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3318
    :goto_0
    return-void

    .line 3313
    :catch_0
    move-exception v0

    .line 3314
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "NetworkPolicy"

    const-string v2, "problem setting firewall uid rules"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3315
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private setUidFirewallRules(ILandroid/util/SparseIntArray;)V
    .locals 7
    .param p1, "chain"    # I
    .param p2, "uidRules"    # Landroid/util/SparseIntArray;

    .prologue
    .line 3292
    :try_start_0
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    .line 3293
    .local v3, "size":I
    new-array v4, v3, [I

    .line 3294
    .local v4, "uids":[I
    new-array v2, v3, [I

    .line 3295
    .local v2, "rules":[I
    add-int/lit8 v1, v3, -0x1

    .local v1, "index":I
    :goto_0
    if-ltz v1, :cond_0

    .line 3296
    invoke-virtual {p2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    aput v5, v4, v1

    .line 3297
    invoke-virtual {p2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    aput v5, v2, v1

    .line 3295
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3299
    :cond_0
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v5, p1, v4, v2}, Landroid/os/INetworkManagementService;->setFirewallUidRules(I[I[I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3305
    .end local v1    # "index":I
    .end local v2    # "rules":[I
    .end local v3    # "size":I
    .end local v4    # "uids":[I
    :goto_1
    return-void

    .line 3300
    :catch_0
    move-exception v0

    .line 3301
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v5, "NetworkPolicy"

    const-string v6, "problem setting firewall uid rules"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 3302
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method private setUidNetworkRules(IZ)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "rejectOnQuotaInterfaces"    # Z

    .prologue
    .line 3277
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v1, p1, p2}, Landroid/os/INetworkManagementService;->setUidNetworkRules(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3283
    :goto_0
    return-void

    .line 3278
    :catch_0
    move-exception v0

    .line 3279
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "NetworkPolicy"

    const-string v2, "problem setting uid rules"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3280
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private setUidPolicyUncheckedLocked(IIZ)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "policy"    # I
    .param p3, "persist"    # Z

    .prologue
    .line 2257
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2260
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    .line 2261
    if-eqz p3, :cond_0

    .line 2262
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    .line 2264
    :cond_0
    return-void
.end method

.method private updateRulesForScreenLocked()V
    .locals 5

    .prologue
    .line 2858
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    .line 2859
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2860
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    const/4 v4, 0x2

    if-gt v3, v4, :cond_0

    .line 2861
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 2862
    .local v2, "uid":I
    invoke-virtual {p0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    .line 2859
    .end local v2    # "uid":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2865
    :cond_1
    return-void
.end method

.method private updateRulesForScreenLockedWhiteList()V
    .locals 5

    .prologue
    .line 2846
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mWhiteUid:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2847
    .local v1, "uid":I
    const-string v2, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateRulesForScreenLockedWhiteList: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2848
    invoke-virtual {p0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    goto :goto_0

    .line 2850
    .end local v1    # "uid":I
    :cond_0
    return-void
.end method

.method private updateScreenOn()V
    .locals 4

    .prologue
    .line 2825
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2828
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManager:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->isInteractive()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mScreenOn:Z

    .line 2829
    const-string v0, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateScreenOn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mScreenOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2833
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesLocked()V

    .line 2835
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForScreenLocked()V

    .line 2836
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mEPSenable:Z

    if-eqz v0, :cond_0

    .line 2837
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForScreenLockedWhiteList()V

    .line 2839
    :cond_0
    monitor-exit v1

    .line 2840
    return-void

    .line 2839
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 2830
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private upgradeLegacyBackgroundData()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 2124
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "background_data"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v1, :cond_1

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 2128
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v1, :cond_0

    .line 2129
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2131
    .local v0, "broadcast":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2133
    .end local v0    # "broadcast":Landroid/content/Intent;
    :cond_0
    return-void

    .line 2124
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/MessageQueue$IdleHandler;

    .prologue
    .line 3417
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 3418
    return-void
.end method

.method addNetworkPolicyLocked(Landroid/net/NetworkPolicy;)V
    .locals 2
    .param p1, "policy"    # Landroid/net/NetworkPolicy;

    .prologue
    .line 2349
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 2350
    .local v0, "policies":[Landroid/net/NetworkPolicy;
    const-class v1, Landroid/net/NetworkPolicy;

    invoke-static {v1, v0, p1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "policies":[Landroid/net/NetworkPolicy;
    check-cast v0, [Landroid/net/NetworkPolicy;

    .line 2351
    .restart local v0    # "policies":[Landroid/net/NetworkPolicy;
    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    .line 2352
    return-void
.end method

.method public addUidPolicy(II)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .prologue
    .line 2224
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v3, "NetworkPolicy"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2226
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2227
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot apply policy to UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2230
    :cond_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2231
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 2232
    .local v0, "oldPolicy":I
    or-int/2addr p2, v0

    .line 2233
    if-eq v0, p2, :cond_1

    .line 2234
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedLocked(IIZ)V

    .line 2236
    :cond_1
    monitor-exit v2

    .line 2237
    return-void

    .line 2236
    .end local v0    # "oldPolicy":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    .locals 1
    .param p1, "connManager"    # Landroid/net/IConnectivityManager;

    .prologue
    .line 478
    const-string v0, "missing IConnectivityManager"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/IConnectivityManager;

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/IConnectivityManager;

    .line 479
    return-void
.end method

.method public bindNotificationManager(Landroid/app/INotificationManager;)V
    .locals 1
    .param p1, "notifManager"    # Landroid/app/INotificationManager;

    .prologue
    .line 482
    const-string v0, "missing INotificationManager"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/INotificationManager;

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNotifManager:Landroid/app/INotificationManager;

    .line 483
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 20
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "android.permission.DUMP"

    const-string v19, "NetworkPolicy"

    invoke-virtual/range {v17 .. v19}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2633
    new-instance v7, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v17, "  "

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-direct {v7, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 2635
    .local v7, "fout":Lcom/android/internal/util/IndentingPrintWriter;
    new-instance v5, Landroid/util/ArraySet;

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/util/ArraySet;-><init>(I)V

    .line 2636
    .local v5, "argSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v6, p3

    .local v6, "arr$":[Ljava/lang/String;
    array-length v11, v6

    .local v11, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_0
    if-ge v9, v11, :cond_0

    aget-object v4, v6, v9

    .line 2637
    .local v4, "arg":Ljava/lang/String;
    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2636
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 2640
    .end local v4    # "arg":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 2641
    :try_start_0
    const-string v17, "--unsnooze"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 2642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/ArrayMap;->size()I

    move-result v17

    add-int/lit8 v8, v17, -0x1

    .local v8, "i":I
    :goto_1
    if-ltz v8, :cond_1

    .line 2643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/net/NetworkPolicy;

    invoke-virtual/range {v17 .. v17}, Landroid/net/NetworkPolicy;->clearSnooze()V

    .line 2642
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 2646
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesLocked()V

    .line 2647
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledLocked()V

    .line 2648
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesLocked()V

    .line 2649
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    .line 2650
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    .line 2652
    const-string v17, "Cleared snooze timestamps"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2653
    monitor-exit v18

    .line 2759
    :goto_2
    return-void

    .line 2656
    .end local v8    # "i":I
    :cond_2
    const-string v17, "System ready: "

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mSystemReady:Z

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 2658
    const-string v17, "hTC restrict background: "

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHtcRestrictBackground:Z

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 2660
    const-string v17, "Restrict background: "

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 2661
    const-string v17, "Restrict power: "

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 2662
    const-string v17, "Device idle: "

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 2663
    const-string v17, "Network policies:"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2664
    invoke-virtual {v7}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 2665
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/ArrayMap;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v8, v0, :cond_3

    .line 2666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/net/NetworkPolicy;

    invoke-virtual/range {v17 .. v17}, Landroid/net/NetworkPolicy;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2665
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 2668
    :cond_3
    invoke-virtual {v7}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 2670
    const-string v17, "Metered ifaces: "

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2674
    const-string v17, "Limited ifaces: "

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mLimitedQuotas:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2677
    const-string v17, "Restrict requests: "

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictRequests:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2679
    const-string v17, "Policy for UIDs:"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2680
    invoke-virtual {v7}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 2681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/SparseIntArray;->size()I

    move-result v14

    .line 2682
    .local v14, "size":I
    const/4 v8, 0x0

    :goto_4
    if-ge v8, v14, :cond_4

    .line 2683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v16

    .line 2684
    .local v16, "uid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v12

    .line 2685
    .local v12, "policy":I
    const-string v17, "UID="

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2686
    move/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 2687
    const-string v17, " policy="

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2688
    invoke-static {v7, v12}, Landroid/net/NetworkPolicyManager;->dumpPolicy(Ljava/io/PrintWriter;I)V

    .line 2689
    invoke-virtual {v7}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2682
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 2691
    .end local v12    # "policy":I
    .end local v16    # "uid":I
    :cond_4
    invoke-virtual {v7}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 2693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/SparseBooleanArray;->size()I

    move-result v14

    .line 2694
    if-lez v14, :cond_6

    .line 2695
    const-string v17, "Power save whitelist (except idle) app ids:"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2696
    invoke-virtual {v7}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 2697
    const/4 v8, 0x0

    :goto_5
    if-ge v8, v14, :cond_5

    .line 2698
    const-string v17, "UID="

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 2700
    const-string v17, ": "

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    .line 2702
    invoke-virtual {v7}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2697
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 2704
    :cond_5
    invoke-virtual {v7}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 2707
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/SparseBooleanArray;->size()I

    move-result v14

    .line 2708
    if-lez v14, :cond_8

    .line 2709
    const-string v17, "Power save whitelist app ids:"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2710
    invoke-virtual {v7}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 2711
    const/4 v8, 0x0

    :goto_6
    if-ge v8, v14, :cond_7

    .line 2712
    const-string v17, "UID="

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 2714
    const-string v17, ": "

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    .line 2716
    invoke-virtual {v7}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2711
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 2718
    :cond_7
    invoke-virtual {v7}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 2721
    :cond_8
    new-instance v10, Landroid/util/SparseBooleanArray;

    invoke-direct {v10}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 2722
    .local v10, "knownUids":Landroid/util/SparseBooleanArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v10}, Lcom/android/server/net/NetworkPolicyManagerService;->collectKeys(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;)V

    .line 2723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v10}, Lcom/android/server/net/NetworkPolicyManagerService;->collectKeys(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;)V

    .line 2725
    const-string v17, "Status for known UIDs:"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2726
    invoke-virtual {v7}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 2727
    invoke-virtual {v10}, Landroid/util/SparseBooleanArray;->size()I

    move-result v14

    .line 2728
    const/4 v8, 0x0

    :goto_7
    if-ge v8, v14, :cond_b

    .line 2729
    invoke-virtual {v10, v8}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v16

    .line 2730
    .restart local v16    # "uid":I
    const-string v17, "UID="

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2731
    move/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 2733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    move-object/from16 v17, v0

    const/16 v19, 0x10

    move-object/from16 v0, v17

    move/from16 v1, v16

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v15

    .line 2734
    .local v15, "state":I
    const-string v17, " state="

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2735
    invoke-virtual {v7, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 2736
    const/16 v17, 0x2

    move/from16 v0, v17

    if-gt v15, v0, :cond_9

    const-string v17, " (fg)"

    :goto_8
    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2738
    const-string v17, " rules="

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v13

    .line 2740
    .local v13, "rulesIndex":I
    if-gez v13, :cond_a

    .line 2741
    const-string v17, "UNKNOWN"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2746
    :goto_9
    invoke-virtual {v7}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2728
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 2736
    .end local v13    # "rulesIndex":I
    :cond_9
    const-string v17, " (bg)"

    goto :goto_8

    .line 2743
    .restart local v13    # "rulesIndex":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v17

    move/from16 v0, v17

    invoke-static {v7, v0}, Landroid/net/NetworkPolicyManager;->dumpRules(Ljava/io/PrintWriter;I)V

    goto :goto_9

    .line 2749
    .end local v8    # "i":I
    .end local v10    # "knownUids":Landroid/util/SparseBooleanArray;
    .end local v13    # "rulesIndex":I
    .end local v14    # "size":I
    .end local v15    # "state":I
    .end local v16    # "uid":I
    :catchall_0
    move-exception v17

    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v17

    .line 2748
    .restart local v8    # "i":I
    .restart local v10    # "knownUids":Landroid/util/SparseBooleanArray;
    .restart local v14    # "size":I
    :cond_b
    :try_start_1
    invoke-virtual {v7}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 2749
    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2754
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogNetPolicyManSrv:Ljava/util/LinkedList;

    move-object/from16 v17, v0

    const-string v18, "mLogNetPolicyManSrv"

    const/16 v19, 0x40

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->dumpHistory(Ljava/util/LinkedList;Ljava/lang/String;ILcom/android/internal/util/IndentingPrintWriter;)V

    .line 2755
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogNetPolicyUidState:Ljava/util/LinkedList;

    move-object/from16 v17, v0

    const-string v18, "mLogNetPolicyUidState"

    const/16 v19, 0x80

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->dumpHistory(Ljava/util/LinkedList;Ljava/lang/String;ILcom/android/internal/util/IndentingPrintWriter;)V

    goto/16 :goto_2
.end method

.method public factoryReset(Ljava/lang/String;)V
    .locals 11
    .param p1, "subscriber"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 3455
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v9, "NetworkPolicy"

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3457
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    const-string v8, "no_network_reset"

    invoke-virtual {v7, v8}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3482
    :cond_0
    return-void

    .line 3462
    :cond_1
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    move-result-object v3

    .line 3463
    .local v3, "policies":[Landroid/net/NetworkPolicy;
    invoke-static {p1}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v5

    .line 3464
    .local v5, "template":Landroid/net/NetworkTemplate;
    move-object v0, v3

    .local v0, "arr$":[Landroid/net/NetworkPolicy;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v4, v0, v1

    .line 3465
    .local v4, "policy":Landroid/net/NetworkPolicy;
    iget-object v7, v4, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v7, v5}, Landroid/net/NetworkTemplate;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3466
    const-wide/16 v8, -0x1

    iput-wide v8, v4, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 3467
    iput-boolean v10, v4, Landroid/net/NetworkPolicy;->inferred:Z

    .line 3468
    invoke-virtual {v4}, Landroid/net/NetworkPolicy;->clearSnooze()V

    .line 3464
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3471
    .end local v4    # "policy":Landroid/net/NetworkPolicy;
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    .line 3474
    invoke-virtual {p0, v10}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackground(Z)V

    .line 3476
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    const-string v8, "no_control_apps"

    invoke-virtual {v7, v8}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 3478
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->getUidsWithPolicy(I)[I

    move-result-object v0

    .local v0, "arr$":[I
    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_0

    aget v6, v0, v1

    .line 3479
    .local v6, "uid":I
    invoke-virtual {p0, v6, v10}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicy(II)V

    .line 3478
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;
    .locals 7
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 2356
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v6, "NetworkPolicy"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2358
    :try_start_0
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const-string v6, "NetworkPolicy"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2370
    :cond_0
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2371
    :try_start_1
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 2372
    .local v3, "size":I
    new-array v2, v3, [Landroid/net/NetworkPolicy;

    .line 2373
    .local v2, "policies":[Landroid/net/NetworkPolicy;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 2374
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkPolicy;

    aput-object v4, v2, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2373
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2361
    .end local v1    # "i":I
    .end local v2    # "policies":[Landroid/net/NetworkPolicy;
    .end local v3    # "size":I
    :catch_0
    move-exception v0

    .line 2362
    .local v0, "e":Ljava/lang/SecurityException;
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.READ_PHONE_STATE"

    const-string v6, "NetworkPolicy"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2364
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v5, 0x33

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v4, v5, v6, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 2366
    const/4 v4, 0x0

    new-array v2, v4, [Landroid/net/NetworkPolicy;

    .line 2376
    .end local v0    # "e":Ljava/lang/SecurityException;
    :goto_1
    return-object v2

    .restart local v1    # "i":I
    .restart local v2    # "policies":[Landroid/net/NetworkPolicy;
    .restart local v3    # "size":I
    :cond_1
    :try_start_2
    monitor-exit v5

    goto :goto_1

    .line 2377
    .end local v1    # "i":I
    .end local v2    # "policies":[Landroid/net/NetworkPolicy;
    .end local v3    # "size":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method public getNetworkQuotaInfo(Landroid/net/NetworkState;)Landroid/net/NetworkQuotaInfo;
    .locals 5
    .param p1, "state"    # Landroid/net/NetworkState;

    .prologue
    .line 2515
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    const-string v4, "NetworkPolicy"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2519
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2521
    .local v0, "token":J
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkQuotaInfoUnchecked(Landroid/net/NetworkState;)Landroid/net/NetworkQuotaInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2523
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getRestrictBackground()Z
    .locals 3

    .prologue
    .line 2470
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2472
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2474
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHtcRestrictBackground:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2476
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUidPolicy(I)I
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 2268
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2270
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2271
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    monitor-exit v1

    return v0

    .line 2272
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUidsWithPolicy(I)[I
    .locals 7
    .param p1, "policy"    # I

    .prologue
    .line 2277
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v6, "NetworkPolicy"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2279
    const/4 v4, 0x0

    new-array v3, v4, [I

    .line 2280
    .local v3, "uids":[I
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2281
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 2282
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 2283
    .local v1, "uid":I
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    .line 2284
    .local v2, "uidPolicy":I
    if-ne v2, p1, :cond_0

    .line 2285
    invoke-static {v3, v1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v3

    .line 2281
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2288
    .end local v1    # "uid":I
    .end local v2    # "uidPolicy":I
    :cond_1
    monitor-exit v5

    .line 2289
    return-object v3

    .line 2288
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public htcSetRestrictBackground(ZI)V
    .locals 4
    .param p1, "enable"    # Z
    .param p2, "requestType"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 3505
    iput-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHtcRestrictBackground:Z

    .line 3506
    const-string v0, "NetworkPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "htcSetRestrictBackground: enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", requestType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " called by uid/pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3509
    const/4 v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->addToHtcNetPolicyManSrvHistory(ILjava/lang/String;)V

    .line 3513
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3514
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictRequests:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3515
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictRequests:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3516
    iput-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHtcRestrictBackground:Z

    .line 3519
    :cond_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3520
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForGlobalChangeLocked(Z)V

    .line 3521
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    .line 3522
    monitor-exit v1

    .line 3523
    return-void

    .line 3522
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isNetworkMetered(Landroid/net/NetworkState;)Z
    .locals 9
    .param p1, "state"    # Landroid/net/NetworkState;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2558
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Landroid/net/NetworkIdentity;->buildNetworkIdentity(Landroid/content/Context;Landroid/net/NetworkState;)Landroid/net/NetworkIdentity;

    move-result-object v0

    .line 2560
    .local v0, "ident":Landroid/net/NetworkIdentity;
    iget-object v3, p1, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v3}, Landroid/net/NetworkIdentity;->setCapabilities(Landroid/net/NetworkCapabilities;)V

    .line 2564
    invoke-virtual {v0}, Landroid/net/NetworkIdentity;->getRoaming()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    .line 2598
    :goto_0
    return v3

    .line 2569
    :cond_0
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v6

    .line 2570
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->findPolicyForNetworkLocked(Landroid/net/NetworkIdentity;)Landroid/net/NetworkPolicy;

    move-result-object v1

    .line 2571
    .local v1, "policy":Landroid/net/NetworkPolicy;
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2574
    const-string v6, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isNetworkMetered: type="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/NetworkIdentity;->getType()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ",policy="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v1, :cond_1

    const-string v3, "null"

    :goto_1
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2576
    if-eqz v1, :cond_2

    .line 2578
    const-string v3, "NetworkPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isNetworkMetered: metered = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v1, Landroid/net/NetworkPolicy;->metered:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2580
    iget-boolean v3, v1, Landroid/net/NetworkPolicy;->metered:Z

    goto :goto_0

    .line 2571
    .end local v1    # "policy":Landroid/net/NetworkPolicy;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 2574
    .restart local v1    # "policy":Landroid/net/NetworkPolicy;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v8}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ", "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v8, v1, Landroid/net/NetworkPolicy;->metered:Z

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 2582
    :cond_2
    iget-object v3, p1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 2584
    .local v2, "type":I
    iget-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mEPSenable:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mScreenOn:Z

    if-nez v3, :cond_3

    .line 2586
    const-string v3, "NetworkPolicy"

    const-string v5, "isNetworkMetered: Screen off in EPS mode"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 2587
    goto/16 :goto_0

    .line 2591
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isOperatorNetworkMetered(Landroid/net/NetworkState;)Z

    move-result v3

    if-nez v3, :cond_4

    move v3, v5

    .line 2592
    goto/16 :goto_0

    .line 2595
    :cond_4
    invoke-static {v2}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v3, 0x6

    if-ne v2, v3, :cond_6

    :cond_5
    move v3, v4

    .line 2596
    goto/16 :goto_0

    :cond_6
    move v3, v5

    .line 2598
    goto/16 :goto_0
.end method

.method public isOperatorNetworkMetered(Landroid/net/NetworkState;)Z
    .locals 9
    .param p1, "state"    # Landroid/net/NetworkState;

    .prologue
    .line 2604
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v6, p1}, Landroid/net/NetworkIdentity;->buildNetworkIdentity(Landroid/content/Context;Landroid/net/NetworkState;)Landroid/net/NetworkIdentity;

    move-result-object v0

    .line 2606
    .local v0, "ident":Landroid/net/NetworkIdentity;
    iget-object v6, p1, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v6}, Landroid/net/NetworkIdentity;->setCapabilities(Landroid/net/NetworkCapabilities;)V

    .line 2608
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    .line 2609
    .local v4, "tele":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    .line 2610
    .local v3, "subscriberId":Ljava/lang/String;
    const/4 v1, 0x1

    .line 2612
    .local v1, "metered":Z
    iget v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mCustomizeMobileCharge:I

    const/16 v7, 0x69

    if-ne v6, v7, :cond_1

    .line 2613
    invoke-static {v3}, Landroid/net/NetworkTemplate;->buildTemplateMobile_VzwCharge(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v5

    .line 2614
    .local v5, "vzw_template":Landroid/net/NetworkTemplate;
    invoke-virtual {v5, v0}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2615
    const-string v6, "NetworkPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isOperatorNetworkMetered ident is not blocked (allowed) in VZW charge NetworkTemplate. ident = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2616
    const/4 v1, 0x0

    .line 2625
    .end local v5    # "vzw_template":Landroid/net/NetworkTemplate;
    :cond_0
    :goto_0
    return v1

    .line 2618
    :cond_1
    iget v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mCustomizeMobileCharge:I

    const/16 v7, 0x6a

    if-ne v6, v7, :cond_0

    .line 2619
    invoke-static {v3}, Landroid/net/NetworkTemplate;->buildTemplateMobile_SpcsCharge(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v2

    .line 2620
    .local v2, "spcs_template":Landroid/net/NetworkTemplate;
    invoke-virtual {v2, v0}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2621
    const-string v6, "NetworkPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isOperatorNetworkMetered ident is not blocked (allowed) in SPCS charge NetworkTemplate. ident = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2622
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isUidForeground(I)Z
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 2763
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2765
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2766
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundLocked(I)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 2767
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isUidForegroundLocked(I)Z
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 2772
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mScreenOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    const/16 v1, 0x10

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method maybeRefreshTrustedTime()V
    .locals 0

    .prologue
    .line 3374
    return-void
.end method

.method performSnooze(Landroid/net/NetworkTemplate;I)V
    .locals 7
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "type"    # I

    .prologue
    .line 2416
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    .line 2417
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->currentTimeMillis()J

    move-result-wide v0

    .line 2418
    .local v0, "currentTime":J
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2420
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkPolicy;

    .line 2421
    .local v2, "policy":Landroid/net/NetworkPolicy;
    if-nez v2, :cond_0

    .line 2422
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unable to find policy for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2441
    .end local v2    # "policy":Landroid/net/NetworkPolicy;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2425
    .restart local v2    # "policy":Landroid/net/NetworkPolicy;
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 2433
    :try_start_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "unexpected type"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2427
    :pswitch_0
    iput-wide v0, v2, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    .line 2436
    :goto_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesLocked()V

    .line 2437
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledLocked()V

    .line 2438
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesLocked()V

    .line 2439
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    .line 2440
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    .line 2441
    monitor-exit v4

    .line 2442
    return-void

    .line 2430
    :pswitch_1
    iput-wide v0, v2, Landroid/net/NetworkPolicy;->lastLimitSnooze:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2425
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method purgePowerSaveTempWhitelistLocked()V
    .locals 3

    .prologue
    .line 527
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 528
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 529
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 530
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->removeAt(I)V

    .line 528
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 533
    :cond_1
    return-void
.end method

.method public registerHtcpolicyCallback(Landroid/net/IHtcPolicyCallback;)V
    .locals 1
    .param p1, "policyCallback"    # Landroid/net/IHtcPolicyCallback;

    .prologue
    .line 3444
    if-eqz p1, :cond_0

    .line 3445
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 3447
    :cond_0
    return-void
.end method

.method public registerListener(Landroid/net/INetworkPolicyListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;

    .prologue
    .line 2319
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2321
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 2324
    return-void
.end method

.method removePoliciesForUserLocked(I)V
    .locals 8
    .param p1, "userId"    # I

    .prologue
    .line 2297
    const-string v6, "NetworkPolicy"

    const-string v7, "removePoliciesForUserLocked()"

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2299
    const/4 v6, 0x0

    new-array v5, v6, [I

    .line 2300
    .local v5, "uids":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 2301
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    .line 2302
    .local v4, "uid":I
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-ne v6, p1, :cond_0

    .line 2303
    invoke-static {v5, v4}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v5

    .line 2300
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2307
    .end local v4    # "uid":I
    :cond_1
    array-length v6, v5

    if-lez v6, :cond_3

    .line 2308
    move-object v0, v5

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget v4, v0, v2

    .line 2309
    .restart local v4    # "uid":I
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseIntArray;->delete(I)V

    .line 2310
    invoke-virtual {p0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    .line 2308
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2312
    .end local v4    # "uid":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    .line 2314
    .end local v0    # "arr$":[I
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_3
    return-void
.end method

.method public removeUidPolicy(II)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .prologue
    .line 2241
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v3, "NetworkPolicy"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2243
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2244
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot apply policy to UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2247
    :cond_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2248
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 2249
    .local v0, "oldPolicy":I
    xor-int/lit8 v1, p2, -0x1

    and-int p2, v0, v1

    .line 2250
    if-eq v0, p2, :cond_1

    .line 2251
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedLocked(IIZ)V

    .line 2253
    :cond_1
    monitor-exit v2

    .line 2254
    return-void

    .line 2253
    .end local v0    # "oldPolicy":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method removeUidStateLocked(I)V
    .locals 4
    .param p1, "uid"    # I

    .prologue
    const/16 v3, 0x10

    .line 2794
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .line 2795
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 2796
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    .line 2797
    .local v1, "oldUidState":I
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 2798
    if-eq v1, v3, :cond_0

    .line 2799
    invoke-virtual {p0, p1, v1, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidStateChangeLocked(III)V

    .line 2801
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    if-eqz v2, :cond_0

    .line 2802
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDeviceIdleLocked()V

    .line 2806
    .end local v1    # "oldUidState":I
    :cond_0
    return-void
.end method

.method public setDeviceIdleMode(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 2481
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2483
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2484
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    if-eq v0, p1, :cond_1

    .line 2486
    const/4 v0, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->addToHtcNetPolicyManSrvHistory(ILjava/lang/String;)V

    .line 2488
    const-string v0, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDeviceIdleMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2490
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    .line 2491
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSystemReady:Z

    if-eqz v0, :cond_0

    .line 2492
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDeviceIdleLocked()V

    .line 2494
    :cond_0
    if-eqz p1, :cond_2

    .line 2495
    const-string v0, "net"

    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeDeviceIdleOnPhase(Ljava/lang/String;)V

    .line 2500
    :cond_1
    :goto_0
    monitor-exit v1

    .line 2501
    return-void

    .line 2497
    :cond_2
    const-string v0, "net"

    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffPhase(Ljava/lang/String;)V

    goto :goto_0

    .line 2500
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setNetworkPolicies([Landroid/net/NetworkPolicy;)V
    .locals 3
    .param p1, "policies"    # [Landroid/net/NetworkPolicy;

    .prologue
    .line 2336
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2338
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    .line 2339
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2340
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesLocked([Landroid/net/NetworkPolicy;)V

    .line 2341
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledLocked()V

    .line 2342
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesLocked()V

    .line 2343
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    .line 2344
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    .line 2345
    monitor-exit v1

    .line 2346
    return-void

    .line 2345
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setRestrictBackground(Z)V
    .locals 5
    .param p1, "restrictBackground"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2447
    const-string v2, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setRestrictBackground to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", called by uid/pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2451
    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->addToHtcNetPolicyManSrvHistory(ILjava/lang/String;)V

    .line 2454
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v4, "NetworkPolicy"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2456
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    .line 2457
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2458
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 2459
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForGlobalChangeLocked(Z)V

    .line 2460
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    .line 2461
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    .line 2462
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2464
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2466
    return-void

    .line 2462
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    move v0, v1

    .line 2464
    goto :goto_0
.end method

.method public setUidPolicy(II)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .prologue
    .line 2203
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v5, "NetworkPolicy"

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2205
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2206
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot apply policy to UID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2209
    :cond_0
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2210
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v2

    .line 2212
    .local v2, "token":J
    :try_start_1
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v5, 0x0

    invoke-virtual {v1, p1, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 2213
    .local v0, "oldPolicy":I
    if-eq v0, p2, :cond_1

    .line 2214
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedLocked(IIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2217
    :cond_1
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2219
    monitor-exit v4

    .line 2220
    return-void

    .line 2217
    .end local v0    # "oldPolicy":I
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 2219
    .end local v2    # "token":J
    :catchall_1
    move-exception v1

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public setWiFiRestrict(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 813
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mWiFirestriction:Z

    if-eq v0, p1, :cond_0

    .line 815
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->buildWiFiRestrict(Z)V

    .line 819
    :goto_0
    return-void

    .line 817
    :cond_0
    const-string v0, "NetworkPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWiFiRestrict: already issued, enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public snoozeLimit(Landroid/net/NetworkTemplate;)V
    .locals 5
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 2405
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v4, "NetworkPolicy"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2407
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2409
    .local v0, "token":J
    const/4 v2, 0x2

    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->performSnooze(Landroid/net/NetworkTemplate;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2411
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2413
    return-void

    .line 2411
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public systemReady()V
    .locals 17

    .prologue
    .line 536
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->isBandwidthControlEnabled()Z

    move-result v12

    if-nez v12, :cond_0

    .line 537
    const-string v12, "NetworkPolicy"

    const-string v13, "bandwidth controls disabled, unable to enforce policy"

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    :goto_0
    return-void

    .line 541
    :cond_0
    const-class v12, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v12}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/usage/UsageStatsManagerInternal;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    .line 543
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v13

    .line 544
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updatePowerSaveWhitelistLocked()V

    .line 545
    const-class v12, Landroid/os/PowerManagerInternal;

    invoke-static {v12}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/PowerManagerInternal;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 548
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaverRestrictBackground:Z

    if-nez v12, :cond_2

    .line 549
    const-string v12, "NetworkPolicy"

    const-string v14, "disable restrict background when enabling power saver"

    invoke-static {v12, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :goto_1
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mSystemReady:Z

    .line 570
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->readPolicyLocked()V

    .line 572
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-nez v12, :cond_1

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    if-nez v12, :cond_1

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    if-eqz v12, :cond_3

    .line 573
    :cond_1
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForGlobalChangeLocked(Z)V

    .line 574
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    .line 580
    :goto_2
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 582
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateScreenOn()V

    .line 585
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManager:Landroid/app/IActivityManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidObserver:Landroid/app/IUidObserver;

    invoke-interface {v12, v13}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;)V

    .line 586
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v12, v13}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 594
    :goto_3
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 595
    .local v5, "screenFilter":Landroid/content/IntentFilter;
    const-string v12, "android.intent.action.SCREEN_ON"

    invoke-virtual {v5, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 596
    const-string v12, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v5, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 597
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v12, v13, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 600
    new-instance v9, Landroid/content/IntentFilter;

    const-string v12, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    invoke-direct {v9, v12}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 602
    .local v9, "whitelistFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistReceiver:Landroid/content/BroadcastReceiver;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v12, v13, v9, v14, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 604
    const-class v12, Lcom/android/server/DeviceIdleController$LocalService;

    invoke-static {v12}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/DeviceIdleController$LocalService;

    .line 606
    .local v3, "deviceIdleService":Lcom/android/server/DeviceIdleController$LocalService;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mTempPowerSaveChangedCallback:Ljava/lang/Runnable;

    invoke-virtual {v3, v12}, Lcom/android/server/DeviceIdleController$LocalService;->setNetworkPolicyTempWhitelistCallback(Ljava/lang/Runnable;)V

    .line 609
    new-instance v2, Landroid/content/IntentFilter;

    const-string v12, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v12}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 610
    .local v2, "connFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    const-string v14, "android.permission.CONNECTIVITY_INTERNAL"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v12, v13, v2, v14, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 613
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 614
    .local v4, "packageFilter":Landroid/content/IntentFilter;
    const-string v12, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v4, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 615
    const-string v12, "package"

    invoke-virtual {v4, v12}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 616
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v12, v13, v4, v14, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 619
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v14, Landroid/content/IntentFilter;

    const-string v15, "android.intent.action.UID_REMOVED"

    invoke-direct {v14, v15}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    invoke-virtual/range {v12 .. v16}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 623
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 624
    .local v8, "userFilter":Landroid/content/IntentFilter;
    const-string v12, "android.intent.action.USER_ADDED"

    invoke-virtual {v8, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 625
    const-string v12, "android.intent.action.USER_REMOVED"

    invoke-virtual {v8, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 626
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v12, v13, v8, v14, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 629
    new-instance v7, Landroid/content/IntentFilter;

    const-string v12, "com.android.server.action.NETWORK_STATS_UPDATED"

    invoke-direct {v7, v12}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 630
    .local v7, "statsFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatsReceiver:Landroid/content/BroadcastReceiver;

    const-string v14, "android.permission.READ_NETWORK_USAGE_HISTORY"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v12, v13, v7, v14, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 634
    new-instance v1, Landroid/content/IntentFilter;

    const-string v12, "com.android.server.net.action.ALLOW_BACKGROUND"

    invoke-direct {v1, v12}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 635
    .local v1, "allowFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mAllowReceiver:Landroid/content/BroadcastReceiver;

    const-string v14, "android.permission.MANAGE_NETWORK_POLICY"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v12, v13, v1, v14, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 638
    new-instance v6, Landroid/content/IntentFilter;

    const-string v12, "com.android.server.net.action.SNOOZE_WARNING"

    invoke-direct {v6, v12}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 639
    .local v6, "snoozeWarningFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mSnoozeWarningReceiver:Landroid/content/BroadcastReceiver;

    const-string v14, "android.permission.MANAGE_NETWORK_POLICY"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v12, v13, v6, v14, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 643
    new-instance v10, Landroid/content/IntentFilter;

    const-string v12, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-direct {v10, v12}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 644
    .local v10, "wifiConfigFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiConfigReceiver:Landroid/content/BroadcastReceiver;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v12, v13, v10, v14, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 647
    new-instance v11, Landroid/content/IntentFilter;

    const-string v12, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v11, v12}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 649
    .local v11, "wifiStateFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v12, v13, v11, v14, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 651
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    new-instance v13, Lcom/android/server/net/NetworkPolicyManagerService$AppIdleStateChangeListener;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lcom/android/server/net/NetworkPolicyManagerService$AppIdleStateChangeListener;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/net/NetworkPolicyManagerService$1;)V

    invoke-virtual {v12, v13}, Landroid/app/usage/UsageStatsManagerInternal;->addAppIdleStateChangeListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V

    goto/16 :goto_0

    .line 551
    .end local v1    # "allowFilter":Landroid/content/IntentFilter;
    .end local v2    # "connFilter":Landroid/content/IntentFilter;
    .end local v3    # "deviceIdleService":Lcom/android/server/DeviceIdleController$LocalService;
    .end local v4    # "packageFilter":Landroid/content/IntentFilter;
    .end local v5    # "screenFilter":Landroid/content/IntentFilter;
    .end local v6    # "snoozeWarningFilter":Landroid/content/IntentFilter;
    .end local v7    # "statsFilter":Landroid/content/IntentFilter;
    .end local v8    # "userFilter":Landroid/content/IntentFilter;
    .end local v9    # "whitelistFilter":Landroid/content/IntentFilter;
    .end local v10    # "wifiConfigFilter":Landroid/content/IntentFilter;
    .end local v11    # "wifiStateFilter":Landroid/content/IntentFilter;
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    new-instance v14, Lcom/android/server/net/NetworkPolicyManagerService$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/server/net/NetworkPolicyManagerService$1;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    invoke-virtual {v12, v14}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 563
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v12}, Landroid/os/PowerManagerInternal;->getLowPowerModeEnabled()Z

    move-result v12

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    goto/16 :goto_1

    .line 580
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v12

    .line 578
    :cond_3
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForAppIdleLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    .line 587
    :catch_0
    move-exception v12

    goto/16 :goto_3
.end method

.method public unregisterHtcpolicyCallback(Landroid/net/IHtcPolicyCallback;)V
    .locals 1
    .param p1, "policyCallback"    # Landroid/net/IHtcPolicyCallback;

    .prologue
    .line 3449
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 3450
    return-void
.end method

.method public unregisterListener(Landroid/net/INetworkPolicyListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;

    .prologue
    .line 2329
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2331
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 2332
    return-void
.end method

.method updateNetworkEnabledLocked()V
    .locals 18

    .prologue
    .line 1504
    const-string v2, "NetworkPolicy"

    const-string v3, "updateNetworkEnabledLocked()"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->currentTimeMillis()J

    move-result-wide v8

    .line 1510
    .local v8, "currentTime":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v10, v2, -0x1

    .local v10, "i":I
    :goto_0
    if-ltz v10, :cond_4

    .line 1511
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v2, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/NetworkPolicy;

    .line 1513
    .local v13, "policy":Landroid/net/NetworkPolicy;
    iget-wide v2, v13, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v16, -0x1

    cmp-long v2, v2, v16

    if-eqz v2, :cond_0

    invoke-virtual {v13}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1514
    :cond_0
    iget-object v2, v13, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkTemplateEnabled(Landroid/net/NetworkTemplate;Z)V

    .line 1510
    :goto_1
    add-int/lit8 v10, v10, -0x1

    goto :goto_0

    .line 1518
    :cond_1
    invoke-static {v8, v9, v13}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v4

    .line 1519
    .local v4, "start":J
    move-wide v6, v8

    .line 1520
    .local v6, "end":J
    iget-object v3, v13, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v14

    .line 1523
    .local v14, "totalBytes":J
    invoke-virtual {v13, v14, v15}, Landroid/net/NetworkPolicy;->isOverLimit(J)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, v13, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    const/4 v12, 0x1

    .line 1525
    .local v12, "overLimitWithoutSnooze":Z
    :goto_2
    if-nez v12, :cond_3

    const/4 v11, 0x1

    .line 1527
    .local v11, "networkEnabled":Z
    :goto_3
    iget-object v2, v13, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkTemplateEnabled(Landroid/net/NetworkTemplate;Z)V

    goto :goto_1

    .line 1523
    .end local v11    # "networkEnabled":Z
    .end local v12    # "overLimitWithoutSnooze":Z
    :cond_2
    const/4 v12, 0x0

    goto :goto_2

    .line 1525
    .restart local v12    # "overLimitWithoutSnooze":Z
    :cond_3
    const/4 v11, 0x0

    goto :goto_3

    .line 1529
    .end local v4    # "start":J
    .end local v6    # "end":J
    .end local v12    # "overLimitWithoutSnooze":Z
    .end local v13    # "policy":Landroid/net/NetworkPolicy;
    .end local v14    # "totalBytes":J
    :cond_4
    return-void
.end method

.method updateNetworkRulesLocked()V
    .locals 44

    .prologue
    .line 1546
    const-string v4, "NetworkPolicy"

    const-string v5, "updateNetworkRulesLocked()"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/IConnectivityManager;

    invoke-interface {v4}, Landroid/net/IConnectivityManager;->getAllNetworkState()[Landroid/net/NetworkState;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v39

    .line 1562
    .local v39, "states":[Landroid/net/NetworkState;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-nez v4, :cond_2

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHtcRestrictBackground:Z

    if-nez v4, :cond_2

    const/16 v32, 0x1

    .line 1567
    .local v32, "powerSave":Z
    :goto_0
    new-instance v12, Ljava/util/ArrayList;

    move-object/from16 v0, v39

    array-length v4, v0

    invoke-direct {v12, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1568
    .local v12, "connIdents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Landroid/net/NetworkIdentity;>;>;"
    new-instance v13, Landroid/util/ArraySet;

    move-object/from16 v0, v39

    array-length v4, v0

    invoke-direct {v13, v4}, Landroid/util/ArraySet;-><init>(I)V

    .line 1569
    .local v13, "connIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v10, v39

    .local v10, "arr$":[Landroid/net/NetworkState;
    array-length v0, v10

    move/from16 v26, v0

    .local v26, "len$":I
    const/16 v18, 0x0

    .local v18, "i$":I
    move/from16 v19, v18

    .end local v18    # "i$":I
    .local v19, "i$":I
    :goto_1
    move/from16 v0, v19

    move/from16 v1, v26

    if-ge v0, v1, :cond_4

    aget-object v38, v10, v19

    .line 1571
    .local v38, "state":Landroid/net/NetworkState;
    move-object/from16 v0, v38

    iget-object v4, v0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    if-eqz v4, :cond_3

    move-object/from16 v0, v38

    iget-object v4, v0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1573
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v38

    invoke-static {v4, v0}, Landroid/net/NetworkIdentity;->buildNetworkIdentity(Landroid/content/Context;Landroid/net/NetworkState;)Landroid/net/NetworkIdentity;

    move-result-object v20

    .line 1575
    .local v20, "ident":Landroid/net/NetworkIdentity;
    move-object/from16 v0, v38

    iget-object v4, v0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/net/NetworkIdentity;->setCapabilities(Landroid/net/NetworkCapabilities;)V

    .line 1578
    move-object/from16 v0, v38

    iget-object v4, v0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v11

    .line 1579
    .local v11, "baseIface":Ljava/lang/String;
    if-eqz v11, :cond_0

    .line 1580
    move-object/from16 v0, v20

    invoke-static {v11, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1581
    if-eqz v32, :cond_0

    .line 1582
    invoke-virtual {v13, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1588
    :cond_0
    move-object/from16 v0, v38

    iget-object v4, v0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getStackedLinks()Ljava/util/List;

    move-result-object v37

    .line 1589
    .local v37, "stackedLinks":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkProperties;>;"
    invoke-interface/range {v37 .. v37}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .end local v19    # "i$":I
    .local v18, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/net/LinkProperties;

    .line 1590
    .local v36, "stackedLink":Landroid/net/LinkProperties;
    invoke-virtual/range {v36 .. v36}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v33

    .line 1591
    .local v33, "stackedIface":Ljava/lang/String;
    if-eqz v33, :cond_1

    .line 1592
    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1593
    if-eqz v32, :cond_1

    .line 1594
    move-object/from16 v0, v33

    invoke-virtual {v13, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1551
    .end local v10    # "arr$":[Landroid/net/NetworkState;
    .end local v11    # "baseIface":Ljava/lang/String;
    .end local v12    # "connIdents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Landroid/net/NetworkIdentity;>;>;"
    .end local v13    # "connIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v20    # "ident":Landroid/net/NetworkIdentity;
    .end local v26    # "len$":I
    .end local v32    # "powerSave":Z
    .end local v33    # "stackedIface":Ljava/lang/String;
    .end local v36    # "stackedLink":Landroid/net/LinkProperties;
    .end local v37    # "stackedLinks":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkProperties;>;"
    .end local v38    # "state":Landroid/net/NetworkState;
    .end local v39    # "states":[Landroid/net/NetworkState;
    :catch_0
    move-exception v14

    .line 1743
    :goto_3
    return-void

    .line 1562
    .restart local v39    # "states":[Landroid/net/NetworkState;
    :cond_2
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 1569
    .restart local v10    # "arr$":[Landroid/net/NetworkState;
    .restart local v12    # "connIdents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Landroid/net/NetworkIdentity;>;>;"
    .restart local v13    # "connIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v26    # "len$":I
    .restart local v32    # "powerSave":Z
    .restart local v38    # "state":Landroid/net/NetworkState;
    :cond_3
    add-int/lit8 v18, v19, 0x1

    .local v18, "i$":I
    move/from16 v19, v18

    .end local v18    # "i$":I
    .restart local v19    # "i$":I
    goto :goto_1

    .line 1602
    .end local v38    # "state":Landroid/net/NetworkState;
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    .line 1603
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v23

    .line 1604
    .local v23, "ifaceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v17, v4, -0x1

    .local v17, "i":I
    :goto_4
    if-ltz v17, :cond_9

    .line 1605
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/net/NetworkPolicy;

    .line 1607
    .local v31, "policy":Landroid/net/NetworkPolicy;
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->clear()V

    .line 1608
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v25, v4, -0x1

    .local v25, "j":I
    :goto_5
    if-ltz v25, :cond_7

    .line 1609
    move/from16 v0, v25

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/util/Pair;

    .line 1613
    .local v21, "ident":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/net/NetworkIdentity;>;"
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mEPSenable:Z

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mScreenOn:Z

    if-nez v4, :cond_6

    move-object/from16 v0, v31

    iget-object v4, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v4}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_6

    .line 1617
    move-object/from16 v0, v21

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/net/NetworkIdentity;

    invoke-virtual {v4}, Landroid/net/NetworkIdentity;->getSubscriberId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 1618
    move-object/from16 v0, v21

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1608
    :cond_5
    :goto_6
    add-int/lit8 v25, v25, -0x1

    goto :goto_5

    .line 1622
    :cond_6
    move-object/from16 v0, v31

    iget-object v5, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v0, v21

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/net/NetworkIdentity;

    invoke-virtual {v5, v4}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1623
    move-object/from16 v0, v21

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1628
    .end local v21    # "ident":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/net/NetworkIdentity;>;"
    :cond_7
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_8

    .line 1629
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v24

    check-cast v24, [Ljava/lang/String;

    .line 1630
    .local v24, "ifaces":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Landroid/util/ArrayMap;

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1604
    .end local v24    # "ifaces":[Ljava/lang/String;
    :cond_8
    add-int/lit8 v17, v17, -0x1

    goto/16 :goto_4

    .line 1634
    .end local v25    # "j":I
    .end local v31    # "policy":Landroid/net/NetworkPolicy;
    :cond_9
    const-wide v28, 0x7fffffffffffffffL

    .line 1635
    .local v28, "lowestRule":J
    new-instance v30, Landroid/util/ArraySet;

    move-object/from16 v0, v39

    array-length v4, v0

    move-object/from16 v0, v30

    invoke-direct {v0, v4}, Landroid/util/ArraySet;-><init>(I)V

    .line 1639
    .local v30, "newMeteredIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->currentTimeMillis()J

    move-result-wide v8

    .line 1640
    .local v8, "currentTime":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v17, v4, -0x1

    .end local v10    # "arr$":[Landroid/net/NetworkState;
    .end local v19    # "i$":I
    :goto_7
    if-ltz v17, :cond_17

    .line 1641
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Landroid/util/ArrayMap;

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/net/NetworkPolicy;

    .line 1642
    .restart local v31    # "policy":Landroid/net/NetworkPolicy;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Landroid/util/ArrayMap;

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, [Ljava/lang/String;

    .line 1646
    .restart local v24    # "ifaces":[Ljava/lang/String;
    invoke-virtual/range {v31 .. v31}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1647
    move-object/from16 v0, v31

    invoke-static {v8, v9, v0}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v6

    .line 1648
    .local v6, "start":J
    move-object/from16 v0, v31

    iget-object v5, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v40

    .line 1655
    .local v40, "totalBytes":J
    :goto_8
    const-string v4, "NetworkPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "applying policy "

    move-object/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v31 .. v31}, Landroid/net/NetworkPolicy;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v42, " to ifaces "

    move-object/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v24 .. v24}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1659
    move-object/from16 v0, v31

    iget-wide v4, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    const-wide/16 v42, -0x1

    cmp-long v4, v4, v42

    if-eqz v4, :cond_f

    const/16 v16, 0x1

    .line 1660
    .local v16, "hasWarning":Z
    :goto_9
    move-object/from16 v0, v31

    iget-wide v4, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v42, -0x1

    cmp-long v4, v4, v42

    if-eqz v4, :cond_10

    const/4 v15, 0x1

    .line 1661
    .local v15, "hasLimit":Z
    :goto_a
    if-nez v15, :cond_a

    move-object/from16 v0, v31

    iget-boolean v4, v0, Landroid/net/NetworkPolicy;->metered:Z

    if-eqz v4, :cond_14

    .line 1664
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mEPSenable:Z

    if-eqz v4, :cond_11

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mScreenOn:Z

    if-nez v4, :cond_11

    .line 1665
    const-string v4, "NetworkPolicy"

    const-string v5, "EPS mode with screen off"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    const-wide/16 v34, 0x1

    .line 1683
    .local v34, "quotaBytes":J
    :goto_b
    move-object/from16 v0, v24

    array-length v4, v0

    const/4 v5, 0x1

    if-le v4, v5, :cond_b

    .line 1685
    const-string v4, "NetworkPolicy"

    const-string v5, "shared quota unsupported; generating rule for each iface"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1688
    :cond_b
    move-object/from16 v10, v24

    .local v10, "arr$":[Ljava/lang/String;
    array-length v0, v10

    move/from16 v26, v0

    const/16 v18, 0x0

    .restart local v18    # "i$":I
    :goto_c
    move/from16 v0, v18

    move/from16 v1, v26

    if-ge v0, v1, :cond_14

    aget-object v22, v10, v18

    .line 1689
    .local v22, "iface":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->removeInterfaceQuota(Ljava/lang/String;)V

    .line 1691
    const-wide/16 v4, 0x1

    cmp-long v4, v34, v4

    if-nez v4, :cond_c

    .line 1692
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mLimitedQuotas:Ljava/util/HashMap;

    move-object/from16 v0, v31

    iget-object v5, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v5}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1695
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-wide/from16 v2, v34

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setInterfaceQuota(Ljava/lang/String;J)V

    .line 1696
    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1697
    if-eqz v32, :cond_d

    .line 1698
    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1688
    :cond_d
    add-int/lit8 v18, v18, 0x1

    goto :goto_c

    .line 1650
    .end local v6    # "start":J
    .end local v10    # "arr$":[Ljava/lang/String;
    .end local v15    # "hasLimit":Z
    .end local v16    # "hasWarning":Z
    .end local v18    # "i$":I
    .end local v22    # "iface":Ljava/lang/String;
    .end local v34    # "quotaBytes":J
    .end local v40    # "totalBytes":J
    :cond_e
    const-wide v6, 0x7fffffffffffffffL

    .line 1651
    .restart local v6    # "start":J
    const-wide/16 v40, 0x0

    .restart local v40    # "totalBytes":J
    goto/16 :goto_8

    .line 1659
    :cond_f
    const/16 v16, 0x0

    goto/16 :goto_9

    .line 1660
    .restart local v16    # "hasWarning":Z
    :cond_10
    const/4 v15, 0x0

    goto/16 :goto_a

    .line 1667
    .restart local v15    # "hasLimit":Z
    :cond_11
    if-nez v15, :cond_12

    .line 1671
    const-wide v34, 0x7fffffffffffffffL

    .restart local v34    # "quotaBytes":J
    goto :goto_b

    .line 1672
    .end local v34    # "quotaBytes":J
    :cond_12
    move-object/from16 v0, v31

    iget-wide v4, v0, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_13

    .line 1675
    const-wide v34, 0x7fffffffffffffffL

    .restart local v34    # "quotaBytes":J
    goto :goto_b

    .line 1680
    .end local v34    # "quotaBytes":J
    :cond_13
    const-wide/16 v4, 0x1

    move-object/from16 v0, v31

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    move-wide/from16 v42, v0

    sub-long v42, v42, v40

    move-wide/from16 v0, v42

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v34

    .restart local v34    # "quotaBytes":J
    goto/16 :goto_b

    .line 1704
    .end local v34    # "quotaBytes":J
    :cond_14
    if-eqz v16, :cond_15

    move-object/from16 v0, v31

    iget-wide v4, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v4, v4, v28

    if-gez v4, :cond_15

    .line 1705
    move-object/from16 v0, v31

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    move-wide/from16 v28, v0

    .line 1707
    :cond_15
    if-eqz v15, :cond_16

    move-object/from16 v0, v31

    iget-wide v4, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v4, v4, v28

    if-gez v4, :cond_16

    .line 1708
    move-object/from16 v0, v31

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    move-wide/from16 v28, v0

    .line 1640
    :cond_16
    add-int/lit8 v17, v17, -0x1

    goto/16 :goto_7

    .line 1712
    .end local v6    # "start":J
    .end local v15    # "hasLimit":Z
    .end local v16    # "hasWarning":Z
    .end local v24    # "ifaces":[Ljava/lang/String;
    .end local v31    # "policy":Landroid/net/NetworkPolicy;
    .end local v40    # "totalBytes":J
    :cond_17
    invoke-virtual {v13}, Landroid/util/ArraySet;->size()I

    move-result v4

    add-int/lit8 v17, v4, -0x1

    :goto_d
    if-ltz v17, :cond_18

    .line 1713
    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 1714
    .restart local v22    # "iface":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->removeInterfaceQuota(Ljava/lang/String;)V

    .line 1715
    const-wide v4, 0x7fffffffffffffffL

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v4, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->setInterfaceQuota(Ljava/lang/String;J)V

    .line 1716
    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1712
    add-int/lit8 v17, v17, -0x1

    goto :goto_d

    .line 1719
    .end local v22    # "iface":Ljava/lang/String;
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x7

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v4, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 1722
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    add-int/lit8 v17, v4, -0x1

    :goto_e
    if-ltz v17, :cond_1a

    .line 1723
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 1724
    .restart local v22    # "iface":Ljava/lang/String;
    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    .line 1725
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->removeInterfaceQuota(Ljava/lang/String;)V

    .line 1722
    :cond_19
    add-int/lit8 v17, v17, -0x1

    goto :goto_e

    .line 1731
    .end local v22    # "iface":Ljava/lang/String;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    .line 1732
    const-string v4, "NetworkPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "Metered ifaces changed, old Ifaces "

    move-object/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/util/ArraySet;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v42, ", New Ifaces "

    move-object/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v30 .. v30}, Landroid/util/ArraySet;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    const/4 v4, 0x4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/util/ArraySet;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v42, " to "

    move-object/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v30 .. v30}, Landroid/util/ArraySet;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->addToHtcNetPolicyManSrvHistory(ILjava/lang/String;)V

    .line 1739
    :cond_1b
    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    .line 1741
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v27

    check-cast v27, [Ljava/lang/String;

    .line 1742
    .local v27, "meteredIfaces":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v4, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_3
.end method

.method updateNotificationsLocked()V
    .locals 14

    .prologue
    .line 1069
    new-instance v6, Landroid/util/ArraySet;

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    invoke-direct {v6, v0}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 1070
    .local v6, "beforeNotifs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 1076
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->currentTimeMillis()J

    move-result-wide v8

    .line 1077
    .local v8, "currentTime":J
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    .local v7, "i":I
    :goto_0
    if-ltz v7, :cond_4

    .line 1078
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v0, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/NetworkPolicy;

    .line 1080
    .local v10, "policy":Landroid/net/NetworkPolicy;
    iget-object v0, v10, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->isTemplateRelevant(Landroid/net/NetworkTemplate;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1077
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 1081
    :cond_1
    invoke-virtual {v10}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1083
    invoke-static {v8, v9, v10}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v2

    .line 1084
    .local v2, "start":J
    move-wide v4, v8

    .line 1085
    .local v4, "end":J
    iget-object v1, v10, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v12

    .line 1087
    .local v12, "totalBytes":J
    invoke-virtual {v10, v12, v13}, Landroid/net/NetworkPolicy;->isOverLimit(J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1088
    iget-wide v0, v10, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 1089
    const/4 v0, 0x3

    invoke-direct {p0, v10, v0, v12, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->enqueueNotification(Landroid/net/NetworkPolicy;IJ)V

    goto :goto_1

    .line 1091
    :cond_2
    const/4 v0, 0x2

    invoke-direct {p0, v10, v0, v12, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->enqueueNotification(Landroid/net/NetworkPolicy;IJ)V

    .line 1092
    iget-object v0, v10, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->notifyOverLimitLocked(Landroid/net/NetworkTemplate;)V

    goto :goto_1

    .line 1096
    :cond_3
    iget-object v0, v10, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->notifyUnderLimitLocked(Landroid/net/NetworkTemplate;)V

    .line 1098
    invoke-virtual {v10, v12, v13}, Landroid/net/NetworkPolicy;->isOverWarning(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, v10, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 1099
    const/4 v0, 0x1

    invoke-direct {p0, v10, v0, v12, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->enqueueNotification(Landroid/net/NetworkPolicy;IJ)V

    goto :goto_1

    .line 1106
    .end local v2    # "start":J
    .end local v4    # "end":J
    .end local v10    # "policy":Landroid/net/NetworkPolicy;
    .end local v12    # "totalBytes":J
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHtcRestrictBackground:Z

    if-eqz v0, :cond_7

    .line 1107
    :cond_5
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictRequests:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1108
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->configGlobalPcoValue()V

    .line 1111
    :cond_6
    iget v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPcoValue:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_7

    .line 1112
    const-string v0, "NetworkPolicy:allowBackground"

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->enqueueRestrictedNotification(Ljava/lang/String;)V

    .line 1118
    :cond_7
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    :goto_2
    if-ltz v7, :cond_9

    .line 1119
    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1120
    .local v11, "tag":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    invoke-virtual {v0, v11}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1121
    invoke-direct {p0, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->cancelNotification(Ljava/lang/String;)V

    .line 1118
    :cond_8
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 1124
    .end local v11    # "tag":Ljava/lang/String;
    :cond_9
    return-void
.end method

.method updatePowerSaveTempWhitelistLocked()V
    .locals 9

    .prologue
    .line 508
    :try_start_0
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 509
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 510
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    const/4 v8, 0x0

    invoke-virtual {v7, v2, v8}, Landroid/util/SparseBooleanArray;->setValueAt(IZ)V

    .line 509
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 513
    :cond_0
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    invoke-interface {v7}, Landroid/os/IDeviceIdleController;->getAppIdTempWhitelist()[I

    move-result-object v6

    .line 514
    .local v6, "whitelist":[I
    if-eqz v6, :cond_1

    .line 515
    move-object v1, v6

    .local v1, "arr$":[I
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_1

    aget v5, v1, v3

    .line 516
    .local v5, "uid":I
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    const/4 v8, 0x1

    invoke-virtual {v7, v5, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 515
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 519
    .end local v0    # "N":I
    .end local v1    # "arr$":[I
    .end local v2    # "i":I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "uid":I
    .end local v6    # "whitelist":[I
    :catch_0
    move-exception v7

    .line 521
    :cond_1
    return-void
.end method

.method updatePowerSaveWhitelistLocked()V
    .locals 7

    .prologue
    .line 487
    :try_start_0
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    invoke-interface {v5}, Landroid/os/IDeviceIdleController;->getAppIdWhitelistExceptIdle()[I

    move-result-object v4

    .line 488
    .local v4, "whitelist":[I
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->clear()V

    .line 489
    if-eqz v4, :cond_0

    .line 490
    move-object v0, v4

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, v0, v1

    .line 491
    .local v3, "uid":I
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    const/4 v6, 0x1

    invoke-virtual {v5, v3, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 490
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 494
    .end local v0    # "arr$":[I
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "uid":I
    :cond_0
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    invoke-interface {v5}, Landroid/os/IDeviceIdleController;->getAppIdWhitelist()[I

    move-result-object v4

    .line 495
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->clear()V

    .line 496
    if-eqz v4, :cond_1

    .line 497
    move-object v0, v4

    .restart local v0    # "arr$":[I
    array-length v2, v0

    .restart local v2    # "len$":I
    const/4 v1, 0x0

    .restart local v1    # "i$":I
    :goto_1
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    .line 498
    .restart local v3    # "uid":I
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    const/4 v6, 0x1

    invoke-virtual {v5, v3, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 501
    .end local v0    # "arr$":[I
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "uid":I
    .end local v4    # "whitelist":[I
    :catch_0
    move-exception v5

    .line 503
    :cond_1
    return-void
.end method

.method updateRuleForAppIdleLocked(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    const/4 v2, 0x2

    .line 2931
    invoke-static {p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForRules(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2939
    :goto_0
    return-void

    .line 2933
    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 2934
    .local v0, "appId":I
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidIdle(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2935
    invoke-direct {p0, v2, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRule(III)V

    goto :goto_0

    .line 2937
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v2, p1, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRule(III)V

    goto :goto_0
.end method

.method updateRuleForDeviceIdleLocked(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    const/4 v2, 0x1

    .line 2903
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    if-eqz v1, :cond_1

    .line 2904
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 2905
    .local v0, "appId":I
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->isProcStateAllowedWhileIdle(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2907
    :cond_0
    invoke-direct {p0, v2, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRule(III)V

    .line 2912
    .end local v0    # "appId":I
    :cond_1
    :goto_0
    return-void

    .line 2909
    .restart local v0    # "appId":I
    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0, v2, p1, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRule(III)V

    goto :goto_0
.end method

.method updateRulesForAppIdleLocked()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    .line 2916
    new-instance v6, Landroid/util/SparseIntArray;

    invoke-direct {v6}, Landroid/util/SparseIntArray;-><init>()V

    .line 2917
    .local v6, "uidRules":Landroid/util/SparseIntArray;
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v9}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v8

    .line 2918
    .local v8, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v4, v9, -0x1

    .local v4, "ui":I
    :goto_0
    if-ltz v4, :cond_2

    .line 2919
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 2920
    .local v7, "user":Landroid/content/pm/UserInfo;
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    iget v10, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v9, v10}, Landroid/app/usage/UsageStatsManagerInternal;->getIdleUidsForUser(I)[I

    move-result-object v2

    .line 2921
    .local v2, "idleUids":[I
    move-object v0, v2

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v3, :cond_1

    aget v5, v0, v1

    .line 2922
    .local v5, "uid":I
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v9

    if-nez v9, :cond_0

    .line 2923
    invoke-virtual {v6, v5, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2921
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2918
    .end local v5    # "uid":I
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 2927
    .end local v0    # "arr$":[I
    .end local v1    # "i$":I
    .end local v2    # "idleUids":[I
    .end local v3    # "len$":I
    .end local v7    # "user":Landroid/content/pm/UserInfo;
    :cond_2
    invoke-direct {p0, v12, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRules(ILandroid/util/SparseIntArray;)V

    .line 2928
    return-void
.end method

.method updateRulesForAppIdleParoleLocked()V
    .locals 2

    .prologue
    .line 2942
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v1}, Landroid/app/usage/UsageStatsManagerInternal;->isAppIdleParoleOn()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 2943
    .local v0, "enableChain":Z
    :goto_0
    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->enableFirewallChainLocked(IZ)V

    .line 2944
    return-void

    .line 2942
    .end local v0    # "enableChain":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method updateRulesForDeviceIdleLocked()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 2872
    iget-boolean v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    if-eqz v7, :cond_6

    .line 2875
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    .line 2876
    .local v4, "uidRules":Landroid/util/SparseIntArray;
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v7}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v6

    .line 2877
    .local v6, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    .local v2, "ui":I
    :goto_0
    if-ltz v2, :cond_3

    .line 2878
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 2879
    .local v5, "user":Landroid/content/pm/UserInfo;
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_1

    .line 2880
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2881
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 2882
    .local v0, "appId":I
    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v7, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    .line 2883
    .local v3, "uid":I
    invoke-virtual {v4, v3, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2879
    .end local v0    # "appId":I
    .end local v3    # "uid":I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 2886
    :cond_1
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    :goto_2
    if-ltz v1, :cond_2

    .line 2887
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 2888
    .restart local v0    # "appId":I
    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v7, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    .line 2889
    .restart local v3    # "uid":I
    invoke-virtual {v4, v3, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2886
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 2877
    .end local v0    # "appId":I
    .end local v3    # "uid":I
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2892
    .end local v1    # "i":I
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    :cond_3
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    .restart local v1    # "i":I
    :goto_3
    if-ltz v1, :cond_5

    .line 2893
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    invoke-static {v7}, Lcom/android/server/net/NetworkPolicyManagerService;->isProcStateAllowedWhileIdle(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2894
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v4, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2892
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 2897
    :cond_5
    invoke-direct {p0, v8, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRules(ILandroid/util/SparseIntArray;)V

    .line 2899
    .end local v1    # "i":I
    .end local v2    # "ui":I
    .end local v4    # "uidRules":Landroid/util/SparseIntArray;
    .end local v6    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_6
    iget-boolean v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    invoke-direct {p0, v8, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->enableFirewallChainLocked(IZ)V

    .line 2900
    return-void
.end method

.method updateRulesForGlobalChangeLocked(Z)V
    .locals 17
    .param p1, "restrictedNetworksChanged"    # Z

    .prologue
    .line 2951
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 2953
    .local v10, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDeviceIdleLocked()V

    .line 2954
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForAppIdleLocked()V

    .line 2957
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v14}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v13

    .line 2958
    .local v13, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/16 v14, 0x2200

    invoke-virtual {v10, v14}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 2964
    .local v2, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mWhiteUid:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 2966
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUsgaeWhiteList:[Ljava/lang/String;

    .local v3, "arr$":[Ljava/lang/String;
    array-length v8, v3

    .local v8, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v8, :cond_1

    aget-object v9, v3, v5

    .line 2970
    .local v9, "list":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_0

    .line 2971
    const/4 v14, 0x0

    invoke-virtual {v10, v9, v14}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    iget v7, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2972
    .local v7, "id":I
    const-string v14, "NetworkPolicy"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "updateRulesForRestrictBackgroundLocked: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2973
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mWhiteUid:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2966
    .end local v7    # "id":I
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2975
    :catch_0
    move-exception v4

    .line 2976
    .local v4, "e":Ljava/lang/Exception;
    const-string v14, "NetworkPolicy"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "updateRulesForRestrictBackgroundLocked:["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "],e="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2980
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v9    # "list":Ljava/lang/String;
    :cond_1
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v5    # "i$":I
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/UserInfo;

    .line 2981
    .local v12, "user":Landroid/content/pm/UserInfo;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 2982
    .local v1, "app":Landroid/content/pm/ApplicationInfo;
    iget v14, v12, Landroid/content/pm/UserInfo;->id:I

    iget v15, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v14, v15}, Landroid/os/UserHandle;->getUid(II)I

    move-result v11

    .line 2983
    .local v11, "uid":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    goto :goto_2

    .line 2988
    .end local v1    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v11    # "uid":I
    .end local v12    # "user":Landroid/content/pm/UserInfo;
    :cond_3
    const/16 v14, 0x3f5

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    .line 2989
    const/16 v14, 0x3fb

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    .line 2992
    if-eqz p1, :cond_4

    .line 2993
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesLocked()V

    .line 2994
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesLocked()V

    .line 2996
    :cond_4
    return-void
.end method

.method updateRulesForTempWhitelistChangeLocked()V
    .locals 7

    .prologue
    .line 2999
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v5

    .line 3000
    .local v5, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 3001
    .local v4, "user":Landroid/content/pm/UserInfo;
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 3002
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 3003
    .local v0, "appId":I
    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v6, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    .line 3004
    .local v3, "uid":I
    invoke-virtual {p0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForAppIdleLocked(I)V

    .line 3005
    invoke-virtual {p0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForDeviceIdleLocked(I)V

    .line 3001
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3008
    .end local v0    # "appId":I
    .end local v1    # "i":I
    .end local v3    # "uid":I
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    return-void
.end method

.method updateRulesForUidLocked(I)V
    .locals 13
    .param p1, "uid"    # I

    .prologue
    .line 3051
    invoke-static {p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForRules(I)Z

    move-result v10

    if-nez v10, :cond_1

    .line 3129
    :cond_0
    :goto_0
    return-void

    .line 3055
    :cond_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 3057
    .local v1, "ipm":Landroid/content/pm/IPackageManager;
    :try_start_0
    const-string v10, "android.permission.INTERNET"

    invoke-interface {v1, v10, p1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v10

    if-nez v10, :cond_0

    .line 3064
    :goto_1
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v11, 0x0

    invoke-virtual {v10, p1, v11}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    .line 3065
    .local v7, "uidPolicy":I
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundLocked(I)Z

    move-result v6

    .line 3068
    .local v6, "uidForeground":Z
    iget-boolean v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mEPSenable:Z

    if-eqz v10, :cond_7

    iget-boolean v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mScreenOn:Z

    if-eqz v10, :cond_7

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isWhiteListUid(I)Z

    move-result v2

    .line 3071
    .local v2, "isWhiteListUid":Z
    :goto_2
    iget-boolean v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mEPSenable:Z

    if-eqz v10, :cond_3

    if-nez v2, :cond_2

    if-eqz v6, :cond_3

    .line 3072
    :cond_2
    const-string v10, "NetworkPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateRulesForUidLocked, uid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", Foreground="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", isWhiteList="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3077
    :cond_3
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 3078
    .local v0, "appId":I
    const/4 v8, 0x0

    .line 3080
    .local v8, "uidRules":I
    if-nez v2, :cond_8

    if-nez v6, :cond_8

    and-int/lit8 v10, v7, 0x1

    if-eqz v10, :cond_8

    .line 3082
    const/4 v8, 0x1

    .line 3103
    :cond_4
    :goto_3
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v10, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    .line 3105
    .local v4, "oldRules":I
    if-nez v8, :cond_d

    .line 3106
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v10, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 3112
    :goto_4
    and-int/lit8 v10, v4, 0x1

    if-eqz v10, :cond_e

    const/4 v3, 0x1

    .line 3113
    .local v3, "oldRejectMetered":Z
    :goto_5
    and-int/lit8 v10, v8, 0x1

    if-eqz v10, :cond_f

    const/4 v5, 0x1

    .line 3114
    .local v5, "rejectMetered":Z
    :goto_6
    if-eq v3, v5, :cond_5

    .line 3115
    invoke-direct {p0, p1, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidNetworkRules(IZ)V

    .line 3119
    :cond_5
    if-eq v4, v8, :cond_6

    .line 3120
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11, p1, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    .line 3125
    :cond_6
    :try_start_1
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;

    invoke-interface {v10, p1, v6}, Landroid/net/INetworkStatsService;->setUidForeground(IZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 3126
    :catch_0
    move-exception v10

    goto/16 :goto_0

    .line 3068
    .end local v0    # "appId":I
    .end local v2    # "isWhiteListUid":Z
    .end local v3    # "oldRejectMetered":Z
    .end local v4    # "oldRules":I
    .end local v5    # "rejectMetered":Z
    .end local v8    # "uidRules":I
    :cond_7
    const/4 v2, 0x0

    goto :goto_2

    .line 3084
    .restart local v0    # "appId":I
    .restart local v2    # "isWhiteListUid":Z
    .restart local v8    # "uidRules":I
    :cond_8
    iget-boolean v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-nez v10, :cond_9

    iget-boolean v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHtcRestrictBackground:Z

    if-eqz v10, :cond_a

    .line 3086
    :cond_9
    if-nez v2, :cond_4

    if-nez v6, :cond_4

    .line 3088
    const/4 v8, 0x1

    goto :goto_3

    .line 3091
    :cond_a
    iget-boolean v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    if-eqz v10, :cond_4

    .line 3092
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v10, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v10

    if-nez v10, :cond_b

    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v10, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v10

    if-eqz v10, :cond_c

    :cond_b
    const/4 v9, 0x1

    .line 3094
    .local v9, "whitelisted":Z
    :goto_7
    if-nez v9, :cond_4

    if-nez v6, :cond_4

    and-int/lit8 v10, v7, 0x2

    if-nez v10, :cond_4

    .line 3099
    const/4 v8, 0x1

    goto :goto_3

    .line 3092
    .end local v9    # "whitelisted":Z
    :cond_c
    const/4 v9, 0x0

    goto :goto_7

    .line 3108
    .restart local v4    # "oldRules":I
    :cond_d
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v10, p1, v8}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_4

    .line 3112
    :cond_e
    const/4 v3, 0x0

    goto :goto_5

    .line 3113
    .restart local v3    # "oldRejectMetered":Z
    :cond_f
    const/4 v5, 0x0

    goto :goto_6

    .line 3061
    .end local v0    # "appId":I
    .end local v2    # "isWhiteListUid":Z
    .end local v3    # "oldRejectMetered":Z
    .end local v4    # "oldRules":I
    .end local v6    # "uidForeground":Z
    .end local v7    # "uidPolicy":I
    .end local v8    # "uidRules":I
    :catch_1
    move-exception v10

    goto/16 :goto_1
.end method

.method updateRulesForUidStateChangeLocked(III)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "oldUidState"    # I
    .param p3, "newUidState"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 2809
    if-gt p2, v3, :cond_3

    move v1, v0

    .line 2810
    .local v1, "oldForeground":Z
    :goto_0
    if-gt p3, v3, :cond_4

    .line 2811
    .local v0, "newForeground":Z
    :goto_1
    if-eq v1, v0, :cond_2

    .line 2814
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHtcRestrictBackground:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    if-eqz v2, :cond_1

    .line 2815
    :cond_0
    const/4 v2, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->addToHtcNetPolicyManSrvHistory(ILjava/lang/String;)V

    .line 2816
    const-string v2, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UidStateChange: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2819
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    .line 2821
    :cond_2
    return-void

    .end local v0    # "newForeground":Z
    .end local v1    # "oldForeground":Z
    :cond_3
    move v1, v2

    .line 2809
    goto :goto_0

    .restart local v1    # "oldForeground":Z
    :cond_4
    move v0, v2

    .line 2810
    goto :goto_1
.end method

.method updateUidStateLocked(II)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "uidState"    # I

    .prologue
    .line 2781
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    const/16 v2, 0x10

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 2782
    .local v0, "oldUidState":I
    if-eq v0, p2, :cond_0

    .line 2784
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2785
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidStateChangeLocked(III)V

    .line 2786
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->isProcStateAllowedWhileIdle(I)Z

    move-result v1

    invoke-static {p2}, Lcom/android/server/net/NetworkPolicyManagerService;->isProcStateAllowedWhileIdle(I)Z

    move-result v2

    if-eq v1, v2, :cond_0

    .line 2788
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDeviceIdleLocked()V

    .line 2791
    :cond_0
    return-void
.end method

.method public updateVoLTEUsage(JJ)V
    .locals 5
    .param p1, "tx_bytes"    # J
    .param p3, "rx_bytes"    # J

    .prologue
    .line 3431
    const-string v1, "NetworkPolicy"

    const-string v2, "updateVoLTEUsage"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3433
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3435
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/net/INetworkStatsService;->updateVoLTEUsage(JJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3440
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesLocked()V

    .line 3441
    monitor-exit v2

    .line 3442
    return-void

    .line 3436
    :catch_0
    move-exception v0

    .line 3437
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateVoLTEUsage: got exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3441
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method writePolicyLocked()V
    .locals 12

    .prologue
    .line 2136
    const-string v9, "NetworkPolicy"

    const-string v10, "writePolicyLocked()"

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2138
    const/4 v1, 0x0

    .line 2140
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v9}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    .line 2142
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 2143
    .local v4, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v9}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v1, v9}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2144
    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v4, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2146
    const/4 v9, 0x0

    const-string v10, "policy-list"

    invoke-interface {v4, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2147
    const-string v9, "version"

    const/16 v10, 0xa

    invoke-static {v4, v9, v10}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2148
    const-string v9, "restrictBackground"

    iget-boolean v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    invoke-static {v4, v9, v10}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 2151
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    if-ge v2, v9, :cond_2

    .line 2152
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v9, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkPolicy;

    .line 2153
    .local v5, "policy":Landroid/net/NetworkPolicy;
    iget-object v7, v5, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 2155
    .local v7, "template":Landroid/net/NetworkTemplate;
    const/4 v9, 0x0

    const-string v10, "network-policy"

    invoke-interface {v4, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2156
    const-string v9, "networkTemplate"

    invoke-virtual {v7}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v10

    invoke-static {v4, v9, v10}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2157
    invoke-virtual {v7}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v6

    .line 2158
    .local v6, "subscriberId":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 2159
    const/4 v9, 0x0

    const-string v10, "subscriberId"

    invoke-interface {v4, v9, v10, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2161
    :cond_0
    invoke-virtual {v7}, Landroid/net/NetworkTemplate;->getNetworkId()Ljava/lang/String;

    move-result-object v3

    .line 2162
    .local v3, "networkId":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 2163
    const/4 v9, 0x0

    const-string v10, "networkId"

    invoke-interface {v4, v9, v10, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2165
    :cond_1
    const-string v9, "cycleDay"

    iget v10, v5, Landroid/net/NetworkPolicy;->cycleDay:I

    invoke-static {v4, v9, v10}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2166
    const/4 v9, 0x0

    const-string v10, "cycleTimezone"

    iget-object v11, v5, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    invoke-interface {v4, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2167
    const-string v9, "warningBytes"

    iget-wide v10, v5, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-static {v4, v9, v10, v11}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 2168
    const-string v9, "limitBytes"

    iget-wide v10, v5, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-static {v4, v9, v10, v11}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 2169
    const-string v9, "lastWarningSnooze"

    iget-wide v10, v5, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    invoke-static {v4, v9, v10, v11}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 2170
    const-string v9, "lastLimitSnooze"

    iget-wide v10, v5, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    invoke-static {v4, v9, v10, v11}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 2171
    const-string v9, "metered"

    iget-boolean v10, v5, Landroid/net/NetworkPolicy;->metered:Z

    invoke-static {v4, v9, v10}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 2172
    const-string v9, "inferred"

    iget-boolean v10, v5, Landroid/net/NetworkPolicy;->inferred:Z

    invoke-static {v4, v9, v10}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 2173
    const/4 v9, 0x0

    const-string v10, "network-policy"

    invoke-interface {v4, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2151
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2177
    .end local v3    # "networkId":Ljava/lang/String;
    .end local v5    # "policy":Landroid/net/NetworkPolicy;
    .end local v6    # "subscriberId":Ljava/lang/String;
    .end local v7    # "template":Landroid/net/NetworkTemplate;
    :cond_2
    const/4 v2, 0x0

    :goto_1
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    if-ge v2, v9, :cond_5

    .line 2178
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    .line 2179
    .local v8, "uid":I
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    .line 2182
    .local v5, "policy":I
    if-nez v5, :cond_3

    .line 2177
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2184
    :cond_3
    const/4 v9, 0x0

    const-string v10, "uid-policy"

    invoke-interface {v4, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2185
    const-string v9, "uid"

    invoke-static {v4, v9, v8}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2186
    const-string v9, "policy"

    invoke-static {v4, v9, v5}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2187
    const/4 v9, 0x0

    const-string v10, "uid-policy"

    invoke-interface {v4, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 2194
    .end local v2    # "i":I
    .end local v4    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v5    # "policy":I
    .end local v8    # "uid":I
    :catch_0
    move-exception v0

    .line 2195
    .local v0, "e":Ljava/io/IOException;
    if-eqz v1, :cond_4

    .line 2196
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v9, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 2199
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4
    :goto_3
    return-void

    .line 2190
    .restart local v2    # "i":I
    .restart local v4    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :cond_5
    const/4 v9, 0x0

    :try_start_1
    const-string v10, "policy-list"

    invoke-interface {v4, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2191
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 2193
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v9, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method
