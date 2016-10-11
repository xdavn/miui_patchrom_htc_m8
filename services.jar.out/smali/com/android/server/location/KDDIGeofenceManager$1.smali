.class Lcom/android/server/location/KDDIGeofenceManager$1;
.super Ljava/lang/Object;
.source "KDDIGeofenceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/KDDIGeofenceManager;-><init>(Landroid/content/Context;Lcom/android/server/location/LocationBlacklist;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/Object;)V
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
    .line 223
    iput-object p1, p0, Lcom/android/server/location/KDDIGeofenceManager$1;->this$0:Lcom/android/server/location/KDDIGeofenceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/server/location/KDDIGeofenceManager$1;->this$0:Lcom/android/server/location/KDDIGeofenceManager;

    # invokes: Lcom/android/server/location/KDDIGeofenceManager;->bindHardwareGeofence()V
    invoke-static {v0}, Lcom/android/server/location/KDDIGeofenceManager;->access$300(Lcom/android/server/location/KDDIGeofenceManager;)V

    .line 229
    iget-object v0, p0, Lcom/android/server/location/KDDIGeofenceManager$1;->this$0:Lcom/android/server/location/KDDIGeofenceManager;

    # getter for: Lcom/android/server/location/KDDIGeofenceManager;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v0}, Lcom/android/server/location/KDDIGeofenceManager;->access$500(Lcom/android/server/location/KDDIGeofenceManager;)Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "passive"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/location/KDDIGeofenceManager$1;->this$0:Lcom/android/server/location/KDDIGeofenceManager;

    # getter for: Lcom/android/server/location/KDDIGeofenceManager;->mPassiveLocationListener:Lcom/android/server/location/KDDIGeofenceManager$PassiveLocationListener;
    invoke-static {v5}, Lcom/android/server/location/KDDIGeofenceManager;->access$400(Lcom/android/server/location/KDDIGeofenceManager;)Lcom/android/server/location/KDDIGeofenceManager$PassiveLocationListener;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 230
    return-void
.end method
