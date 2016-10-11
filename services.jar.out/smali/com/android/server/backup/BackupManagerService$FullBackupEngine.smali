.class Lcom/android/server/backup/BackupManagerService$FullBackupEngine;
.super Ljava/lang/Object;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FullBackupEngine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;
    }
.end annotation


# instance fields
.field mFilesDir:Ljava/io/File;

.field mIncludeApks:Z

.field mManifestFile:Ljava/io/File;

.field mMetadataFile:Ljava/io/File;

.field mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

.field mOutput:Ljava/io/OutputStream;

.field mPreflightHook:Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Ljava/io/OutputStream;Ljava/lang/String;Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;Z)V
    .locals 3
    .param p2, "output"    # Ljava/io/OutputStream;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "preflightHook"    # Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;
    .param p5, "alsoApks"    # Z

    .prologue
    .line 3656
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3657
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mOutput:Ljava/io/OutputStream;

    .line 3658
    iput-object p4, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mPreflightHook:Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;

    .line 3659
    iput-boolean p5, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mIncludeApks:Z

    .line 3660
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mFilesDir:Ljava/io/File;

    .line 3661
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mFilesDir:Ljava/io/File;

    const-string v2, "_manifest"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mManifestFile:Ljava/io/File;

    .line 3662
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mFilesDir:Ljava/io/File;

    const-string v2, "_meta"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mMetadataFile:Ljava/io/File;

    .line 3663
    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/backup/BackupManagerService$FullBackupEngine;Landroid/content/pm/PackageInfo;Ljava/io/File;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService$FullBackupEngine;
    .param p1, "x1"    # Landroid/content/pm/PackageInfo;
    .param p2, "x2"    # Ljava/io/File;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3579
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->writeAppManifest(Landroid/content/pm/PackageInfo;Ljava/io/File;ZZ)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/backup/BackupManagerService$FullBackupEngine;Landroid/content/pm/PackageInfo;Ljava/io/File;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService$FullBackupEngine;
    .param p1, "x1"    # Landroid/content/pm/PackageInfo;
    .param p2, "x2"    # Ljava/io/File;
    .param p3, "x3"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3579
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->writeMetadata(Landroid/content/pm/PackageInfo;Ljava/io/File;[B)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/backup/BackupManagerService$FullBackupEngine;Landroid/content/pm/PackageInfo;Landroid/app/backup/FullBackupDataOutput;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService$FullBackupEngine;
    .param p1, "x1"    # Landroid/content/pm/PackageInfo;
    .param p2, "x2"    # Landroid/app/backup/FullBackupDataOutput;

    .prologue
    .line 3579
    invoke-direct {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->writeApkToBackup(Landroid/content/pm/PackageInfo;Landroid/app/backup/FullBackupDataOutput;)V

    return-void
.end method

.method private tearDown(Landroid/content/pm/PackageInfo;)V
    .locals 2
    .param p1, "pkg"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 3862
    if-eqz p1, :cond_0

    .line 3863
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 3864
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 3865
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/backup/BackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    .line 3868
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    :cond_0
    return-void
.end method

.method private writeApkToBackup(Landroid/content/pm/PackageInfo;Landroid/app/backup/FullBackupDataOutput;)V
    .locals 19
    .param p1, "pkg"    # Landroid/content/pm/PackageInfo;
    .param p2, "output"    # Landroid/app/backup/FullBackupDataOutput;

    .prologue
    .line 3749
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v5

    .line 3750
    .local v5, "appSourceDir":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    .line 3751
    .local v4, "apkDir":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v2, "a"

    const/4 v3, 0x0

    move-object/from16 v6, p2

    invoke-static/range {v1 .. v6}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    .line 3759
    new-instance v18, Landroid/os/Environment$UserEnvironment;

    const/4 v1, 0x0

    move-object/from16 v0, v18

    invoke-direct {v0, v1}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 3760
    .local v18, "userEnv":Landroid/os/Environment$UserEnvironment;
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppObbDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v16, v1, v2

    .line 3761
    .local v16, "obbDir":Ljava/io/File;
    if-eqz v16, :cond_1

    .line 3762
    sget-boolean v1, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "obb dir: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3763
    :cond_0
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v17

    .line 3764
    .local v17, "obbFiles":[Ljava/io/File;
    if-eqz v17, :cond_1

    .line 3765
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    .line 3766
    .local v9, "obbDirName":Ljava/lang/String;
    move-object/from16 v12, v17

    .local v12, "arr$":[Ljava/io/File;
    array-length v14, v12

    .local v14, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_0
    if-ge v13, v14, :cond_1

    aget-object v15, v12, v13

    .line 3767
    .local v15, "obb":Ljava/io/File;
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v7, "obb"

    const/4 v8, 0x0

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v11, p2

    invoke-static/range {v6 .. v11}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    .line 3766
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 3772
    .end local v9    # "obbDirName":Ljava/lang/String;
    .end local v12    # "arr$":[Ljava/io/File;
    .end local v13    # "i$":I
    .end local v14    # "len$":I
    .end local v15    # "obb":Ljava/io/File;
    .end local v17    # "obbFiles":[Ljava/io/File;
    :cond_1
    return-void
.end method

.method private writeAppManifest(Landroid/content/pm/PackageInfo;Ljava/io/File;ZZ)V
    .locals 10
    .param p1, "pkg"    # Landroid/content/pm/PackageInfo;
    .param p2, "manifestFile"    # Ljava/io/File;
    .param p3, "withApk"    # Z
    .param p4, "withWidgets"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3787
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v8, 0x1000

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3788
    .local v1, "builder":Ljava/lang/StringBuilder;
    new-instance v6, Landroid/util/StringBuilderPrinter;

    invoke-direct {v6, v1}, Landroid/util/StringBuilderPrinter;-><init>(Ljava/lang/StringBuilder;)V

    .line 3790
    .local v6, "printer":Landroid/util/StringBuilderPrinter;
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 3791
    iget-object v8, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 3792
    iget v8, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 3793
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 3795
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v8}, Lcom/android/server/backup/BackupManagerService;->access$600(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v8

    iget-object v9, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3796
    .local v3, "installerName":Ljava/lang/String;
    if-eqz v3, :cond_1

    .end local v3    # "installerName":Ljava/lang/String;
    :goto_0
    invoke-virtual {v6, v3}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 3798
    if-eqz p3, :cond_2

    const-string v8, "1"

    :goto_1
    invoke-virtual {v6, v8}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 3799
    iget-object v8, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-nez v8, :cond_3

    .line 3800
    const-string v8, "0"

    invoke-virtual {v6, v8}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 3808
    :cond_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 3809
    .local v5, "outstream":Ljava/io/FileOutputStream;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/FileOutputStream;->write([B)V

    .line 3810
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 3817
    const-wide/16 v8, 0x0

    invoke-virtual {p2, v8, v9}, Ljava/io/File;->setLastModified(J)Z

    .line 3818
    return-void

    .line 3796
    .end local v5    # "outstream":Ljava/io/FileOutputStream;
    .restart local v3    # "installerName":Ljava/lang/String;
    :cond_1
    const-string v3, ""

    goto :goto_0

    .line 3798
    .end local v3    # "installerName":Ljava/lang/String;
    :cond_2
    const-string v8, "0"

    goto :goto_1

    .line 3802
    :cond_3
    iget-object v8, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 3803
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .local v0, "arr$":[Landroid/content/pm/Signature;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_2
    if-ge v2, v4, :cond_0

    aget-object v7, v0, v2

    .line 3804
    .local v7, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v7}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 3803
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private writeMetadata(Landroid/content/pm/PackageInfo;Ljava/io/File;[B)V
    .locals 8
    .param p1, "pkg"    # Landroid/content/pm/PackageInfo;
    .param p2, "destination"    # Ljava/io/File;
    .param p3, "widgetData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3838
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v5, 0x200

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3839
    .local v0, "b":Ljava/lang/StringBuilder;
    new-instance v4, Landroid/util/StringBuilderPrinter;

    invoke-direct {v4, v0}, Landroid/util/StringBuilderPrinter;-><init>(Ljava/lang/StringBuilder;)V

    .line 3840
    .local v4, "printer":Landroid/util/StringBuilderPrinter;
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 3841
    iget-object v5, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 3843
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 3844
    .local v2, "fout":Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3845
    .local v1, "bout":Ljava/io/BufferedOutputStream;
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3846
    .local v3, "out":Ljava/io/DataOutputStream;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 3848
    if-eqz p3, :cond_0

    array-length v5, p3

    if-lez v5, :cond_0

    .line 3849
    const v5, 0x1ffed01

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 3850
    array-length v5, p3

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 3851
    invoke-virtual {v3, p3}, Ljava/io/DataOutputStream;->write([B)V

    .line 3853
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 3854
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 3858
    const-wide/16 v6, 0x0

    invoke-virtual {p2, v6, v7}, Ljava/io/File;->setLastModified(J)Z

    .line 3859
    return-void
.end method


# virtual methods
.method public backupOnePackage(Landroid/content/pm/PackageInfo;)I
    .locals 16
    .param p1, "pkg"    # Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3666
    const/4 v14, 0x0

    .line 3667
    .local v14, "result":I
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Binding to full backup agent : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3669
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5}, Lcom/android/server/backup/BackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v4

    .line 3671
    .local v4, "agent":Landroid/app/IBackupAgent;
    if-eqz v4, :cond_b

    .line 3672
    const/4 v13, 0x0

    .line 3675
    .local v13, "pipes":[Landroid/os/ParcelFileDescriptor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mPreflightHook:Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;

    if-eqz v2, :cond_0

    .line 3676
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mPreflightHook:Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v4}, Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;->preflightFullBackup(Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;)I

    move-result v14

    .line 3677
    sget-boolean v2, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v2, :cond_0

    .line 3678
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "preflight returned "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3683
    :cond_0
    if-nez v14, :cond_2

    .line 3684
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v13

    .line 3686
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 3687
    .local v10, "app":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.android.sharedstoragebackup"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 3688
    .local v12, "isSharedStorage":Z
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mIncludeApks:Z

    if-eqz v2, :cond_5

    if-nez v12, :cond_5

    iget v2, v10, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_5

    iget v2, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    iget v2, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_5

    :cond_1
    const/4 v7, 0x1

    .line 3694
    .local v7, "sendApk":Z
    :goto_0
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/AppWidgetBackupBridge;->getWidgetState(Ljava/lang/String;I)[B

    move-result-object v9

    .line 3697
    .local v9, "widgetBlob":[B
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService;->generateToken()I

    move-result v6

    .line 3698
    .local v6, "token":I
    new-instance v1, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;

    const/4 v2, 0x1

    aget-object v5, v13, v2

    if-nez v12, :cond_6

    const/4 v8, 0x1

    :goto_1
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v9}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;-><init>(Lcom/android/server/backup/BackupManagerService$FullBackupEngine;Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;Landroid/os/ParcelFileDescriptor;IZZ[B)V

    .line 3700
    .local v1, "runner":Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;
    const/4 v2, 0x1

    aget-object v2, v13, v2

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 3701
    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v13, v2

    .line 3702
    new-instance v15, Ljava/lang/Thread;

    const-string v2, "app-data-runner"

    invoke-direct {v15, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 3703
    .local v15, "t":Ljava/lang/Thread;
    invoke-virtual {v15}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3707
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v3, 0x0

    aget-object v3, v13, v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mOutput:Ljava/io/OutputStream;

    # invokes: Lcom/android/server/backup/BackupManagerService;->routeSocketDataToOutput(Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)V
    invoke-static {v2, v3, v5}, Lcom/android/server/backup/BackupManagerService;->access$1100(Lcom/android/server/backup/BackupManagerService;Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3713
    :goto_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v2, v6}, Lcom/android/server/backup/BackupManagerService;->waitUntilOperationComplete(I)Z

    move-result v2

    if-nez v2, :cond_7

    .line 3714
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Full backup failed on package "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3715
    const/16 v14, -0x3eb

    .line 3728
    .end local v1    # "runner":Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;
    .end local v6    # "token":I
    .end local v7    # "sendApk":Z
    .end local v9    # "widgetBlob":[B
    .end local v10    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v12    # "isSharedStorage":Z
    .end local v15    # "t":Ljava/lang/Thread;
    :cond_2
    :goto_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 3729
    if-eqz v13, :cond_4

    .line 3730
    const/4 v2, 0x0

    aget-object v2, v13, v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    aget-object v2, v13, v2

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 3731
    :cond_3
    const/4 v2, 0x1

    aget-object v2, v13, v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    aget-object v2, v13, v2

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 3742
    .end local v13    # "pipes":[Landroid/os/ParcelFileDescriptor;
    :cond_4
    :goto_4
    invoke-direct/range {p0 .. p1}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->tearDown(Landroid/content/pm/PackageInfo;)V

    .line 3743
    return v14

    .line 3688
    .restart local v10    # "app":Landroid/content/pm/ApplicationInfo;
    .restart local v12    # "isSharedStorage":Z
    .restart local v13    # "pipes":[Landroid/os/ParcelFileDescriptor;
    :cond_5
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 3698
    .restart local v6    # "token":I
    .restart local v7    # "sendApk":Z
    .restart local v9    # "widgetBlob":[B
    :cond_6
    const/4 v8, 0x0

    goto :goto_1

    .line 3708
    .restart local v1    # "runner":Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;
    .restart local v15    # "t":Ljava/lang/Thread;
    :catch_0
    move-exception v11

    .line 3709
    .local v11, "e":Ljava/io/IOException;
    :try_start_4
    const-string v2, "BackupManagerService"

    const-string v3, "Caught exception reading from agent"

    invoke-static {v2, v3, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3710
    const/16 v14, -0x3eb

    goto :goto_2

    .line 3717
    .end local v11    # "e":Ljava/io/IOException;
    :cond_7
    sget-boolean v2, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v2, :cond_2

    .line 3718
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Full package backup success: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 3722
    .end local v1    # "runner":Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;
    .end local v6    # "token":I
    .end local v7    # "sendApk":Z
    .end local v9    # "widgetBlob":[B
    .end local v10    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v12    # "isSharedStorage":Z
    .end local v15    # "t":Ljava/lang/Thread;
    :catch_1
    move-exception v11

    .line 3723
    .restart local v11    # "e":Ljava/io/IOException;
    :try_start_5
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error backing up "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3724
    const/16 v14, -0x3eb

    .line 3728
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 3729
    if-eqz v13, :cond_4

    .line 3730
    const/4 v2, 0x0

    aget-object v2, v13, v2

    if-eqz v2, :cond_8

    const/4 v2, 0x0

    aget-object v2, v13, v2

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 3731
    :cond_8
    const/4 v2, 0x1

    aget-object v2, v13, v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    aget-object v2, v13, v2

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_4

    .line 3733
    :catch_2
    move-exception v11

    .line 3734
    const-string v2, "BackupManagerService"

    const-string v3, "Error bringing down backup stack"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3735
    const/16 v14, -0x3e8

    .line 3737
    goto :goto_4

    .line 3733
    .end local v11    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v11

    .line 3734
    .restart local v11    # "e":Ljava/io/IOException;
    const-string v2, "BackupManagerService"

    const-string v3, "Error bringing down backup stack"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3735
    const/16 v14, -0x3e8

    .line 3737
    goto/16 :goto_4

    .line 3726
    .end local v11    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 3728
    :try_start_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 3729
    if-eqz v13, :cond_a

    .line 3730
    const/4 v3, 0x0

    aget-object v3, v13, v3

    if-eqz v3, :cond_9

    const/4 v3, 0x0

    aget-object v3, v13, v3

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 3731
    :cond_9
    const/4 v3, 0x1

    aget-object v3, v13, v3

    if-eqz v3, :cond_a

    const/4 v3, 0x1

    aget-object v3, v13, v3

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 3736
    :cond_a
    :goto_5
    throw v2

    .line 3733
    :catch_4
    move-exception v11

    .line 3734
    .restart local v11    # "e":Ljava/io/IOException;
    const-string v3, "BackupManagerService"

    const-string v5, "Error bringing down backup stack"

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3735
    const/16 v14, -0x3e8

    goto :goto_5

    .line 3739
    .end local v11    # "e":Ljava/io/IOException;
    .end local v13    # "pipes":[Landroid/os/ParcelFileDescriptor;
    :cond_b
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to bind to full agent for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3740
    const/16 v14, -0x3eb

    goto/16 :goto_4
.end method
