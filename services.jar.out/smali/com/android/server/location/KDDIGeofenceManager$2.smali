.class Lcom/android/server/location/KDDIGeofenceManager$2;
.super Ljava/lang/Object;
.source "KDDIGeofenceManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/KDDIGeofenceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/KDDIGeofenceManager;


# direct methods
.method constructor <init>(Lcom/android/server/location/KDDIGeofenceManager;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/android/server/location/KDDIGeofenceManager$2;->this$0:Lcom/android/server/location/KDDIGeofenceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 243
    iget-object v1, p0, Lcom/android/server/location/KDDIGeofenceManager$2;->this$0:Lcom/android/server/location/KDDIGeofenceManager;

    # getter for: Lcom/android/server/location/KDDIGeofenceManager;->mGeoLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/location/KDDIGeofenceManager;->access$600(Lcom/android/server/location/KDDIGeofenceManager;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 244
    :try_start_0
    invoke-static {p2}, Landroid/hardware/location/IGeofenceHardware$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IGeofenceHardware;

    move-result-object v0

    .line 245
    .local v0, "iGeofenceHardware":Landroid/hardware/location/IGeofenceHardware;
    iget-object v1, p0, Lcom/android/server/location/KDDIGeofenceManager$2;->this$0:Lcom/android/server/location/KDDIGeofenceManager;

    new-instance v3, Landroid/hardware/location/GeofenceHardware;

    invoke-direct {v3, v0}, Landroid/hardware/location/GeofenceHardware;-><init>(Landroid/hardware/location/IGeofenceHardware;)V

    # setter for: Lcom/android/server/location/KDDIGeofenceManager;->mGeofenceHardware:Landroid/hardware/location/GeofenceHardware;
    invoke-static {v1, v3}, Lcom/android/server/location/KDDIGeofenceManager;->access$702(Lcom/android/server/location/KDDIGeofenceManager;Landroid/hardware/location/GeofenceHardware;)Landroid/hardware/location/GeofenceHardware;

    .line 246
    monitor-exit v2

    .line 247
    return-void

    .line 246
    .end local v0    # "iGeofenceHardware":Landroid/hardware/location/IGeofenceHardware;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/server/location/KDDIGeofenceManager$2;->this$0:Lcom/android/server/location/KDDIGeofenceManager;

    # getter for: Lcom/android/server/location/KDDIGeofenceManager;->mGeoLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/location/KDDIGeofenceManager;->access$600(Lcom/android/server/location/KDDIGeofenceManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 252
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/KDDIGeofenceManager$2;->this$0:Lcom/android/server/location/KDDIGeofenceManager;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/location/KDDIGeofenceManager;->mGeofenceHardware:Landroid/hardware/location/GeofenceHardware;
    invoke-static {v0, v2}, Lcom/android/server/location/KDDIGeofenceManager;->access$702(Lcom/android/server/location/KDDIGeofenceManager;Landroid/hardware/location/GeofenceHardware;)Landroid/hardware/location/GeofenceHardware;

    .line 253
    monitor-exit v1

    .line 254
    return-void

    .line 253
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
