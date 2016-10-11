.class Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PerformUnifiedRestoreTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;,
        Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;
    }
.end annotation


# instance fields
.field private mAcceptSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAgent:Landroid/app/IBackupAgent;

.field mBackupData:Landroid/os/ParcelFileDescriptor;

.field private mBackupDataName:Ljava/io/File;

.field private mCount:I

.field private mCurrentPackage:Landroid/content/pm/PackageInfo;

.field private mFinished:Z

.field private mHtcMergedPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mHtcVersionCode:I

.field private mIsSystemRestore:Z

.field mNewState:Landroid/os/ParcelFileDescriptor;

.field private mNewStateName:Ljava/io/File;

.field private mObserver:Landroid/app/backup/IRestoreObserver;

.field private mOldPkgName:Ljava/lang/String;

.field private mOriginalPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

.field private mPmToken:I

.field private mRestoreDescription:Landroid/app/backup/RestoreDescription;

.field private mSavedStateName:Ljava/io/File;

.field private mStageName:Ljava/io/File;

.field private mStartRealtime:J

.field private mState:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

.field mStateDir:Ljava/io/File;

.field private mStatus:I

.field private mTargetPackage:Landroid/content/pm/PackageInfo;

.field private mToken:J

.field private mTransport:Lcom/android/internal/backup/IBackupTransport;

