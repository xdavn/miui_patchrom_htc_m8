.class Lcom/android/server/policy/GlobalActions$9;
.super Landroid/content/BroadcastReceiver;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;)V
    .locals 0

    .prologue
    .line 1150
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$9;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 1152
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1153
    .local v0, "action":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$9;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mIGlobalActionsCust:Lcom/android/server/policy/IGlobalActionsCust;
    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->access$300(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/IGlobalActionsCust;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$9;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mIGlobalActionsCust:Lcom/android/server/policy/IGlobalActionsCust;
    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->access$300(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/IGlobalActionsCust;

    move-result-object v3

    invoke-interface {v3, p2}, Lcom/android/server/policy/IGlobalActionsCust;->checkActualScreenOffAction(Landroid/content/Intent;)Z

    move-result v1

    .line 1154
    .local v1, "checkScreenOffIntent":Z
    :goto_0
    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v1, :cond_3

    .line 1155
    :cond_0
    const-string v3, "reason"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1156
    .local v2, "reason":Ljava/lang/String;
    const-string v3, "globalactions"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1157
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$9;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->access$900(Lcom/android/server/policy/GlobalActions;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1174
    .end local v2    # "reason":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 1153
    .end local v1    # "checkScreenOffIntent":Z
    :cond_2
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 1159
    .restart local v1    # "checkScreenOffIntent":Z
    :cond_3
    const-string v3, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1162
    const-string v3, "PHONE_IN_ECM_STATE"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$9;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mIsWaitingForEcmExit:Z
    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->access$100(Lcom/android/server/policy/GlobalActions;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1164
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$9;->this$0:Lcom/android/server/policy/GlobalActions;

    # setter for: Lcom/android/server/policy/GlobalActions;->mIsWaitingForEcmExit:Z
    invoke-static {v3, v4}, Lcom/android/server/policy/GlobalActions;->access$102(Lcom/android/server/policy/GlobalActions;Z)Z

    .line 1165
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$9;->this$0:Lcom/android/server/policy/GlobalActions;

    const/4 v4, 0x1

    # invokes: Lcom/android/server/policy/GlobalActions;->changeAirplaneModeSystemSetting(Z)V
    invoke-static {v3, v4}, Lcom/android/server/policy/GlobalActions;->access$400(Lcom/android/server/policy/GlobalActions;Z)V

    goto :goto_1

    .line 1167
    :cond_4
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$9;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mIGlobalActionsCust:Lcom/android/server/policy/IGlobalActionsCust;
    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->access$300(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/IGlobalActionsCust;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1168
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1169
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$9;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mIGlobalActionsCust:Lcom/android/server/policy/IGlobalActionsCust;
    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->access$300(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/IGlobalActionsCust;

    move-result-object v3

    invoke-interface {v3, p2}, Lcom/android/server/policy/IGlobalActionsCust;->handleSimStateBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 1170
    :cond_5
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$9;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mIGlobalActionsCust:Lcom/android/server/policy/IGlobalActionsCust;
    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->access$300(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/IGlobalActionsCust;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/policy/IGlobalActionsCust;->getIMS_REGISTRATION()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1171
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$9;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$9;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mIGlobalActionsCust:Lcom/android/server/policy/IGlobalActionsCust;
    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->access$300(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/IGlobalActionsCust;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$9;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/policy/GlobalActions;->access$200(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$9;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    invoke-static {v6}, Lcom/android/server/policy/GlobalActions;->access$500(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/policy/GlobalActions$9;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;
    invoke-static {v7}, Lcom/android/server/policy/GlobalActions;->access$1600(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction;

    move-result-object v7

    invoke-interface {v4, v5, p2, v6, v7}, Lcom/android/server/policy/IGlobalActionsCust;->handleIMSRegistrationBroadcast(Landroid/content/Context;Landroid/content/Intent;Lcom/android/server/policy/GlobalActions$ToggleAction$State;Lcom/android/server/policy/GlobalActions$ToggleAction;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-result-object v4

    # setter for: Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    invoke-static {v3, v4}, Lcom/android/server/policy/GlobalActions;->access$502(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$ToggleAction$State;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    goto :goto_1
.end method
