.class Lcom/android/server/HtcAdaptiveSmartNetwork$1;
.super Landroid/telephony/PhoneStateListener;
.source "HtcAdaptiveSmartNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HtcAdaptiveSmartNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/HtcAdaptiveSmartNetwork;


# direct methods
.method constructor <init>(Lcom/android/server/HtcAdaptiveSmartNetwork;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/server/HtcAdaptiveSmartNetwork$1;->this$0:Lcom/android/server/HtcAdaptiveSmartNetwork;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/server/HtcAdaptiveSmartNetwork$1;->this$0:Lcom/android/server/HtcAdaptiveSmartNetwork;

    # invokes: Lcom/android/server/HtcAdaptiveSmartNetwork;->isAsnOn()Z
    invoke-static {v0}, Lcom/android/server/HtcAdaptiveSmartNetwork;->access$000(Lcom/android/server/HtcAdaptiveSmartNetwork;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    const-string v0, "HtcASN"

    const-string v1, "onServiceStateChanged..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lcom/android/server/HtcAdaptiveSmartNetwork$1;->this$0:Lcom/android/server/HtcAdaptiveSmartNetwork;

    # invokes: Lcom/android/server/HtcAdaptiveSmartNetwork;->updateTelephonyState()V
    invoke-static {v0}, Lcom/android/server/HtcAdaptiveSmartNetwork;->access$100(Lcom/android/server/HtcAdaptiveSmartNetwork;)V

    .line 91
    :cond_0
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/server/HtcAdaptiveSmartNetwork$1;->this$0:Lcom/android/server/HtcAdaptiveSmartNetwork;

    # invokes: Lcom/android/server/HtcAdaptiveSmartNetwork;->isAsnOn()Z
    invoke-static {v0}, Lcom/android/server/HtcAdaptiveSmartNetwork;->access$000(Lcom/android/server/HtcAdaptiveSmartNetwork;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    const-string v0, "HtcASN"

    const-string v1, "onSignalStrengthsChanged..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, Lcom/android/server/HtcAdaptiveSmartNetwork$1;->this$0:Lcom/android/server/HtcAdaptiveSmartNetwork;

    # setter for: Lcom/android/server/HtcAdaptiveSmartNetwork;->mSignalStrength:Landroid/telephony/SignalStrength;
    invoke-static {v0, p1}, Lcom/android/server/HtcAdaptiveSmartNetwork;->access$202(Lcom/android/server/HtcAdaptiveSmartNetwork;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;

    .line 99
    iget-object v0, p0, Lcom/android/server/HtcAdaptiveSmartNetwork$1;->this$0:Lcom/android/server/HtcAdaptiveSmartNetwork;

    # invokes: Lcom/android/server/HtcAdaptiveSmartNetwork;->updateTelephonyState()V
    invoke-static {v0}, Lcom/android/server/HtcAdaptiveSmartNetwork;->access$100(Lcom/android/server/HtcAdaptiveSmartNetwork;)V

    .line 101
    :cond_0
    return-void
.end method
