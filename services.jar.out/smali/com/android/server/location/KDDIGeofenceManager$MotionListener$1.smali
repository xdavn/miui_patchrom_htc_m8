.class Lcom/android/server/location/KDDIGeofenceManager$MotionListener$1;
.super Ljava/lang/Object;
.source "KDDIGeofenceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/KDDIGeofenceManager$MotionListener;->onTrigger(Landroid/hardware/TriggerEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/location/KDDIGeofenceManager$MotionListener;


# direct methods
.method constructor <init>(Lcom/android/server/location/KDDIGeofenceManager$MotionListener;)V
    .locals 0

    .prologue
    .line 742
    iput-object p1, p0, Lcom/android/server/location/KDDIGeofenceManager$MotionListener$1;->this$1:Lcom/android/server/location/KDDIGeofenceManager$MotionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 745
    iget-object v0, p0, Lcom/android/server/location/KDDIGeofenceManager$MotionListener$1;->this$1:Lcom/android/server/location/KDDIGeofenceManager$MotionListener;

    iget-object v0, v0, Lcom/android/server/location/KDDIGeofenceManager$MotionListener;->this$0:Lcom/android/server/location/KDDIGeofenceManager;

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    # invokes: Lcom/android/server/location/KDDIGeofenceManager;->updateNetworkRequest(ZJ)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/location/KDDIGeofenceManager;->access$1300(Lcom/android/server/location/KDDIGeofenceManager;ZJ)V

    .line 746
    return-void
.end method
