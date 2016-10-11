.class Lcom/android/server/wifi/HtcWifiDataStallTracker$TxRxSum;
.super Ljava/lang/Object;
.source "HtcWifiDataStallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/HtcWifiDataStallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TxRxSum"
.end annotation


# instance fields
.field public rxPkts:J

.field final synthetic this$0:Lcom/android/server/wifi/HtcWifiDataStallTracker;

.field public txPkts:J


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/HtcWifiDataStallTracker;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker$TxRxSum;->this$0:Lcom/android/server/wifi/HtcWifiDataStallTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    invoke-virtual {p0}, Lcom/android/server/wifi/HtcWifiDataStallTracker$TxRxSum;->reset()V

    .line 195
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wifi/HtcWifiDataStallTracker;JJ)V
    .locals 0
    .param p2, "txPkts"    # J
    .param p4, "rxPkts"    # J

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker$TxRxSum;->this$0:Lcom/android/server/wifi/HtcWifiDataStallTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    iput-wide p2, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker$TxRxSum;->txPkts:J

    .line 199
    iput-wide p4, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker$TxRxSum;->rxPkts:J

    .line 200
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wifi/HtcWifiDataStallTracker;Lcom/android/server/wifi/HtcWifiDataStallTracker$TxRxSum;)V
    .locals 2
    .param p2, "sum"    # Lcom/android/server/wifi/HtcWifiDataStallTracker$TxRxSum;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker$TxRxSum;->this$0:Lcom/android/server/wifi/HtcWifiDataStallTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iget-wide v0, p2, Lcom/android/server/wifi/HtcWifiDataStallTracker$TxRxSum;->txPkts:J

    iput-wide v0, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker$TxRxSum;->txPkts:J

    .line 204
    iget-wide v0, p2, Lcom/android/server/wifi/HtcWifiDataStallTracker$TxRxSum;->rxPkts:J

    iput-wide v0, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker$TxRxSum;->rxPkts:J

    .line 205
    return-void
.end method


# virtual methods
.method public reset()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 208
    iput-wide v0, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker$TxRxSum;->txPkts:J

    .line 209
    iput-wide v0, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker$TxRxSum;->rxPkts:J

    .line 210
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{txSum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker$TxRxSum;->txPkts:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rxSum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker$TxRxSum;->rxPkts:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateTxRxSum()V
    .locals 2

    .prologue
    .line 218
    invoke-static {}, Landroid/net/TrafficStats;->getWifiTcpTxPackets()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker$TxRxSum;->txPkts:J

    .line 219
    invoke-static {}, Landroid/net/TrafficStats;->getWifiTcpRxPackets()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/HtcWifiDataStallTracker$TxRxSum;->rxPkts:J

    .line 220
    return-void
.end method
