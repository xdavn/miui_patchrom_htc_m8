.class Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;
.super Ljava/lang/Object;
.source "HtcWakeLockDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/HtcWakeLockDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WakeLockDetector"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SystemInfo;,
        Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$ItemAttribute;,
        Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;,
        Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;,
        Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$ProcessInfo;,
        Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;
    }
.end annotation


# instance fields
.field private final HZ:J

.field private final LOCATION_PERMISSION:Ljava/lang/String;

.field private final MAX_NUM:I

.field private mASNFlag:I

.field private mAbnormalGpsCount:I

.field private mAlarmGroupingDuration:J

.field private mAlarmGroupingFlag:I

.field private mBlackList:Lorg/w3c/dom/Element;

.field private mCCUCpuUsage:F

.field private mCCUImportance:I

.field private mCCUThroughput:J

.field private mCandidates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;",
            ">;"
        }
    .end annotation
.end field

.field private mConfig:Lorg/w3c/dom/Document;

.field private mConfigVersion:Ljava/lang/String;

.field private mDetectPeriod:J

.field private mDoSamplingFlag:Z

.field private mEnableRunning:Z

.field private mGPSImportance:I

.field private mGPSSleepTime:J

.field private mGPSThreshold:I

.field private mHeldTimeThreshold:J

.field private mImportance:I

.field private mKnownIssueBackground:Lorg/w3c/dom/Element;

.field private mKnownIssueForeground:Lorg/w3c/dom/Element;

.field private mKnownIssuePerceptible:Lorg/w3c/dom/Element;

.field private mKnownIssueService:Lorg/w3c/dom/Element;

.field private mKnownIssueVisible:Lorg/w3c/dom/Element;

.field private mPowerNavigationFlag:I

.field private mProgramVersion:Ljava/lang/String;

.field private mSamplingCount:I

.field private mSamplingTime:J

.field private mSleepTimeToMeasureCpu:J

.field private mStart:Z

.field private mSystemInfo:Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SystemInfo;

.field private mTestFlag:Z

.field private mWLCpuUsage:F

.field private mWLThroughput:J

.field private mWhiteList:Lorg/w3c/dom/Element;

.field final synthetic this$0:Lcom/android/server/power/HtcWakeLockDetector;


# direct methods
.method public constructor <init>(Lcom/android/server/power/HtcWakeLockDetector;)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    const-wide/16 v6, 0x0

    const/16 v5, 0x190

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 445
    iput-object p1, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 355
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mConfigVersion:Ljava/lang/String;

    .line 356
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mProgramVersion:Ljava/lang/String;

    .line 357
    iput-object v2, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mConfig:Lorg/w3c/dom/Document;

    .line 358
    iput-object v2, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mWhiteList:Lorg/w3c/dom/Element;

    .line 359
    iput-object v2, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mBlackList:Lorg/w3c/dom/Element;

    .line 360
    iput-boolean v4, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mTestFlag:Z

    .line 361
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    iput-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->LOCATION_PERMISSION:Ljava/lang/String;

    .line 362
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->MAX_NUM:I

    .line 363
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->HZ:J

    .line 364
    iput v4, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mAbnormalGpsCount:I

    .line 365
    iput-boolean v4, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mEnableRunning:Z

    .line 366
    iput-object v2, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mKnownIssueBackground:Lorg/w3c/dom/Element;

    .line 367
    iput-object v2, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mKnownIssueService:Lorg/w3c/dom/Element;

    .line 368
    iput-object v2, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mKnownIssueVisible:Lorg/w3c/dom/Element;

    .line 369
    iput-object v2, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mKnownIssuePerceptible:Lorg/w3c/dom/Element;

    .line 370
    iput-object v2, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mKnownIssueForeground:Lorg/w3c/dom/Element;

    .line 371
    iput-boolean v4, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mStart:Z

    .line 372
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mDoSamplingFlag:Z

    .line 373
    iput-wide v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mSamplingTime:J

    .line 374
    iput v4, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mSamplingCount:I

    .line 375
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCandidates:Ljava/util/List;

    .line 376
    iput-object v2, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mSystemInfo:Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SystemInfo;

    .line 446
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mSleepTimeToMeasureCpu:J

    .line 447
    const-wide/32 v0, 0x1b7740

    iput-wide v0, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mDetectPeriod:J

    .line 448
    const-wide/32 v0, 0x1b7740

    iput-wide v0, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mHeldTimeThreshold:J

    .line 449
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mWLCpuUsage:F

    .line 450
    const-wide/16 v0, 0x5000

    iget-wide v2, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mSleepTimeToMeasureCpu:J

    div-long/2addr v2, v8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mWLThroughput:J

    .line 451
    iput v5, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mImportance:I

    .line 452
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCCUCpuUsage:F

    .line 453
    const-wide/16 v0, 0x5000

    iget-wide v2, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mSleepTimeToMeasureCpu:J

    div-long/2addr v2, v8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCCUThroughput:J

    .line 454
    iput v5, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCCUImportance:I

    .line 455
    const-wide/32 v0, 0x1d4c0

    iput-wide v0, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mGPSSleepTime:J

    .line 456
    const/16 v0, 0x7530

    iput v0, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mGPSThreshold:I

    .line 457
    iput v5, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mGPSImportance:I

    .line 458
    iput v4, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mPowerNavigationFlag:I

    .line 459
    iput v4, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mAlarmGroupingFlag:I

    .line 460
    iput-wide v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mAlarmGroupingDuration:J

    .line 461
    iput v4, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mASNFlag:I

    .line 462
    return-void
.end method

