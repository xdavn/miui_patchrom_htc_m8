.class Lcom/android/server/wifi/HtcHotspotAllowUserOnly$ReqConnectionClient;
.super Ljava/lang/Object;
.source "HtcHotspotAllowUserOnly.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/HtcHotspotAllowUserOnly;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReqConnectionClient"
.end annotation


# instance fields
.field private lastestReqTime:J

.field private macAddress:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/wifi/HtcHotspotAllowUserOnly;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/HtcHotspotAllowUserOnly;Ljava/lang/String;J)V
    .locals 1
    .param p2, "mac"    # Ljava/lang/String;
    .param p3, "time"    # J

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/server/wifi/HtcHotspotAllowUserOnly$ReqConnectionClient;->this$0:Lcom/android/server/wifi/HtcHotspotAllowUserOnly;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p2, p0, Lcom/android/server/wifi/HtcHotspotAllowUserOnly$ReqConnectionClient;->macAddress:Ljava/lang/String;

    .line 42
    iput-wide p3, p0, Lcom/android/server/wifi/HtcHotspotAllowUserOnly$ReqConnectionClient;->lastestReqTime:J

    .line 43
    return-void
.end method


# virtual methods
.method public getMac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/server/wifi/HtcHotspotAllowUserOnly$ReqConnectionClient;->macAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/android/server/wifi/HtcHotspotAllowUserOnly$ReqConnectionClient;->lastestReqTime:J

    return-wide v0
.end method

.method public setLastestReqTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 54
    iput-wide p1, p0, Lcom/android/server/wifi/HtcHotspotAllowUserOnly$ReqConnectionClient;->lastestReqTime:J

    .line 55
    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 0
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/server/wifi/HtcHotspotAllowUserOnly$ReqConnectionClient;->macAddress:Ljava/lang/String;

    .line 52
    return-void
.end method
