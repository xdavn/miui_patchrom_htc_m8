.class Landroid/telephony/PhoneStateListener$2;
.super Lcom/android/internal/telephony/IPhoneStateListener$Stub;
.source "PhoneStateListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/PhoneStateListener;


# direct methods
.method constructor <init>(Landroid/telephony/PhoneStateListener;)V
    .locals 0

    .prologue
    .line 563
    iput-object p1, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    invoke-direct {p0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallDisconnected(Ljava/lang/String;)V
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 654
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    # getter for: Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telephony/PhoneStateListener;->access$200(Landroid/telephony/PhoneStateListener;)Landroid/os/Handler;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-static {v0, v1, v2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 655
    return-void
.end method

.method public onCallForwardingIndicatorChanged(Z)V
    .locals 5
    .param p1, "cfi"    # Z

    .prologue
    const/4 v1, 0x0

    .line 578
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    # getter for: Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telephony/PhoneStateListener;->access$200(Landroid/telephony/PhoneStateListener;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x8

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v1, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 580
    return-void

    :cond_0
    move v0, v1

    .line 578
    goto :goto_0
.end method

.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 594
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    # getter for: Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telephony/PhoneStateListener;->access$200(Landroid/telephony/PhoneStateListener;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x20

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 595
    return-void
.end method

.method public onCarrierNetworkChange(Z)V
    .locals 4
    .param p1, "active"    # Z

    .prologue
    const/4 v3, 0x0

    .line 649
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    # getter for: Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telephony/PhoneStateListener;->access$200(Landroid/telephony/PhoneStateListener;)Landroid/os/Handler;

    move-result-object v0

    const/high16 v1, 0x10000

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 650
    return-void
.end method

.method public onCellInfoChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    const/4 v2, 0x0

    .line 621
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    # getter for: Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telephony/PhoneStateListener;->access$200(Landroid/telephony/PhoneStateListener;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x400

    invoke-static {v0, v1, v2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 622
    return-void
.end method

.method public onCellLocationChanged(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 583
    invoke-static {p1}, Landroid/telephony/CellLocation;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/CellLocation;

    move-result-object v0

    .line 585
    .local v0, "location":Landroid/telephony/CellLocation;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 586
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 587
    iget-object v2, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    iget v2, v2, Landroid/telephony/PhoneStateListener;->mSubId:I

    invoke-static {p1, v2}, Landroid/telephony/CellLocation;->newFromBundle(Landroid/os/Bundle;I)Landroid/telephony/CellLocation;

    move-result-object v0

    .line 590
    :cond_0
    iget-object v2, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    # getter for: Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Landroid/telephony/PhoneStateListener;->access$200(Landroid/telephony/PhoneStateListener;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3, v4, v4, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 591
    return-void
.end method

.method public onDataActivity(I)V
    .locals 4
    .param p1, "direction"    # I

    .prologue
    .line 603
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    # getter for: Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telephony/PhoneStateListener;->access$200(Landroid/telephony/PhoneStateListener;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x80

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, p1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 604
    return-void
.end method

.method public onDataConnectionRealTimeInfoChanged(Landroid/telephony/DataConnectionRealTimeInfo;)V
    .locals 3
    .param p1, "dcRtInfo"    # Landroid/telephony/DataConnectionRealTimeInfo;

    .prologue
    const/4 v2, 0x0

    .line 636
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    # getter for: Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telephony/PhoneStateListener;->access$200(Landroid/telephony/PhoneStateListener;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-static {v0, v1, v2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 638
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "networkType"    # I

    .prologue
    .line 598
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    # getter for: Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telephony/PhoneStateListener;->access$200(Landroid/telephony/PhoneStateListener;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x40

    invoke-static {v0, v1, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 600
    return-void
.end method

.method public onMessageWaitingIndicatorChanged(Z)V
    .locals 5
    .param p1, "mwi"    # Z

    .prologue
    const/4 v1, 0x0

    .line 573
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    # getter for: Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telephony/PhoneStateListener;->access$200(Landroid/telephony/PhoneStateListener;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x4

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v1, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 575
    return-void

    :cond_0
    move v0, v1

    .line 573
    goto :goto_0
.end method

.method public onOemHookRawEvent([B)V
    .locals 3
    .param p1, "rawData"    # [B

    .prologue
    const/4 v2, 0x0

    .line 645
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    # getter for: Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telephony/PhoneStateListener;->access$200(Landroid/telephony/PhoneStateListener;)Landroid/os/Handler;

    move-result-object v0

    const v1, 0x8000

    invoke-static {v0, v1, v2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 646
    return-void
.end method

.method public onOtaspChanged(I)V
    .locals 3
    .param p1, "otaspMode"    # I

    .prologue
    .line 617
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    # getter for: Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telephony/PhoneStateListener;->access$200(Landroid/telephony/PhoneStateListener;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x200

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 618
    return-void
.end method

.method public onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    .locals 3
    .param p1, "callState"    # Landroid/telephony/PreciseCallState;

    .prologue
    const/4 v2, 0x0

    .line 625
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    # getter for: Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telephony/PhoneStateListener;->access$200(Landroid/telephony/PhoneStateListener;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x800

    invoke-static {v0, v1, v2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 626
    return-void
.end method

.method public onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    .locals 3
    .param p1, "dataConnectionState"    # Landroid/telephony/PreciseDataConnectionState;

    .prologue
    const/4 v2, 0x0

    .line 630
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    # getter for: Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telephony/PhoneStateListener;->access$200(Landroid/telephony/PhoneStateListener;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1000

    invoke-static {v0, v1, v2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 632
    return-void
.end method

.method public onSecondSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 3
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    const/4 v2, 0x0

    .line 612
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    # getter for: Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telephony/PhoneStateListener;->access$200(Landroid/telephony/PhoneStateListener;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x101

    invoke-static {v0, v1, v2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 613
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v2, 0x0

    .line 565
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    # getter for: Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telephony/PhoneStateListener;->access$200(Landroid/telephony/PhoneStateListener;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1, v2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 566
    return-void
.end method

.method public onSignalStrengthChanged(I)V
    .locals 4
    .param p1, "asu"    # I

    .prologue
    .line 569
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    # getter for: Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telephony/PhoneStateListener;->access$200(Landroid/telephony/PhoneStateListener;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, p1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 570
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 3
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    const/4 v2, 0x0

    .line 607
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    # getter for: Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telephony/PhoneStateListener;->access$200(Landroid/telephony/PhoneStateListener;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x100

    invoke-static {v0, v1, v2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 608
    return-void
.end method

.method public onVoLteServiceStateChanged(Landroid/telephony/VoLteServiceState;)V
    .locals 3
    .param p1, "lteState"    # Landroid/telephony/VoLteServiceState;

    .prologue
    const/4 v2, 0x0

    .line 641
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    # getter for: Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telephony/PhoneStateListener;->access$200(Landroid/telephony/PhoneStateListener;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x4000

    invoke-static {v0, v1, v2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 642
    return-void
.end method
