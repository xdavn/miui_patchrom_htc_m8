.class Lcom/android/server/net/NetworkPolicyManagerService$HtcNetPolicyManSrvHistory;
.super Ljava/lang/Object;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HtcNetPolicyManSrvHistory"
.end annotation


# instance fields
.field public args:Ljava/lang/String;

.field public event:I

.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;

.field public timeStamp:J


# direct methods
.method private constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0

    .prologue
    .line 3539
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$HtcNetPolicyManSrvHistory;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/net/NetworkPolicyManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p2, "x1"    # Lcom/android/server/net/NetworkPolicyManagerService$1;

    .prologue
    .line 3539
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService$HtcNetPolicyManSrvHistory;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3545
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$HtcNetPolicyManSrvHistory;->event:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$HtcNetPolicyManSrvHistory;->args:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3546
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
