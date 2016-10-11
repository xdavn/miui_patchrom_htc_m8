.class Lcom/android/server/wifi/SupplicantStateTracker$UninitializedState;
.super Lcom/android/internal/util/State;
.source "SupplicantStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/SupplicantStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UninitializedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/SupplicantStateTracker;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/SupplicantStateTracker;)V
    .locals 0

    .prologue
    .line 371
    iput-object p1, p0, Lcom/android/server/wifi/SupplicantStateTracker$UninitializedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 374
    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/SupplicantStateTracker;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SupplicantStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/SupplicantStateTracker$UninitializedState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker$UninitializedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;
    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStateTracker;->access$1000(Lcom/android/server/wifi/SupplicantStateTracker;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/app/IBatteryStats;->noteWifiSupplicantStateChanged(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    :goto_0
    return-void

    .line 380
    :catch_0
    move-exception v0

    goto :goto_0
.end method
