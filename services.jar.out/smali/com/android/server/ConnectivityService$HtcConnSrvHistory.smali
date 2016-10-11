.class Lcom/android/server/ConnectivityService$HtcConnSrvHistory;
.super Ljava/lang/Object;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HtcConnSrvHistory"
.end annotation


# instance fields
.field public args:Ljava/lang/String;

.field public event:I

.field final synthetic this$0:Lcom/android/server/ConnectivityService;

.field public timeStamp:J


# direct methods
.method private constructor <init>(Lcom/android/server/ConnectivityService;)V
    .locals 0

    .prologue
    .line 5524
    iput-object p1, p0, Lcom/android/server/ConnectivityService$HtcConnSrvHistory;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/ConnectivityService;
    .param p2, "x1"    # Lcom/android/server/ConnectivityService$1;

    .prologue
    .line 5524
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService$HtcConnSrvHistory;-><init>(Lcom/android/server/ConnectivityService;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5531
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/android/server/ConnectivityService$HtcConnSrvHistory;->event:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ConnectivityService$HtcConnSrvHistory;->args:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5533
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
