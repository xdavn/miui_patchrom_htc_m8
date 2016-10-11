.class Lcom/android/server/wifi/HtcManualAssociateImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "HtcManualAssociate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/HtcManualAssociateImpl;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Landroid/app/AlarmManager;Lcom/android/server/wifi/WifiNative;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/HtcManualAssociateImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/HtcManualAssociateImpl;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/server/wifi/HtcManualAssociateImpl$1;->this$0:Lcom/android/server/wifi/HtcManualAssociateImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/server/wifi/HtcManualAssociateImpl$1;->this$0:Lcom/android/server/wifi/HtcManualAssociateImpl;

    const-string v1, "[CMCC] received CMCC Reminder intent"

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/HtcManualAssociateImpl;->logi(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/android/server/wifi/HtcManualAssociateImpl$1;->this$0:Lcom/android/server/wifi/HtcManualAssociateImpl;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/wifi/HtcManualAssociateImpl;->mCmccReminderBlock:Z

    .line 158
    return-void
.end method
