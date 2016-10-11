.class public Landroid/hardware/location/GeofenceHardwareService;
.super Landroid/app/Service;
.source "GeofenceHardwareService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GeofenceHardwareService"

.field private static mCustManager:Lcom/htc/customization/HtcCustomizationManager;

.field private static mCustReader:Lcom/htc/customization/HtcCustomizationReader;

.field private static mIsKDDI:Z


# instance fields
.field private mBinder:Landroid/os/IBinder;

.field private mContext:Landroid/content/Context;

.field private mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 46
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v0

    sput-object v0, Landroid/hardware/location/GeofenceHardwareService;->mCustManager:Lcom/htc/customization/HtcCustomizationManager;

    .line 47
    sget-object v0, Landroid/hardware/location/GeofenceHardwareService;->mCustManager:Lcom/htc/customization/HtcCustomizationManager;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/hardware/location/GeofenceHardwareService;->mCustManager:Lcom/htc/customization/HtcCustomizationManager;

    const-string v3, "System"

    invoke-virtual {v0, v3, v1, v2}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    :goto_0
    sput-object v0, Landroid/hardware/location/GeofenceHardwareService;->mCustReader:Lcom/htc/customization/HtcCustomizationReader;

    .line 48
    sput-boolean v2, Landroid/hardware/location/GeofenceHardwareService;->mIsKDDI:Z

    .line 50
    sget-object v0, Landroid/hardware/location/GeofenceHardwareService;->mCustReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string/jumbo v3, "sku_id"

    const/4 v4, -0x1

    invoke-interface {v0, v3, v4}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v0

    const/16 v3, 0x1f

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_1
    sput-boolean v0, Landroid/hardware/location/GeofenceHardwareService;->mIsKDDI:Z

    .line 51
    return-void

    .line 47
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v2

    .line 50
    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 96
    new-instance v0, Landroid/hardware/location/GeofenceHardwareService$1;

    invoke-direct {v0, p0}, Landroid/hardware/location/GeofenceHardwareService$1;-><init>(Landroid/hardware/location/GeofenceHardwareService;)V

    iput-object v0, p0, Landroid/hardware/location/GeofenceHardwareService;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method static synthetic access$000(Landroid/hardware/location/GeofenceHardwareService;)Landroid/hardware/location/GeofenceHardwareImpl;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/location/GeofenceHardwareService;

    .prologue
    .line 41
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    return-object v0
.end method

.method static synthetic access$100(Landroid/hardware/location/GeofenceHardwareService;)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/location/GeofenceHardwareService;

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/hardware/location/GeofenceHardwareService;->checkCallingPermission()V

    return-void
.end method

.method static synthetic access$200(Landroid/hardware/location/GeofenceHardwareService;III)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/location/GeofenceHardwareService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/location/GeofenceHardwareService;->checkPermission(III)V

    return-void
.end method

.method private checkCallingPermission()V
    .locals 3

    .prologue
    .line 78
    sget-boolean v0, Landroid/hardware/location/GeofenceHardwareService;->mIsKDDI:Z

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const-string v2, "Location Hardware permission not granted to access hardware geofence"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const-string v2, "Location Hardware permission not granted to access hardware geofence"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private checkPermission(III)V
    .locals 3
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "monitoringType"    # I

    .prologue
    .line 89
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/location/GeofenceHardwareImpl;->getAllowedResolutionLevel(II)I

    move-result v0

    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareService;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-virtual {v1, p3}, Landroid/hardware/location/GeofenceHardwareImpl;->getMonitoringResolutionLevel(I)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 91
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Insufficient permissions to access hardware geofence for type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 63
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 56
    iput-object p0, p0, Landroid/hardware/location/GeofenceHardwareService;->mContext:Landroid/content/Context;

    .line 57
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/location/GeofenceHardwareService;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 58
    const-string v0, "GeofenceHardwareService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mIsKDDI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Landroid/hardware/location/GeofenceHardwareService;->mIsKDDI:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/location/GeofenceHardwareService;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 74
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method
