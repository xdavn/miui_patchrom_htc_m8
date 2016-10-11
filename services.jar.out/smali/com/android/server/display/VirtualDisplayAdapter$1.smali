.class Lcom/android/server/display/VirtualDisplayAdapter$1;
.super Ljava/lang/Object;
.source "VirtualDisplayAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/VirtualDisplayAdapter;->sendStatusChangedBroadcast(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field status:I

.field final synthetic this$0:Lcom/android/server/display/VirtualDisplayAdapter;


# direct methods
.method constructor <init>(Lcom/android/server/display/VirtualDisplayAdapter;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$1;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init(I)Ljava/lang/Runnable;
    .locals 0
    .param p1, "_status"    # I

    .prologue
    .line 105
    iput p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$1;->status:I

    .line 106
    return-object p0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 110
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/hardware/display/WifiDisplayStatus;

    iget v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$1;->status:I

    invoke-direct {v0, v2}, Landroid/hardware/display/WifiDisplayStatus;-><init>(I)V

    .line 112
    .local v0, "WDStatus":Landroid/hardware/display/WifiDisplayStatus;
    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 113
    const-string v2, "android.hardware.display.extra.WIFI_DISPLAY_STATUS"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 116
    iget-object v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$1;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    invoke-virtual {v2}, Lcom/android/server/display/VirtualDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 117
    return-void
.end method
