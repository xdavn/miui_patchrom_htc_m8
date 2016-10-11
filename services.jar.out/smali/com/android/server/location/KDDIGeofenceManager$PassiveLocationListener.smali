.class Lcom/android/server/location/KDDIGeofenceManager$PassiveLocationListener;
.super Ljava/lang/Object;
.source "KDDIGeofenceManager.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/KDDIGeofenceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PassiveLocationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/KDDIGeofenceManager;


# direct methods
.method private constructor <init>(Lcom/android/server/location/KDDIGeofenceManager;)V
    .locals 0

    .prologue
    .line 752
    iput-object p1, p0, Lcom/android/server/location/KDDIGeofenceManager$PassiveLocationListener;->this$0:Lcom/android/server/location/KDDIGeofenceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/location/KDDIGeofenceManager;Lcom/android/server/location/KDDIGeofenceManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/location/KDDIGeofenceManager;
    .param p2, "x1"    # Lcom/android/server/location/KDDIGeofenceManager$1;

    .prologue
    .line 752
    invoke-direct {p0, p1}, Lcom/android/server/location/KDDIGeofenceManager$PassiveLocationListener;-><init>(Lcom/android/server/location/KDDIGeofenceManager;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 757
    iget-object v0, p0, Lcom/android/server/location/KDDIGeofenceManager$PassiveLocationListener;->this$0:Lcom/android/server/location/KDDIGeofenceManager;

    # getter for: Lcom/android/server/location/KDDIGeofenceManager;->mHandler:Lcom/android/server/location/KDDIGeofenceManager$GeofenceHandler;
    invoke-static {v0}, Lcom/android/server/location/KDDIGeofenceManager;->access$1200(Lcom/android/server/location/KDDIGeofenceManager;)Lcom/android/server/location/KDDIGeofenceManager$GeofenceHandler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/android/server/location/KDDIGeofenceManager$GeofenceHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 758
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 767
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 764
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 761
    return-void
.end method
