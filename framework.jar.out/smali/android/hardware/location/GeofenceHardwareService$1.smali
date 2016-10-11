.class Landroid/hardware/location/GeofenceHardwareService$1;
.super Landroid/hardware/location/IGeofenceHardware$Stub;
.source "GeofenceHardwareService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/GeofenceHardwareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/location/GeofenceHardwareService;


# direct methods
.method constructor <init>(Landroid/hardware/location/GeofenceHardwareService;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    invoke-direct {p0}, Landroid/hardware/location/IGeofenceHardware$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addCircularFence(ILandroid/hardware/location/GeofenceHardwareRequestParcelable;Landroid/hardware/location/IGeofenceHardwareCallback;)Z
    .locals 3
    .param p1, "monitoringType"    # I
    .param p2, "request"    # Landroid/hardware/location/GeofenceHardwareRequestParcelable;
    .param p3, "callback"    # Landroid/hardware/location/IGeofenceHardwareCallback;

    .prologue
    .line 135
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    # invokes: Landroid/hardware/location/GeofenceHardwareService;->checkCallingPermission()V
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareService;->access$100(Landroid/hardware/location/GeofenceHardwareService;)V

    .line 140
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    # invokes: Landroid/hardware/location/GeofenceHardwareService;->checkPermission(III)V
    invoke-static {v0, v1, v2, p1}, Landroid/hardware/location/GeofenceHardwareService;->access$200(Landroid/hardware/location/GeofenceHardwareService;III)V

    .line 141
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    # getter for: Landroid/hardware/location/GeofenceHardwareService;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareService;->access$000(Landroid/hardware/location/GeofenceHardwareService;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/location/GeofenceHardwareImpl;->addCircularFence(ILandroid/hardware/location/GeofenceHardwareRequestParcelable;Landroid/hardware/location/IGeofenceHardwareCallback;)Z

    move-result v0

    return v0
.end method

.method public getMonitoringTypes()[I
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    # invokes: Landroid/hardware/location/GeofenceHardwareService;->checkCallingPermission()V
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareService;->access$100(Landroid/hardware/location/GeofenceHardwareService;)V

    .line 114
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    # getter for: Landroid/hardware/location/GeofenceHardwareService;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareService;->access$000(Landroid/hardware/location/GeofenceHardwareService;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getMonitoringTypes()[I

    move-result-object v0

    return-object v0
.end method

.method public getStatusOfMonitoringType(I)I
    .locals 1
    .param p1, "monitoringType"    # I

    .prologue
    .line 120
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    # invokes: Landroid/hardware/location/GeofenceHardwareService;->checkCallingPermission()V
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareService;->access$100(Landroid/hardware/location/GeofenceHardwareService;)V

    .line 126
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    # getter for: Landroid/hardware/location/GeofenceHardwareService;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareService;->access$000(Landroid/hardware/location/GeofenceHardwareService;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/location/GeofenceHardwareImpl;->getStatusOfMonitoringType(I)I

    move-result v0

    return v0
.end method

.method public pauseGeofence(II)Z
    .locals 3
    .param p1, "id"    # I
    .param p2, "monitoringType"    # I

    .prologue
    .line 160
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    # invokes: Landroid/hardware/location/GeofenceHardwareService;->checkCallingPermission()V
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareService;->access$100(Landroid/hardware/location/GeofenceHardwareService;)V

    .line 166
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    # invokes: Landroid/hardware/location/GeofenceHardwareService;->checkPermission(III)V
    invoke-static {v0, v1, v2, p2}, Landroid/hardware/location/GeofenceHardwareService;->access$200(Landroid/hardware/location/GeofenceHardwareService;III)V

    .line 167
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    # getter for: Landroid/hardware/location/GeofenceHardwareService;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareService;->access$000(Landroid/hardware/location/GeofenceHardwareService;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/location/GeofenceHardwareImpl;->pauseGeofence(II)Z

    move-result v0

    return v0
.end method

.method public registerForMonitorStateChangeCallback(ILandroid/hardware/location/IGeofenceHardwareMonitorCallback;)Z
    .locals 3
    .param p1, "monitoringType"    # I
    .param p2, "callback"    # Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    .prologue
    .line 187
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    # invokes: Landroid/hardware/location/GeofenceHardwareService;->checkCallingPermission()V
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareService;->access$100(Landroid/hardware/location/GeofenceHardwareService;)V

    .line 193
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    # invokes: Landroid/hardware/location/GeofenceHardwareService;->checkPermission(III)V
    invoke-static {v0, v1, v2, p1}, Landroid/hardware/location/GeofenceHardwareService;->access$200(Landroid/hardware/location/GeofenceHardwareService;III)V

    .line 194
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    # getter for: Landroid/hardware/location/GeofenceHardwareService;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareService;->access$000(Landroid/hardware/location/GeofenceHardwareService;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/location/GeofenceHardwareImpl;->registerForMonitorStateChangeCallback(ILandroid/hardware/location/IGeofenceHardwareMonitorCallback;)Z

    move-result v0

    return v0
.end method

.method public removeGeofence(II)Z
    .locals 3
    .param p1, "id"    # I
    .param p2, "monitoringType"    # I

    .prologue
    .line 147
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    # invokes: Landroid/hardware/location/GeofenceHardwareService;->checkCallingPermission()V
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareService;->access$100(Landroid/hardware/location/GeofenceHardwareService;)V

    .line 153
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    # invokes: Landroid/hardware/location/GeofenceHardwareService;->checkPermission(III)V
    invoke-static {v0, v1, v2, p2}, Landroid/hardware/location/GeofenceHardwareService;->access$200(Landroid/hardware/location/GeofenceHardwareService;III)V

    .line 154
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    # getter for: Landroid/hardware/location/GeofenceHardwareService;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareService;->access$000(Landroid/hardware/location/GeofenceHardwareService;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/location/GeofenceHardwareImpl;->removeGeofence(II)Z

    move-result v0

    return v0
.end method

.method public resumeGeofence(III)Z
    .locals 3
    .param p1, "id"    # I
    .param p2, "monitoringType"    # I
    .param p3, "monitorTransitions"    # I

    .prologue
    .line 173
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    # invokes: Landroid/hardware/location/GeofenceHardwareService;->checkCallingPermission()V
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareService;->access$100(Landroid/hardware/location/GeofenceHardwareService;)V

    .line 179
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    # invokes: Landroid/hardware/location/GeofenceHardwareService;->checkPermission(III)V
    invoke-static {v0, v1, v2, p2}, Landroid/hardware/location/GeofenceHardwareService;->access$200(Landroid/hardware/location/GeofenceHardwareService;III)V

    .line 180
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    # getter for: Landroid/hardware/location/GeofenceHardwareService;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareService;->access$000(Landroid/hardware/location/GeofenceHardwareService;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/location/GeofenceHardwareImpl;->resumeGeofence(III)Z

    move-result v0

    return v0
.end method

.method public setFusedGeofenceHardware(Landroid/location/IFusedGeofenceHardware;)V
    .locals 1
    .param p1, "service"    # Landroid/location/IFusedGeofenceHardware;

    .prologue
    .line 104
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    # getter for: Landroid/hardware/location/GeofenceHardwareService;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareService;->access$000(Landroid/hardware/location/GeofenceHardwareService;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/location/GeofenceHardwareImpl;->setFusedGeofenceHardware(Landroid/location/IFusedGeofenceHardware;)V

    .line 105
    return-void
.end method

.method public setGpsGeofenceHardware(Landroid/location/IGpsGeofenceHardware;)V
    .locals 1
    .param p1, "service"    # Landroid/location/IGpsGeofenceHardware;

    .prologue
    .line 99
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    # getter for: Landroid/hardware/location/GeofenceHardwareService;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareService;->access$000(Landroid/hardware/location/GeofenceHardwareService;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/location/GeofenceHardwareImpl;->setGpsHardwareGeofence(Landroid/location/IGpsGeofenceHardware;)V

    .line 100
    return-void
.end method

.method public unregisterForMonitorStateChangeCallback(ILandroid/hardware/location/IGeofenceHardwareMonitorCallback;)Z
    .locals 3
    .param p1, "monitoringType"    # I
    .param p2, "callback"    # Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    .prologue
    .line 202
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    # invokes: Landroid/hardware/location/GeofenceHardwareService;->checkCallingPermission()V
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareService;->access$100(Landroid/hardware/location/GeofenceHardwareService;)V

    .line 208
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    # invokes: Landroid/hardware/location/GeofenceHardwareService;->checkPermission(III)V
    invoke-static {v0, v1, v2, p1}, Landroid/hardware/location/GeofenceHardwareService;->access$200(Landroid/hardware/location/GeofenceHardwareService;III)V

    .line 209
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    # getter for: Landroid/hardware/location/GeofenceHardwareService;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareService;->access$000(Landroid/hardware/location/GeofenceHardwareService;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/location/GeofenceHardwareImpl;->unregisterForMonitorStateChangeCallback(ILandroid/hardware/location/IGeofenceHardwareMonitorCallback;)Z

    move-result v0

    return v0
.end method
