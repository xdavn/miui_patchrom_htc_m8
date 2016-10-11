.class final Lcom/android/server/Watchdog$DumpHeapTask;
.super Ljava/lang/Thread;
.source "Watchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/Watchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DumpHeapTask"
.end annotation


# static fields
.field static final HPROF_EXTENSION:Ljava/lang/String; = ".syshprof"

.field static final HPROF_FOLDER:Ljava/lang/String; = "/data/htclog/"


# instance fields
.field mHeapMonitor:Lcom/android/server/Watchdog$HeapMonitor;

.field final mHeapSize:J


# direct methods
.method constructor <init>(Lcom/android/server/Watchdog$HeapMonitor;J)V
    .locals 2
    .param p1, "heapMonitor"    # Lcom/android/server/Watchdog$HeapMonitor;
    .param p2, "heapSize"    # J

    .prologue
    .line 784
    const-string v0, "DumpHeap"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 785
    iput-object p1, p0, Lcom/android/server/Watchdog$DumpHeapTask;->mHeapMonitor:Lcom/android/server/Watchdog$HeapMonitor;

    .line 786
    iput-wide p2, p0, Lcom/android/server/Watchdog$DumpHeapTask;->mHeapSize:J

    .line 787
    return-void
.end method

.method static deleteAllHprof()Z
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 822
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v8, "/data/htclog/"

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 823
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_1

    .line 824
    :cond_0
    const-string v8, "Watchdog"

    const-string v9, "no /data/htclog/"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    :goto_0
    return v7

    .line 828
    :cond_1
    new-instance v8, Lcom/android/server/Watchdog$DumpHeapTask$1;

    invoke-direct {v8}, Lcom/android/server/Watchdog$DumpHeapTask$1;-><init>()V

    invoke-virtual {v1, v8}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v6

    .line 835
    .local v6, "syshprofs":[Ljava/io/File;
    if-eqz v6, :cond_2

    .line 836
    move-object v0, v6

    .local v0, "arr$":[Ljava/io/File;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v3, v0, v4

    .line 837
    .local v3, "hprof":Ljava/io/File;
    const-string v8, "Watchdog"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "delete "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 836
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 841
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v3    # "hprof":Ljava/io/File;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_2
    const/4 v7, 0x1

    goto :goto_0

    .line 842
    .end local v6    # "syshprofs":[Ljava/io/File;
    :catch_0
    move-exception v2

    .line 843
    .local v2, "e":Ljava/lang/Exception;
    const-string v8, "Watchdog"

    invoke-static {v8, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 792
    :try_start_0
    const-string v6, "Watchdog"

    const-string v7, "DumpHeapTask++"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    new-instance v6, Landroid/os/StatFs;

    const-string v7, "/data"

    invoke-direct {v6, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v0

    .line 794
    .local v0, "avail":J
    const-string v6, "Watchdog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Storage="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " heapSize="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/server/Watchdog$DumpHeapTask;->mHeapSize:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    iget-wide v6, p0, Lcom/android/server/Watchdog$DumpHeapTask;->mHeapSize:J

    cmp-long v6, v6, v0

    if-lez v6, :cond_0

    .line 796
    const-string v6, "Watchdog"

    const-string v7, "No available storage"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 814
    iget-object v6, p0, Lcom/android/server/Watchdog$DumpHeapTask;->mHeapMonitor:Lcom/android/server/Watchdog$HeapMonitor;

    invoke-virtual {v6}, Lcom/android/server/Watchdog$HeapMonitor;->monitor()V

    .line 815
    iput-object v10, p0, Lcom/android/server/Watchdog$DumpHeapTask;->mHeapMonitor:Lcom/android/server/Watchdog$HeapMonitor;

    .line 816
    const-string v6, "Watchdog"

    const-string v7, "DumpHeapTask--"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    .end local v0    # "avail":J
    :goto_0
    return-void

    .line 799
    .restart local v0    # "avail":J
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/server/Watchdog$DumpHeapTask;->deleteAllHprof()Z

    move-result v6

    if-nez v6, :cond_1

    .line 800
    const-string v6, "Watchdog"

    const-string v7, "deleteAllHprof error"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 814
    iget-object v6, p0, Lcom/android/server/Watchdog$DumpHeapTask;->mHeapMonitor:Lcom/android/server/Watchdog$HeapMonitor;

    invoke-virtual {v6}, Lcom/android/server/Watchdog$HeapMonitor;->monitor()V

    .line 815
    iput-object v10, p0, Lcom/android/server/Watchdog$DumpHeapTask;->mHeapMonitor:Lcom/android/server/Watchdog$HeapMonitor;

    .line 816
    const-string v6, "Watchdog"

    const-string v7, "DumpHeapTask--"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 804
    :cond_1
    :try_start_2
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    .line 805
    .local v4, "myPid":I
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyyMMdd-kkmm_"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 807
    .local v5, "now":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/data/htclog/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".syshprof"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 808
    .local v3, "hprofName":Ljava/lang/String;
    const-string v6, "Watchdog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dumpHeap:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    invoke-static {v3}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V

    .line 810
    const/16 v6, 0x1ff

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-static {v3, v6, v7, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 814
    iget-object v6, p0, Lcom/android/server/Watchdog$DumpHeapTask;->mHeapMonitor:Lcom/android/server/Watchdog$HeapMonitor;

    invoke-virtual {v6}, Lcom/android/server/Watchdog$HeapMonitor;->monitor()V

    .line 815
    iput-object v10, p0, Lcom/android/server/Watchdog$DumpHeapTask;->mHeapMonitor:Lcom/android/server/Watchdog$HeapMonitor;

    .line 816
    const-string v6, "Watchdog"

    const-string v7, "DumpHeapTask--"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 811
    .end local v0    # "avail":J
    .end local v3    # "hprofName":Ljava/lang/String;
    .end local v4    # "myPid":I
    .end local v5    # "now":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 812
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v6, "Watchdog"

    invoke-static {v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 814
    iget-object v6, p0, Lcom/android/server/Watchdog$DumpHeapTask;->mHeapMonitor:Lcom/android/server/Watchdog$HeapMonitor;

    invoke-virtual {v6}, Lcom/android/server/Watchdog$HeapMonitor;->monitor()V

    .line 815
    iput-object v10, p0, Lcom/android/server/Watchdog$DumpHeapTask;->mHeapMonitor:Lcom/android/server/Watchdog$HeapMonitor;

    .line 816
    const-string v6, "Watchdog"

    const-string v7, "DumpHeapTask--"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 814
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lcom/android/server/Watchdog$DumpHeapTask;->mHeapMonitor:Lcom/android/server/Watchdog$HeapMonitor;

    invoke-virtual {v7}, Lcom/android/server/Watchdog$HeapMonitor;->monitor()V

    .line 815
    iput-object v10, p0, Lcom/android/server/Watchdog$DumpHeapTask;->mHeapMonitor:Lcom/android/server/Watchdog$HeapMonitor;

    .line 816
    const-string v7, "Watchdog"

    const-string v8, "DumpHeapTask--"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v6
.end method
