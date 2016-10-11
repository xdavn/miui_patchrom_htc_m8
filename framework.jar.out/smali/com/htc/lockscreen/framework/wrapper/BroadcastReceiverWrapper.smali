.class public Lcom/htc/lockscreen/framework/wrapper/BroadcastReceiverWrapper;
.super Ljava/lang/Object;
.source "BroadcastReceiverWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BroadcastReceiverWrapper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSendingUserId(Landroid/content/BroadcastReceiver;)I
    .locals 1
    .param p0, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 15
    const/4 v0, -0x1

    .line 16
    .local v0, "id":I
    if-eqz p0, :cond_0

    .line 17
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result v0

    .line 19
    :cond_0
    return v0
.end method
