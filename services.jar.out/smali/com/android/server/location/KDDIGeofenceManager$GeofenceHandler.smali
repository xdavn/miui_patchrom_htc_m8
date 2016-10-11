.class final Lcom/android/server/location/KDDIGeofenceManager$GeofenceHandler;
.super Landroid/os/Handler;
.source "KDDIGeofenceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/KDDIGeofenceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GeofenceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/KDDIGeofenceManager;


# direct methods
.method public constructor <init>(Lcom/android/server/location/KDDIGeofenceManager;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 779
    iput-object p1, p0, Lcom/android/server/location/KDDIGeofenceManager$GeofenceHandler;->this$0:Lcom/android/server/location/KDDIGeofenceManager;

    .line 780
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 781
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 785
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 793
    :goto_0
    return-void

    .line 787
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/location/KDDIGeofenceManager$GeofenceHandler;->this$0:Lcom/android/server/location/KDDIGeofenceManager;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    # invokes: Lcom/android/server/location/KDDIGeofenceManager;->handleGeoFenceTransition(IILandroid/location/Location;)V
    invoke-static {v1, v2, v3, v0}, Lcom/android/server/location/KDDIGeofenceManager;->access$1400(Lcom/android/server/location/KDDIGeofenceManager;IILandroid/location/Location;)V

    goto :goto_0

    .line 790
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/location/KDDIGeofenceManager$GeofenceHandler;->this$0:Lcom/android/server/location/KDDIGeofenceManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    # invokes: Lcom/android/server/location/KDDIGeofenceManager;->handleLocationChange(Landroid/location/Location;)V
    invoke-static {v1, v0}, Lcom/android/server/location/KDDIGeofenceManager;->access$1500(Lcom/android/server/location/KDDIGeofenceManager;Landroid/location/Location;)V

    goto :goto_0

    .line 785
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
