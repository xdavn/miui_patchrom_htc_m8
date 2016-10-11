.class Lcom/android/server/am/HtcAmsCallbackManager$CallbackChecker;
.super Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
.source "HtcAmsCallbackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/HtcAmsCallbackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackChecker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/HtcAmsCallbackManager;


# direct methods
.method private constructor <init>(Lcom/android/server/am/HtcAmsCallbackManager;)V
    .locals 0

    .prologue
    .line 1376
    iput-object p1, p0, Lcom/android/server/am/HtcAmsCallbackManager$CallbackChecker;->this$0:Lcom/android/server/am/HtcAmsCallbackManager;

    invoke-direct {p0}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public afterStartActivityUncheckedLocked()V
    .locals 2

    .prologue
    .line 1479
    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.afterStartActivityUncheckedLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    return-void
.end method

.method public beforeStartActivityUncheckedLocked()V
    .locals 2

    .prologue
    .line 1475
    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.beforeStartActivityUncheckedLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    return-void
.end method

.method public onAddRecentTask(Lcom/android/server/am/HtcWrapTaskRecord;Lcom/android/server/am/HtcWrapTaskRecord;)V
    .locals 2
    .param p1, "task"    # Lcom/android/server/am/HtcWrapTaskRecord;
    .param p2, "prevTask"    # Lcom/android/server/am/HtcWrapTaskRecord;

    .prologue
    .line 1425
    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.onAddRecentTask"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    return-void
.end method

