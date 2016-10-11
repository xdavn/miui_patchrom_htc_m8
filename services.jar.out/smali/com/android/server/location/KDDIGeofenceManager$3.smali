.class Lcom/android/server/location/KDDIGeofenceManager$3;
.super Ljava/lang/Object;
.source "KDDIGeofenceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/KDDIGeofenceManager;->onGeofenceAdd(II)V
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
    .line 684
    iput-object p1, p0, Lcom/android/server/location/KDDIGeofenceManager$3;->this$0:Lcom/android/server/location/KDDIGeofenceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 688
    iget-object v0, p0, Lcom/android/server/location/KDDIGeofenceManager$3;->this$0:Lcom/android/server/location/KDDIGeofenceManager;

    const-string v1, "fused"

    # invokes: Lcom/android/server/location/KDDIGeofenceManager;->isMockProvider(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/server/location/KDDIGeofenceManager;->access$900(Lcom/android/server/location/KDDIGeofenceManager;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/android/server/location/KDDIGeofenceManager$3;->this$0:Lcom/android/server/location/KDDIGeofenceManager;

    # getter for: Lcom/android/server/location/KDDIGeofenceManager;->mLMSLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/location/KDDIGeofenceManager;->access$1000(Lcom/android/server/location/KDDIGeofenceManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 690
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/KDDIGeofenceManager$3;->this$0:Lcom/android/server/location/KDDIGeofenceManager;

    # getter for: Lcom/android/server/location/KDDIGeofenceManager;->mHandler:Lcom/android/server/location/KDDIGeofenceManager$GeofenceHandler;
    invoke-static {v0}, Lcom/android/server/location/KDDIGeofenceManager;->access$1200(Lcom/android/server/location/KDDIGeofenceManager;)Lcom/android/server/location/KDDIGeofenceManager$GeofenceHandler;

    move-result-object v0

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/server/location/KDDIGeofenceManager$3;->this$0:Lcom/android/server/location/KDDIGeofenceManager;

    # getter for: Lcom/android/server/location/KDDIGeofenceManager;->mLastLocation:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/server/location/KDDIGeofenceManager;->access$1100(Lcom/android/server/location/KDDIGeofenceManager;)Ljava/util/HashMap;

    move-result-object v3

    const-string v4, "fused"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/server/location/KDDIGeofenceManager$GeofenceHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 692
    monitor-exit v1

    .line 697
    :goto_0
    return-void

    .line 692
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 695
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/KDDIGeofenceManager$3;->this$0:Lcom/android/server/location/KDDIGeofenceManager;

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    # invokes: Lcom/android/server/location/KDDIGeofenceManager;->updateNetworkRequest(ZJ)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/location/KDDIGeofenceManager;->access$1300(Lcom/android/server/location/KDDIGeofenceManager;ZJ)V

    goto :goto_0
.end method
