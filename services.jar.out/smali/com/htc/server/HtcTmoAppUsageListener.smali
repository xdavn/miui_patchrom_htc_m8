.class public Lcom/htc/server/HtcTmoAppUsageListener;
.super Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
.source "HtcTmoAppUsageListener.java"


# static fields
.field private static final APP_STATE_EXITED:Ljava/lang/String; = "EXITED"

.field private static final APP_STATE_FOCUS_GAIN:Ljava/lang/String; = "FOCUS_GAIN"

.field private static final APP_STATE_FOCUS_LOSS:Ljava/lang/String; = "FOCUS_LOSS"

.field private static final APP_STATE_START:Ljava/lang/String; = "START"

.field protected static final APP_TERM_REASONS:[Ljava/lang/String;

.field private static final APP_TERM_REASON_ANR:Ljava/lang/String; = "ANR"

.field private static final APP_TERM_REASON_CRASH:Ljava/lang/String; = "CRASH"

.field private static final APP_TERM_REASON_SYSTEM_HALT:Ljava/lang/String; = "NORMAL_SYSTEM_HALT"

.field private static final APP_TERM_REASON_USER_HALT:Ljava/lang/String; = "USER_HALTED"

.field static final DEBUG:Z

.field private static final EXTRA_APP_PACKAGE_NAME:Ljava/lang/String; = "ApplicationPackageName"

.field private static final EXTRA_APP_STATE:Ljava/lang/String; = "ApplicationState"

.field private static final EXTRA_APP_TERM_REASON:Ljava/lang/String; = "ApplicationTermReason"

.field public static final STOP_REASON_ANR:I = 0x2

.field public static final STOP_REASON_BROADCAST_MAX:I = 0x3

.field public static final STOP_REASON_BROADCAST_MIN:I = 0x0

.field public static final STOP_REASON_CRASH:I = 0x3

.field public static final STOP_REASON_HTC_SYSTEM_READY:I = 0xa

.field public static final STOP_REASON_NORMAL_SYSTEM_HALT:I = 0x0

.field public static final STOP_REASON_UNKNOWN:I = -0x1

.field public static final STOP_REASON_USER_HALT:I = 0x1

.field static final TAG:Ljava/lang/String; = "HtcTmoAppUsageListener"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentTop:Lcom/android/server/am/HtcWrapProcessRecord;

.field private mService:Lcom/android/server/am/ActivityManagerService;

.field private mSleeping:Z

.field private mSystemReady:Z

.field private mUserAppMaps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/server/ApplicationState;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 23
    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->DEBUG_AM:Z

    sput-boolean v0, Lcom/htc/server/HtcTmoAppUsageListener;->DEBUG:Z

    .line 62
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "NORMAL_SYSTEM_HALT"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "USER_HALTED"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ANR"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "CRASH"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/server/HtcTmoAppUsageListener;->APP_TERM_REASONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;-><init>()V

    .line 53
    iput-object v0, p0, Lcom/htc/server/HtcTmoAppUsageListener;->mCurrentTop:Lcom/android/server/am/HtcWrapProcessRecord;

    .line 54
    iput-object v0, p0, Lcom/htc/server/HtcTmoAppUsageListener;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 55
    iput-object v0, p0, Lcom/htc/server/HtcTmoAppUsageListener;->mContext:Landroid/content/Context;

    .line 56
    iput-boolean v1, p0, Lcom/htc/server/HtcTmoAppUsageListener;->mSystemReady:Z

    .line 57
    iput-boolean v1, p0, Lcom/htc/server/HtcTmoAppUsageListener;->mSleeping:Z

    .line 59
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/htc/server/HtcTmoAppUsageListener;->mUserAppMaps:Landroid/util/SparseArray;

    return-void
.end method

.method private broadcastAppState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appState"    # Ljava/lang/String;
    .param p3, "termReason"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 176
    iget-boolean v3, p0, Lcom/htc/server/HtcTmoAppUsageListener;->mSystemReady:Z

    if-nez v3, :cond_1

    .line 189
    .end local p3    # "termReason":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 178
    .restart local p3    # "termReason":Ljava/lang/String;
    :cond_1
    const-string v3, "EXITED"

    if-ne p2, v3, :cond_5

    const/4 v1, 0x1

    .line 179
    .local v1, "isExitedState":Z
    :goto_1
    iget-object v3, p0, Lcom/htc/server/HtcTmoAppUsageListener;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz v1, :cond_2

    if-eqz p3, :cond_0

    .line 180
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v3, "diagandroid.app.ApplicationState"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 181
    .local v0, "appStateIntent":Landroid/content/Intent;
    const-string v3, "ApplicationPackageName"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    const-string v3, "ApplicationState"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    if-eqz v1, :cond_3

    .line 184
    const-string v3, "ApplicationTermReason"

    invoke-virtual {v0, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    :cond_3
    sget-boolean v3, Lcom/htc/server/HtcTmoAppUsageListener;->DEBUG:Z

    if-eqz v3, :cond_4

    const-string v3, "HtcTmoAppUsageListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "broadcast "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_6

    .end local p3    # "termReason":Ljava/lang/String;
    :goto_2
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_4
    iget-object v3, p0, Lcom/htc/server/HtcTmoAppUsageListener;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v2}, Landroid/os/UserHandle;-><init>(I)V

    const-string v2, "diagandroid.app.receiveDetailedApplicationState"

    invoke-virtual {v3, v0, v4, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "appStateIntent":Landroid/content/Intent;
    .end local v1    # "isExitedState":Z
    .restart local p3    # "termReason":Ljava/lang/String;
    :cond_5
    move v1, v2

    .line 178
    goto :goto_1

    .line 186
    .restart local v0    # "appStateIntent":Landroid/content/Intent;
    .restart local v1    # "isExitedState":Z
    :cond_6
    const-string p3, ""

    goto :goto_2
.end method

.method private broadcastFocusLossWhenAppExit(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 3
    .param p1, "process"    # Lcom/android/server/am/HtcWrapProcessRecord;

    .prologue
    const/4 v2, 0x0

    .line 192
    iget-object v0, p0, Lcom/htc/server/HtcTmoAppUsageListener;->mCurrentTop:Lcom/android/server/am/HtcWrapProcessRecord;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/server/HtcTmoAppUsageListener;->mCurrentTop:Lcom/android/server/am/HtcWrapProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/HtcWrapProcessRecord;->processName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/server/HtcTmoAppUsageListener;->mCurrentTop:Lcom/android/server/am/HtcWrapProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/HtcWrapProcessRecord;->processName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/am/HtcWrapProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/server/HtcTmoAppUsageListener;->mSleeping:Z

    if-nez v0, :cond_1

    .line 193
    sget-boolean v0, Lcom/htc/server/HtcTmoAppUsageListener;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcTmoAppUsageListener"

    const-string v1, "focus lost due to app died"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/htc/server/HtcTmoAppUsageListener;->mCurrentTop:Lcom/android/server/am/HtcWrapProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/HtcWrapProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "FOCUS_LOSS"

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/server/HtcTmoAppUsageListener;->broadcastAppState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iput-object v2, p0, Lcom/htc/server/HtcTmoAppUsageListener;->mCurrentTop:Lcom/android/server/am/HtcWrapProcessRecord;

    .line 197
    :cond_1
    return-void
.end method

.method private getApplicationState(ILjava/lang/String;Z)Lcom/htc/server/ApplicationState;
    .locals 4
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "isAutoCreate"    # Z

    .prologue
    .line 229
    iget-object v2, p0, Lcom/htc/server/HtcTmoAppUsageListener;->mUserAppMaps:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 230
    .local v1, "userAppMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/htc/server/ApplicationState;>;"
    if-nez v1, :cond_0

    .line 231
    new-instance v1, Landroid/util/ArrayMap;

    .end local v1    # "userAppMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/htc/server/ApplicationState;>;"
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 232
    .restart local v1    # "userAppMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/htc/server/ApplicationState;>;"
    iget-object v2, p0, Lcom/htc/server/HtcTmoAppUsageListener;->mUserAppMaps:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 235
    :cond_0
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/server/ApplicationState;

    .line 236
    .local v0, "appState":Lcom/htc/server/ApplicationState;
    if-nez v0, :cond_1

    if-eqz p3, :cond_1

    .line 237
    new-instance v0, Lcom/htc/server/ApplicationState;

    .end local v0    # "appState":Lcom/htc/server/ApplicationState;
    invoke-direct {v0}, Lcom/htc/server/ApplicationState;-><init>()V

    .line 238
    .restart local v0    # "appState":Lcom/htc/server/ApplicationState;
    invoke-virtual {v1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-string v2, "START"

    const/4 v3, 0x0

    invoke-direct {p0, p2, v2, v3}, Lcom/htc/server/HtcTmoAppUsageListener;->broadcastAppState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    :cond_1
    return-object v0
.end method

.method private handleAppExit(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 8
    .param p1, "process"    # Lcom/android/server/am/HtcWrapProcessRecord;

    .prologue
    .line 200
    iget-object v5, p1, Lcom/android/server/am/HtcWrapProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 201
    .local v1, "packageName":Ljava/lang/String;
    iget v3, p1, Lcom/android/server/am/HtcWrapProcessRecord;->stopReason:I

    .line 202
    .local v3, "reason":I
    iget v2, p1, Lcom/android/server/am/HtcWrapProcessRecord;->pid:I

    .line 203
    .local v2, "processId":I
    iget v4, p1, Lcom/android/server/am/HtcWrapProcessRecord;->userId:I

    .line 205
    .local v4, "userId":I
    sget-boolean v5, Lcom/htc/server/HtcTmoAppUsageListener;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 206
    const-string v5, "HtcTmoAppUsageListener"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "app exit, userId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " process = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/server/am/HtcWrapProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", reason = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/android/server/am/HtcWrapProcessRecord;->stopReason:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_0
    const/4 v5, 0x0

    invoke-direct {p0, v4, v1, v5}, Lcom/htc/server/HtcTmoAppUsageListener;->getApplicationState(ILjava/lang/String;Z)Lcom/htc/server/ApplicationState;

    move-result-object v0

    .line 211
    .local v0, "appState":Lcom/htc/server/ApplicationState;
    if-eqz v0, :cond_3

    invoke-virtual {v0, v2, v3}, Lcom/htc/server/ApplicationState;->removeProcess(II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 213
    invoke-direct {p0, p1}, Lcom/htc/server/HtcTmoAppUsageListener;->broadcastFocusLossWhenAppExit(Lcom/android/server/am/HtcWrapProcessRecord;)V

    .line 214
    const/4 v5, -0x1

    if-ne v3, v5, :cond_1

    const/4 v3, 0x0

    .line 215
    :cond_1
    if-ltz v3, :cond_2

    const/4 v5, 0x3

    if-gt v3, v5, :cond_2

    .line 216
    const-string v5, "EXITED"

    invoke-virtual {v0}, Lcom/htc/server/ApplicationState;->getTermReason()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v1, v5, v6}, Lcom/htc/server/HtcTmoAppUsageListener;->broadcastAppState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :cond_2
    invoke-direct {p0, v4, v1}, Lcom/htc/server/HtcTmoAppUsageListener;->removeApplicationState(ILjava/lang/String;)V

    .line 220
    :cond_3
    return-void
.end method

.method private isProcessDataValid(Lcom/android/server/am/HtcWrapProcessRecord;)Z
    .locals 1
    .param p1, "process"    # Lcom/android/server/am/HtcWrapProcessRecord;

    .prologue
    .line 223
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/am/HtcWrapProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/HtcWrapProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 224
    const/4 v0, 0x1

    .line 225
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeApplicationState(ILjava/lang/String;)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 246
    iget-object v1, p0, Lcom/htc/server/HtcTmoAppUsageListener;->mUserAppMaps:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 247
    .local v0, "userAppMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/htc/server/ApplicationState;>;"
    if-nez v0, :cond_0

    .line 248
    const-string v1, "HtcTmoAppUsageListener"

    const-string v2, "map should not be null!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :goto_0
    return-void

    .line 251
    :cond_0
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public onAmsSleeping(Z)V
    .locals 3
    .param p1, "sleeping"    # Z

    .prologue
    .line 117
    sget-boolean v0, Lcom/htc/server/HtcTmoAppUsageListener;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcTmoAppUsageListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAmsSleeping, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_0
    iget-boolean v0, p0, Lcom/htc/server/HtcTmoAppUsageListener;->mSleeping:Z

    if-eq v0, p1, :cond_1

    .line 120
    iput-boolean p1, p0, Lcom/htc/server/HtcTmoAppUsageListener;->mSleeping:Z

    .line 121
    iget-object v0, p0, Lcom/htc/server/HtcTmoAppUsageListener;->mCurrentTop:Lcom/android/server/am/HtcWrapProcessRecord;

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/htc/server/HtcTmoAppUsageListener;->mCurrentTop:Lcom/android/server/am/HtcWrapProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/HtcWrapProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/htc/server/HtcTmoAppUsageListener;->mSleeping:Z

    if-eqz v0, :cond_2

    const-string v0, "FOCUS_LOSS"

    :goto_0
    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/htc/server/HtcTmoAppUsageListener;->broadcastAppState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_1
    return-void

    .line 122
    :cond_2
    const-string v0, "FOCUS_GAIN"

    goto :goto_0
.end method

.method public onAppDiedLockedV2(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 1
    .param p1, "process"    # Lcom/android/server/am/HtcWrapProcessRecord;

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/htc/server/HtcTmoAppUsageListener;->isProcessDataValid(Lcom/android/server/am/HtcWrapProcessRecord;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    iget-boolean v0, p1, Lcom/android/server/am/HtcWrapProcessRecord;->crashing:Z

    if-nez v0, :cond_0

    .line 104
    invoke-direct {p0, p1}, Lcom/htc/server/HtcTmoAppUsageListener;->handleAppExit(Lcom/android/server/am/HtcWrapProcessRecord;)V

    goto :goto_0
.end method

.method public onCrashApplication(Lcom/android/server/am/HtcWrapProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    .locals 1
    .param p1, "process"    # Lcom/android/server/am/HtcWrapProcessRecord;
    .param p2, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/htc/server/HtcTmoAppUsageListener;->isProcessDataValid(Lcom/android/server/am/HtcWrapProcessRecord;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 112
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/server/HtcTmoAppUsageListener;->handleAppExit(Lcom/android/server/am/HtcWrapProcessRecord;)V

    goto :goto_0
.end method

.method public onFinishBooting()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 153
    iget-boolean v5, p0, Lcom/htc/server/HtcTmoAppUsageListener;->mSystemReady:Z

    if-eqz v5, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/htc/server/HtcTmoAppUsageListener;->mSystemReady:Z

    .line 156
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v5, p0, Lcom/htc/server/HtcTmoAppUsageListener;->mUserAppMaps:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_4

    .line 157
    iget-object v5, p0, Lcom/htc/server/HtcTmoAppUsageListener;->mUserAppMaps:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    .line 158
    .local v4, "userAppMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/htc/server/ApplicationState;>;"
    sget-boolean v5, Lcom/htc/server/HtcTmoAppUsageListener;->DEBUG:Z

    if-eqz v5, :cond_2

    .line 159
    const-string v5, "HtcTmoAppUsageListener"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onFinishBooting, userId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/server/HtcTmoAppUsageListener;->mUserAppMaps:Landroid/util/SparseArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "procs = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_2
    invoke-virtual {v4}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 164
    .local v1, "it":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 165
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 166
    .local v3, "pairs":Ljava/util/Map$Entry;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 167
    .local v2, "packageName":Ljava/lang/String;
    const-string v5, "START"

    invoke-direct {p0, v2, v5, v8}, Lcom/htc/server/HtcTmoAppUsageListener;->broadcastAppState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 156
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "pairs":Ljava/util/Map$Entry;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 170
    .end local v1    # "it":Ljava/util/Iterator;
    .end local v4    # "userAppMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/htc/server/ApplicationState;>;"
    :cond_4
    iget-object v5, p0, Lcom/htc/server/HtcTmoAppUsageListener;->mCurrentTop:Lcom/android/server/am/HtcWrapProcessRecord;

    if-eqz v5, :cond_0

    .line 171
    iget-object v5, p0, Lcom/htc/server/HtcTmoAppUsageListener;->mCurrentTop:Lcom/android/server/am/HtcWrapProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/HtcWrapProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v6, "FOCUS_GAIN"

    invoke-direct {p0, v5, v6, v8}, Lcom/htc/server/HtcTmoAppUsageListener;->broadcastAppState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onHandleTopAppChanged(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 6
    .param p1, "process"    # Lcom/android/server/am/HtcWrapProcessRecord;

    .prologue
    const/4 v5, 0x0

    .line 129
    invoke-direct {p0, p1}, Lcom/htc/server/HtcTmoAppUsageListener;->isProcessDataValid(Lcom/android/server/am/HtcWrapProcessRecord;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    sget-boolean v2, Lcom/htc/server/HtcTmoAppUsageListener;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v3, "HtcTmoAppUsageListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onHandleTopAppChanged, current = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/htc/server/HtcTmoAppUsageListener;->mCurrentTop:Lcom/android/server/am/HtcWrapProcessRecord;

    if-nez v2, :cond_5

    const-string v2, "null"

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", next = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p1, Lcom/android/server/am/HtcWrapProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/htc/server/HtcTmoAppUsageListener;->mCurrentTop:Lcom/android/server/am/HtcWrapProcessRecord;

    .line 135
    .local v0, "previousTop":Lcom/android/server/am/HtcWrapProcessRecord;
    iget-object v2, p1, Lcom/android/server/am/HtcWrapProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 136
    .local v1, "topPackageName":Ljava/lang/String;
    iput-object p1, p0, Lcom/htc/server/HtcTmoAppUsageListener;->mCurrentTop:Lcom/android/server/am/HtcWrapProcessRecord;

    .line 138
    if-eqz v0, :cond_3

    iget-object v2, v0, Lcom/android/server/am/HtcWrapProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 142
    :cond_3
    iget-boolean v2, p0, Lcom/htc/server/HtcTmoAppUsageListener;->mSleeping:Z

    if-nez v2, :cond_0

    .line 145
    if-eqz v0, :cond_4

    .line 146
    iget-object v2, v0, Lcom/android/server/am/HtcWrapProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "FOCUS_LOSS"

    invoke-direct {p0, v2, v3, v5}, Lcom/htc/server/HtcTmoAppUsageListener;->broadcastAppState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :cond_4
    const-string v2, "FOCUS_GAIN"

    invoke-direct {p0, v1, v2, v5}, Lcom/htc/server/HtcTmoAppUsageListener;->broadcastAppState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 132
    .end local v0    # "previousTop":Lcom/android/server/am/HtcWrapProcessRecord;
    .end local v1    # "topPackageName":Ljava/lang/String;
    :cond_5
    iget-object v2, p0, Lcom/htc/server/HtcTmoAppUsageListener;->mCurrentTop:Lcom/android/server/am/HtcWrapProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/HtcWrapProcessRecord;->processName:Ljava/lang/String;

    goto :goto_1
.end method

.method public onMain(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/htc/server/HtcTmoAppUsageListener;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 72
    iput-object p2, p0, Lcom/htc/server/HtcTmoAppUsageListener;->mContext:Landroid/content/Context;

    .line 73
    return-void
.end method

.method public onStartProcessLocked(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 6
    .param p1, "process"    # Lcom/android/server/am/HtcWrapProcessRecord;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/htc/server/HtcTmoAppUsageListener;->isProcessDataValid(Lcom/android/server/am/HtcWrapProcessRecord;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    iget-object v3, p1, Lcom/android/server/am/HtcWrapProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 81
    .local v1, "packageName":Ljava/lang/String;
    iget v2, p1, Lcom/android/server/am/HtcWrapProcessRecord;->userId:I

    .line 82
    .local v2, "userId":I
    const/4 v3, 0x1

    invoke-direct {p0, v2, v1, v3}, Lcom/htc/server/HtcTmoAppUsageListener;->getApplicationState(ILjava/lang/String;Z)Lcom/htc/server/ApplicationState;

    move-result-object v0

    .line 83
    .local v0, "appState":Lcom/htc/server/ApplicationState;
    if-eqz v0, :cond_2

    .line 84
    iget v3, p1, Lcom/android/server/am/HtcWrapProcessRecord;->pid:I

    invoke-virtual {v0, v3}, Lcom/htc/server/ApplicationState;->addProcess(I)V

    .line 89
    :goto_1
    sget-boolean v3, Lcom/htc/server/HtcTmoAppUsageListener;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 90
    const-string v3, "HtcTmoAppUsageListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStartProcessLocked, userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " process = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/am/HtcWrapProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", package = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 86
    :cond_2
    const-string v3, "HtcTmoAppUsageListener"

    const-string v4, "unable to get app state"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