.method private RecordSemiUsageForAllCandidates(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/HtcWakeLockDetector$WakeLock;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1327
    .local p1, "candidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/power/HtcWakeLockDetector$WakeLock;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1328
    .local v3, "semi_usages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;>;"
    const/4 v0, 0x0

    .line 1329
    .local v0, "cid":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;

    .line 1331
    .local v5, "wl":Lcom/android/server/power/HtcWakeLockDetector$WakeLock;
    new-instance v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;

    const/4 v6, 0x0

    invoke-direct {v4, p0, v6}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;-><init>(Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;Lcom/android/server/power/HtcWakeLockDetector$1;)V

    .line 1332
    .local v4, "su":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "cid":I
    .local v1, "cid":I
    iput v0, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;->id:I

    .line 1333
    iget-object v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    iget v7, v5, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mOwnerPid:I

    # invokes: Lcom/android/server/power/HtcWakeLockDetector;->readProcessStat(I)Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/server/power/HtcWakeLockDetector;->access$1000(Lcom/android/server/power/HtcWakeLockDetector;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;->procStat:Ljava/lang/String;

    .line 1334
    iget v6, v5, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mOwnerUid:I

    invoke-static {v6}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v6

    iput-wide v6, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;->tx:J

    .line 1335
    iget v6, v5, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mOwnerUid:I

    invoke-static {v6}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v6

    iput-wide v6, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;->rx:J

    .line 1336
    iget-object v6, v5, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mPackageName:Ljava/lang/String;

    const-string v7, "android.permission.ACCESS_FINE_LOCATION"

    invoke-direct {p0, v6, v7}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->checkPermissionBy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;->permissionFlag:Z

    .line 1337
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 1338
    .end local v1    # "cid":I
    .restart local v0    # "cid":I
    goto :goto_0

    .line 1339
    .end local v4    # "su":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;
    .end local v5    # "wl":Lcom/android/server/power/HtcWakeLockDetector$WakeLock;
    :cond_0
    return-object v3
.end method

.method private RecordSemiUsageForAllProcesses(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1344
    .local p1, "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1345
    .local v4, "semi_usages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;>;"
    const/4 v1, 0x0

    .line 1346
    .local v1, "cid":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;

    .line 1348
    .local v0, "candi":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;
    new-instance v5, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;-><init>(Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;Lcom/android/server/power/HtcWakeLockDetector$1;)V

    .line 1349
    .local v5, "su":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "cid":I
    .local v2, "cid":I
    iput v1, v5, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;->id:I

    .line 1350
    iget-object v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    iget v7, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->pid:I

    # invokes: Lcom/android/server/power/HtcWakeLockDetector;->readProcessStat(I)Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/server/power/HtcWakeLockDetector;->access$1000(Lcom/android/server/power/HtcWakeLockDetector;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;->procStat:Ljava/lang/String;

    .line 1351
    iget v6, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->uid:I

    invoke-static {v6}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;->tx:J

    .line 1352
    iget v6, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->uid:I

    invoke-static {v6}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;->rx:J

    .line 1353
    iget-object v6, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->packageName:Ljava/lang/String;

    const-string v7, "android.permission.ACCESS_FINE_LOCATION"

    invoke-direct {p0, v6, v7}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->checkPermissionBy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, v5, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;->permissionFlag:Z

    .line 1354
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v2

    .line 1355
    .end local v2    # "cid":I
    .restart local v1    # "cid":I
    goto :goto_0

    .line 1356
    .end local v0    # "candi":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;
    .end local v5    # "su":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;
    :cond_0
    return-object v4
.end method

.method private checkAbnormalForCrazyCpuUsage(Ljava/util/List;)Ljava/util/List;
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1040
    .local p1, "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v26

    if-nez v26, :cond_1

    .line 1041
    :cond_0
    const/16 v26, 0x0

    .line 1231
    :goto_0
    return-object v26

    .line 1044
    :cond_1
    const-string v26, "HtcWLD_v4.4.0"

    const-string v27, " "

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    const-string v26, "HtcWLD_v4.4.0"

    const-string v27, "    # Check abnormal process for crazy CPU usage case."

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1050
    .local v7, "death_list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->isDeviceIdle(Z)Z

    move-result v26

    if-nez v26, :cond_3

    .line 1052
    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->showNonIdleMessage(Z)V

    .line 1231
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v7}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->updateCandidatesByDeathList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v26

    goto :goto_0

    .line 1058
    :cond_3
    const/16 v24, 0x0

    .line 1059
    .local v24, "wakelocks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/power/HtcWakeLockDetector$WakeLock;>;"
    const-wide/16 v10, 0x0

    .line 1060
    .local v10, "held_wl_time_threshold":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/power/HtcWakeLockDetector;->mSyncLock:Ljava/lang/Object;
    invoke-static/range {v26 .. v26}, Lcom/android/server/power/HtcWakeLockDetector;->access$1500(Lcom/android/server/power/HtcWakeLockDetector;)Ljava/lang/Object;

    move-result-object v27

    monitor-enter v27

    .line 1061
    :try_start_0
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->getCandidatesHoldingLongTime(J)Ljava/util/ArrayList;

    move-result-object v24

    .line 1062
    monitor-exit v27
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1064
    const/16 v23, -0x1

    .line 1065
    .local v23, "suid":I
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 1066
    .local v18, "packages":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_4
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;

    .line 1069
    .local v6, "cand":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;
    iget-wide v0, v6, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->runningTime:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mHeldTimeThreshold:J

    move-wide/from16 v28, v0

    cmp-long v26, v26, v28

    if-ltz v26, :cond_4

    .line 1073
    iget v0, v6, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->minCpuUsage:F

    move/from16 v26, v0

    const/16 v27, 0x0

    cmpg-float v26, v26, v27

    if-ltz v26, :cond_4

    .line 1078
    const-string v21, ""

    .line 1079
    .local v21, "pkg_name":Ljava/lang/String;
    iget-object v0, v6, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->packageList:[Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    if-lez v26, :cond_6

    .line 1081
    iget-object v4, v6, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->packageList:[Ljava/lang/String;

    .local v4, "arr$":[Ljava/lang/String;
    array-length v0, v4

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_2
    move/from16 v0, v16

    if-ge v13, v0, :cond_6

    aget-object v22, v4, v13

    .line 1083
    .local v22, "str":Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v26

    if-nez v26, :cond_5

    .line 1084
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 1086
    :cond_5
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 1081
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 1062
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v6    # "cand":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;
    .end local v13    # "i$":I
    .end local v16    # "len$":I
    .end local v18    # "packages":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;>;"
    .end local v21    # "pkg_name":Ljava/lang/String;
    .end local v22    # "str":Ljava/lang/String;
    .end local v23    # "suid":I
    :catchall_0
    move-exception v26

    :try_start_1
    monitor-exit v27
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v26

    .line 1090
    .restart local v6    # "cand":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;
    .restart local v18    # "packages":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;>;"
    .restart local v21    # "pkg_name":Ljava/lang/String;
    .restart local v23    # "suid":I
    :cond_6
    iget-object v0, v6, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->packageList:[Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-gt v0, v1, :cond_4

    .line 1095
    const-string v26, ""

    iget-object v0, v6, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->processName:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v21

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->checkIfInIgnoreList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_4

    .line 1100
    const/4 v9, 0x0

    .line 1101
    .local v9, "hold_wl_flag":Z
    if-eqz v24, :cond_8

    .line 1103
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;

    .line 1105
    .local v25, "wl":Lcom/android/server/power/HtcWakeLockDetector$WakeLock;
    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mOwnerPid:I

    move/from16 v26, v0

    iget v0, v6, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->pid:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_7

    .line 1106
    const/4 v9, 0x1

    .line 1112
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v25    # "wl":Lcom/android/server/power/HtcWakeLockDetector$WakeLock;
    :cond_8
    const/16 v20, -0x1

    .line 1113
    .local v20, "pkg_id":I
    const/4 v8, 0x0

    .line 1114
    .local v8, "handle_flag":Z
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :cond_9
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;

    .line 1116
    .local v19, "pkg":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;
    add-int/lit8 v20, v20, 0x1

    .line 1117
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->name:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_9

    .line 1119
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->cpuUsage:F

    move/from16 v26, v0

    iget v0, v6, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->avgCpuUsage:F

    move/from16 v27, v0

    add-float v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->cpuUsage:F

    .line 1120
    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->tx:J

    move-wide/from16 v26, v0

    iget-wide v0, v6, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->avgTx:J

    move-wide/from16 v28, v0

    add-long v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->tx:J

    .line 1121
    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->rx:J

    move-wide/from16 v26, v0

    iget-wide v0, v6, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->avgRx:J

    move-wide/from16 v28, v0

    add-long v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->rx:J

    .line 1122
    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->throughput:J

    move-wide/from16 v26, v0

    iget-wide v0, v6, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->avgThroughput:J

    move-wide/from16 v28, v0

    add-long v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->throughput:J

    .line 1123
    iget v0, v6, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->importance:I

    move/from16 v26, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->importance:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_b

    iget v0, v6, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->importance:I

    move/from16 v26, v0

    :goto_3
    move/from16 v0, v26

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->importance:I

    .line 1124
    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->holdWakeLockFlag:Z

    move/from16 v26, v0

    if-eqz v26, :cond_c

    const/16 v26, 0x1

    :goto_4
    move/from16 v0, v26

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->holdWakeLockFlag:Z

    .line 1125
    iget-wide v0, v6, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->runningTime:J

    move-wide/from16 v26, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->runningTime:J

    move-wide/from16 v28, v0

    cmp-long v26, v26, v28

    if-lez v26, :cond_d

    iget-wide v0, v6, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->runningTime:J

    move-wide/from16 v26, v0

    :goto_5
    move-wide/from16 v0, v26

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->runningTime:J

    .line 1126
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->candidateList:Ljava/util/List;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1127
    move-object/from16 v0, v18

    move/from16 v1, v20

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1129
    const/4 v8, 0x1

    .line 1134
    .end local v19    # "pkg":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;
    :cond_a
    if-nez v8, :cond_4

    .line 1136
    new-instance v17, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;

    const/16 v26, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;-><init>(Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;Lcom/android/server/power/HtcWakeLockDetector$1;)V

    .line 1137
    .local v17, "new_pkg":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->id:I

    .line 1138
    iget v0, v6, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->uid:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->uid:I

    .line 1139
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->name:Ljava/lang/String;

    .line 1140
    iget v0, v6, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->avgCpuUsage:F

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->cpuUsage:F

    .line 1141
    iget-wide v0, v6, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->avgTx:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, v17

    iput-wide v0, v2, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->tx:J

    .line 1142
    iget-wide v0, v6, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->avgRx:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, v17

    iput-wide v0, v2, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->rx:J

    .line 1143
    iget-wide v0, v6, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->avgThroughput:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, v17

    iput-wide v0, v2, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->throughput:J

    .line 1144
    iget v0, v6, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->importance:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->importance:I

    .line 1145
    move-object/from16 v0, v17

    iput-boolean v9, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->holdWakeLockFlag:Z

    .line 1146
    iget-wide v0, v6, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->runningTime:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, v17

    iput-wide v0, v2, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->runningTime:J

    .line 1147
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->candidateList:Ljava/util/List;

    .line 1148
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->candidateList:Ljava/util/List;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1149
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1123
    .end local v17    # "new_pkg":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;
    .restart local v19    # "pkg":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;
    :cond_b
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->importance:I

    move/from16 v26, v0

    goto/16 :goto_3

    :cond_c
    move/from16 v26, v9

    .line 1124
    goto/16 :goto_4

    .line 1125
    :cond_d
    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->runningTime:J

    move-wide/from16 v26, v0

    goto/16 :goto_5

    .line 1154
    .end local v6    # "cand":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;
    .end local v8    # "handle_flag":Z
    .end local v9    # "hold_wl_flag":Z
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v19    # "pkg":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;
    .end local v20    # "pkg_id":I
    .end local v21    # "pkg_name":Ljava/lang/String;
    :cond_e
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v26

    if-lez v26, :cond_2

    .line 1156
    const-string v14, "         "

    .line 1157
    .local v14, "indent":Ljava/lang/String;
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_f
    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;

    .line 1159
    .restart local v19    # "pkg":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;
    const-string v26, "HtcWLD_v4.4.0"

    const-string v27, " "

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    const-string v26, "HtcWLD_v4.4.0"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "    pkg: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->name:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    const-string v26, "HtcWLD_v4.4.0"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "Uid: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->uid:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    const-string v26, "HtcWLD_v4.4.0"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "Running time: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->runningTime:J

    move-wide/from16 v28, v0

    invoke-virtual/range {v27 .. v29}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    const-string v26, "HtcWLD_v4.4.0"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "Importance: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->importance:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->impCode2Str(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->importance:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    const-string v26, "HtcWLD_v4.4.0"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "System CPU usage: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mSystemInfo:Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SystemInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SystemInfo;->sysCpuUsage:F

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    const-string v26, "HtcWLD_v4.4.0"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "Process CPU usage : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->cpuUsage:F

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    const-string v26, "HtcWLD_v4.4.0"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "TX = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->tx:J

    move-wide/from16 v28, v0

    invoke-virtual/range {v27 .. v29}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "   RX = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->rx:J

    move-wide/from16 v28, v0

    invoke-virtual/range {v27 .. v29}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    const-string v27, "HtcWLD_v4.4.0"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v28, "Held wakelock over "

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v28, " ms: "

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->holdWakeLockFlag:Z

    move/from16 v26, v0

    if-eqz v26, :cond_14

    const-string v26, "true"

    :goto_7
    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->cpuUsage:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCCUCpuUsage:F

    move/from16 v27, v0

    cmpl-float v26, v26, v27

    if-ltz v26, :cond_10

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->holdWakeLockFlag:Z

    move/from16 v26, v0

    if-eqz v26, :cond_11

    :cond_10
    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->throughput:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCCUThroughput:J

    move-wide/from16 v28, v0

    cmp-long v26, v26, v28

    if-ltz v26, :cond_17

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->holdWakeLockFlag:Z

    move/from16 v26, v0

    if-nez v26, :cond_17

    .line 1174
    :cond_11
    const-string v26, "HtcWLD_v4.4.0"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "==== Abnormal package founded: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->name:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " ===="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->cpuUsage:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCCUCpuUsage:F

    move/from16 v27, v0

    cmpl-float v26, v26, v27

    if-ltz v26, :cond_15

    .line 1176
    const-string v26, "HtcWLD_v4.4.0"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "CPU usage "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->cpuUsage:F

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "% >= "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCCUCpuUsage:F

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "%"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    :cond_12
    :goto_8
    const-string v26, "HtcWLD_v4.4.0"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "Held wakelock over "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " ms: false"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    const/4 v5, 0x1

    .line 1187
    .local v5, "can_kill":Z
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->importance:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->checkIfSkipByProcessImportance(I)Z

    move-result v26

    if-eqz v26, :cond_16

    .line 1189
    const-string v26, "HtcWLD_v4.4.0"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "==== Abnormal package skipped: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->name:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " ===="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    const-string v26, "HtcWLD_v4.4.0"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "Importance "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->importance:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->impCode2Str(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->importance:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ") < "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCCUImportance:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->impCode2Str(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCCUImportance:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    const/4 v5, 0x0

    .line 1201
    :cond_13
    :goto_9
    if-eqz v5, :cond_f

    .line 1205
    const-string v26, "HtcWLD_v4.4.0"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "==== Abnormal package killed: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->name:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " ===="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->candidateList:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_f

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;

    .line 1210
    .local v15, "killer":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;
    const-string v26, "HtcWLD_v4.4.0"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "==== Abnormal process killed: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    iget-object v0, v15, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->processName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " ===="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    iget v0, v15, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->id:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1213
    iget v0, v15, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->pid:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/os/Process;->killProcess(I)V

    goto :goto_a

    .line 1168
    .end local v5    # "can_kill":Z
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v15    # "killer":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;
    :cond_14
    const-string v26, "false"

    goto/16 :goto_7

    .line 1178
    :cond_15
    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->throughput:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCCUThroughput:J

    move-wide/from16 v28, v0

    cmp-long v26, v26, v28

    if-ltz v26, :cond_12

    .line 1179
    const-string v26, "HtcWLD_v4.4.0"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "Throughput "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->throughput:J

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " bytes >= "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCCUThroughput:J

    move-wide/from16 v28, v0

    invoke-virtual/range {v27 .. v29}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " bytes"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 1194
    .restart local v5    # "can_kill":Z
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mWhiteList:Lorg/w3c/dom/Element;

    move-object/from16 v26, v0

    const-string v27, "enable"

    invoke-interface/range {v26 .. v27}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string v27, "true"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_13

    .line 1196
    const-string v26, "HtcWLD_v4.4.0"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "==== Abnormal package skipped: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->name:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " ===="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    const-string v26, "HtcWLD_v4.4.0"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "Monitor only."

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    const/4 v5, 0x0

    goto/16 :goto_9

    .line 1219
    .end local v5    # "can_kill":Z
    :cond_17
    const-string v26, "HtcWLD_v4.4.0"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "==== Package is normal: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->name:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " ===="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    const-string v27, "HtcWLD_v4.4.0"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v28, "CPU usage "

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->cpuUsage:F

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v28, "% "

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->cpuUsage:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCCUCpuUsage:F

    move/from16 v29, v0

    cmpl-float v26, v26, v29

    if-lez v26, :cond_18

    const-string v26, ">= "

    :goto_b
    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCCUCpuUsage:F

    move/from16 v28, v0

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v28, "%"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    const-string v27, "HtcWLD_v4.4.0"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v28, "Throughput "

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->throughput:J

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v28, " bytes "

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->throughput:J

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCCUThroughput:J

    move-wide/from16 v32, v0

    cmp-long v26, v30, v32

    if-lez v26, :cond_19

    const-string v26, ">= "

    :goto_c
    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCCUThroughput:J

    move-wide/from16 v28, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v28, " bytes"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    const-string v27, "HtcWLD_v4.4.0"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v28, "Held wakelock over "

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v28, " ms: "

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->holdWakeLockFlag:Z

    move/from16 v26, v0

    if-eqz v26, :cond_1a

    const-string v26, "true"

    :goto_d
    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1220
    :cond_18
    const-string v26, "< "

    goto/16 :goto_b

    .line 1222
    :cond_19
    const-string v26, "< "

    goto :goto_c

    .line 1224
    :cond_1a
    const-string v26, "false"

    goto :goto_d
.end method

.method private checkAbnormalForGps(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;>;"
    const/4 v4, 0x1

    .line 939
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 940
    :cond_0
    const/4 v2, 0x0

    .line 1035
    :goto_0
    return-object v2

    .line 943
    :cond_1
    const-string v2, "HtcWLD_v4.4.0"

    const-string v3, " "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    const-string v2, "HtcWLD_v4.4.0"

    const-string v3, "    # Check abnormal process for GPS case."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    iget-object v2, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/power/HtcWakeLockDetector;->mNonFirstFixCount:I
    invoke-static {v2, v3}, Lcom/android/server/power/HtcWakeLockDetector;->access$302(Lcom/android/server/power/HtcWakeLockDetector;I)I

    .line 947
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 948
    .local v1, "death_list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0, v4}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->isDeviceIdle(Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 950
    invoke-direct {p0, v4}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->showNonIdleMessage(Z)V

    .line 1035
    :goto_1
    invoke-direct {p0, p1, v1}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->updateCandidatesByDeathList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 954
    :cond_2
    iget-wide v2, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mGPSSleepTime:J

    long-to-double v2, v2

    iget v4, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mGPSThreshold:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    double-to-int v0, v2

    .line 955
    .local v0, "critical_count":I
    if-lez v0, :cond_3

    add-int/lit8 v0, v0, -0x1

    .line 956
    :cond_3
    const-string v2, "HtcWLD_v4.4.0"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    No abnormal founded (NonFirstFixCount:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    # getter for: Lcom/android/server/power/HtcWakeLockDetector;->mNonFirstFixCount:I
    invoke-static {v4}, Lcom/android/server/power/HtcWakeLockDetector;->access$300(Lcom/android/server/power/HtcWakeLockDetector;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " < "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), do nothing"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private checkAbnormalForKnownIssueList(Ljava/util/List;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;>;"
    const/4 v12, 0x0

    .line 755
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 756
    :cond_0
    const/4 v7, 0x0

    .line 822
    :goto_0
    return-object v7

    .line 759
    :cond_1
    const-string v7, "HtcWLD_v4.4.0"

    const-string v8, " "

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    const-string v7, "HtcWLD_v4.4.0"

    const-string v8, "    # Check abnormal process for KnownIssueList case."

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 765
    .local v2, "death_list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0, v12}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->isDeviceIdle(Z)Z

    move-result v7

    if-nez v7, :cond_3

    .line 767
    invoke-direct {p0, v12}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->showNonIdleMessage(Z)V

    .line 822
    :cond_2
    invoke-direct {p0, p1, v2}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->updateCandidatesByDeathList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    goto :goto_0

    .line 771
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;

    .line 773
    .local v1, "cand":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;
    iget-wide v8, v1, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->runningTime:J

    iget-wide v10, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mHeldTimeThreshold:J

    cmp-long v7, v8, v10

    if-ltz v7, :cond_4

    .line 775
    const/4 v4, 0x0

    .line 776
    .local v4, "item_attr":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$ItemAttribute;
    iget-object v5, v1, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->packageList:[Ljava/lang/String;

    .line 777
    .local v5, "pkg_list":[Ljava/lang/String;
    array-length v7, v5

    if-lez v7, :cond_7

    aget-object v6, v5, v12

    .line 779
    .local v6, "pkg_name":Ljava/lang/String;
    :goto_2
    iget v7, v1, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->importance:I

    const/16 v8, 0x190

    if-lt v7, v8, :cond_8

    .line 780
    iget-object v7, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mKnownIssueBackground:Lorg/w3c/dom/Element;

    iget-object v8, v1, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->processName:Ljava/lang/String;

    const-string v9, ""

    invoke-direct {p0, v7, v6, v8, v9}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->checkIfInListAndGetAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$ItemAttribute;

    move-result-object v4

    .line 791
    :cond_5
    :goto_3
    if-eqz v4, :cond_4

    .line 793
    const/4 v0, 0x1

    .line 796
    .local v0, "can_kill":Z
    iget-boolean v7, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$ItemAttribute;->checkAudio:Z

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    # invokes: Lcom/android/server/power/HtcWakeLockDetector;->isMusicActive()Z
    invoke-static {v7}, Lcom/android/server/power/HtcWakeLockDetector;->access$1400(Lcom/android/server/power/HtcWakeLockDetector;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 798
    const/4 v0, 0x0

    .line 799
    const-string v7, "HtcWLD_v4.4.0"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    ==== Abnormal process skipped: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ===="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    const-string v7, "HtcWLD_v4.4.0"

    const-string v8, "    Music is active."

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    :cond_6
    if-eqz v0, :cond_4

    .line 805
    iget-boolean v7, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$ItemAttribute;->forceStop:Z

    if-eqz v7, :cond_c

    .line 807
    const-string v7, "HtcWLD_v4.4.0"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    ==== Abnormal process killed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " (pkg:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") ===="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    iget v7, v1, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 809
    iget-object v7, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    # getter for: Lcom/android/server/power/HtcWakeLockDetector;->mActivityManager:Landroid/app/ActivityManager;
    invoke-static {v7}, Lcom/android/server/power/HtcWakeLockDetector;->access$900(Lcom/android/server/power/HtcWakeLockDetector;)Landroid/app/ActivityManager;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 777
    .end local v0    # "can_kill":Z
    .end local v6    # "pkg_name":Ljava/lang/String;
    :cond_7
    const-string v6, ""

    goto/16 :goto_2

    .line 781
    .restart local v6    # "pkg_name":Ljava/lang/String;
    :cond_8
    iget v7, v1, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->importance:I

    const/16 v8, 0x12c

    if-ne v7, v8, :cond_9

    .line 782
    iget-object v7, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mKnownIssueService:Lorg/w3c/dom/Element;

    iget-object v8, v1, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->processName:Ljava/lang/String;

    const-string v9, ""

    invoke-direct {p0, v7, v6, v8, v9}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->checkIfInListAndGetAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$ItemAttribute;

    move-result-object v4

    goto/16 :goto_3

    .line 783
    :cond_9
    iget v7, v1, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->importance:I

    const/16 v8, 0xc8

    if-ne v7, v8, :cond_a

    .line 784
    iget-object v7, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mKnownIssueVisible:Lorg/w3c/dom/Element;

    iget-object v8, v1, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->processName:Ljava/lang/String;

    const-string v9, ""

    invoke-direct {p0, v7, v6, v8, v9}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->checkIfInListAndGetAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$ItemAttribute;

    move-result-object v4

    goto/16 :goto_3

    .line 785
    :cond_a
    iget v7, v1, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->importance:I

    const/16 v8, 0x82

    if-ne v7, v8, :cond_b

    .line 786
    iget-object v7, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mKnownIssuePerceptible:Lorg/w3c/dom/Element;

    iget-object v8, v1, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->processName:Ljava/lang/String;

    const-string v9, ""

    invoke-direct {p0, v7, v6, v8, v9}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->checkIfInListAndGetAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$ItemAttribute;

    move-result-object v4

    goto/16 :goto_3

    .line 787
    :cond_b
    iget v7, v1, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->importance:I

    const/16 v8, 0x64

    if-gt v7, v8, :cond_5

    .line 788
    iget-object v7, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mKnownIssueForeground:Lorg/w3c/dom/Element;

    iget-object v8, v1, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->processName:Ljava/lang/String;

    const-string v9, ""

    invoke-direct {p0, v7, v6, v8, v9}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->checkIfInListAndGetAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$ItemAttribute;

    move-result-object v4

    goto/16 :goto_3

    .line 813
    .restart local v0    # "can_kill":Z
    :cond_c
    const-string v7, "HtcWLD_v4.4.0"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    ==== Abnormal process killed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ===="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    iget v7, v1, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 815
    iget v7, v1, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->pid:I

    invoke-static {v7}, Landroid/os/Process;->killProcess(I)V

    goto/16 :goto_1
.end method

.method private checkAbnormalForWakeLock(Ljava/util/List;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 827
    .local p1, "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 828
    :cond_0
    const/4 v3, 0x0

    .line 934
    :goto_0
    return-object v3

    .line 831
    :cond_1
    const-string v3, "HtcWLD_v4.4.0"

    const-string v4, " "

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    const-string v3, "HtcWLD_v4.4.0"

    const-string v4, "    # Check abnormal process for wakelock case."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 837
    .local v11, "death_list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v14, 0x0

    .line 838
    .local v14, "wakelocks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/power/HtcWakeLockDetector$WakeLock;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    # getter for: Lcom/android/server/power/HtcWakeLockDetector;->mSyncLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/power/HtcWakeLockDetector;->access$1500(Lcom/android/server/power/HtcWakeLockDetector;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 839
    :try_start_0
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mHeldTimeThreshold:J

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->getCandidatesHoldingLongTime(J)Ljava/util/ArrayList;

    move-result-object v14

    .line 840
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 842
    if-eqz v14, :cond_3

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 843
    .local v16, "wl_count":I
    :goto_1
    if-lez v16, :cond_c

    .line 845
    const-string v3, "HtcWLD_v4.4.0"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    There are "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " wakelocks held over "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mHeldTimeThreshold:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->isDeviceIdle(Z)Z

    move-result v3

    if-nez v3, :cond_4

    .line 851
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->showNonIdleMessage(Z)V

    .line 934
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->updateCandidatesByDeathList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    goto :goto_0

    .line 840
    .end local v16    # "wl_count":I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 842
    :cond_3
    const/16 v16, 0x0

    goto :goto_1

    .line 856
    .restart local v16    # "wl_count":I
    :cond_4
    const-string v17, "        "

    .line 857
    .local v17, "wl_indent":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;

    .line 859
    .local v15, "wl":Lcom/android/server/power/HtcWakeLockDetector$WakeLock;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;

    .line 861
    .local v2, "cand":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;
    iget v3, v2, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->pid:I

    iget v4, v15, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mOwnerPid:I

    if-ne v3, v4, :cond_6

    .line 864
    const-string v3, "HtcWLD_v4.4.0"

    const-string v4, " "

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    const-string v3, "HtcWLD_v4.4.0"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    wl: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v15, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    const-string v3, "HtcWLD_v4.4.0"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Package name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v15, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    const-string v3, "HtcWLD_v4.4.0"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Process name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    const-string v3, "HtcWLD_v4.4.0"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Pid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v15, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mOwnerPid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "   Uid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v15, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mOwnerUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    const-string v3, "HtcWLD_v4.4.0"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Importance: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->importance:I

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->impCode2Str(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->importance:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    iget-object v3, v2, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->semiUsage:Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;

    iget-boolean v3, v3, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;->permissionFlag:Z

    if-eqz v3, :cond_8

    .line 879
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    # getter for: Lcom/android/server/power/HtcWakeLockDetector;->mGpsStarted:Z
    invoke-static {v3}, Lcom/android/server/power/HtcWakeLockDetector;->access$200(Lcom/android/server/power/HtcWakeLockDetector;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 880
    const-string v3, "HtcWLD_v4.4.0"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "There is GPS request, do nothing."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 883
    :cond_7
    const-string v3, "HtcWLD_v4.4.0"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "No GPS request, continue to check CPU/network usage."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    :cond_8
    const-string v3, "HtcWLD_v4.4.0"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "System CPU usage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mSystemInfo:Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SystemInfo;

    iget v5, v5, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SystemInfo;->sysCpuUsage:F

    invoke-static {v5}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    iget v3, v2, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->cpuValidCount:I

    if-nez v3, :cond_9

    .line 891
    const-string v3, "HtcWLD_v4.4.0"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Skip because fail to get cpu usage of process!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 894
    :cond_9
    const-string v3, "HtcWLD_v4.4.0"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Process CPU usage : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->avgCpuUsage:F

    invoke-static {v5}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    const-string v3, "HtcWLD_v4.4.0"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "TX = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v2, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->avgTx:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "   RX = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v2, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->avgRx:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    iget v3, v2, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->avgCpuUsage:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mWLCpuUsage:F

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_a

    iget-wide v4, v2, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->avgThroughput:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mWLThroughput:J

    cmp-long v3, v4, v6

    if-gtz v3, :cond_a

    .line 899
    iget-object v4, v15, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mTag:Ljava/lang/String;

    iget-object v5, v15, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mPackageName:Ljava/lang/String;

    iget-object v6, v2, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->processName:Ljava/lang/String;

    iget v7, v2, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->avgCpuUsage:F

    iget-wide v8, v2, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->avgThroughput:J

    iget v10, v2, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->importance:I

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v10}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->checkIfSkipAbnormalWakeLock(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FJI)Z

    move-result v3

    if-nez v3, :cond_6

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->checkIfInWhiteList(Lcom/android/server/power/HtcWakeLockDetector$WakeLock;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 904
    const-string v3, "HtcWLD_v4.4.0"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "==== Abnormal WL released: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v15, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ===="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    const-string v3, "HtcWLD_v4.4.0"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "==== Abnormal process killed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ===="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    iget v3, v2, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 909
    iget v3, v15, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mOwnerPid:I

    invoke-static {v3}, Landroid/os/Process;->killProcess(I)V

    goto/16 :goto_3

    .line 914
    :cond_a
    const-string v3, "HtcWLD_v4.4.0"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "==== Wakelock is reasonable to hold: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v15, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v15, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") ===="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    iget v3, v2, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->avgCpuUsage:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mWLCpuUsage:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_b

    .line 917
    const-string v3, "HtcWLD_v4.4.0"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Because CPU usage "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->avgCpuUsage:F

    invoke-static {v5}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "% > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mWLCpuUsage:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    :cond_b
    iget-wide v4, v2, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->avgThroughput:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mWLThroughput:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_6

    .line 921
    const-string v3, "HtcWLD_v4.4.0"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Because Throughput "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v2, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->avgThroughput:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mWLThroughput:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 931
    .end local v2    # "cand":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v15    # "wl":Lcom/android/server/power/HtcWakeLockDetector$WakeLock;
    .end local v17    # "wl_indent":Ljava/lang/String;
    :cond_c
    const-string v3, "HtcWLD_v4.4.0"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    There is no wakelock held over "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mHeldTimeThreshold:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private checkExistenceInCandidateList(I)I
    .locals 4
    .param p1, "pid"    # I

    .prologue
    .line 741
    const/4 v2, -0x1

    .line 742
    .local v2, "result":I
    iget-object v3, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCandidates:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;

    .line 744
    .local v0, "cand":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;
    iget v3, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->pid:I

    if-ne p1, v3, :cond_0

    .line 746
    iget v2, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->id:I

    .line 750
    .end local v0    # "cand":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;
    :cond_1
    return v2
.end method

.method private checkFinalTurn()Z
    .locals 6

    .prologue
    .line 735
    iget-wide v2, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mDetectPeriod:J

    iget-wide v4, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mSleepTimeToMeasureCpu:J

    div-long/2addr v2, v4

    long-to-int v0, v2

    .line 736
    .local v0, "final_turn":I
    iget v1, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mSamplingCount:I

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkFirstTurn()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 730
    iget v1, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mSamplingCount:I

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkIfInIgnoreList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "wl_name"    # Ljava/lang/String;
    .param p2, "pkg_name"    # Ljava/lang/String;
    .param p3, "proc_name"    # Ljava/lang/String;

    .prologue
    .line 1734
    const/4 v0, 0x0

    .line 1736
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mBlackList:Lorg/w3c/dom/Element;

    if-eqz v1, :cond_0

    .line 1738
    iget-object v1, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mBlackList:Lorg/w3c/dom/Element;

    const-string v2, "enable"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1740
    iget-object v1, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mBlackList:Lorg/w3c/dom/Element;

    invoke-direct {p0, v1, p2, p3, p1}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->checkIfInList(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1749
    :cond_0
    return v0
.end method

.method private checkIfInList(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "xml_items_obj"    # Lorg/w3c/dom/Element;
    .param p2, "pkg_name"    # Ljava/lang/String;
    .param p3, "proc_name"    # Ljava/lang/String;
    .param p4, "wl_name"    # Ljava/lang/String;

    .prologue
    .line 1599
    const/4 v7, 0x0

    .line 1601
    .local v7, "result":Z
    if-nez p1, :cond_0

    move v8, v7

    .line 1641
    .end local v7    # "result":Z
    .local v8, "result":I
    :goto_0
    return v8

    .line 1604
    .end local v8    # "result":I
    .restart local v7    # "result":Z
    :cond_0
    const-string v9, "item"

    invoke-interface {p1, v9}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 1605
    .local v6, "items":Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_1
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v1, v9, :cond_1

    .line 1607
    invoke-interface {v6, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 1608
    .local v2, "item":Lorg/w3c/dom/Element;
    if-eqz v2, :cond_7

    .line 1610
    const-string v9, "name"

    invoke-interface {v2, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1611
    .local v4, "item_name":Ljava/lang/String;
    const-string v9, "category"

    invoke-interface {v2, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1612
    .local v3, "item_category":Ljava/lang/String;
    const-string v9, "operation"

    invoke-interface {v2, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1613
    .local v5, "item_operation":Ljava/lang/String;
    const-string v0, ""

    .line 1615
    .local v0, "candidate_name":Ljava/lang/String;
    const-string v9, "package"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1616
    move-object v0, p2

    .line 1625
    :goto_2
    const-string v9, "equal"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1626
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1627
    const/4 v7, 0x1

    .end local v0    # "candidate_name":Ljava/lang/String;
    .end local v2    # "item":Lorg/w3c/dom/Element;
    .end local v3    # "item_category":Ljava/lang/String;
    .end local v4    # "item_name":Ljava/lang/String;
    .end local v5    # "item_operation":Ljava/lang/String;
    :cond_1
    :goto_3
    move v8, v7

    .line 1641
    .restart local v8    # "result":I
    goto :goto_0

    .line 1617
    .end local v8    # "result":I
    .restart local v0    # "candidate_name":Ljava/lang/String;
    .restart local v2    # "item":Lorg/w3c/dom/Element;
    .restart local v3    # "item_category":Ljava/lang/String;
    .restart local v4    # "item_name":Ljava/lang/String;
    .restart local v5    # "item_operation":Ljava/lang/String;
    :cond_2
    const-string v9, "process"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1618
    move-object v0, p3

    goto :goto_2

    .line 1619
    :cond_3
    const-string v9, "wakelock"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1620
    move-object v0, p4

    goto :goto_2

    .line 1622
    :cond_4
    move-object v0, p2

    goto :goto_2

    .line 1629
    :cond_5
    const-string v9, "contain"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1630
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1631
    const/4 v7, 0x1

    goto :goto_3

    .line 1634
    :cond_6
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1635
    const/4 v7, 0x1

    goto :goto_3

    .line 1605
    .end local v0    # "candidate_name":Ljava/lang/String;
    .end local v3    # "item_category":Ljava/lang/String;
    .end local v4    # "item_name":Ljava/lang/String;
    .end local v5    # "item_operation":Ljava/lang/String;
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private checkIfInListAndGetAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$ItemAttribute;
    .locals 13
    .param p1, "xml_items_obj"    # Lorg/w3c/dom/Element;
    .param p2, "pkg_name"    # Ljava/lang/String;
    .param p3, "proc_name"    # Ljava/lang/String;
    .param p4, "wl_name"    # Ljava/lang/String;

    .prologue
    .line 1646
    const/4 v10, 0x0

    .line 1647
    .local v10, "result":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$ItemAttribute;
    const/4 v2, 0x0

    .line 1649
    .local v2, "isInList":Z
    if-nez p1, :cond_0

    move-object v11, v10

    .line 1699
    .end local v10    # "result":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$ItemAttribute;
    .local v11, "result":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$ItemAttribute;
    :goto_0
    return-object v11

    .line 1652
    .end local v11    # "result":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$ItemAttribute;
    .restart local v10    # "result":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$ItemAttribute;
    :cond_0
    const-string v12, "item"

    invoke-interface {p1, v12}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 1653
    .local v9, "items":Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_1
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    if-ge v1, v12, :cond_2

    .line 1655
    invoke-interface {v9, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    .line 1656
    .local v3, "item":Lorg/w3c/dom/Element;
    if-eqz v3, :cond_8

    .line 1658
    const-string v12, "name"

    invoke-interface {v3, v12}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1659
    .local v7, "item_name":Ljava/lang/String;
    const-string v12, "category"

    invoke-interface {v3, v12}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1660
    .local v4, "item_category":Ljava/lang/String;
    const-string v12, "operation"

    invoke-interface {v3, v12}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1661
    .local v8, "item_operation":Ljava/lang/String;
    const-string v12, "check_audio"

    invoke-interface {v3, v12}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1662
    .local v5, "item_check_audio":Ljava/lang/String;
    const-string v12, "force_stop"

    invoke-interface {v3, v12}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1663
    .local v6, "item_force_stop":Ljava/lang/String;
    const-string v0, ""

    .line 1665
    .local v0, "candidate_name":Ljava/lang/String;
    const-string v12, "package"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1666
    move-object v0, p2

    .line 1675
    :goto_2
    const-string v12, "equal"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1676
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1677
    const/4 v2, 0x1

    .line 1689
    :cond_1
    :goto_3
    if-eqz v2, :cond_8

    .line 1691
    new-instance v10, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$ItemAttribute;

    .end local v10    # "result":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$ItemAttribute;
    const/4 v12, 0x0

    invoke-direct {v10, p0, v12}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$ItemAttribute;-><init>(Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;Lcom/android/server/power/HtcWakeLockDetector$1;)V

    .line 1692
    .restart local v10    # "result":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$ItemAttribute;
    const-string v12, "true"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    iput-boolean v12, v10, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$ItemAttribute;->checkAudio:Z

    .line 1693
    const-string v12, "true"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    iput-boolean v12, v10, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$ItemAttribute;->forceStop:Z

    .end local v0    # "candidate_name":Ljava/lang/String;
    .end local v3    # "item":Lorg/w3c/dom/Element;
    .end local v4    # "item_category":Ljava/lang/String;
    .end local v5    # "item_check_audio":Ljava/lang/String;
    .end local v6    # "item_force_stop":Ljava/lang/String;
    .end local v7    # "item_name":Ljava/lang/String;
    .end local v8    # "item_operation":Ljava/lang/String;
    :cond_2
    move-object v11, v10

    .line 1699
    .end local v10    # "result":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$ItemAttribute;
    .restart local v11    # "result":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$ItemAttribute;
    goto :goto_0

    .line 1667
    .end local v11    # "result":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$ItemAttribute;
    .restart local v0    # "candidate_name":Ljava/lang/String;
    .restart local v3    # "item":Lorg/w3c/dom/Element;
    .restart local v4    # "item_category":Ljava/lang/String;
    .restart local v5    # "item_check_audio":Ljava/lang/String;
    .restart local v6    # "item_force_stop":Ljava/lang/String;
    .restart local v7    # "item_name":Ljava/lang/String;
    .restart local v8    # "item_operation":Ljava/lang/String;
    .restart local v10    # "result":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$ItemAttribute;
    :cond_3
    const-string v12, "process"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1668
    move-object/from16 v0, p3

    goto :goto_2

    .line 1669
    :cond_4
    const-string v12, "wakelock"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1670
    move-object/from16 v0, p4

    goto :goto_2

    .line 1672
    :cond_5
    move-object v0, p2

    goto :goto_2

    .line 1679
    :cond_6
    const-string v12, "contain"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 1680
    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1681
    const/4 v2, 0x1

    goto :goto_3

    .line 1684
    :cond_7
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1685
    const/4 v2, 0x1

    goto :goto_3

    .line 1653
    .end local v0    # "candidate_name":Ljava/lang/String;
    .end local v4    # "item_category":Ljava/lang/String;
    .end local v5    # "item_check_audio":Ljava/lang/String;
    .end local v6    # "item_force_stop":Ljava/lang/String;
    .end local v7    # "item_name":Ljava/lang/String;
    .end local v8    # "item_operation":Ljava/lang/String;
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1
.end method

.method private checkIfInWhiteList(Lcom/android/server/power/HtcWakeLockDetector$WakeLock;)Z
    .locals 6
    .param p1, "wl"    # Lcom/android/server/power/HtcWakeLockDetector$WakeLock;

    .prologue
    .line 1704
    const/4 v3, 0x0

    .line 1706
    .local v3, "result":Z
    iget-object v4, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mWhiteList:Lorg/w3c/dom/Element;

    if-eqz v4, :cond_0

    .line 1708
    iget-object v4, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mWhiteList:Lorg/w3c/dom/Element;

    const-string v5, "enable"

    invoke-interface {v4, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1712
    iget-object v4, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mWhiteList:Lorg/w3c/dom/Element;

    const-string v5, "item"

    invoke-interface {v4, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 1713
    .local v2, "items":Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    .local v0, "idx":I
    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 1715
    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 1716
    .local v1, "item":Lorg/w3c/dom/Element;
    if-eqz v1, :cond_1

    iget-object v4, p1, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mTag:Ljava/lang/String;

    const-string v5, "name"

    invoke-interface {v1, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1717
    const/4 v3, 0x1

    .line 1729
    .end local v0    # "idx":I
    .end local v1    # "item":Lorg/w3c/dom/Element;
    .end local v2    # "items":Lorg/w3c/dom/NodeList;
    :cond_0
    :goto_1
    return v3

    .line 1713
    .restart local v0    # "idx":I
    .restart local v1    # "item":Lorg/w3c/dom/Element;
    .restart local v2    # "items":Lorg/w3c/dom/NodeList;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1725
    .end local v0    # "idx":I
    .end local v1    # "item":Lorg/w3c/dom/Element;
    .end local v2    # "items":Lorg/w3c/dom/NodeList;
    :cond_2
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private checkIfSkipAbnormalWakeLock(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FJI)Z
    .locals 11
    .param p1, "wl_name"    # Ljava/lang/String;
    .param p2, "pkg_name"    # Ljava/lang/String;
    .param p3, "proc_name"    # Ljava/lang/String;
    .param p4, "proc_cpu"    # F
    .param p5, "throughput"    # J
    .param p7, "importance"    # I

    .prologue
    .line 1564
    const/4 v4, 0x0

    .line 1565
    .local v4, "result":Z
    move-object v3, p1

    .line 1566
    .local v3, "name":Ljava/lang/String;
    const-string v2, "        "

    .line 1568
    .local v2, "indent":Ljava/lang/String;
    const-string v5, "HtcWLD_v4.4.0"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "==== Abnormal WL founded: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ===="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    const-string v5, "HtcWLD_v4.4.0"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "==== Abnormal process founded: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ===="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1570
    const-string v5, "HtcWLD_v4.4.0"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "CPU usage "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "% <= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mWLCpuUsage:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    const-string v5, "HtcWLD_v4.4.0"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Throughput "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes <= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mWLThroughput:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    invoke-direct {p0, v3, p2, p3}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->checkIfInIgnoreList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1575
    const-string v5, "HtcWLD_v4.4.0"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "==== Abnormal WL skipped: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ===="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    const-string v5, "HtcWLD_v4.4.0"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "==== Abnormal process skipped: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ===="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    const-string v5, "HtcWLD_v4.4.0"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "It\'s in ignore list."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    const/4 v4, 0x1

    .line 1589
    :cond_0
    :goto_0
    return v4

    .line 1580
    :cond_1
    iget v5, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mImportance:I

    move/from16 v0, p7

    if-ge v0, v5, :cond_0

    .line 1582
    const-string v5, "HtcWLD_v4.4.0"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "==== Abnormal WL skipped: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ===="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    const-string v5, "HtcWLD_v4.4.0"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "==== Abnormal process skipped: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ===="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    const-string v5, "HtcWLD_v4.4.0"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Importance "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p7

    invoke-direct {p0, v0}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->impCode2Str(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p7

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") < "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mImportance:I

    invoke-direct {p0, v7}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->impCode2Str(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mImportance:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    const/4 v4, 0x1

    goto/16 :goto_0
.end method

.method private checkIfSkipByProcessImportance(I)Z
    .locals 1
    .param p1, "importance"    # I

    .prologue
    .line 1594
    iget v0, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCCUImportance:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkPermissionBy(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "package_name"    # Ljava/lang/String;
    .param p2, "permission_name"    # Ljava/lang/String;

    .prologue
    .line 1827
    const/4 v4, 0x0

    .line 1829
    .local v4, "result":Z
    const/4 v2, 0x0

    .line 1830
    .local v2, "permissions":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    # getter for: Lcom/android/server/power/HtcWakeLockDetector;->mInstalledPackages:Ljava/util/List;
    invoke-static {v5}, Lcom/android/server/power/HtcWakeLockDetector;->access$2100(Lcom/android/server/power/HtcWakeLockDetector;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 1832
    iget-object v5, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    # getter for: Lcom/android/server/power/HtcWakeLockDetector;->mInstalledPackages:Ljava/util/List;
    invoke-static {v5}, Lcom/android/server/power/HtcWakeLockDetector;->access$2100(Lcom/android/server/power/HtcWakeLockDetector;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 1833
    .local v3, "pkg_info":Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_2

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1835
    iget-object v2, v3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 1840
    .end local v3    # "pkg_info":Landroid/content/pm/PackageInfo;
    :cond_0
    if-eqz v2, :cond_1

    .line 1842
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_1
    array-length v5, v2

    if-ge v1, v5, :cond_1

    .line 1844
    aget-object v5, v2, v1

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1846
    const/4 v4, 0x1

    .line 1852
    .end local v1    # "idx":I
    :cond_1
    return v4

    .line 1830
    .restart local v3    # "pkg_info":Landroid/content/pm/PackageInfo;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1842
    .end local v3    # "pkg_info":Landroid/content/pm/PackageInfo;
    .restart local v1    # "idx":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private doJudgment()V
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCandidates:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->checkAbnormalForKnownIssueList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCandidates:Ljava/util/List;

    .line 723
    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCandidates:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->checkAbnormalForWakeLock(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCandidates:Ljava/util/List;

    .line 724
    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCandidates:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->checkAbnormalForCrazyCpuUsage(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCandidates:Ljava/util/List;

    .line 725
    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCandidates:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->checkAbnormalForGps(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCandidates:Ljava/util/List;

    .line 726
    return-void
.end method

.method private doSampling()Z
    .locals 4

    .prologue
    .line 553
    invoke-direct {p0}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->onSamplingBegin()V

    .line 555
    :try_start_0
    iget-wide v2, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mSleepTimeToMeasureCpu:J

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 559
    :goto_0
    invoke-direct {p0}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->onSamplingEnd()V

    .line 561
    const/4 v1, 0x1

    return v1

    .line 556
    :catch_0
    move-exception v0

    .line 557
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HtcWLD_v4.4.0"

    const-string v2, "Error Cannot sleep"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getCandidatesHoldingLongTime(J)Ljava/util/ArrayList;
    .locals 23
    .param p1, "threshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/HtcWakeLockDetector$WakeLock;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1285
    const/4 v11, 0x0

    .line 1288
    .local v11, "candidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/power/HtcWakeLockDetector$WakeLock;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    # getter for: Lcom/android/server/power/HtcWakeLockDetector;->mWakeLocks:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/power/HtcWakeLockDetector;->access$1700(Lcom/android/server/power/HtcWakeLockDetector;)Ljava/util/ArrayList;

    move-result-object v3

    if-nez v3, :cond_0

    move-object/from16 v16, v11

    .line 1318
    .end local v11    # "candidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/power/HtcWakeLockDetector$WakeLock;>;"
    .local v16, "candidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/power/HtcWakeLockDetector$WakeLock;>;"
    :goto_0
    return-object v16

    .line 1290
    .end local v16    # "candidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/power/HtcWakeLockDetector$WakeLock;>;"
    .restart local v11    # "candidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/power/HtcWakeLockDetector$WakeLock;>;"
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    # getter for: Lcom/android/server/power/HtcWakeLockDetector;->mWakeLocks:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/power/HtcWakeLockDetector;->access$1700(Lcom/android/server/power/HtcWakeLockDetector;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 1291
    .local v19, "numWakeLocks":I
    if-lez v19, :cond_2

    .line 1292
    new-instance v11, Ljava/util/ArrayList;

    .end local v11    # "candidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/power/HtcWakeLockDetector$WakeLock;>;"
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1294
    .restart local v11    # "candidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/power/HtcWakeLockDetector$WakeLock;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    # getter for: Lcom/android/server/power/HtcWakeLockDetector;->mWakeLocks:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/power/HtcWakeLockDetector;->access$1700(Lcom/android/server/power/HtcWakeLockDetector;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;

    .line 1297
    .local v22, "wl":Lcom/android/server/power/HtcWakeLockDetector$WakeLock;
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    .line 1298
    .local v20, "now":J
    move-object/from16 v0, v22

    iget-wide v12, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mAcquiredTime:J

    .line 1299
    .local v12, "WLacquiredTime":J
    sub-long v14, v20, v12

    .line 1300
    .local v14, "WLheldTime":J
    cmp-long v3, v14, p1

    if-ltz v3, :cond_1

    .line 1302
    new-instance v2, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mLock:Landroid/os/IBinder;

    move-object/from16 v0, v22

    iget v5, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mFlags:I

    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mTag:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v7, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v8, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    move-object/from16 v0, v22

    iget v9, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mOwnerUid:I

    move-object/from16 v0, v22

    iget v10, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mOwnerPid:I

    invoke-direct/range {v2 .. v10}, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;-><init>(Lcom/android/server/power/HtcWakeLockDetector;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;II)V

    .line 1309
    .local v2, "tmp":Lcom/android/server/power/HtcWakeLockDetector$WakeLock;
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1310
    const-string v3, "HtcWLD_v4.4.0"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    wl: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1312
    .end local v2    # "tmp":Lcom/android/server/power/HtcWakeLockDetector$WakeLock;
    .end local v12    # "WLacquiredTime":J
    .end local v14    # "WLheldTime":J
    .end local v20    # "now":J
    :catch_0
    move-exception v17

    .line 1313
    .local v17, "e":Ljava/lang/Exception;
    const-string v3, "HtcWLD_v4.4.0"

    const-string v4, "Error copy wakelock"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v17    # "e":Ljava/lang/Exception;
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v22    # "wl":Lcom/android/server/power/HtcWakeLockDetector$WakeLock;
    :cond_2
    move-object/from16 v16, v11

    .line 1318
    .end local v11    # "candidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/power/HtcWakeLockDetector$WakeLock;>;"
    .restart local v16    # "candidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/power/HtcWakeLockDetector$WakeLock;>;"
    goto/16 :goto_0
.end method

.method private getElementByNameAndTagName(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 5
    .param p1, "xml_obj"    # Lorg/w3c/dom/Document;
    .param p2, "ele_name"    # Ljava/lang/String;
    .param p3, "tag_name"    # Ljava/lang/String;

    .prologue
    .line 1754
    const/4 v3, 0x0

    .line 1756
    .local v3, "result":Lorg/w3c/dom/Element;
    if-eqz p1, :cond_0

    .line 1758
    invoke-interface {p1, p3}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 1759
    .local v2, "nodes":Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 1761
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 1762
    .local v0, "element":Lorg/w3c/dom/Element;
    const-string v4, "name"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1763
    move-object v3, v0

    .line 1769
    .end local v0    # "element":Lorg/w3c/dom/Element;
    .end local v1    # "idx":I
    .end local v2    # "nodes":Lorg/w3c/dom/NodeList;
    :cond_0
    return-object v3

    .line 1759
    .restart local v0    # "element":Lorg/w3c/dom/Element;
    .restart local v1    # "idx":I
    .restart local v2    # "nodes":Lorg/w3c/dom/NodeList;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getLocation()Landroid/location/Location;
    .locals 8

    .prologue
    .line 1789
    const/4 v5, 0x0

    .line 1792
    .local v5, "result":Landroid/location/Location;
    :try_start_0
    iget-object v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    # getter for: Lcom/android/server/power/HtcWakeLockDetector;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v6}, Lcom/android/server/power/HtcWakeLockDetector;->access$2000(Lcom/android/server/power/HtcWakeLockDetector;)Landroid/location/LocationManager;

    move-result-object v6

    const-string v7, "gps"

    invoke-virtual {v6, v7}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    .line 1793
    .local v1, "gps_enabled":Z
    const/4 v2, 0x0

    .line 1794
    .local v2, "gps_loc":Landroid/location/Location;
    if-eqz v1, :cond_0

    .line 1795
    iget-object v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    # getter for: Lcom/android/server/power/HtcWakeLockDetector;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v6}, Lcom/android/server/power/HtcWakeLockDetector;->access$2000(Lcom/android/server/power/HtcWakeLockDetector;)Landroid/location/LocationManager;

    move-result-object v6

    const-string v7, "gps"

    invoke-virtual {v6, v7}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    .line 1797
    :cond_0
    iget-object v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    # getter for: Lcom/android/server/power/HtcWakeLockDetector;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v6}, Lcom/android/server/power/HtcWakeLockDetector;->access$2000(Lcom/android/server/power/HtcWakeLockDetector;)Landroid/location/LocationManager;

    move-result-object v6

    const-string v7, "network"

    invoke-virtual {v6, v7}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v3

    .line 1798
    .local v3, "net_enabled":Z
    const/4 v4, 0x0

    .line 1799
    .local v4, "net_loc":Landroid/location/Location;
    if-eqz v3, :cond_1

    .line 1800
    iget-object v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    # getter for: Lcom/android/server/power/HtcWakeLockDetector;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v6}, Lcom/android/server/power/HtcWakeLockDetector;->access$2000(Lcom/android/server/power/HtcWakeLockDetector;)Landroid/location/LocationManager;

    move-result-object v6

    const-string v7, "network"

    invoke-virtual {v6, v7}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v4

    .line 1803
    :cond_1
    if-eqz v2, :cond_4

    if-eqz v4, :cond_4

    .line 1805
    invoke-virtual {v2}, Landroid/location/Location;->getAccuracy()F

    move-result v6

    invoke-virtual {v4}, Landroid/location/Location;->getAccuracy()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    .line 1806
    move-object v5, v2

    .line 1822
    .end local v1    # "gps_enabled":Z
    .end local v2    # "gps_loc":Landroid/location/Location;
    .end local v3    # "net_enabled":Z
    .end local v4    # "net_loc":Landroid/location/Location;
    :cond_2
    :goto_0
    return-object v5

    .line 1808
    .restart local v1    # "gps_enabled":Z
    .restart local v2    # "gps_loc":Landroid/location/Location;
    .restart local v3    # "net_enabled":Z
    .restart local v4    # "net_loc":Landroid/location/Location;
    :cond_3
    move-object v5, v4

    goto :goto_0

    .line 1813
    :cond_4
    if-eqz v2, :cond_5

    move-object v5, v2

    .line 1814
    :cond_5
    if-eqz v4, :cond_2

    move-object v5, v4

    goto :goto_0

    .line 1816
    .end local v1    # "gps_enabled":Z
    .end local v2    # "gps_loc":Landroid/location/Location;
    .end local v3    # "net_enabled":Z
    .end local v4    # "net_loc":Landroid/location/Location;
    :catch_0
    move-exception v0

    .line 1819
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "HtcWLD_v4.4.0"

    const-string v7, "[Warning] Fail to get location."

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getProcessInfoBy(ILjava/util/List;)Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$ProcessInfo;
    .locals 6
    .param p1, "pid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;)",
            "Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$ProcessInfo;"
        }
    .end annotation

    .prologue
    .line 1361
    .local p2, "running_procs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const-string v4, "no_name"

    .line 1362
    .local v4, "proc_name":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1363
    .local v1, "importance":I
    if-eqz p2, :cond_1

    .line 1365
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1367
    .local v2, "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, p1, :cond_0

    .line 1368
    iget-object v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 1369
    iget v1, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    .line 1375
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    new-instance v3, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$ProcessInfo;

    const/4 v5, 0x0

    invoke-direct {v3, p0, v5}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$ProcessInfo;-><init>(Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;Lcom/android/server/power/HtcWakeLockDetector$1;)V

    .line 1376
    .local v3, "proc_info":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$ProcessInfo;
    iput-object v4, v3, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$ProcessInfo;->name:Ljava/lang/String;

    .line 1377
    iput v1, v3, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$ProcessInfo;->importance:I

    .line 1378
    invoke-direct {p0, v1}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->impCode2Str(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$ProcessInfo;->strImportance:Ljava/lang/String;

    .line 1380
    return-object v3
.end method

.method private impCode2Str(I)Ljava/lang/String;
    .locals 1
    .param p1, "importance_code"    # I

    .prologue
    .line 1774
    const-string v0, ""

    .line 1775
    .local v0, "result":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 1784
    :goto_0
    return-object v0

    .line 1777
    :sswitch_0
    const-string v0, "foreground"

    goto :goto_0

    .line 1778
    :sswitch_1
    const-string v0, "visible"

    goto :goto_0

    .line 1779
    :sswitch_2
    const-string v0, "perceptible"

    goto :goto_0

    .line 1780
    :sswitch_3
    const-string v0, "service"

    goto :goto_0

    .line 1781
    :sswitch_4
    const-string v0, "background"

    goto :goto_0

    .line 1782
    :sswitch_5
    const-string v0, "empty"

    goto :goto_0

    .line 1775
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x82 -> :sswitch_2
        0xc8 -> :sswitch_1
        0x12c -> :sswitch_3
        0x190 -> :sswitch_4
        0x1f4 -> :sswitch_5
    .end sparse-switch
.end method

.method private isDeviceIdle(Z)Z
    .locals 2
    .param p1, "check_audio_flag"    # Z

    .prologue
    .line 1260
    const/4 v0, 0x0

    .line 1261
    .local v0, "result":Z
    if-eqz p1, :cond_1

    .line 1262
    iget-object v1, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mSystemInfo:Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SystemInfo;

    iget-boolean v1, v1, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SystemInfo;->isScreenOff:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    # invokes: Lcom/android/server/power/HtcWakeLockDetector;->isMusicActive()Z
    invoke-static {v1}, Lcom/android/server/power/HtcWakeLockDetector;->access$1400(Lcom/android/server/power/HtcWakeLockDetector;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 1266
    :goto_0
    return v0

    .line 1262
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1264
    :cond_1
    iget-object v1, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mSystemInfo:Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SystemInfo;

    iget-boolean v0, v1, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SystemInfo;->isScreenOff:Z

    goto :goto_0
.end method

.method private onSamplingBegin()V
    .locals 26

    .prologue
    .line 567
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->checkFirstTurn()Z

    move-result v22

    if-eqz v22, :cond_1

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCandidates:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->clear()V

    .line 570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mSystemInfo:Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SystemInfo;

    move-object/from16 v22, v0

    if-nez v22, :cond_0

    .line 572
    new-instance v22, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SystemInfo;

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SystemInfo;-><init>(Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;Lcom/android/server/power/HtcWakeLockDetector$1;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mSystemInfo:Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SystemInfo;

    .line 574
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mSystemInfo:Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SystemInfo;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput-boolean v0, v1, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SystemInfo;->isScreenOff:Z

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mSystemInfo:Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SystemInfo;

    move-object/from16 v22, v0

    const-string v23, ""

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SystemInfo;->sysStat:Ljava/lang/String;

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mSystemInfo:Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SystemInfo;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SystemInfo;->sysCpuUsage:F

    .line 579
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mSystemInfo:Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SystemInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mSystemInfo:Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SystemInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SystemInfo;->isScreenOff:Z

    move/from16 v22, v0

    if-eqz v22, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    move-object/from16 v22, v0

    # invokes: Lcom/android/server/power/HtcWakeLockDetector;->isScreenOn()Z
    invoke-static/range {v22 .. v22}, Lcom/android/server/power/HtcWakeLockDetector;->access$700(Lcom/android/server/power/HtcWakeLockDetector;)Z

    move-result v22

    if-nez v22, :cond_6

    const/16 v22, 0x1

    :goto_0
    move/from16 v0, v22

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SystemInfo;->isScreenOff:Z

    .line 580
    const-string v22, "HtcWLD_v4.4.0"

    const-string v23, " "

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    const-string v23, "HtcWLD_v4.4.0"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "    Turn#"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mSamplingCount:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " Screen "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    move-object/from16 v22, v0

    # invokes: Lcom/android/server/power/HtcWakeLockDetector;->isScreenOn()Z
    invoke-static/range {v22 .. v22}, Lcom/android/server/power/HtcWakeLockDetector;->access$700(Lcom/android/server/power/HtcWakeLockDetector;)Z

    move-result v22

    if-eqz v22, :cond_7

    const-string v22, "on"

    :goto_1
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mSystemInfo:Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SystemInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    move-object/from16 v23, v0

    # invokes: Lcom/android/server/power/HtcWakeLockDetector;->readSystemStat()Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/android/server/power/HtcWakeLockDetector;->access$800(Lcom/android/server/power/HtcWakeLockDetector;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SystemInfo;->sysStat:Ljava/lang/String;

    .line 584
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 585
    .local v8, "now_time":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    move-object/from16 v22, v0

    # getter for: Lcom/android/server/power/HtcWakeLockDetector;->mActivityManager:Landroid/app/ActivityManager;
    invoke-static/range {v22 .. v22}, Lcom/android/server/power/HtcWakeLockDetector;->access$900(Lcom/android/server/power/HtcWakeLockDetector;)Landroid/app/ActivityManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v13

    .line 586
    .local v13, "running_processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v13, :cond_a

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v22

    if-lez v22, :cond_a

    .line 588
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 590
    .local v11, "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    move-object/from16 v22, v0

    iget v0, v11, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v23, v0

    # invokes: Lcom/android/server/power/HtcWakeLockDetector;->readProcessStat(I)Ljava/lang/String;
    invoke-static/range {v22 .. v23}, Lcom/android/server/power/HtcWakeLockDetector;->access$1000(Lcom/android/server/power/HtcWakeLockDetector;I)Ljava/lang/String;

    move-result-object v12

    .line 591
    .local v12, "proc_stat":Ljava/lang/String;
    const-wide/16 v14, 0x0

    .line 592
    .local v14, "running_time":J
    const-wide/16 v16, 0x0

    .line 593
    .local v16, "start_time":J
    if-eqz v12, :cond_4

    .line 595
    const-string v22, " "

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 596
    .local v19, "stats":[Ljava/lang/String;
    const/16 v18, 0x15

    .line 597
    .local v18, "start_time_idx":I
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, v18

    if-le v0, v1, :cond_3

    .line 598
    aget-object v22, v19, v18

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    .line 600
    :cond_3
    const-wide/16 v22, 0x3e8

    mul-long v22, v22, v16

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x4059000000000000L    # 100.0

    div-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-long v0, v0

    move-wide/from16 v20, v0

    .line 601
    .local v20, "start_time_ms":J
    sub-long v14, v8, v20

    .line 604
    .end local v18    # "start_time_idx":I
    .end local v19    # "stats":[Ljava/lang/String;
    .end local v20    # "start_time_ms":J
    :cond_4
    iget v0, v11, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->checkExistenceInCandidateList(I)I

    move-result v5

    .line 605
    .local v5, "cand_id":I
    if-gez v5, :cond_9

    .line 607
    new-instance v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v4, v0, v1}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;-><init>(Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;Lcom/android/server/power/HtcWakeLockDetector$1;)V

    .line 608
    .local v4, "cand":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCandidates:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    iput v0, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->id:I

    .line 609
    iget v0, v11, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->pid:I

    .line 610
    iget v0, v11, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->uid:I

    .line 611
    iget-object v0, v11, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iput-object v0, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->processName:Ljava/lang/String;

    .line 612
    iget v0, v11, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->importance:I

    .line 613
    iput-wide v14, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->runningTime:J

    .line 614
    const/16 v22, 0x0

    move/from16 v0, v22

    iput v0, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->avgCpuUsage:F

    .line 615
    const/high16 v22, 0x447a0000    # 1000.0f

    move/from16 v0, v22

    iput v0, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->minCpuUsage:F

    .line 616
    const/high16 v22, -0x40800000    # -1.0f

    move/from16 v0, v22

    iput v0, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->maxCpuUsage:F

    .line 617
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    iput-wide v0, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->avgThroughput:J

    .line 618
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    iput-wide v0, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->avgTx:J

    .line 619
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    iput-wide v0, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->avgRx:J

    .line 620
    const/16 v22, 0x0

    move/from16 v0, v22

    iput v0, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->cpuValidCount:I

    .line 621
    const/16 v22, 0x0

    move/from16 v0, v22

    iput v0, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->txrxValidCount:I

    .line 622
    const-wide v22, 0x7fffffffffffffffL

    move-wide/from16 v0, v22

    iput-wide v0, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->minThroughput:J

    .line 623
    const-wide/high16 v22, -0x8000000000000000L

    move-wide/from16 v0, v22

    iput-wide v0, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->maxThroughput:J

    .line 624
    iget-object v7, v11, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .line 625
    .local v7, "pkg_list":[Ljava/lang/String;
    iput-object v7, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->packageList:[Ljava/lang/String;

    .line 626
    if-eqz v7, :cond_8

    array-length v0, v7

    move/from16 v22, v0

    if-lez v22, :cond_8

    const/16 v22, 0x0

    aget-object v10, v7, v22

    .line 627
    .local v10, "pkg_name":Ljava/lang/String;
    :goto_3
    iput-object v10, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->packageName:Ljava/lang/String;

    .line 628
    new-instance v22, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;-><init>(Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;Lcom/android/server/power/HtcWakeLockDetector$1;)V

    move-object/from16 v0, v22

    iput-object v0, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->semiUsage:Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCandidates:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 630
    iget v5, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->id:I

    .line 639
    .end local v7    # "pkg_list":[Ljava/lang/String;
    .end local v10    # "pkg_name":Ljava/lang/String;
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCandidates:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "cand":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;
    check-cast v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;

    .line 640
    .restart local v4    # "cand":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;
    iget-object v0, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->semiUsage:Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    move-object/from16 v23, v0

    iget v0, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->pid:I

    move/from16 v24, v0

    # invokes: Lcom/android/server/power/HtcWakeLockDetector;->readProcessStat(I)Ljava/lang/String;
    invoke-static/range {v23 .. v24}, Lcom/android/server/power/HtcWakeLockDetector;->access$1000(Lcom/android/server/power/HtcWakeLockDetector;I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;->procStat:Ljava/lang/String;

    .line 641
    iget-object v0, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->semiUsage:Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;

    move-object/from16 v22, v0

    iget v0, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->uid:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;->tx:J

    .line 642
    iget-object v0, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->semiUsage:Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;

    move-object/from16 v22, v0

    iget v0, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->uid:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;->rx:J

    .line 643
    iget-object v0, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->semiUsage:Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;

    move-object/from16 v22, v0

    iget-object v0, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->checkPermissionBy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput-boolean v0, v1, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;->permissionFlag:Z

    .line 644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCandidates:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v5, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 646
    iget-object v0, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->processName:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, "com.htc"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_2

    iget-object v0, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->processName:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, "com.android"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_2

    iget-object v0, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->processName:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, "com.google"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->checkFirstTurn()Z

    move-result v22

    if-nez v22, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->checkFinalTurn()Z

    move-result v22

    if-eqz v22, :cond_2

    .line 649
    :cond_5
    const-string v22, "HtcWLD_v4.4.0"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "    "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget-object v0, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->processName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget-object v0, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget v0, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->importance:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget-wide v0, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->runningTime:J

    move-wide/from16 v24, v0

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 579
    .end local v4    # "cand":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;
    .end local v5    # "cand_id":I
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "now_time":J
    .end local v11    # "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v12    # "proc_stat":Ljava/lang/String;
    .end local v13    # "running_processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v14    # "running_time":J
    .end local v16    # "start_time":J
    :cond_6
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 581
    :cond_7
    const-string v22, "off"

    goto/16 :goto_1

    .line 626
    .restart local v4    # "cand":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;
    .restart local v5    # "cand_id":I
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v7    # "pkg_list":[Ljava/lang/String;
    .restart local v8    # "now_time":J
    .restart local v11    # "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .restart local v12    # "proc_stat":Ljava/lang/String;
    .restart local v13    # "running_processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .restart local v14    # "running_time":J
    .restart local v16    # "start_time":J
    :cond_8
    const-string v10, "no_pkg_name"

    goto/16 :goto_3

    .line 634
    .end local v4    # "cand":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;
    .end local v7    # "pkg_list":[Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCandidates:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;

    .line 635
    .restart local v4    # "cand":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;
    iput-wide v14, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->runningTime:J

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCandidates:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v5, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 653
    .end local v4    # "cand":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;
    .end local v5    # "cand_id":I
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v11    # "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v12    # "proc_stat":Ljava/lang/String;
    .end local v14    # "running_time":J
    .end local v16    # "start_time":J
    :cond_a
    return-void
.end method

.method private onSamplingEnd()V
    .locals 20

    .prologue
    .line 657
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mSystemInfo:Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SystemInfo;

    iget-object v3, v9, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SystemInfo;->sysStat:Ljava/lang/String;

    .line 658
    .local v3, "begin_sys_stat":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    # invokes: Lcom/android/server/power/HtcWakeLockDetector;->readSystemStat()Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/power/HtcWakeLockDetector;->access$800(Lcom/android/server/power/HtcWakeLockDetector;)Ljava/lang/String;

    move-result-object v6

    .line 659
    .local v6, "end_sys_stat":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mSystemInfo:Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SystemInfo;

    iget v0, v9, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SystemInfo;->sysCpuUsage:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # invokes: Lcom/android/server/power/HtcWakeLockDetector;->getSystemCpuUsage(Ljava/lang/String;Ljava/lang/String;)F
    invoke-static {v0, v3, v6}, Lcom/android/server/power/HtcWakeLockDetector;->access$1300(Lcom/android/server/power/HtcWakeLockDetector;Ljava/lang/String;Ljava/lang/String;)F

    move-result v17

    add-float v16, v16, v17

    move/from16 v0, v16

    iput v0, v9, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SystemInfo;->sysCpuUsage:F

    .line 660
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->checkFinalTurn()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 662
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mSystemInfo:Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SystemInfo;

    iget v0, v9, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SystemInfo;->sysCpuUsage:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mSamplingCount:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v16, v16, v17

    move/from16 v0, v16

    iput v0, v9, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SystemInfo;->sysCpuUsage:F

    .line 664
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mSystemInfo:Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SystemInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mSystemInfo:Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SystemInfo;

    iget-boolean v9, v9, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SystemInfo;->isScreenOff:Z

    if-eqz v9, :cond_4

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    # invokes: Lcom/android/server/power/HtcWakeLockDetector;->isScreenOn()Z
    invoke-static {v9}, Lcom/android/server/power/HtcWakeLockDetector;->access$700(Lcom/android/server/power/HtcWakeLockDetector;)Z

    move-result v9

    if-nez v9, :cond_4

    const/4 v9, 0x1

    :goto_0
    move-object/from16 v0, v16

    iput-boolean v9, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SystemInfo;->isScreenOff:Z

    .line 666
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCandidates:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;

    .line 668
    .local v4, "cand":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;
    iget-object v9, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->semiUsage:Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;

    iget-object v2, v9, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;->procStat:Ljava/lang/String;

    .line 669
    .local v2, "begin_proc_stat":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    iget v0, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->pid:I

    move/from16 v16, v0

    move/from16 v0, v16

    # invokes: Lcom/android/server/power/HtcWakeLockDetector;->readProcessStat(I)Ljava/lang/String;
    invoke-static {v9, v0}, Lcom/android/server/power/HtcWakeLockDetector;->access$1000(Lcom/android/server/power/HtcWakeLockDetector;I)Ljava/lang/String;

    move-result-object v5

    .line 670
    .local v5, "end_proc_stat":Ljava/lang/String;
    const/high16 v8, -0x40800000    # -1.0f

    .line 671
    .local v8, "proc_cpu_usage":F
    if-eqz v2, :cond_1

    if-eqz v5, :cond_1

    if-eqz v3, :cond_1

    if-eqz v6, :cond_1

    .line 673
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    invoke-virtual {v9, v2, v5, v3, v6}, Lcom/android/server/power/HtcWakeLockDetector;->getProcessCpuUsage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)F

    move-result v8

    .line 691
    :cond_1
    const/4 v9, 0x0

    cmpl-float v9, v8, v9

    if-ltz v9, :cond_2

    .line 693
    iget v9, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->cpuValidCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->cpuValidCount:I

    .line 694
    iget v9, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->avgCpuUsage:F

    add-float/2addr v9, v8

    iput v9, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->avgCpuUsage:F

    .line 695
    iget v9, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->minCpuUsage:F

    cmpg-float v9, v8, v9

    if-gez v9, :cond_5

    move v9, v8

    :goto_2
    iput v9, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->minCpuUsage:F

    .line 696
    iget v9, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->maxCpuUsage:F

    cmpl-float v9, v8, v9

    if-lez v9, :cond_6

    .end local v8    # "proc_cpu_usage":F
    :goto_3
    iput v8, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->maxCpuUsage:F

    .line 699
    :cond_2
    iget v9, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->uid:I

    invoke-static {v9}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v16

    iget-object v9, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->semiUsage:Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;

    iget-wide v0, v9, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;->tx:J

    move-wide/from16 v18, v0

    sub-long v14, v16, v18

    .line 700
    .local v14, "tx_diff":J
    iget v9, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->uid:I

    invoke-static {v9}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v16

    iget-object v9, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->semiUsage:Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;

    iget-wide v0, v9, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;->rx:J

    move-wide/from16 v18, v0

    sub-long v10, v16, v18

    .line 701
    .local v10, "rx_diff":J
    add-long v12, v14, v10

    .line 702
    .local v12, "throughput":J
    iget-wide v0, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->avgTx:J

    move-wide/from16 v16, v0

    add-long v16, v16, v14

    move-wide/from16 v0, v16

    iput-wide v0, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->avgTx:J

    .line 703
    iget-wide v0, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->avgRx:J

    move-wide/from16 v16, v0

    add-long v16, v16, v10

    move-wide/from16 v0, v16

    iput-wide v0, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->avgRx:J

    .line 704
    iget-wide v0, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->avgThroughput:J

    move-wide/from16 v16, v0

    add-long v16, v16, v12

    move-wide/from16 v0, v16

    iput-wide v0, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->avgThroughput:J

    .line 705
    iget-wide v0, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->minThroughput:J

    move-wide/from16 v16, v0

    cmp-long v9, v12, v16

    if-gez v9, :cond_7

    move-wide/from16 v16, v12

    :goto_4
    move-wide/from16 v0, v16

    iput-wide v0, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->minThroughput:J

    .line 706
    iget-wide v0, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->maxThroughput:J

    move-wide/from16 v16, v0

    cmp-long v9, v12, v16

    if-lez v9, :cond_8

    .end local v12    # "throughput":J
    :goto_5
    iput-wide v12, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->maxThroughput:J

    .line 708
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->checkFinalTurn()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 710
    iget v9, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->avgCpuUsage:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mSamplingCount:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v9, v9, v16

    iput v9, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->avgCpuUsage:F

    .line 711
    iget-wide v0, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->avgThroughput:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-float v9, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mSamplingCount:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v9, v9, v16

    float-to-long v0, v9

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    iput-wide v0, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->avgThroughput:J

    .line 712
    iget-wide v0, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->avgTx:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-float v9, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mSamplingCount:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v9, v9, v16

    float-to-long v0, v9

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    iput-wide v0, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->avgTx:J

    .line 713
    iget-wide v0, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->avgRx:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-float v9, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mSamplingCount:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v9, v9, v16

    float-to-long v0, v9

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    iput-wide v0, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->avgRx:J

    .line 716
    :cond_3
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCandidates:Ljava/util/List;

    iget v0, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->id:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-interface {v9, v0, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 664
    .end local v2    # "begin_proc_stat":Ljava/lang/String;
    .end local v4    # "cand":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;
    .end local v5    # "end_proc_stat":Ljava/lang/String;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v10    # "rx_diff":J
    .end local v14    # "tx_diff":J
    :cond_4
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 695
    .restart local v2    # "begin_proc_stat":Ljava/lang/String;
    .restart local v4    # "cand":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;
    .restart local v5    # "end_proc_stat":Ljava/lang/String;
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v8    # "proc_cpu_usage":F
    :cond_5
    iget v9, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->minCpuUsage:F

    goto/16 :goto_2

    .line 696
    :cond_6
    iget v8, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->maxCpuUsage:F

    goto/16 :goto_3

    .line 705
    .end local v8    # "proc_cpu_usage":F
    .restart local v10    # "rx_diff":J
    .restart local v12    # "throughput":J
    .restart local v14    # "tx_diff":J
    :cond_7
    iget-wide v0, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->minThroughput:J

    move-wide/from16 v16, v0

    goto/16 :goto_4

    .line 706
    :cond_8
    iget-wide v12, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->maxThroughput:J

    goto/16 :goto_5

    .line 718
    .end local v2    # "begin_proc_stat":Ljava/lang/String;
    .end local v4    # "cand":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;
    .end local v5    # "end_proc_stat":Ljava/lang/String;
    .end local v10    # "rx_diff":J
    .end local v12    # "throughput":J
    .end local v14    # "tx_diff":J
    :cond_9
    return-void
.end method

.method private showNonIdleMessage(Z)V
    .locals 2
    .param p1, "check_audio_flag"    # Z

    .prologue
    .line 1271
    if-eqz p1, :cond_2

    .line 1272
    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mSystemInfo:Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SystemInfo;

    iget-boolean v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SystemInfo;->isScreenOff:Z

    if-nez v0, :cond_0

    const-string v0, "HtcWLD_v4.4.0"

    const-string v1, "    Screen on, do nothing"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    # invokes: Lcom/android/server/power/HtcWakeLockDetector;->isMusicActive()Z
    invoke-static {v0}, Lcom/android/server/power/HtcWakeLockDetector;->access$1400(Lcom/android/server/power/HtcWakeLockDetector;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "HtcWLD_v4.4.0"

    const-string v1, "    Music is active, do nothing"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    :cond_1
    :goto_0
    return-void

    .line 1275
    :cond_2
    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mSystemInfo:Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SystemInfo;

    iget-boolean v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SystemInfo;->isScreenOff:Z

    if-nez v0, :cond_1

    const-string v0, "HtcWLD_v4.4.0"

    const-string v1, "    Screen on, do nothing"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateCandidatesByDeathList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1236
    .local p1, "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;>;"
    .local p2, "death_list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1237
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;>;"
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 1239
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;

    .line 1241
    .local v0, "cand":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;
    iget v3, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1242
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1248
    .end local v0    # "cand":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    move-object v2, p1

    .line 1250
    :cond_2
    return-object v2
.end method


# virtual methods
.method public loadConfiguration()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x3e8

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1400
    iput-object v10, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mWhiteList:Lorg/w3c/dom/Element;

    .line 1401
    iget-object v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mConfig:Lorg/w3c/dom/Document;

    const-string v7, "WhiteList"

    const-string v8, "items"

    invoke-direct {p0, v6, v7, v8}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->getElementByNameAndTagName(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mWhiteList:Lorg/w3c/dom/Element;

    .line 1402
    iget-object v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mWhiteList:Lorg/w3c/dom/Element;

    if-nez v6, :cond_0

    .line 1403
    const-string v6, "HtcWLD_v4.4.0"

    const-string v7, "[Warning] White list is invalid."

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    :cond_0
    iput-object v10, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mBlackList:Lorg/w3c/dom/Element;

    .line 1406
    iget-object v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mConfig:Lorg/w3c/dom/Document;

    const-string v7, "BlackList"

    const-string v8, "items"

    invoke-direct {p0, v6, v7, v8}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->getElementByNameAndTagName(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mBlackList:Lorg/w3c/dom/Element;

    .line 1407
    iget-object v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mBlackList:Lorg/w3c/dom/Element;

    if-nez v6, :cond_1

    .line 1408
    const-string v6, "HtcWLD_v4.4.0"

    const-string v7, "[Warning] Black list is invalid."

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    :cond_1
    iget-object v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mConfig:Lorg/w3c/dom/Document;

    const-string v7, "Setting"

    const-string v8, "tab"

    invoke-direct {p0, v6, v7, v8}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->getElementByNameAndTagName(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    .line 1413
    .local v5, "setting":Lorg/w3c/dom/Element;
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mEnableRunning:Z

    .line 1414
    if-eqz v5, :cond_b

    .line 1416
    const-string v6, "item"

    invoke-interface {v5, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 1417
    .local v3, "nodes":Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_0
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v1, v6, :cond_c

    .line 1419
    invoke-interface {v3, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 1420
    .local v2, "item":Lorg/w3c/dom/Element;
    if-eqz v2, :cond_2

    .line 1422
    const-string v6, "name"

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "ProgramVersion"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1424
    const-string v6, "value"

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mProgramVersion:Ljava/lang/String;

    .line 1425
    const-string v6, "v4.4.0"

    iget-object v7, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mProgramVersion:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1427
    iput-boolean v11, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mEnableRunning:Z

    .line 1428
    const-string v6, "HtcWLD_v4.4.0"

    const-string v7, "Pass version checking of configuration."

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1432
    :cond_3
    const-string v6, "HtcWLD_v4.4.0"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[Power_FDA] Version checking failed, program:v4.4.0 config:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mProgramVersion:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1435
    :cond_4
    const-string v6, "name"

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "DetectPeriod"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1436
    const-string v6, "value"

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mDetectPeriod:J

    goto :goto_1

    .line 1437
    :cond_5
    const-string v6, "name"

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "SleepTime"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1438
    const-string v6, "value"

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mSleepTimeToMeasureCpu:J

    goto :goto_1

    .line 1439
    :cond_6
    const-string v6, "name"

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Version"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1440
    const-string v6, "value"

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mConfigVersion:Ljava/lang/String;

    goto :goto_1

    .line 1441
    :cond_7
    const-string v6, "name"

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "PowerNavigationFlag"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1442
    const-string v6, "value"

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mPowerNavigationFlag:I

    goto/16 :goto_1

    .line 1443
    :cond_8
    const-string v6, "name"

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "AlarmGroupingFlag"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1444
    const-string v6, "value"

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mAlarmGroupingFlag:I

    goto/16 :goto_1

    .line 1445
    :cond_9
    const-string v6, "name"

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "AlarmGroupingDuration"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1446
    const-string v6, "value"

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mAlarmGroupingDuration:J

    goto/16 :goto_1

    .line 1447
    :cond_a
    const-string v6, "name"

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "ASNFlag"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1448
    const-string v6, "value"

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mASNFlag:I

    goto/16 :goto_1

    .line 1455
    .end local v1    # "idx":I
    .end local v2    # "item":Lorg/w3c/dom/Element;
    .end local v3    # "nodes":Lorg/w3c/dom/NodeList;
    :cond_b
    const-string v6, "HtcWLD_v4.4.0"

    const-string v7, "[Warning] Setting from configuration is invalid."

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    :cond_c
    invoke-static {}, Lcom/android/server/HtcServiceMonitor;->getInstance()Lcom/android/server/HtcServiceMonitor;

    move-result-object v4

    .line 1460
    .local v4, "service_monitor":Lcom/android/server/HtcServiceMonitor;
    if-eqz v4, :cond_d

    .line 1462
    iget v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mPowerNavigationFlag:I

    if-ne v11, v6, :cond_f

    .line 1463
    invoke-virtual {v4}, Lcom/android/server/HtcServiceMonitor;->setPowerNavigationOn()V

    .line 1464
    const-string v6, "HtcWLD_v4.4.0"

    const-string v7, "[PowerNavigation] Power navigation is on."

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    :goto_2
    iget-wide v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mAlarmGroupingDuration:J

    invoke-virtual {v4, v6, v7}, Lcom/android/server/HtcServiceMonitor;->setAlarmGroupingDuration(J)V

    .line 1471
    iget v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mAlarmGroupingFlag:I

    if-ne v11, v6, :cond_10

    .line 1472
    invoke-virtual {v4}, Lcom/android/server/HtcServiceMonitor;->setAlarmGroupingOn()V

    .line 1473
    const-string v6, "HtcWLD_v4.4.0"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[AlarmGrouping] Alarm grouping is on. duration:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mAlarmGroupingDuration:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    :goto_3
    iget v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mASNFlag:I

    if-ne v11, v6, :cond_11

    .line 1480
    invoke-virtual {v4}, Lcom/android/server/HtcServiceMonitor;->setASNOn()V

    .line 1481
    const-string v6, "HtcWLD_v4.4.0"

    const-string v7, "[HtcASN] ASN is on."

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    :cond_d
    :goto_4
    iget-object v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mConfig:Lorg/w3c/dom/Document;

    const-string v7, "Criteria"

    const-string v8, "tab"

    invoke-direct {p0, v6, v7, v8}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->getElementByNameAndTagName(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 1489
    .local v0, "criteria":Lorg/w3c/dom/Element;
    if-eqz v0, :cond_1b

    .line 1491
    const-string v6, "item"

    invoke-interface {v0, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 1492
    .restart local v3    # "nodes":Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .restart local v1    # "idx":I
    :goto_5
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v1, v6, :cond_1c

    .line 1494
    invoke-interface {v3, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 1495
    .restart local v2    # "item":Lorg/w3c/dom/Element;
    if-eqz v2, :cond_e

    .line 1497
    const-string v6, "name"

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "HeldTime"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 1498
    const-string v6, "value"

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mHeldTimeThreshold:J

    .line 1492
    :cond_e
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1466
    .end local v0    # "criteria":Lorg/w3c/dom/Element;
    .end local v1    # "idx":I
    .end local v2    # "item":Lorg/w3c/dom/Element;
    .end local v3    # "nodes":Lorg/w3c/dom/NodeList;
    :cond_f
    invoke-virtual {v4}, Lcom/android/server/HtcServiceMonitor;->setPowerNavigationOff()V

    .line 1467
    const-string v6, "HtcWLD_v4.4.0"

    const-string v7, "[PowerNavigation] Power navigation is off."

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1475
    :cond_10
    invoke-virtual {v4}, Lcom/android/server/HtcServiceMonitor;->setAlarmGroupingOff()V

    .line 1476
    const-string v6, "HtcWLD_v4.4.0"

    const-string v7, "[AlarmGrouping] Alarm grouping is off."

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1483
    :cond_11
    invoke-virtual {v4}, Lcom/android/server/HtcServiceMonitor;->setASNOff()V

    .line 1484
    const-string v6, "HtcWLD_v4.4.0"

    const-string v7, "[HtcASN] ASN is off."

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1499
    .restart local v0    # "criteria":Lorg/w3c/dom/Element;
    .restart local v1    # "idx":I
    .restart local v2    # "item":Lorg/w3c/dom/Element;
    .restart local v3    # "nodes":Lorg/w3c/dom/NodeList;
    :cond_12
    const-string v6, "name"

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "CpuUsage"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 1500
    const-string v6, "value"

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    iput v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mWLCpuUsage:F

    goto :goto_6

    .line 1501
    :cond_13
    const-string v6, "name"

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Throughput"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 1502
    const-string v6, "value"

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mSleepTimeToMeasureCpu:J

    mul-long/2addr v6, v8

    div-long/2addr v6, v12

    iput-wide v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mWLThroughput:J

    goto :goto_6

    .line 1503
    :cond_14
    const-string v6, "name"

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Importance"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 1504
    const-string v6, "value"

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mImportance:I

    goto :goto_6

    .line 1505
    :cond_15
    const-string v6, "name"

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "CCUCpuUsage"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 1506
    const-string v6, "value"

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    iput v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCCUCpuUsage:F

    goto/16 :goto_6

    .line 1507
    :cond_16
    const-string v6, "name"

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "CCUImportance"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 1508
    const-string v6, "value"

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCCUImportance:I

    goto/16 :goto_6

    .line 1509
    :cond_17
    const-string v6, "name"

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "CCUThroughput"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 1510
    const-string v6, "value"

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mSleepTimeToMeasureCpu:J

    mul-long/2addr v6, v8

    div-long/2addr v6, v12

    iput-wide v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCCUThroughput:J

    goto/16 :goto_6

    .line 1511
    :cond_18
    const-string v6, "name"

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "GPSSleepTime"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 1512
    const-string v6, "value"

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mGPSSleepTime:J

    goto/16 :goto_6

    .line 1513
    :cond_19
    const-string v6, "name"

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "GPSThreshold"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 1514
    const-string v6, "value"

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mGPSThreshold:I

    goto/16 :goto_6

    .line 1515
    :cond_1a
    const-string v6, "name"

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "GPSImportance"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 1516
    const-string v6, "value"

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mGPSImportance:I

    goto/16 :goto_6

    .line 1523
    .end local v1    # "idx":I
    .end local v2    # "item":Lorg/w3c/dom/Element;
    .end local v3    # "nodes":Lorg/w3c/dom/NodeList;
    :cond_1b
    const-string v6, "HtcWLD_v4.4.0"

    const-string v7, "[Warning] Criteria from configuration is invalid."

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    :cond_1c
    iput-object v10, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mKnownIssueBackground:Lorg/w3c/dom/Element;

    .line 1527
    iget-object v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mConfig:Lorg/w3c/dom/Document;

    const-string v7, "Background"

    const-string v8, "items"

    invoke-direct {p0, v6, v7, v8}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->getElementByNameAndTagName(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mKnownIssueBackground:Lorg/w3c/dom/Element;

    .line 1528
    iget-object v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mKnownIssueBackground:Lorg/w3c/dom/Element;

    if-nez v6, :cond_1d

    .line 1529
    const-string v6, "HtcWLD_v4.4.0"

    const-string v7, "[Warning] Known issue list of background level is invalid."

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    :cond_1d
    iput-object v10, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mKnownIssueService:Lorg/w3c/dom/Element;

    .line 1532
    iget-object v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mConfig:Lorg/w3c/dom/Document;

    const-string v7, "Service"

    const-string v8, "items"

    invoke-direct {p0, v6, v7, v8}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->getElementByNameAndTagName(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mKnownIssueService:Lorg/w3c/dom/Element;

    .line 1533
    iget-object v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mKnownIssueService:Lorg/w3c/dom/Element;

    if-nez v6, :cond_1e

    .line 1534
    const-string v6, "HtcWLD_v4.4.0"

    const-string v7, "[Warning] Known issue list of service level is invalid."

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    :cond_1e
    iput-object v10, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mKnownIssueVisible:Lorg/w3c/dom/Element;

    .line 1537
    iget-object v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mConfig:Lorg/w3c/dom/Document;

    const-string v7, "Visible"

    const-string v8, "items"

    invoke-direct {p0, v6, v7, v8}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->getElementByNameAndTagName(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mKnownIssueVisible:Lorg/w3c/dom/Element;

    .line 1538
    iget-object v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mKnownIssueVisible:Lorg/w3c/dom/Element;

    if-nez v6, :cond_1f

    .line 1539
    const-string v6, "HtcWLD_v4.4.0"

    const-string v7, "[Warning] Known issue list of visible level is invalid."

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    :cond_1f
    iput-object v10, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mKnownIssuePerceptible:Lorg/w3c/dom/Element;

    .line 1542
    iget-object v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mConfig:Lorg/w3c/dom/Document;

    const-string v7, "Perceptible"

    const-string v8, "items"

    invoke-direct {p0, v6, v7, v8}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->getElementByNameAndTagName(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mKnownIssuePerceptible:Lorg/w3c/dom/Element;

    .line 1543
    iget-object v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mKnownIssuePerceptible:Lorg/w3c/dom/Element;

    if-nez v6, :cond_20

    .line 1544
    const-string v6, "HtcWLD_v4.4.0"

    const-string v7, "[Warning] Known issue list of perceptible level is invalid."

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    :cond_20
    iput-object v10, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mKnownIssueForeground:Lorg/w3c/dom/Element;

    .line 1547
    iget-object v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mConfig:Lorg/w3c/dom/Document;

    const-string v7, "Foreground"

    const-string v8, "items"

    invoke-direct {p0, v6, v7, v8}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->getElementByNameAndTagName(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mKnownIssueForeground:Lorg/w3c/dom/Element;

    .line 1548
    iget-object v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mKnownIssueForeground:Lorg/w3c/dom/Element;

    if-nez v6, :cond_21

    .line 1549
    const-string v6, "HtcWLD_v4.4.0"

    const-string v7, "[Warning] Known issue list of foreground level is invalid."

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    :cond_21
    const-string v6, "HtcWLD_v4.4.0"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[Configuration] Ver="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mConfigVersion:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ProgVer="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mProgramVersion:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " DetectPeriod="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mDetectPeriod:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " SleepTime="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mSleepTimeToMeasureCpu:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " HeldTime="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mHeldTimeThreshold:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " CpuUsage="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mWLCpuUsage:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Throughput="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mWLThroughput:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Importance="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mImportance:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " CCUCpuUsage="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCCUCpuUsage:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " CCUImportance="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCCUImportance:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " CCUThroughput="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCCUThroughput:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " GPSImportance="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mGPSImportance:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " GPSSleepTime="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mGPSSleepTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " GPSThreshold="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mGPSThreshold:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " PowerNavigationFlag="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mPowerNavigationFlag:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ASNFlag="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mASNFlag:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " AlarmGroupingFlag="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mAlarmGroupingFlag:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " AlarmGroupingDuration="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mAlarmGroupingDuration:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    return-void
.end method

.method public loadXmlDocument(Ljava/lang/String;)V
    .locals 7
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1386
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1387
    .local v3, "file":Ljava/io/File;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .line 1388
    .local v2, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 1389
    .local v0, "builder":Ljavax/xml/parsers/DocumentBuilder;
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mConfig:Lorg/w3c/dom/Document;

    .line 1390
    invoke-virtual {v0, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mConfig:Lorg/w3c/dom/Document;

    .line 1391
    iget-object v4, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mConfig:Lorg/w3c/dom/Document;

    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Element;->normalize()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1395
    .end local v0    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v2    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v3    # "file":Ljava/io/File;
    :goto_0
    return-void

    .line 1392
    :catch_0
    move-exception v1

    .line 1393
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "HtcWLD_v4.4.0"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Warning] Fail to open file \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\"."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public run()V
    .locals 10

    .prologue
    .line 468
    :try_start_0
    iget-boolean v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mStart:Z

    if-nez v6, :cond_2

    .line 470
    const-string v6, "HtcWLD_v4.4.0"

    const-string v7, " "

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    const-string v6, "HtcWLD_v4.4.0"

    const-string v7, "<< Wake Lock Detector >>"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mStart:Z

    .line 477
    new-instance v0, Ljava/io/File;

    const-string v6, "/data/data/htc/cupd/libwld.so"

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 478
    .local v0, "config_copy":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v6, "/system/etc/wld_config.xml"

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 479
    .local v2, "config_source":Ljava/io/File;
    move-object v1, v2

    .line 480
    .local v1, "config_newer":Ljava/io/File;
    const-string v5, "/system/etc/wld_config.xml"

    .line 481
    .local v5, "newer_path":Ljava/lang/String;
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 484
    const-string v5, "/data/data/htc/cupd/libwld.so"

    .line 485
    move-object v1, v0

    .line 490
    :cond_0
    iget-object v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mConfig:Lorg/w3c/dom/Document;

    if-nez v6, :cond_4

    .line 492
    invoke-virtual {p0, v5}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->loadXmlDocument(Ljava/lang/String;)V

    .line 493
    invoke-virtual {p0}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->loadConfiguration()V

    .line 495
    iget-object v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mConfig:Lorg/w3c/dom/Document;

    if-eqz v6, :cond_3

    .line 498
    if-eqz v1, :cond_1

    iget-object v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    # setter for: Lcom/android/server/power/HtcWakeLockDetector;->mConfigLastModified:J
    invoke-static {v6, v8, v9}, Lcom/android/server/power/HtcWakeLockDetector;->access$402(Lcom/android/server/power/HtcWakeLockDetector;J)J

    .line 499
    :cond_1
    const-string v6, "HtcWLD_v4.4.0"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The last modified of config file is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    # getter for: Lcom/android/server/power/HtcWakeLockDetector;->mConfigLastModified:J
    invoke-static {v8}, Lcom/android/server/power/HtcWakeLockDetector;->access$400(Lcom/android/server/power/HtcWakeLockDetector;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    .end local v0    # "config_copy":Ljava/io/File;
    .end local v1    # "config_newer":Ljava/io/File;
    .end local v2    # "config_source":Ljava/io/File;
    .end local v5    # "newer_path":Ljava/lang/String;
    :cond_2
    :goto_0
    iget-boolean v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mEnableRunning:Z

    if-nez v6, :cond_5

    .line 520
    const-string v6, "HtcWLD_v4.4.0"

    const-string v7, "Running flag is off, please check version of program and config."

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    const-string v6, "HtcWLD_v4.4.0"

    const-string v7, "[Power_FDA] WLD CAN\'T RUN!"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :goto_1
    return-void

    .line 503
    .restart local v0    # "config_copy":Ljava/io/File;
    .restart local v1    # "config_newer":Ljava/io/File;
    .restart local v2    # "config_source":Ljava/io/File;
    .restart local v5    # "newer_path":Ljava/lang/String;
    :cond_3
    const-string v6, "/system/etc/wld_config.xml"

    invoke-virtual {p0, v6}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->loadXmlDocument(Ljava/lang/String;)V

    .line 504
    invoke-virtual {p0}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->loadConfiguration()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 546
    .end local v0    # "config_copy":Ljava/io/File;
    .end local v1    # "config_newer":Ljava/io/File;
    .end local v2    # "config_source":Ljava/io/File;
    .end local v5    # "newer_path":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 547
    .local v3, "e":Ljava/lang/Exception;
    const-string v6, "HtcWLD_v4.4.0"

    const-string v7, "[Power_FDA] Exception on main runnable function."

    invoke-static {v6, v7, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 509
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "config_copy":Ljava/io/File;
    .restart local v1    # "config_newer":Ljava/io/File;
    .restart local v2    # "config_source":Ljava/io/File;
    .restart local v5    # "newer_path":Ljava/lang/String;
    :cond_4
    if-eqz v1, :cond_2

    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    iget-object v8, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    # getter for: Lcom/android/server/power/HtcWakeLockDetector;->mConfigLastModified:J
    invoke-static {v8}, Lcom/android/server/power/HtcWakeLockDetector;->access$400(Lcom/android/server/power/HtcWakeLockDetector;)J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    .line 511
    iget-object v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    # setter for: Lcom/android/server/power/HtcWakeLockDetector;->mConfigLastModified:J
    invoke-static {v6, v8, v9}, Lcom/android/server/power/HtcWakeLockDetector;->access$402(Lcom/android/server/power/HtcWakeLockDetector;J)J

    .line 512
    invoke-virtual {p0, v5}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->loadXmlDocument(Ljava/lang/String;)V

    .line 513
    invoke-virtual {p0}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->loadConfiguration()V

    goto :goto_0

    .line 525
    .end local v0    # "config_copy":Ljava/io/File;
    .end local v1    # "config_newer":Ljava/io/File;
    .end local v2    # "config_source":Ljava/io/File;
    .end local v5    # "newer_path":Ljava/lang/String;
    :cond_5
    iget-boolean v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mDoSamplingFlag:Z

    if-eqz v6, :cond_7

    .line 526
    iget v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mSamplingCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mSamplingCount:I

    .line 527
    invoke-direct {p0}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->doSampling()Z

    move-result v4

    .line 528
    .local v4, "is_valid":Z
    if-eqz v4, :cond_6

    .line 529
    iget-wide v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mSamplingTime:J

    iget-wide v8, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mSleepTimeToMeasureCpu:J

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mSamplingTime:J

    .line 530
    iget-wide v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mSamplingTime:J

    iget-wide v8, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mDetectPeriod:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_6

    .line 531
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mDoSamplingFlag:Z

    .line 532
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mSamplingTime:J

    .line 544
    .end local v4    # "is_valid":Z
    :cond_6
    :goto_2
    iget-object v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    # getter for: Lcom/android/server/power/HtcWakeLockDetector;->mWLD_Handler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/server/power/HtcWakeLockDetector;->access$500(Lcom/android/server/power/HtcWakeLockDetector;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 538
    :cond_7
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mStart:Z

    .line 539
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mDoSamplingFlag:Z

    .line 540
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mSamplingCount:I

    .line 541
    invoke-direct {p0}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->doJudgment()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
