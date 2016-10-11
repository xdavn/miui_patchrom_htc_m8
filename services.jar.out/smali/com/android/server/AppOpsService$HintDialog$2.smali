.class Lcom/android/server/AppOpsService$HintDialog$2;
.super Ljava/lang/Object;
.source "AppOpsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/AppOpsService$HintDialog;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/AppOpsService$HintDialog;

.field final synthetic val$allow:Z


# direct methods
.method constructor <init>(Lcom/android/server/AppOpsService$HintDialog;Z)V
    .locals 0

    .prologue
    .line 2143
    iput-object p1, p0, Lcom/android/server/AppOpsService$HintDialog$2;->this$1:Lcom/android/server/AppOpsService$HintDialog;

    iput-boolean p2, p0, Lcom/android/server/AppOpsService$HintDialog$2;->val$allow:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2146
    iget-boolean v1, p0, Lcom/android/server/AppOpsService$HintDialog$2;->val$allow:Z

    if-eqz v1, :cond_2

    .line 2148
    .local v0, "mode":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/AppOpsService$HintDialog$2;->this$1:Lcom/android/server/AppOpsService$HintDialog;

    iget-object v1, v1, Lcom/android/server/AppOpsService$HintDialog;->this$0:Lcom/android/server/AppOpsService;

    iget-object v2, p0, Lcom/android/server/AppOpsService$HintDialog$2;->this$1:Lcom/android/server/AppOpsService$HintDialog;

    iget-object v2, v2, Lcom/android/server/AppOpsService$HintDialog;->mData:Lcom/android/server/AppOpsService$HintDialogData;

    iget v2, v2, Lcom/android/server/AppOpsService$HintDialogData;->code:I

    iget-object v3, p0, Lcom/android/server/AppOpsService$HintDialog$2;->this$1:Lcom/android/server/AppOpsService$HintDialog;

    iget-object v3, v3, Lcom/android/server/AppOpsService$HintDialog;->mData:Lcom/android/server/AppOpsService$HintDialogData;

    iget v3, v3, Lcom/android/server/AppOpsService$HintDialogData;->uid:I

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/AppOpsService;->setUidMode(III)V

    .line 2150
    iget-object v1, p0, Lcom/android/server/AppOpsService$HintDialog$2;->this$1:Lcom/android/server/AppOpsService$HintDialog;

    iget-object v1, v1, Lcom/android/server/AppOpsService$HintDialog;->this$0:Lcom/android/server/AppOpsService;

    # getter for: Lcom/android/server/AppOpsService;->mWaitingList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/AppOpsService;->access$300(Lcom/android/server/AppOpsService;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 2151
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppOpsService$HintDialog$2;->this$1:Lcom/android/server/AppOpsService$HintDialog;

    iget-object v1, v1, Lcom/android/server/AppOpsService$HintDialog;->mData:Lcom/android/server/AppOpsService$HintDialogData;

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/server/AppOpsService$HintDialogData;->updating:Z

    .line 2152
    iget-object v1, p0, Lcom/android/server/AppOpsService$HintDialog$2;->this$1:Lcom/android/server/AppOpsService$HintDialog;

    iget-object v1, v1, Lcom/android/server/AppOpsService$HintDialog;->mData:Lcom/android/server/AppOpsService$HintDialogData;

    iget v1, v1, Lcom/android/server/AppOpsService$HintDialogData;->requestCount:I

    if-nez v1, :cond_0

    .line 2153
    iget-object v1, p0, Lcom/android/server/AppOpsService$HintDialog$2;->this$1:Lcom/android/server/AppOpsService$HintDialog;

    iget-object v1, v1, Lcom/android/server/AppOpsService$HintDialog;->this$0:Lcom/android/server/AppOpsService;

    # getter for: Lcom/android/server/AppOpsService;->mWaitingList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/AppOpsService;->access$300(Lcom/android/server/AppOpsService;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/AppOpsService$HintDialog$2;->this$1:Lcom/android/server/AppOpsService$HintDialog;

    iget-object v3, v3, Lcom/android/server/AppOpsService$HintDialog;->mData:Lcom/android/server/AppOpsService$HintDialogData;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2155
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2156
    # getter for: Lcom/android/server/AppOpsService;->DEBUG_HINT:Z
    invoke-static {}, Lcom/android/server/AppOpsService;->access$200()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2157
    const-string v1, "AppOps"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/AppOpsService$HintDialog$2;->this$1:Lcom/android/server/AppOpsService$HintDialog;

    iget-object v3, v3, Lcom/android/server/AppOpsService$HintDialog;->mData:Lcom/android/server/AppOpsService$HintDialogData;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " updated"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2159
    :cond_1
    return-void

    .line 2146
    .end local v0    # "mode":I
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 2155
    .restart local v0    # "mode":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
