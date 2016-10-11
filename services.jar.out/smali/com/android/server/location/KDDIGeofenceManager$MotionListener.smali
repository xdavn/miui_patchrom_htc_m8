.class Lcom/android/server/location/KDDIGeofenceManager$MotionListener;
.super Landroid/hardware/TriggerEventListener;
.source "KDDIGeofenceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/KDDIGeofenceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MotionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/KDDIGeofenceManager;


# direct methods
.method private constructor <init>(Lcom/android/server/location/KDDIGeofenceManager;)V
    .locals 0

    .prologue
    .line 737
    iput-object p1, p0, Lcom/android/server/location/KDDIGeofenceManager$MotionListener;->this$0:Lcom/android/server/location/KDDIGeofenceManager;

    invoke-direct {p0}, Landroid/hardware/TriggerEventListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/location/KDDIGeofenceManager;Lcom/android/server/location/KDDIGeofenceManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/location/KDDIGeofenceManager;
    .param p2, "x1"    # Lcom/android/server/location/KDDIGeofenceManager$1;

    .prologue
    .line 737
    invoke-direct {p0, p1}, Lcom/android/server/location/KDDIGeofenceManager$MotionListener;-><init>(Lcom/android/server/location/KDDIGeofenceManager;)V

    return-void
.end method


# virtual methods
.method public onTrigger(Landroid/hardware/TriggerEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/hardware/TriggerEvent;

    .prologue
    .line 740
    iget-object v0, p1, Landroid/hardware/TriggerEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 741
    const-string v0, "KDDIGeofenceManager"

    const-string v1, " On motion trigger "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    iget-object v0, p0, Lcom/android/server/location/KDDIGeofenceManager$MotionListener;->this$0:Lcom/android/server/location/KDDIGeofenceManager;

    # getter for: Lcom/android/server/location/KDDIGeofenceManager;->mHandler:Lcom/android/server/location/KDDIGeofenceManager$GeofenceHandler;
    invoke-static {v0}, Lcom/android/server/location/KDDIGeofenceManager;->access$1200(Lcom/android/server/location/KDDIGeofenceManager;)Lcom/android/server/location/KDDIGeofenceManager$GeofenceHandler;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/KDDIGeofenceManager$MotionListener$1;

    invoke-direct {v1, p0}, Lcom/android/server/location/KDDIGeofenceManager$MotionListener$1;-><init>(Lcom/android/server/location/KDDIGeofenceManager$MotionListener;)V

    invoke-virtual {v0, v1}, Lcom/android/server/location/KDDIGeofenceManager$GeofenceHandler;->post(Ljava/lang/Runnable;)Z

    .line 749
    :cond_0
    return-void
.end method