.field private mWidgetData:[B

.field private mbHtcTransport:Z

.field private mbRenamedOrMerged:Z

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Landroid/app/backup/IRestoreObserver;JLandroid/content/pm/PackageInfo;IZ[Ljava/lang/String;)V
    .locals 24
    .param p2, "transport"    # Lcom/android/internal/backup/IBackupTransport;
    .param p3, "observer"    # Landroid/app/backup/IRestoreObserver;
    .param p4, "restoreSetToken"    # J
    .param p6, "targetPackage"    # Landroid/content/pm/PackageInfo;
    .param p7, "pmToken"    # I
    .param p8, "isFullSystemRestore"    # Z
    .param p9, "filterSet"    # [Ljava/lang/String;

    .prologue
    .line 7638
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 7625
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mHtcMergedPackages:Ljava/util/HashMap;

    .line 7627
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mOriginalPackages:Ljava/util/HashMap;

    .line 7628
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mbHtcTransport:Z

    .line 7629
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mbRenamedOrMerged:Z

    .line 7630
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mOldPkgName:Ljava/lang/String;

    .line 7631
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mHtcVersionCode:I

    .line 7639
    sget-object v18, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->INITIAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mState:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    .line 7640
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStartRealtime:J

    .line 7642
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    .line 7643
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    .line 7644
    move-wide/from16 v0, p4

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mToken:J

    .line 7645
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mPmToken:I

    .line 7646
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mTargetPackage:Landroid/content/pm/PackageInfo;

    .line 7647
    move/from16 v0, p8

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mIsSystemRestore:Z

    .line 7648
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mFinished:Z

    .line 7651
    const/16 v17, 0x0

    .line 7653
    .local v17, "strDirName":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v17

    .line 7654
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->isHtcTransport(Ljava/lang/String;)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mbHtcTransport:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7660
    :goto_0
    if-eqz p6, :cond_1

    .line 7662
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    .line 7663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p6

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7753
    :cond_0
    :goto_1
    sget-boolean v18, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v18, :cond_d

    .line 7755
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "TransportDirName:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " htctransport:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mbHtcTransport:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7757
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Restore; accept set size is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/PackageInfo;

    .line 7759
    .local v14, "info":Landroid/content/pm/PackageInfo;
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "   "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 7655
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v14    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v7

    .line 7656
    .local v7, "e":Ljava/lang/Exception;
    const-string v18, "BackupManagerService"

    const-string v19, "can\'t get mTransport.transportDirName()"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 7667
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_1
    # getter for: Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {p1 .. p1}, Lcom/android/server/backup/BackupManagerService;->access$600(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/server/backup/PackageManagerBackupAgent;->getStorableApplicationsWithMetaData(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v5

    .line 7670
    .local v5, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mbHtcTransport:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 7672
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->initMergedRenamedPackages(Ljava/util/List;)V

    .line 7677
    :cond_2
    if-nez p9, :cond_5

    .line 7683
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->packagesToNames(Ljava/util/List;)[Ljava/lang/String;

    move-result-object p9

    .line 7685
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Full restore; asking about "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p9

    array-length v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " apps"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7687
    new-instance v18, Ljava/util/ArrayList;

    move-object/from16 v0, p9

    array-length v0, v0

    move/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    .line 7716
    :cond_3
    :goto_3
    const/4 v10, 0x0

    .line 7717
    .local v10, "hasSystem":Z
    const/4 v9, 0x0

    .line 7718
    .local v9, "hasSettings":Z
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_4
    move-object/from16 v0, p9

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v12, v0, :cond_b

    .line 7720
    :try_start_1
    # getter for: Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {p1 .. p1}, Lcom/android/server/backup/BackupManagerService;->access$600(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v18

    aget-object v19, p9, v12

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v14

    .line 7721
    .restart local v14    # "info":Landroid/content/pm/PackageInfo;
    const-string v18, "android"

    iget-object v0, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v18

    if-eqz v18, :cond_9

    .line 7722
    const/4 v10, 0x1

    .line 7718
    .end local v14    # "info":Landroid/content/pm/PackageInfo;
    :cond_4
    :goto_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 7691
    .end local v9    # "hasSettings":Z
    .end local v10    # "hasSystem":Z
    .end local v12    # "i":I
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mbHtcTransport:Z

    move/from16 v18, v0

    if-eqz v18, :cond_8

    .line 7692
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 7693
    .local v11, "htcFilterHashSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 7694
    .local v8, "filterHashSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v6, p9

    .local v6, "arr$":[Ljava/lang/String;
    array-length v15, v6

    .local v15, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_6
    if-ge v13, v15, :cond_6

    aget-object v16, v6, v13

    .line 7695
    .local v16, "pkg":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7694
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 7697
    .end local v16    # "pkg":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p9

    invoke-direct {v0, v11, v1}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->createHTCFilterSet(Ljava/util/HashSet;[Ljava/lang/String;)V

    .line 7698
    invoke-virtual {v11}, Ljava/util/HashSet;->size()I

    move-result v18

    invoke-virtual {v8}, Ljava/util/HashSet;->size()I

    move-result v19

    add-int v4, v18, v19

    .line 7699
    .local v4, "acceptSetSize":I
    new-instance v18, Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    .line 7700
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v18

    add-int/lit8 v12, v18, -0x1

    .restart local v12    # "i":I
    :goto_7
    if-ltz v12, :cond_3

    .line 7701
    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/PackageInfo;

    .line 7702
    .local v16, "pkg":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_7

    .line 7703
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "this is HTC merged/renamed pkg:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7700
    :cond_7
    add-int/lit8 v12, v12, -0x1

    goto :goto_7

    .line 7708
    .end local v4    # "acceptSetSize":I
    .end local v6    # "arr$":[Ljava/lang/String;
    .end local v8    # "filterHashSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v11    # "htcFilterHashSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v12    # "i":I
    .end local v13    # "i$":I
    .end local v15    # "len$":I
    .end local v16    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_8
    new-instance v18, Ljava/util/ArrayList;

    move-object/from16 v0, p9

    array-length v0, v0

    move/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    goto/16 :goto_3

    .line 7725
    .restart local v9    # "hasSettings":Z
    .restart local v10    # "hasSystem":Z
    .restart local v12    # "i":I
    .restart local v14    # "info":Landroid/content/pm/PackageInfo;
    :cond_9
    :try_start_2
    const-string v18, "com.android.providers.settings"

    iget-object v0, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 7726
    const/4 v9, 0x1

    goto/16 :goto_5

    .line 7730
    :cond_a
    iget-object v0, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/backup/BackupManagerService;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 7731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_5

    .line 7733
    .end local v14    # "info":Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v18

    goto/16 :goto_5

    .line 7737
    :cond_b
    if-eqz v10, :cond_c

    .line 7739
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    # getter for: Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {p1 .. p1}, Lcom/android/server/backup/BackupManagerService;->access$600(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v20

    const-string v21, "android"

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v20

    invoke-interface/range {v18 .. v20}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    .line 7744
    :cond_c
    :goto_8
    if-eqz v9, :cond_0

    .line 7746
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {p1 .. p1}, Lcom/android/server/backup/BackupManagerService;->access$600(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v19

    const-string v20, "com.android.providers.settings"

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_1

    .line 7747
    :catch_2
    move-exception v18

    goto/16 :goto_1

    .line 7762
    .end local v5    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "hasSettings":Z
    .end local v10    # "hasSystem":Z
    .end local v12    # "i":I
    :cond_d
    return-void

    .line 7740
    .restart local v5    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "hasSettings":Z
    .restart local v10    # "hasSystem":Z
    .restart local v12    # "i":I
    :catch_3
    move-exception v18

    goto :goto_8
.end method

.method static synthetic access$2200(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    .prologue
    .line 7557
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Lcom/android/internal/backup/IBackupTransport;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    .prologue
    .line 7557
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;Landroid/app/IBackupAgent;)Landroid/app/IBackupAgent;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;
    .param p1, "x1"    # Landroid/app/IBackupAgent;

    .prologue
    .line 7557
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    return-object p1
.end method

.method private addTokenToList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 8938
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    const-string v5, ""

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 8944
    :cond_0
    return-void

    .line 8939
    :cond_1
    const-string v5, ";"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 8940
    .local v4, "token":[Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 8941
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 8942
    .local v3, "p":Ljava/lang/String;
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8941
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private createHTCFilterSet(Ljava/util/HashSet;[Ljava/lang/String;)V
    .locals 11
    .param p2, "filterSet"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 8891
    .local p1, "htcFilterSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move v4, v3

    .end local v3    # "i$":I
    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_6

    aget-object v6, v0, v4

    .line 8892
    .local v6, "pkg":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mHtcMergedPackages:Ljava/util/HashMap;

    if-eqz v8, :cond_2

    .line 8894
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mHtcMergedPackages:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v4    # "i$":I
    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 8895
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 8896
    .local v2, "hostPkg":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 8897
    .local v7, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-direct {p0, v6, v8}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->isMatch(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 8901
    const-string v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "(Merged)Add to HTC htcFilterSet, oldPkg:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", newPkg:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8903
    invoke-virtual {p1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 8904
    :cond_1
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 8907
    const-string v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Add child to HTC htcFilterSet, newPkg:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8909
    invoke-virtual {p1, v7}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 8913
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v2    # "hostPkg":Ljava/lang/String;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v7    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mOriginalPackages:Ljava/util/HashMap;

    if-eqz v8, :cond_5

    .line 8915
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mOriginalPackages:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 8916
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 8917
    .restart local v2    # "hostPkg":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 8918
    .restart local v7    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, v6, v7}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->isMatch(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 8922
    const-string v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "(Renamed)Add to HTC htcFilterSet, oldPkg:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", newPkg:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8924
    invoke-virtual {p1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 8925
    :cond_4
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 8928
    const-string v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Add child to HTC htcFilterSet, newPkg:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8930
    invoke-virtual {p1, v7}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 8891
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v2    # "hostPkg":Ljava/lang/String;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v7    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    add-int/lit8 v3, v4, 0x1

    .local v3, "i$":I
    move v4, v3

    .end local v3    # "i$":I
    .restart local v4    # "i$":I
    goto/16 :goto_0

    .line 8935
    .end local v6    # "pkg":Ljava/lang/String;
    :cond_6
    return-void
.end method

.method private dispatchNextRestore()V
    .locals 26

    .prologue
    .line 7955
    sget-object v16, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    .line 7957
    .local v16, "nextState":Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/backup/IBackupTransport;->nextRestorePackage()Landroid/app/backup/RestoreDescription;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mRestoreDescription:Landroid/app/backup/RestoreDescription;

    .line 7959
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mRestoreDescription:Landroid/app/backup/RestoreDescription;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mRestoreDescription:Landroid/app/backup/RestoreDescription;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/app/backup/RestoreDescription;->getPackageName()Ljava/lang/String;

    move-result-object v18

    .line 7962
    .local v18, "pkgName":Ljava/lang/String;
    :goto_0
    if-nez v18, :cond_1

    .line 7963
    const-string v22, "BackupManagerService"

    const-string v23, "Failure getting next package name"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7964
    const/16 v22, 0xb0f

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-static/range {v22 .. v23}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 7965
    sget-object v16, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8140
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    .line 8142
    .end local v18    # "pkgName":Ljava/lang/String;
    :goto_1
    return-void

    .line 7959
    :cond_0
    const/16 v18, 0x0

    goto :goto_0

    .line 7967
    .restart local v18    # "pkgName":Ljava/lang/String;
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mRestoreDescription:Landroid/app/backup/RestoreDescription;

    move-object/from16 v22, v0

    sget-object v23, Landroid/app/backup/RestoreDescription;->NO_MORE_PACKAGES:Landroid/app/backup/RestoreDescription;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_2

    .line 7970
    const-string v22, "BackupManagerService"

    const-string v23, "No more packages; finishing restore"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7972
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStartRealtime:J

    move-wide/from16 v24, v0

    sub-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-int v15, v0

    .line 7973
    .local v15, "millis":I
    const/16 v22, 0xb12

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCount:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 7974
    sget-object v16, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8140
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    goto :goto_1

    .line 7979
    .end local v15    # "millis":I
    :cond_2
    :try_start_2
    const-string v22, "BackupManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Next restore package: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mRestoreDescription:Landroid/app/backup/RestoreDescription;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7981
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->sendOnRestorePackage(Ljava/lang/String;)V

    .line 7983
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/backup/PackageManagerBackupAgent;->getRestoredMetadata(Ljava/lang/String;)Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;

    move-result-object v14

    .line 7984
    .local v14, "metaInfo":Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;
    if-nez v14, :cond_3

    .line 7985
    const-string v22, "BackupManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "No metadata for "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7986
    const/16 v22, 0xb10

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v18, v23, v24

    const/16 v24, 0x1

    const-string v25, "Package metadata missing"

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 7988
    sget-object v16, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8140
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    goto/16 :goto_1

    .line 7993
    :cond_3
    const/16 v22, 0x0

    :try_start_3
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mOldPkgName:Ljava/lang/String;

    .line 7994
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mbRenamedOrMerged:Z

    .line 7995
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mHtcVersionCode:I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 7999
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v22, v0

    # getter for: Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v22 .. v22}, Lcom/android/server/backup/BackupManagerService;->access$600(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v22

    const/16 v23, 0x40

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 8096
    :goto_2
    :try_start_5
    iget v0, v14, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->versionCode:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_13

    .line 8100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v22, v0

    const/high16 v23, 0x20000

    and-int v22, v22, v23

    if-nez v22, :cond_12

    .line 8102
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Version "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget v0, v14, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->versionCode:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " > installed version "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 8104
    .local v13, "message":Ljava/lang/String;
    const-string v22, "BackupManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Package "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ": "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8105
    const/16 v22, 0xb10

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v18, v23, v24

    const/16 v24, 0x1

    aput-object v13, v23, v24

    invoke-static/range {v22 .. v23}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 8107
    sget-object v16, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 8140
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    goto/16 :goto_1

    .line 8001
    .end local v13    # "message":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 8003
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v11, 0x0

    .line 8004
    .local v11, "isMerged":Z
    const/4 v12, 0x0

    .line 8005
    .local v12, "isRenamed":Z
    :try_start_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mbHtcTransport:Z

    move/from16 v22, v0

    if-eqz v22, :cond_5

    .line 8007
    const-string v22, "BackupManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Try to find HTC merged/renamed case, pkg: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8009
    iget v0, v14, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->versionCode:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mHtcVersionCode:I

    .line 8010
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mHtcMergedPackages:Ljava/util/HashMap;

    move-object/from16 v22, v0

    if-eqz v22, :cond_6

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->isMergedPackage(Ljava/lang/String;)Z

    move-result v11

    .line 8013
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mOriginalPackages:Ljava/util/HashMap;

    move-object/from16 v22, v0

    if-eqz v22, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->isRenamedPackage(Ljava/lang/String;)Z

    move-result v12

    .line 8016
    :goto_4
    if-nez v11, :cond_4

    if-eqz v12, :cond_8

    :cond_4
    const/16 v22, 0x1

    :goto_5
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mbRenamedOrMerged:Z

    .line 8019
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mbRenamedOrMerged:Z

    move/from16 v22, v0

    if-nez v22, :cond_9

    .line 8022
    const-string v22, "BackupManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Package not present: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8023
    const/16 v22, 0xb10

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v18, v23, v24

    const/16 v24, 0x1

    const-string v25, "Package missing on device"

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 8025
    sget-object v16, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 8140
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    goto/16 :goto_1

    .line 8010
    :cond_6
    const/4 v11, 0x0

    goto :goto_3

    .line 8013
    :cond_7
    const/4 v12, 0x0

    goto :goto_4

    .line 8016
    :cond_8
    const/16 v22, 0x0

    goto :goto_5

    .line 8029
    :cond_9
    :try_start_7
    const-string v22, "BackupManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "HTC app "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " restoring data."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8031
    const/4 v8, 0x0

    .line 8033
    .local v8, "hit":Z
    if-eqz v11, :cond_d

    .line 8035
    const-string v22, "BackupManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "This is merged case, try to find the host for pkg: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8038
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mHtcMergedPackages:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 8039
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v22

    if-eqz v22, :cond_a

    .line 8040
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/ArrayList;

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_b
    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 8042
    .local v17, "pkg":Ljava/lang/String;
    :try_start_8
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 8043
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v22, v0

    # getter for: Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v22 .. v22}, Lcom/android/server/backup/BackupManagerService;->access$600(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v23

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const/16 v24, 0x40

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v20

    .line 8044
    .local v20, "tmpPkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v20, :cond_b

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    if-eqz v22, :cond_b

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/backup/BackupManagerService;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 8045
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 8046
    const-string v22, "BackupManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Find the merged package:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", host is:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8047
    const/4 v8, 0x1

    .line 8048
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mOldPkgName:Ljava/lang/String;
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 8056
    .end local v17    # "pkg":Ljava/lang/String;
    .end local v20    # "tmpPkgInfo":Landroid/content/pm/PackageInfo;
    :cond_c
    if-eqz v8, :cond_a

    .line 8060
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_d
    if-nez v8, :cond_10

    if-eqz v12, :cond_10

    .line 8062
    :try_start_9
    const-string v22, "BackupManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "This is renamed case, try to find the new pacakge name for pkg:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8065
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mOriginalPackages:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_e
    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_10

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 8066
    .restart local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v22

    if-eqz v22, :cond_e

    .line 8067
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/ArrayList;

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_f
    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 8069
    .local v19, "renamedPkg":Ljava/lang/String;
    :try_start_a
    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_f

    .line 8070
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v22, v0

    # getter for: Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v22 .. v22}, Lcom/android/server/backup/BackupManagerService;->access$600(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v23

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const/16 v24, 0x40

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v20

    .line 8071
    .restart local v20    # "tmpPkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v20, :cond_f

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    if-eqz v22, :cond_f

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/backup/BackupManagerService;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result v22

    if-eqz v22, :cond_f

    .line 8072
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 8073
    const-string v22, "BackupManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Find the renamed package:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", new packageName is :"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_a} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 8074
    const/4 v8, 0x1

    goto/16 :goto_7

    .line 8052
    .end local v19    # "renamedPkg":Ljava/lang/String;
    .end local v20    # "tmpPkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v17    # "pkg":Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 8053
    .local v6, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_b
    const-string v22, "BackupManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Failed to find the merged package:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_6

    .line 8134
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v6    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v8    # "hit":Z
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "isMerged":Z
    .end local v12    # "isRenamed":Z
    .end local v14    # "metaInfo":Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;
    .end local v17    # "pkg":Ljava/lang/String;
    .end local v18    # "pkgName":Ljava/lang/String;
    :catch_2
    move-exception v4

    .line 8135
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_c
    const-string v22, "BackupManagerService"

    const-string v23, "Can\'t get next target from transport; ending restore"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8136
    const/16 v22, 0xb0f

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-static/range {v22 .. v23}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 8137
    sget-object v16, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 8140
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    goto/16 :goto_1

    .line 8078
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .restart local v8    # "hit":Z
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v11    # "isMerged":Z
    .restart local v12    # "isRenamed":Z
    .restart local v14    # "metaInfo":Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;
    .restart local v18    # "pkgName":Ljava/lang/String;
    .restart local v19    # "renamedPkg":Ljava/lang/String;
    :catch_3
    move-exception v7

    .line 8079
    .local v7, "ex2":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_d
    const-string v22, "BackupManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Failed to find the renamed package:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_8

    .line 8140
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v7    # "ex2":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v8    # "hit":Z
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "isMerged":Z
    .end local v12    # "isRenamed":Z
    .end local v14    # "metaInfo":Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;
    .end local v18    # "pkgName":Ljava/lang/String;
    .end local v19    # "renamedPkg":Ljava/lang/String;
    :catchall_0
    move-exception v22

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    throw v22

    .line 8085
    .restart local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v8    # "hit":Z
    .restart local v11    # "isMerged":Z
    .restart local v12    # "isRenamed":Z
    .restart local v14    # "metaInfo":Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;
    .restart local v18    # "pkgName":Ljava/lang/String;
    :cond_10
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    move-object/from16 v22, v0

    if-nez v22, :cond_11

    .line 8086
    const-string v22, "BackupManagerService"

    const-string v23, "Invalid HTC package restoring data"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8087
    const/16 v22, 0xb10

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v18, v23, v24

    const/16 v24, 0x1

    const-string v25, "Package missing on device"

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 8089
    sget-object v22, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 8140
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    goto/16 :goto_1

    .line 8092
    :cond_11
    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    goto/16 :goto_2

    .line 8110
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v8    # "hit":Z
    .end local v11    # "isMerged":Z
    .end local v12    # "isRenamed":Z
    :cond_12
    const-string v22, "BackupManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Version "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget v0, v14, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->versionCode:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " > installed "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " but restoreAnyVersion"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8116
    :cond_13
    sget-boolean v22, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v22, :cond_14

    const-string v22, "BackupManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Package "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " restore version ["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget v0, v14, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->versionCode:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "] is compatible with installed version ["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "]"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8122
    :cond_14
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mWidgetData:[B

    .line 8123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mRestoreDescription:Landroid/app/backup/RestoreDescription;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/app/backup/RestoreDescription;->getDataType()I

    move-result v21

    .line 8124
    .local v21, "type":I
    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_15

    .line 8125
    sget-object v16, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RESTORE_KEYVALUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 8140
    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    goto/16 :goto_1

    .line 8126
    :cond_15
    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_16

    .line 8127
    :try_start_10
    sget-object v16, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RESTORE_FULL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    goto :goto_9

    .line 8130
    :cond_16
    const-string v22, "BackupManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Unrecognized restore type "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8131
    sget-object v16, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 8140
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    goto/16 :goto_1
.end method

.method private finalizeRestore()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 8567
    sget-boolean v1, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finishing restore mObserver="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8570
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v1}, Lcom/android/internal/backup/IBackupTransport;->finishRestore()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8576
    :goto_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    if-eqz v1, :cond_1

    .line 8578
    :try_start_1
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    iget v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStatus:I

    invoke-interface {v1, v2}, Landroid/app/backup/IRestoreObserver;->restoreFinished(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 8591
    :cond_1
    :goto_1
    iget v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mPmToken:I

    if-lez v1, :cond_4

    .line 8592
    sget-boolean v1, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finishing PM token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mPmToken:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8594
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/backup/BackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    iget v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mPmToken:I

    invoke-interface {v1, v2}, Landroid/content/pm/IPackageManager;->finishPackageInstall(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 8609
    :goto_2
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/server/AppWidgetBackupBridge;->restoreFinished(I)V

    .line 8613
    iget-boolean v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mIsSystemRestore:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

    if-eqz v1, :cond_3

    .line 8614
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

    invoke-virtual {v2}, Lcom/android/server/backup/PackageManagerBackupAgent;->getRestoredPackages()Ljava/util/Set;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    .line 8615
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-wide v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mToken:J

    iput-wide v2, v1, Lcom/android/server/backup/BackupManagerService;->mAncestralToken:J

    .line 8616
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->writeRestoreTokens()V

    .line 8620
    :cond_3
    const-string v1, "BackupManagerService"

    const-string v2, "Restore complete."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8621
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 8622
    return-void

    .line 8571
    :catch_0
    move-exception v0

    .line 8572
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BackupManagerService"

    const-string v2, "Error finishing restore"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 8579
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 8580
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "Restore observer died at restoreFinished"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 8599
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    invoke-virtual {v1, v4}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 8604
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    .line 8595
    :catch_2
    move-exception v1

    goto :goto_2
.end method

.method private initMergedRenamedPackages(Ljava/util/List;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 8816
    .local p1, "agentPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v17

    if-nez v17, :cond_2

    .line 8817
    :cond_0
    const-string v17, "BackupManagerService"

    const-string v18, "No AgentPackages."

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8886
    :cond_1
    return-void

    .line 8821
    :cond_2
    const-string v13, "merged"

    .line 8823
    .local v13, "prefix":Ljava/lang/String;
    const/4 v7, 0x0

    .line 8824
    .local v7, "merged_size":I
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mHtcMergedPackages:Ljava/util/HashMap;

    .line 8825
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mOriginalPackages:Ljava/util/HashMap;

    .line 8826
    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    .line 8827
    .local v16, "tmpList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/PackageInfo;

    .line 8828
    .local v11, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v0, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 8830
    .local v8, "metaData":Landroid/os/Bundle;
    if-eqz v8, :cond_3

    const-string v17, "renamed"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 8834
    const-string v17, "merged"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-virtual {v8, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 8837
    :goto_1
    const-string v17, "BackupManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Merged package:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", size:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8839
    if-lez v7, :cond_6

    .line 8840
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 8841
    .local v12, "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_2
    if-gt v3, v7, :cond_5

    .line 8842
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 8843
    .local v6, "mergedPkg":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v12}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->addTokenToList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 8841
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 8834
    .end local v3    # "i":I
    .end local v6    # "mergedPkg":Ljava/lang/String;
    .end local v12    # "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    const/4 v7, 0x0

    goto :goto_1

    .line 8845
    .restart local v3    # "i":I
    .restart local v12    # "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 8846
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mHtcMergedPackages:Ljava/util/HashMap;

    move-object/from16 v17, v0

    iget-object v0, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8850
    .end local v3    # "i":I
    .end local v12    # "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    const-string v17, "renamed"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    const-string v17, "renamed"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 8852
    .local v14, "renamed":Ljava/lang/String;
    :goto_3
    const-string v17, "BackupManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Renamed package:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8854
    if-eqz v14, :cond_3

    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 8855
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 8856
    .local v15, "renamed_pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->addTokenToList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 8857
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 8858
    .local v9, "p":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 8850
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v9    # "p":Ljava/lang/String;
    .end local v14    # "renamed":Ljava/lang/String;
    .end local v15    # "renamed_pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_7
    const/4 v14, 0x0

    goto :goto_3

    .line 8860
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v14    # "renamed":Ljava/lang/String;
    .restart local v15    # "renamed_pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mOriginalPackages:Ljava/util/HashMap;

    move-object/from16 v17, v0

    iget-object v0, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 8866
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v8    # "metaData":Landroid/os/Bundle;
    .end local v11    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v14    # "renamed":Ljava/lang/String;
    .end local v15    # "renamed_pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_9
    const/4 v2, 0x0

    .line 8867
    .local v2, "hit":Z
    invoke-virtual/range {v16 .. v16}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 8868
    .local v10, "pkg":Ljava/lang/String;
    const/4 v2, 0x0

    .line 8870
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PackageInfo;

    .line 8871
    .local v9, "p":Landroid/content/pm/PackageInfo;
    iget-object v0, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 8872
    const/4 v2, 0x1

    .line 8876
    .end local v9    # "p":Landroid/content/pm/PackageInfo;
    :cond_b
    if-eqz v2, :cond_c

    .line 8878
    const-string v17, "BackupManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Skip! Duplicate package:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 8882
    :cond_c
    new-instance v11, Landroid/content/pm/PackageInfo;

    invoke-direct {v11}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 8883
    .restart local v11    # "pkgInfo":Landroid/content/pm/PackageInfo;
    iput-object v10, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 8884
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5
.end method

.method private isHtcTransport(Ljava/lang/String;)Z
    .locals 2
    .param p1, "transportDirName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 8965
    if-nez p1, :cond_1

    .line 8970
    :cond_0
    :goto_0
    return v0

    .line 8966
    :cond_1
    const-string v1, "com.htc."

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.nero.android.htc."

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8968
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isMatch(Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 8961
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMergedPackage(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 8947
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mHtcMergedPackages:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 8948
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, p1, v1}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->isMatch(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 8950
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isRenamedPackage(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 8954
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mOriginalPackages:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 8955
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, p1, v1}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->isMatch(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 8957
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private packagesToNames(Ljava/util/List;)[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 7765
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 7766
    .local v0, "N":I
    new-array v2, v0, [Ljava/lang/String;

    .line 7767
    .local v2, "names":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 7768
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v3, v2, v1

    .line 7767
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7770
    :cond_0
    return-object v2
.end method

.method private restoreFinished()V
    .locals 7

    .prologue
    .line 8372
    :try_start_0
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerService;->generateToken()I

    move-result v2

    .line 8373
    .local v2, "token":I
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-wide/16 v4, 0x7530

    invoke-virtual {v3, v2, v4, v5, p0}, Lcom/android/server/backup/BackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupManagerService$BackupRestoreTask;)V

    .line 8374
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v4, Lcom/android/server/backup/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    invoke-interface {v3, v2, v4}, Landroid/app/IBackupAgent;->doRestoreFinished(ILandroid/app/backup/IBackupManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8385
    .end local v2    # "token":I
    :goto_0
    return-void

    .line 8377
    :catch_0
    move-exception v0

    .line 8378
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 8379
    .local v1, "packageName":Ljava/lang/String;
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to finalize restore of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8380
    const/16 v3, 0xb10

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 8382
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->keyValueAgentErrorCleanup()V

    .line 8383
    sget-object v3, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    invoke-virtual {p0, v3}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    goto :goto_0
.end method

.method private restoreFull()V
    .locals 5

    .prologue
    .line 8351
    :try_start_0
    new-instance v1, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;

    invoke-direct {v1, p0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;-><init>(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)V

    .line 8352
    .local v1, "feeder":Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;
    sget-boolean v2, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v2, :cond_0

    .line 8353
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Spinning threads for stream restore of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8356
    :cond_0
    new-instance v2, Ljava/lang/Thread;

    const-string v3, "unified-stream-feeder"

    invoke-direct {v2, v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8367
    .end local v1    # "feeder":Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;
    :goto_0
    return-void

    .line 8360
    :catch_0
    move-exception v0

    .line 8364
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "BackupManagerService"

    const-string v3, "Unable to construct pipes for stream restore!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8365
    sget-object v2, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    invoke-virtual {p0, v2}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    goto :goto_0
.end method

.method private restoreKeyValue()V
    .locals 10

    .prologue
    const/16 v9, 0xb10

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 8149
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 8152
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-eqz v3, :cond_0

    const-string v3, ""

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 8154
    :cond_0
    sget-boolean v3, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v3, :cond_1

    .line 8155
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Data exists for package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " but app has no agent; skipping"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8158
    :cond_1
    new-array v3, v8, [Ljava/lang/Object;

    aput-object v2, v3, v6

    const-string v4, "Package has no agent"

    aput-object v4, v3, v7

    invoke-static {v9, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 8160
    sget-object v3, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    invoke-virtual {p0, v3}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    .line 8202
    :goto_0
    return-void

    .line 8164
    :cond_2
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

    invoke-virtual {v3, v2}, Lcom/android/server/backup/PackageManagerBackupAgent;->getRestoredMetadata(Ljava/lang/String;)Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;

    move-result-object v1

    .line 8166
    .local v1, "metaInfo":Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;
    iget-boolean v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mbRenamedOrMerged:Z

    if-nez v3, :cond_3

    iget-object v3, v1, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->sigHashes:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-static {v3, v4}, Lcom/android/server/backup/BackupManagerService;->signaturesMatch(Ljava/util/ArrayList;Landroid/content/pm/PackageInfo;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 8168
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Signature mismatch restoring "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8169
    new-array v3, v8, [Ljava/lang/Object;

    aput-object v2, v3, v6

    const-string v4, "Signature mismatch"

    aput-object v4, v3, v7

    invoke-static {v9, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 8171
    sget-object v3, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    invoke-virtual {p0, v3}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    goto :goto_0

    .line 8176
    :cond_3
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4, v6}, Lcom/android/server/backup/BackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    .line 8179
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    if-nez v3, :cond_4

    .line 8180
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t find backup agent for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8181
    new-array v3, v8, [Ljava/lang/Object;

    aput-object v2, v3, v6

    const-string v4, "Restore agent missing"

    aput-object v4, v3, v7

    invoke-static {v9, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 8183
    sget-object v3, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    invoke-virtual {p0, v3}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    goto :goto_0

    .line 8190
    :cond_4
    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mbRenamedOrMerged:Z

    if-eqz v3, :cond_5

    .line 8191
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mHtcVersionCode:I

    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mOldPkgName:Ljava/lang/String;

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->initiateOneRestore(Landroid/content/pm/PackageInfo;ILjava/lang/String;)V

    .line 8196
    :goto_1
    iget v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCount:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 8197
    :catch_0
    move-exception v0

    .line 8198
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error when attempting restore: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8199
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->keyValueAgentErrorCleanup()V

    .line 8200
    sget-object v3, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    invoke-virtual {p0, v3}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    goto/16 :goto_0

    .line 8193
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    :try_start_1
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget v4, v1, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->versionCode:I

    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mOldPkgName:Ljava/lang/String;

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->initiateOneRestore(Landroid/content/pm/PackageInfo;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private startRestore()V
    .locals 11

    .prologue
    const/16 v10, 0x14

    const/4 v6, 0x0

    const/16 v9, -0x3e8

    .line 7865
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->sendStartRestore(I)V

    .line 7868
    iget-boolean v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mIsSystemRestore:Z

    if-eqz v5, :cond_0

    .line 7869
    invoke-static {v6}, Lcom/android/server/AppWidgetBackupBridge;->restoreStarting(I)V

    .line 7873
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v5}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v4

    .line 7874
    .local v4, "transportDir":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v6, v6, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-direct {v5, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStateDir:Ljava/io/File;

    .line 7877
    new-instance v3, Landroid/content/pm/PackageInfo;

    invoke-direct {v3}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 7878
    .local v3, "pmPackage":Landroid/content/pm/PackageInfo;
    const-string v5, "@pm@"

    iput-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 7879
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 7881
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    const/4 v6, 0x0

    new-array v6, v6, [Landroid/content/pm/PackageInfo;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/pm/PackageInfo;

    .line 7882
    .local v2, "packages":[Landroid/content/pm/PackageInfo;
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    iget-wide v6, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mToken:J

    invoke-interface {v5, v6, v7, v2}, Lcom/android/internal/backup/IBackupTransport;->startRestore(J[Landroid/content/pm/PackageInfo;)I

    move-result v5

    iput v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStatus:I

    .line 7883
    iget v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStatus:I

    if-eqz v5, :cond_2

    .line 7884
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Transport error "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStatus:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; no restore possible"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7885
    const/16 v5, -0x3e8

    iput v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStatus:I

    .line 7886
    sget-object v5, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    invoke-virtual {p0, v5}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    .line 7950
    .end local v2    # "packages":[Landroid/content/pm/PackageInfo;
    .end local v3    # "pmPackage":Landroid/content/pm/PackageInfo;
    .end local v4    # "transportDir":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 7890
    .restart local v2    # "packages":[Landroid/content/pm/PackageInfo;
    .restart local v3    # "pmPackage":Landroid/content/pm/PackageInfo;
    .restart local v4    # "transportDir":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v5}, Lcom/android/internal/backup/IBackupTransport;->nextRestorePackage()Landroid/app/backup/RestoreDescription;

    move-result-object v0

    .line 7891
    .local v0, "desc":Landroid/app/backup/RestoreDescription;
    if-nez v0, :cond_3

    .line 7892
    const-string v5, "BackupManagerService"

    const-string v6, "No restore metadata available; halting"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7893
    const/16 v5, -0x3e8

    iput v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStatus:I

    .line 7894
    sget-object v5, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    invoke-virtual {p0, v5}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7942
    .end local v0    # "desc":Landroid/app/backup/RestoreDescription;
    .end local v2    # "packages":[Landroid/content/pm/PackageInfo;
    .end local v3    # "pmPackage":Landroid/content/pm/PackageInfo;
    .end local v4    # "transportDir":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 7944
    .local v1, "e":Landroid/os/RemoteException;
    const-string v5, "BackupManagerService"

    const-string v6, "Unable to contact transport for restore"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7945
    iput v9, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStatus:I

    .line 7946
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    invoke-virtual {v5, v10, p0}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(ILjava/lang/Object;)V

    .line 7947
    sget-object v5, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    invoke-virtual {p0, v5}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    goto :goto_0

    .line 7897
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "desc":Landroid/app/backup/RestoreDescription;
    .restart local v2    # "packages":[Landroid/content/pm/PackageInfo;
    .restart local v3    # "pmPackage":Landroid/content/pm/PackageInfo;
    .restart local v4    # "transportDir":Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v5, "@pm@"

    invoke-virtual {v0}, Landroid/app/backup/RestoreDescription;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 7898
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Required metadata but got "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/app/backup/RestoreDescription;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7899
    const/16 v5, -0x3e8

    iput v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStatus:I

    .line 7900
    sget-object v5, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    invoke-virtual {p0, v5}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    goto :goto_0

    .line 7905
    :cond_4
    new-instance v5, Landroid/content/pm/PackageInfo;

    invoke-direct {v5}, Landroid/content/pm/PackageInfo;-><init>()V

    iput-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 7906
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const-string v6, "@pm@"

    iput-object v6, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 7907
    new-instance v5, Lcom/android/server/backup/PackageManagerBackupAgent;

    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v6}, Lcom/android/server/backup/BackupManagerService;->access$600(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/android/server/backup/PackageManagerBackupAgent;-><init>(Landroid/content/pm/PackageManager;Ljava/util/List;)V

    iput-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

    .line 7908
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

    invoke-virtual {v5}, Lcom/android/server/backup/PackageManagerBackupAgent;->onBind()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IBackupAgent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBackupAgent;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    .line 7909
    sget-boolean v5, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v5, :cond_5

    .line 7910
    const-string v5, "BackupManagerService"

    const-string v6, "initiating restore for PMBA"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7913
    :cond_5
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->initiateOneRestore(Landroid/content/pm/PackageInfo;ILjava/lang/String;)V

    .line 7923
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/4 v6, 0x7

    invoke-virtual {v5, v6}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 7928
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

    invoke-virtual {v5}, Lcom/android/server/backup/PackageManagerBackupAgent;->hasMetadata()Z

    move-result v5

    if-nez v5, :cond_1

    .line 7929
    const-string v5, "BackupManagerService"

    const-string v6, "No restore metadata available, so not restoring"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7930
    const/16 v5, 0xb10

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "@pm@"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "Package manager restore metadata missing"

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 7933
    const/16 v5, -0x3e8

    iput v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStatus:I

    .line 7934
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/16 v6, 0x14

    invoke-virtual {v5, v6, p0}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(ILjava/lang/Object;)V

    .line 7935
    sget-object v5, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    invoke-virtual {p0, v5}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private writeXml(Ljava/lang/String;)V
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 8975
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 8976
    .local v1, "out":Ljava/io/FileOutputStream;
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 8977
    .local v3, "str":Ljava/io/BufferedOutputStream;
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 8978
    .local v2, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const-string v4, "utf-8"

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 8979
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 8980
    const-string v4, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v5, 0x1

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 8982
    const/4 v4, 0x0

    const-string v5, "package"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8983
    const/4 v4, 0x0

    const-string v5, "oldPkgName"

    invoke-interface {v2, v4, v5, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8984
    const/4 v4, 0x0

    const-string v5, "package"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8986
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 8987
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 8988
    invoke-static {v1}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 8989
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8993
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .end local v2    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v3    # "str":Ljava/io/BufferedOutputStream;
    :goto_0
    return-void

    .line 8990
    :catch_0
    move-exception v0

    .line 8991
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "BackupManagerService"

    const-string v5, "Failed to write old package to xml."

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public execute()V
    .locals 5

    .prologue
    .line 7776
    sget-boolean v1, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*** Executing restore step "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mState:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7777
    :cond_0
    sget-object v1, Lcom/android/server/backup/BackupManagerService$6;->$SwitchMap$com$android$server$backup$BackupManagerService$UnifiedRestoreState:[I

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mState:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 7819
    :goto_0
    return-void

    .line 7779
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->startRestore()V

    goto :goto_0

    .line 7783
    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->dispatchNextRestore()V

    goto :goto_0

    .line 7787
    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->restoreKeyValue()V

    goto :goto_0

    .line 7791
    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->restoreFull()V

    goto :goto_0

    .line 7795
    :pswitch_4
    invoke-direct {p0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->restoreFinished()V

    goto :goto_0

    .line 7800
    :pswitch_5
    iget-boolean v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mFinished:Z

    if-nez v1, :cond_1

    .line 7801
    invoke-direct {p0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->finalizeRestore()V

    .line 7802
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v2, v1, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v2

    .line 7803
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget v3, v1, Lcom/android/server/backup/BackupManagerService;->mRestoreRunning:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v1, Lcom/android/server/backup/BackupManagerService;->mRestoreRunning:I

    .line 7804
    const-string v1, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mRestoreRunning-- , mRestoreRunning="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget v4, v4, Lcom/android/server/backup/BackupManagerService;->mRestoreRunning:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7805
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7809
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mFinished:Z

    .line 7812
    :try_start_1
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/backup/BackupManagerService;->unregisterExternalTransport(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/backup/BackupManagerService;->access$100(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 7813
    :catch_0
    move-exception v0

    .line 7814
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "catch RemoteException when get DirName at restore FINAL"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7805
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 7807
    :cond_1
    const-string v1, "BackupManagerService"

    const-string v2, "Duplicate finish"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 7777
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V
    .locals 4
    .param p1, "nextState"    # Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    .prologue
    .line 8770
    sget-boolean v1, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " => executing next step on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " nextState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8772
    :cond_0
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mState:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    .line 8773
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/16 v2, 0x14

    invoke-virtual {v1, v2, p0}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 8774
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 8775
    return-void
.end method

.method public handleTimeout()V
    .locals 4

    .prologue
    .line 8761
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timeout restoring application "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8762
    const/16 v0, 0xb10

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "restore timeout"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 8765
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->keyValueAgentErrorCleanup()V

    .line 8766
    sget-object v0, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    .line 8767
    return-void
.end method

.method initiateOneRestore(Landroid/content/pm/PackageInfo;ILjava/lang/String;)V
    .locals 18
    .param p1, "app"    # Landroid/content/pm/PackageInfo;
    .param p2, "appVersionCode"    # I
    .param p3, "oldPkgName"    # Ljava/lang/String;

    .prologue
    .line 8208
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 8210
    .local v14, "packageName":Ljava/lang/String;
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initiateOneRestore packageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , oldPkgName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8213
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mDataDir:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".restore"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mBackupDataName:Ljava/io/File;

    .line 8214
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mDataDir:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".stage"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStageName:Ljava/io/File;

    .line 8215
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStateDir:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".new"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mNewStateName:Ljava/io/File;

    .line 8216
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStateDir:Ljava/io/File;

    invoke-direct {v2, v3, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mSavedStateName:Ljava/io/File;

    .line 8222
    const-string v2, "android"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v17, 0x1

    .line 8224
    .local v17, "staging":Z
    :goto_0
    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStageName:Ljava/io/File;

    .line 8226
    .local v9, "downloadFile":Ljava/io/File;
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService;->generateToken()I

    move-result v6

    .line 8229
    .local v6, "token":I
    const/high16 v2, 0x3c000000    # 0.0078125f

    :try_start_0
    invoke-static {v9, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v16

    .line 8234
    .local v16, "stage":Landroid/os/ParcelFileDescriptor;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mBackupDataName:Ljava/io/File;

    invoke-static {v2}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8235
    sget-boolean v2, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SElinux restorecon failed for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8238
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v0, v16

    invoke-interface {v2, v0}, Lcom/android/internal/backup/IBackupTransport;->getRestoreData(Landroid/os/ParcelFileDescriptor;)I

    move-result v2

    if-eqz v2, :cond_3

    .line 8241
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error getting restore data for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8242
    const/16 v2, 0xb0f

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 8243
    invoke-virtual/range {v16 .. v16}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 8244
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 8245
    sget-object v2, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8337
    .end local v16    # "stage":Landroid/os/ParcelFileDescriptor;
    :goto_2
    return-void

    .line 8222
    .end local v6    # "token":I
    .end local v9    # "downloadFile":Ljava/io/File;
    .end local v17    # "staging":Z
    :cond_1
    const/16 v17, 0x0

    goto :goto_0

    .line 8224
    .restart local v17    # "staging":Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mBackupDataName:Ljava/io/File;

    goto :goto_1

    .line 8252
    .restart local v6    # "token":I
    .restart local v9    # "downloadFile":Ljava/io/File;
    .restart local v16    # "stage":Landroid/os/ParcelFileDescriptor;
    :cond_3
    if-eqz v17, :cond_8

    .line 8253
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 8254
    const/high16 v2, 0x10000000

    invoke-static {v9, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v16

    .line 8257
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mBackupDataName:Ljava/io/File;

    const/high16 v3, 0x3c000000    # 0.0078125f

    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 8262
    new-instance v11, Landroid/app/backup/BackupDataInput;

    invoke-virtual/range {v16 .. v16}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v11, v2}, Landroid/app/backup/BackupDataInput;-><init>(Ljava/io/FileDescriptor;)V

    .line 8263
    .local v11, "in":Landroid/app/backup/BackupDataInput;
    new-instance v13, Landroid/app/backup/BackupDataOutput;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v13, v2}, Landroid/app/backup/BackupDataOutput;-><init>(Ljava/io/FileDescriptor;)V

    .line 8264
    .local v13, "out":Landroid/app/backup/BackupDataOutput;
    const/16 v2, 0x2000

    new-array v8, v2, [B

    .line 8265
    .local v8, "buffer":[B
    :goto_3
    invoke-virtual {v11}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 8266
    invoke-virtual {v11}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v12

    .line 8267
    .local v12, "key":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v15

    .line 8270
    .local v15, "size":I
    if-gtz v15, :cond_4

    .line 8271
    invoke-virtual {v11}, Landroid/app/backup/BackupDataInput;->skipEntityData()V

    .line 8272
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "skip this key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 8326
    .end local v8    # "buffer":[B
    .end local v11    # "in":Landroid/app/backup/BackupDataInput;
    .end local v12    # "key":Ljava/lang/String;
    .end local v13    # "out":Landroid/app/backup/BackupDataOutput;
    .end local v15    # "size":I
    .end local v16    # "stage":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v10

    .line 8327
    .local v10, "e":Ljava/lang/Exception;
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to call app for restore: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8328
    const/16 v2, 0xb10

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v14, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 8330
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->keyValueAgentErrorCleanup()V

    .line 8335
    sget-object v2, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    goto/16 :goto_2

    .line 8278
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v8    # "buffer":[B
    .restart local v11    # "in":Landroid/app/backup/BackupDataInput;
    .restart local v12    # "key":Ljava/lang/String;
    .restart local v13    # "out":Landroid/app/backup/BackupDataOutput;
    .restart local v15    # "size":I
    .restart local v16    # "stage":Landroid/os/ParcelFileDescriptor;
    :cond_4
    :try_start_2
    const-string v2, "\uffed\uffedwidget"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 8280
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Restoring widget state for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8282
    new-array v2, v15, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mWidgetData:[B

    .line 8283
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mWidgetData:[B

    const/4 v3, 0x0

    invoke-virtual {v11, v2, v3, v15}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    goto/16 :goto_3

    .line 8285
    :cond_5
    array-length v2, v8

    if-le v15, v2, :cond_6

    .line 8286
    new-array v8, v15, [B

    .line 8288
    :cond_6
    const/4 v2, 0x0

    invoke-virtual {v11, v8, v2, v15}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    .line 8289
    invoke-virtual {v13, v12, v15}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 8290
    invoke-virtual {v13, v8, v15}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    goto/16 :goto_3

    .line 8294
    .end local v12    # "key":Ljava/lang/String;
    .end local v15    # "size":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 8298
    .end local v8    # "buffer":[B
    .end local v11    # "in":Landroid/app/backup/BackupDataInput;
    .end local v13    # "out":Landroid/app/backup/BackupDataOutput;
    :cond_8
    invoke-virtual/range {v16 .. v16}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 8299
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mBackupDataName:Ljava/io/File;

    const/high16 v3, 0x10000000

    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 8302
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mNewStateName:Ljava/io/File;

    const/high16 v3, 0x3c000000    # 0.0078125f

    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    .line 8309
    if-eqz p3, :cond_9

    .line 8311
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initiateOneResotre, oldPkg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8313
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->writeXml(Ljava/lang/String;)V

    .line 8314
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mNewStateName:Ljava/io/File;

    const/high16 v3, 0x38000000

    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    .line 8323
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-wide/32 v4, 0xea60

    move-object/from16 v0, p0

    invoke-virtual {v2, v6, v4, v5, v0}, Lcom/android/server/backup/BackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupManagerService$BackupRestoreTask;)V

    .line 8324
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v7, v4, Lcom/android/server/backup/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    move/from16 v4, p2

    invoke-interface/range {v2 .. v7}, Landroid/app/IBackupAgent;->doRestore(Landroid/os/ParcelFileDescriptor;ILandroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2
.end method

.method keyValueAgentCleanup()V
    .locals 5

    .prologue
    .line 8634
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mBackupDataName:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 8635
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStageName:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 8636
    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 8637
    :cond_0
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 8638
    :cond_1
    :goto_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    iput-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 8653
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mNewStateName:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 8657
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_3

    .line 8660
    :try_start_2
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;
    invoke-static {v2}, Lcom/android/server/backup/BackupManagerService;->access$1000(Lcom/android/server/backup/BackupManagerService;)Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 8673
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 8674
    .local v0, "appFlags":I
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mRestoreDescription:Landroid/app/backup/RestoreDescription;

    invoke-virtual {v2}, Landroid/app/backup/RestoreDescription;->getDataType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/high16 v2, 0x10000

    and-int/2addr v2, v0

    if-eqz v2, :cond_4

    :cond_2
    const/4 v1, 0x1

    .line 8678
    .local v1, "killAfterRestore":Z
    :goto_2
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mTargetPackage:Landroid/content/pm/PackageInfo;

    if-nez v2, :cond_3

    if-eqz v1, :cond_3

    .line 8679
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Restore complete, killing host process of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8681
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;
    invoke-static {v2}, Lcom/android/server/backup/BackupManagerService;->access$1000(Lcom/android/server/backup/BackupManagerService;)Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v2, v3, v4}, Landroid/app/IActivityManager;->killApplicationProcess(Ljava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 8692
    .end local v0    # "appFlags":I
    .end local v1    # "killAfterRestore":Z
    :cond_3
    :goto_3
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3, p0}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(ILjava/lang/Object;)V

    .line 8693
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v2, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v3

    .line 8694
    :try_start_3
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 8695
    monitor-exit v3

    .line 8696
    return-void

    .line 8674
    .restart local v0    # "appFlags":I
    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    .line 8695
    .end local v0    # "appFlags":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 8685
    :catch_0
    move-exception v2

    goto :goto_3

    .line 8637
    :catch_1
    move-exception v2

    goto/16 :goto_1

    .line 8636
    :catch_2
    move-exception v2

    goto/16 :goto_0
.end method

.method keyValueAgentErrorCleanup()V
    .locals 2

    .prologue
    .line 8628
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;)V

    .line 8629
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->keyValueAgentCleanup()V

    .line 8630
    return-void
.end method

.method public operationComplete(I)V
    .locals 6
    .param p1, "unusedResult"    # I

    .prologue
    .line 8700
    sget-boolean v2, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v2, :cond_0

    .line 8701
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "operationComplete() during restore: target="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mState:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8707
    :cond_0
    sget-object v2, Lcom/android/server/backup/BackupManagerService$6;->$SwitchMap$com$android$server$backup$BackupManagerService$UnifiedRestoreState:[I

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mState:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 8748
    :pswitch_0
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected restore callback into state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mState:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8749
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->keyValueAgentErrorCleanup()V

    .line 8750
    sget-object v0, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    .line 8755
    .local v0, "nextState":Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    .line 8756
    return-void

    .line 8712
    .end local v0    # "nextState":Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    :pswitch_1
    sget-object v0, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    .line 8713
    .restart local v0    # "nextState":Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    goto :goto_0

    .line 8720
    .end local v0    # "nextState":Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    :pswitch_2
    sget-object v0, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RESTORE_FINISHED:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    .line 8721
    .restart local v0    # "nextState":Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    goto :goto_0

    .line 8727
    .end local v0    # "nextState":Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    :pswitch_3
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mBackupDataName:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v1, v2

    .line 8728
    .local v1, "size":I
    const/16 v2, 0xb11

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 8732
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->keyValueAgentCleanup()V

    .line 8737
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mWidgetData:[B

    if-eqz v2, :cond_1

    .line 8738
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mWidgetData:[B

    invoke-virtual {v2, v3, v4}, Lcom/android/server/backup/BackupManagerService;->restoreWidgetData(Ljava/lang/String;[B)V

    .line 8741
    :cond_1
    sget-object v0, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    .line 8742
    .restart local v0    # "nextState":Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    goto :goto_0

    .line 8707
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method sendEndRestore()V
    .locals 3

    .prologue
    .line 8803
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    if-eqz v1, :cond_0

    .line 8805
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    iget v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStatus:I

    invoke-interface {v1, v2}, Landroid/app/backup/IRestoreObserver;->restoreFinished(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8811
    :cond_0
    :goto_0
    return-void

    .line 8806
    :catch_0
    move-exception v0

    .line 8807
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "Restore observer went away: endRestore"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8808
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    goto :goto_0
.end method

.method sendOnRestorePackage(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 8790
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    if-eqz v1, :cond_0

    .line 8791
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    if-eqz v1, :cond_0

    .line 8793
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    iget v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCount:I

    invoke-interface {v1, v2, p1}, Landroid/app/backup/IRestoreObserver;->onUpdate(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8800
    :cond_0
    :goto_0
    return-void

    .line 8794
    :catch_0
    move-exception v0

    .line 8795
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "Restore observer died in onUpdate"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8796
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    goto :goto_0
.end method

.method sendStartRestore(I)V
    .locals 3
    .param p1, "numPackages"    # I

    .prologue
    .line 8779
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    if-eqz v1, :cond_0

    .line 8781
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    invoke-interface {v1, p1}, Landroid/app/backup/IRestoreObserver;->restoreStarting(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8787
    :cond_0
    :goto_0
    return-void

    .line 8782
    :catch_0
    move-exception v0

    .line 8783
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "Restore observer went away: startRestore"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8784
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    goto :goto_0
.end method