.method public onAddRecentTaskLocked(Lcom/android/server/am/HtcWrapTaskRecord;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "task"    # Lcom/android/server/am/HtcWrapTaskRecord;
    .param p2, "history"    # Ljava/util/ArrayList;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1421
    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.onAddRecentTaskLocked, deprecated!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    return-void
.end method

.method public onAppDiedLocked(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 2
    .param p1, "process"    # Lcom/android/server/am/HtcWrapProcessRecord;

    .prologue
    .line 1442
    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.onAppDiedLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    return-void
.end method

.method public onAppDiedLockedV2(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 2
    .param p1, "process"    # Lcom/android/server/am/HtcWrapProcessRecord;

    .prologue
    .line 1446
    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.onAppDiedLockedV2"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    return-void
.end method

.method public onAttachApplicationLocked(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 2
    .param p1, "process"    # Lcom/android/server/am/HtcWrapProcessRecord;

    .prologue
    .line 1411
    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.onAttachApplicationLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    return-void
.end method

.method public onBroadcastIntentLocked(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1429
    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.onBroadcastIntentLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    return-void
.end method

.method public onCleanUpApplicationRecordLocked(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 2
    .param p1, "process"    # Lcom/android/server/am/HtcWrapProcessRecord;

    .prologue
    .line 1455
    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.onCleanUpApplicationRecordLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    return-void
.end method

.method public onCrashApplication(Lcom/android/server/am/HtcWrapProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    .locals 2
    .param p1, "process"    # Lcom/android/server/am/HtcWrapProcessRecord;
    .param p2, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;

    .prologue
    .line 1451
    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.onCrashApplication"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    return-void
.end method

.method public onFinishBooting()V
    .locals 2

    .prologue
    .line 1382
    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.onFinishBooting"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    return-void
.end method

.method public onGenerateApplicationProvidersLocked(Lcom/android/server/am/HtcWrapProcessRecord;Landroid/content/pm/ProviderInfo;)V
    .locals 2
    .param p1, "process"    # Lcom/android/server/am/HtcWrapProcessRecord;
    .param p2, "pi"    # Landroid/content/pm/ProviderInfo;

    .prologue
    .line 1416
    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.onGenerateApplicationProvidersLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    return-void
.end method

.method public onGenerateProcessError(Lcom/android/server/am/HtcWrapProcessRecord;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "process"    # Lcom/android/server/am/HtcWrapProcessRecord;
    .param p2, "condition"    # I
    .param p3, "activity"    # Ljava/lang/String;
    .param p4, "shortMsg"    # Ljava/lang/String;
    .param p5, "longMsg"    # Ljava/lang/String;
    .param p6, "stackTrace"    # Ljava/lang/String;

    .prologue
    .line 1489
    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.onGenerateProcessError"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    return-void
.end method

.method public onGoingToSleep()V
    .locals 2

    .prologue
    .line 1386
    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.onGoingToSleep"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    return-void
.end method

.method public onHandleActivityPaused(Lcom/android/server/am/HtcWrapActivityRecord;)V
    .locals 2
    .param p1, "activity"    # Lcom/android/server/am/HtcWrapActivityRecord;

    .prologue
    .line 1467
    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.onHandleActivityPaused"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    return-void
.end method

.method public onHandleActivityResumed(Lcom/android/server/am/HtcWrapActivityRecord;)V
    .locals 2
    .param p1, "activity"    # Lcom/android/server/am/HtcWrapActivityRecord;

    .prologue
    .line 1463
    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.onHandleActivityResumed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    return-void
.end method

.method public onHandleApplicationCrash(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 2
    .param p1, "process"    # Lcom/android/server/am/HtcWrapProcessRecord;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1434
    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.onHandleApplicationCrash, deprecated!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    return-void
.end method

.method public onHandleApplicationCrashV2(Lcom/android/server/am/HtcWrapProcessRecord;Ljava/util/HashSet;)V
    .locals 2
    .param p1, "process"    # Lcom/android/server/am/HtcWrapProcessRecord;
    .param p2, "pkgList"    # Ljava/util/HashSet;

    .prologue
    .line 1438
    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.onHandleApplicationCrashV2"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    return-void
.end method

.method public onHandleTopAppChanged(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 2
    .param p1, "process"    # Lcom/android/server/am/HtcWrapProcessRecord;

    .prologue
    .line 1459
    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.onHandleTopAppChanged"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    return-void
.end method

.method public onMain(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1378
    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.onMain"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    return-void
.end method

.method public onRealAppNotResponding(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 2
    .param p1, "process"    # Lcom/android/server/am/HtcWrapProcessRecord;

    .prologue
    .line 1403
    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.onRealAppNotResponding"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    return-void
.end method

.method public onRemoveProcessLocked(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 2
    .param p1, "process"    # Lcom/android/server/am/HtcWrapProcessRecord;

    .prologue
    .line 1407
    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.onRemoveProcessLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    return-void
.end method

.method public onShutdown()V
    .locals 2

    .prologue
    .line 1471
    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.onShutdown"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    return-void
.end method

.method public onStartActivityUncheckedLockedNewIntent(Lcom/android/server/am/HtcWrapTaskRecord;Lcom/android/server/am/HtcWrapTaskRecord;)V
    .locals 2
    .param p1, "prev"    # Lcom/android/server/am/HtcWrapTaskRecord;
    .param p2, "curr"    # Lcom/android/server/am/HtcWrapTaskRecord;

    .prologue
    .line 1484
    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.onStartActivityUncheckedLockedNewIntent"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    return-void
.end method

.method public onStartProcessLocked(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 2
    .param p1, "process"    # Lcom/android/server/am/HtcWrapProcessRecord;

    .prologue
    .line 1399
    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.onStartProcessLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    return-void
.end method

.method public onStartProcessLockedNewPackage(Lcom/android/server/am/HtcWrapProcessRecord;Landroid/content/pm/ApplicationInfo;)V
    .locals 2
    .param p1, "process"    # Lcom/android/server/am/HtcWrapProcessRecord;
    .param p2, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 1395
    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.onStartProcessLockedNewPackage"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    return-void
.end method

.method public onWakingUp()V
    .locals 2

    .prologue
    .line 1390
    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.onWakingUp"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    return-void
.end method
