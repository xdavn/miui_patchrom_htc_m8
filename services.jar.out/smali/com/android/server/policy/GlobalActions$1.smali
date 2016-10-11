.class Lcom/android/server/policy/GlobalActions$1;
.super Lcom/android/server/policy/GlobalActions$ToggleAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions;->createDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mHasShowAirplaneModeWarning:Z

.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;IIIII)V
    .locals 6
    .param p2, "x0"    # I
    .param p3, "x1"    # I
    .param p4, "x2"    # I
    .param p5, "x3"    # I
    .param p6, "x4"    # I

    .prologue
    .line 268
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$1;->this$0:Lcom/android/server/policy/GlobalActions;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/GlobalActions$ToggleAction;-><init>(IIIII)V

    .line 269
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/GlobalActions$1;->mHasShowAirplaneModeWarning:Z

    return-void
.end method


# virtual methods
.method protected changeStateFromPress(Z)V
    .locals 2
    .param p1, "buttonOn"    # Z

    .prologue
    .line 293
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions$1;->mHasShowAirplaneModeWarning:Z

    if-eqz v0, :cond_1

    .line 294
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/GlobalActions$1;->mHasShowAirplaneModeWarning:Z

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$1;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mHasTelephony:Z
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->access$000(Lcom/android/server/policy/GlobalActions;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    const-string v0, "ril.cdma.inecmmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$1;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mIGlobalActionsCust:Lcom/android/server/policy/IGlobalActionsCust;
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->access$300(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/IGlobalActionsCust;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 305
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$1;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mIGlobalActionsCust:Lcom/android/server/policy/IGlobalActionsCust;
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->access$300(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/IGlobalActionsCust;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/policy/IGlobalActionsCust;->handleAirplaneModeCheck(Z)Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions$1;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 308
    :goto_1
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$1;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$1;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    # setter for: Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    invoke-static {v0, v1}, Lcom/android/server/policy/GlobalActions;->access$502(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$ToggleAction$State;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    goto :goto_0

    .line 307
    :cond_2
    if-eqz p1, :cond_3

    sget-object v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->TurningOn:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    :goto_2
    iput-object v0, p0, Lcom/android/server/policy/GlobalActions$1;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->TurningOff:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    goto :goto_2
.end method

.method onToggle(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 272
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$1;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mHasTelephony:Z
    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->access$000(Lcom/android/server/policy/GlobalActions;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ril.cdma.inecmmode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 274
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$1;->this$0:Lcom/android/server/policy/GlobalActions;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/policy/GlobalActions;->mIsWaitingForEcmExit:Z
    invoke-static {v1, v2}, Lcom/android/server/policy/GlobalActions;->access$102(Lcom/android/server/policy/GlobalActions;Z)Z

    .line 276
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 278
    .local v0, "ecmDialogIntent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 279
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$1;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->access$200(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 289
    .end local v0    # "ecmDialogIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$1;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mIGlobalActionsCust:Lcom/android/server/policy/IGlobalActionsCust;
    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->access$300(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/IGlobalActionsCust;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 283
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$1;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mIGlobalActionsCust:Lcom/android/server/policy/IGlobalActionsCust;
    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->access$300(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/IGlobalActionsCust;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$1;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->access$200(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/android/server/policy/IGlobalActionsCust;->showWarningForAirplaneMode(Landroid/content/Context;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/policy/GlobalActions$1;->mHasShowAirplaneModeWarning:Z

    .line 286
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/policy/GlobalActions$1;->mHasShowAirplaneModeWarning:Z

    if-nez v1, :cond_0

    .line 287
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$1;->this$0:Lcom/android/server/policy/GlobalActions;

    # invokes: Lcom/android/server/policy/GlobalActions;->changeAirplaneModeSystemSetting(Z)V
    invoke-static {v1, p1}, Lcom/android/server/policy/GlobalActions;->access$400(Lcom/android/server/policy/GlobalActions;Z)V

    goto :goto_0
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$1;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mIGlobalActionsCust:Lcom/android/server/policy/IGlobalActionsCust;
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->access$300(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/IGlobalActionsCust;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 314
    const/4 v0, 0x1

    return v0
.end method
