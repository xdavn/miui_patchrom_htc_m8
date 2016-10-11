.class Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager$BroadcastRecord;
.super Ljava/lang/Object;
.source "HtcLocalBroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BroadcastRecord"
.end annotation


# instance fields
.field final intent:Landroid/content/Intent;

.field final receivers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager$ReceiverRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Intent;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "_intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager$ReceiverRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p2, "_receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager$ReceiverRecord;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager$BroadcastRecord;->intent:Landroid/content/Intent;

    .line 48
    iput-object p2, p0, Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager$BroadcastRecord;->receivers:Ljava/util/ArrayList;

    .line 49
    return-void
.end method
