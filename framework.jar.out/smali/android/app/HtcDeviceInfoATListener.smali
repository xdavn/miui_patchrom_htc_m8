.class public Landroid/app/HtcDeviceInfoATListener;
.super Lcom/htc/callbacks/ActivityThreadCallbacks;
.source "HtcDeviceInfoATListener.java"


# static fields
.field private static final ACTION_SETTING_UPDATA:Ljava/lang/String; = "com.htc.intent.action.UDOVE_SETTING_UPDATA"

.field private static final HWTAG:Ljava/lang/String; = "com.android.settings.framework.activity.aboutphone.HtcAboutPhoneHardwareInformation"

.field private static final PERMISSION_PLATFORM:Ljava/lang/String; = "com.htc.permission.APP_PLATFORM"

.field private static final SETTINGS:Ljava/lang/String; = "com.android.settings"

.field private static final SWTAG:Ljava/lang/String; = "com.android.settings.framework.activity.aboutphone.HtcAboutPhoneSoftwareInformation"

.field private static final TAG:Ljava/lang/String; = "HtcDeviceInfoManager"

.field private static isSettingsApp:Z

.field private static volatile sIsInit:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/htc/callbacks/ActivityThreadCallbacks;-><init>()V

    .line 27
    return-void
.end method

.method private static isSettingsApp(Landroid/app/Activity;)Z
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 30
    sget-boolean v0, Landroid/app/HtcDeviceInfoATListener;->sIsInit:Z

    if-nez v0, :cond_1

    .line 31
    const-class v1, Landroid/app/HtcDeviceInfoATListener;

    monitor-enter v1

    .line 32
    :try_start_0
    sget-boolean v0, Landroid/app/HtcDeviceInfoATListener;->sIsInit:Z

    if-nez v0, :cond_0

    .line 33
    const-string v0, "com.android.settings"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 34
    const/4 v0, 0x1

    sput-boolean v0, Landroid/app/HtcDeviceInfoATListener;->isSettingsApp:Z

    .line 38
    :goto_0
    const/4 v0, 0x1

    sput-boolean v0, Landroid/app/HtcDeviceInfoATListener;->sIsInit:Z

    .line 40
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :cond_1
    sget-boolean v0, Landroid/app/HtcDeviceInfoATListener;->isSettingsApp:Z

    return v0

    .line 36
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    sput-boolean v0, Landroid/app/HtcDeviceInfoATListener;->isSettingsApp:Z

    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public beforePerformResume(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 75
    return-void
.end method
